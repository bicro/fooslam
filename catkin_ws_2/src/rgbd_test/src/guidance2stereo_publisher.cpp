
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sensor_msgs/Image.h"
#include "sensor_msgs/CameraInfo.h"
#include "sensor_msgs/Imu.h"
#include <sensor_msgs/PointCloud2.h>
#include "geometry_msgs/Quaternion.h"
#include "geometry_msgs/Vector3.h"
#include "geometry_msgs/TransformStamped.h"
#include "geometry_msgs/PoseStamped.h"
#include "ros/time.h"
#include "sensor_msgs/image_encodings.h"
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <tf/transform_broadcaster.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

#include <pcl_ros/transforms.h>
#include "pcl/common/io.h"
#include "pcl/common/distances.h"
#include "pcl_ros/point_cloud.h"
#include "pcl/point_types.h"
#include <pcl/tracking/impl/hsv_color_coherence.hpp>

//#include "header.h"
//#include "rotation.h"

#include <sstream>
#include <iostream>
#include <string>
#include <fstream>
#include <cstdint>
#include <math.h>
#include <ctime>

#include <boost/array.hpp>


typedef pcl::PointXYZRGB point_type;
typedef pcl::PointXYZRGBNormal point_normal_type;

typedef pcl::PointCloud<point_type> pointcloud_type;
typedef pcl::PointCloud<point_normal_type> pointcloud_normal_type;


using namespace std;

	ros::Publisher left_img_info_pub;
	ros::Publisher right_img_info_pub;
	ros::Publisher rgbd_info_pub;
	ros::Publisher depth_image_pub;
	//ros::Publisher point_cloud_pub;
	//ros::Publisher depth_img_info_pub;
	//ros::Publisher imu_pub;
	//ros::Publisher pose_pub;
	int nan_ratio;

	

	uint32_t height = 240;
	uint32_t width = 320;
	std::string distortion_model = "plumb_bob";
	double D1_left [] = {0.04153957306075359, -0.015937712493641617, 0.005017840633426161, -0.010083274089461183, 0.0};
	std::vector<double> D_left(D1_left, D1_left + sizeof D1_left / sizeof D1_left[0]);

	double D1_right [] = {0.05801157855843396, 0.020854566857993, 0.021902827379884637, -0.005760043766003526, 0.0};
	std::vector<double> D_right(D1_right, D1_right + sizeof D1_right / sizeof D1_right[0]);


	boost::array<double, 9> K_left = {250.3680842136081, 0.0, 153.45380887858138, 0.0, 250.08814098432015, 123.23607345467934, 0.0, 0.0, 1.0};
	boost::array<double, 9> K_right = {253.00598366714198, 0.0, 149.86965293904748, 0.0, 255.014665217158, 131.85291875093895, 0.0, 0.0, 1.0};
	//std::vector<double> K(K1, K1 + sizeof K1 / sizeof K1[0]);

	boost::array<double, 9>  R_left = {0.9991693949330405, -0.0014080283868304635, -0.04072514806852884, 0.0007157432073680465, 0.9998550880021078, -0.017008548084955246, 0.040743195024480164, 0.01696527195063516, 0.9990256110865418};
	boost::array<double, 9>  R_right = {0.9980640619573772, 0.006600252857592178, -0.0618430666393298, -0.0055480494923777785, 0.9998371852133768, 0.01717038763166784, 0.06194632657366268, -0.016794038430569688, 0.9979381808996095};
	boost::array<double, 12> P_left = {279.2486441871699, 0.0, 167.4317226409912, 0.0, 0.0, 279.2486441871699, 130.12401485443115, 0.0, 0.0, 0.0, 1.0, 0.0};
	boost::array<double, 12> P_right = {279.2486441871699, 0.0, 167.4317226409912, -183.10556190390793, 0.0, 279.2486441871699, 130.12401485443115, 0.0, 0.0, 0.0, 1.0, 0.0};

	//cv::Mat R_old = (cv::Mat_<double>(3,3) << 1, 0, 0, 0, 1, 0, 0, 0, 1);
	cv::Mat Rot_new = (cv::Mat_<double>(3,3) << 1, 0, 0, 0, 1, 0, 0, 0, 1);
	double Rot [] = {1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0};
		
	sensor_msgs::CameraInfo left_img_info;
	sensor_msgs::CameraInfo right_img_info;

/**
	std::string image_filename = "/home/ee125/Documents/Images/image_%02d.jpg";
	std::string depth_filename = "/home/ee125/Documents/PointClouds/depth_%02d.jpg";
	std::string sensor_filename = "/home/ee125/Documents/test.csv";

	std::ofstream fp2;
	std::ofstream fp3;

**/
	

	int image_count = 0;
	int depth_count = 0;
	std::string yml_filename = "/home/ee125/Documents/ymls/depth_%02d.yml";
  //message_filters::Synchronizer<NoCloudSyncPolicy>* no_cloud_sync_;


//visua_sub_ = new image_sub_type(nh, visua_tpc, q);
  //      depth_sub_ = new image_sub_type(nh, depth_tpc, q);
    //    cinfo_sub_ = new cinfo_sub_type(nh, cinfo_tpc, q);
      //  no_cloud_sync_ = new message_filters::Synchronizer<NoCloudSyncPolicy>(NoCloudSyncPolicy(q),  *visua_sub_, *depth_sub_, *cinfo_sub_);
        //no_cloud_sync_->registerCallback(boost::bind(&OpenNIListener::noCloudCallback, this, _1, _2, _3));

/**
		void getCameraIntrinsics(float& fx, float& fy, float& cx, float& cy) 
	{
		fx =  K_left[0];
		fy =  K_left[4];
		cx =  K_left[2];
		cy =	K_left[5];
	}

		static void getCameraIntrinsicsInverseFocalLength(float& fxinv, float& fyinv, float& cx, float& cy) 
	{
		getCameraIntrinsics(fxinv, fyinv, cx, cy);
		fxinv = 1./ fxinv;
		fyinv = 1./ fyinv;
	}

**/

/**
	 void backProject(const float& fxinv, const float& fyinv,
		                      const float& cx, const float& cy,
		                      const float& u,  const float& v, const float& z,
		                      float& out_x,  float& out_y, float& out_z)
	{
		  //If depth is distance, not distance projected onto optical axis:
		/*
		  float tmpx = (u-cx) * fxinv;
		  float tmpy = (v-cy) * fyinv;
		  out_z = z / std::sqrt(tmpx*tmpx + tmpy*tmpy + 1 ) ;
		  out_x = tmpx * out_z;
		  out_y = tmpy * out_z;
		*/
/**
		out_x = (u - cx) * z * fxinv;
		out_y = (v - cy) * z * fyinv;
		out_z = z;
	}



		pointcloud_type* createXYZRGBPointCloud (const cv::Mat& depth_img, 
                                         const cv::Mat& rgb_img,const sensor_msgs::ImageConstPtr& depth_msg) 
	{
		pointcloud_type* cloud (new pointcloud_type() );
		myHeader h(0, depth_msg->header.stamp,  depth_msg->header.frame_id);
		cloud->header = h;
		//cloud->header.stamp     = depth_msg->header.stamp;
		//cloud->header.frame_id  = rgb_msg->header.frame_id;
		cloud->is_dense         = false; //single point of view, 2d rasterized NaN where no depth value was found
	nan_ratio =0;
  float fxinv, fyinv, cx, cy;
  getCameraIntrinsicsInverseFocalLength(fxinv, fyinv, cx, cy);
  //ParameterServer* ps = ParameterServer::instance();
  int data_skip_step = 1;
  if(depth_img.rows % data_skip_step != 0 || depth_img.cols % data_skip_step != 0){
    ROS_WARN("The parameter cloud_creation_skip_step is not a divisor of the depth image dimensions. This will most likely crash the program!");
  }
  cloud->height = ceil(depth_img.rows / static_cast<float>(data_skip_step));
  cloud->width = ceil(depth_img.cols / static_cast<float>(data_skip_step));
  int pixel_data_size = 1;
  //Assume RGB
  char red_idx = 0, green_idx = 1, blue_idx = 2;
  if(rgb_img.type() == CV_8UC1) pixel_data_size = 1;
  //else if(ps->get<bool>("encoding_bgr")) { red_idx = 2; blue_idx = 0; }

  unsigned int color_row_step, color_pix_step, depth_pix_step, depth_row_step;
  color_pix_step = pixel_data_size * (rgb_img.cols / cloud->width);
  color_row_step = pixel_data_size * (rgb_img.rows / cloud->height -1 ) * rgb_img.cols;
  depth_pix_step = (depth_img.cols / cloud->width);
  depth_row_step = (depth_img.rows / cloud->height -1 ) * depth_img.cols;

  cloud->points.resize (cloud->height * cloud->width);

  //const uint8_t* rgb_buffer = &rgb_msg->data[0];

  // depth_img already has the desired dimensions, but rgb_img may be higher res.
  int color_idx = 0 * color_pix_step - 0 * color_row_step, depth_idx = 0; //FIXME: Hack for hard-coded calibration of color to depth
  double depth_scaling = 1;
  float max_depth = -1.0;
  float min_depth = 0.001;
  if(max_depth < 0.0) max_depth = std::numeric_limits<float>::infinity();

  //Main Looop
  pointcloud_type::iterator pt_iter = cloud->begin();
  for (int v = 0; v < (int)rgb_img.rows; v += data_skip_step, color_idx += color_row_step, depth_idx += depth_row_step)
  {
    for (int u = 0; u < (int)rgb_img.cols; u += data_skip_step, color_idx += color_pix_step, depth_idx += depth_pix_step, ++pt_iter)
    {
      if(pt_iter == cloud->end()){
        break;
      }
      point_type& pt = *pt_iter;
      if(u < 0 || v < 0 || u >= depth_img.cols || v >= depth_img.rows){
        pt.x = pt.y = pt.z = std::numeric_limits<float>::quiet_NaN();
        continue;
      }

      float Z = depth_img.at<float>(u,v) * depth_scaling;
/**
			if(u == 12 ){


				std::cout<< Z <<std::endl;

			}
**/

/**			

      // Check for invalid measurements
      if (!(Z >= min_depth)) //Should also be trigger on NaN//std::isnan (Z))
      {
        pt.x = (u - cx) * 1.0 * fxinv; //FIXME: better solution as to act as at 1meter?
        pt.y = (v - cy) * 1.0 * fyinv;
        pt.z = std::numeric_limits<float>::quiet_NaN();
				//nan_ratio++;
      }
      else // Fill in XYZ
      {
        backProject(fxinv, fyinv, cx, cy, u, v, Z, pt.x, pt.y, pt.z);
      }
      // Fill in color
      pcl::tracking::RGBValue color;
      if(color_idx > 0 && color_idx < rgb_img.total()*color_pix_step){ //Only necessary because of the color_idx offset 
        if(pixel_data_size == 3){
          color.Red   = rgb_img.at<uint8_t>(color_idx + red_idx);
          color.Green = rgb_img.at<uint8_t>(color_idx + green_idx);
          color.Blue  = rgb_img.at<uint8_t>(color_idx + blue_idx);
        } else {
          color.Red   = color.Green = color.Blue  = rgb_img.at<uint8_t>(color_idx);
        }
        //color.Alpha = 0;
#ifndef RGB_IS_4TH_DIM
        pt.rgb = color.float_value;
#else
        pt.data[3] = color.float_value;
#endif
      }
    }
  }
	//std::cout<<nan_ratio<<std::endl;
	cv::imshow("view", 5*depth_img);
  return cloud;

	}


**/

	void imageLeftCallback(const sensor_msgs::ImageConstPtr& msg)
	{
	
		left_img_info.header = msg->header;
		left_img_info_pub.publish(left_img_info);
		//char newFile[300];
		//std::sprintf(newFile,image_filename.c_str(),image_count); 
		//cv::imwrite(newFile,cv_bridge::toCvShare(msg, "32FC1")->image);
	  	//std::string text;
		//std::sprintf((char*)text.c_str(),"%f,%f,%f,%f,%f,%f\n",(msg->header.stamp).toSec(),0.0,0.0,0.0,0.0,3.0);
		//fp2.write(text.c_str(),strlen(text.c_str()));
		//cv:imshow("view",*(cv_bridge::toCvShare(msg, "32FC1")->image));
		//image_count++;

	}


	void imageRightCallback(const sensor_msgs::ImageConstPtr& msg)
	{
	
		right_img_info.header = msg->header;
		right_img_info_pub.publish(right_img_info);
		//rgbd_info_pub.publish(right_img_info);
		//char newFile[300];
		//std::sprintf(newFile,image_filename.c_str(),image_count); 
		//cv::imwrite(newFile,cv_bridge::toCvShare(msg, "32FC1")->image);
	  	//std::string text;
		//std::sprintf((char*)text.c_str(),"%f,%f,%f,%f,%f,%f\n",(msg->header.stamp).toSec(),0.0,0.0,0.0,0.0,3.0);
		//fp2.write(text.c_str(),strlen(text.c_str()));
		std::cout<< "got image" <<std::endl;
		//image_count++;

	}

/**
	void depth_image_callback(const sensor_msgs::ImageConstPtr& msg)
	{
		//depth_img_info.header = msg->header;
		//depth_img_info_pub.publish(depth_img_info);
		//char newFile[300];
		//std::sprintf(newFile,depth_filename.c_str(),depth_count); 
		//cv::imwrite(newFile,cv_bridge::toCvShare(msg, "32FC1")->image);
		//std::sprintf(newFile,yml_filename.c_str(),depth_count); 
		//cv::FileStorage file(newFile, cv::FileStorage::WRITE);
		//file<<"depth"<<cv_bridge::toCvShare(msg, "32FC1")->image;
	  	//std::string text;
		//std::sprintf((char*)text.c_str(),"%f,%f,%f,%f,%f,%f\n",(msg->header.stamp).toSec(),0.0,0.0,0.0,0.0,4.0);
		//fp2.write(text.c_str(),strlen(text.c_str()));
		//depth_count++;
		//std::cout<< "got depth image" <<std::endl;
		//cv:imshow("view", 0.005*(cv_bridge::toCvShare(msg, "32FC1")->image));
		cv_bridge::CvImagePtr cv_ptr;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, "16UC1");
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }
		cv_ptr->header = msg->header;
		cv_ptr->encoding = "16UC1";
		depth_image_pub.publish(cv_ptr->toImageMsg());
		
	}



	void dataCallback(const sensor_msgs::ImageConstPtr& msg,const sensor_msgs::ImageConstPtr& d_msg){
		 cv::Mat float_img;
		 cv:: Mat d_img;
		 d_img =(cv_bridge::toCvCopy(d_msg)->image);
		 d_img.convertTo(float_img, CV_32FC1, 0.001, 0);//From mm to m(scale of depth_img matters)
     d_img = float_img;
		 pcl::PointCloud<pcl::PointXYZRGB>* pointz = createXYZRGBPointCloud ( d_img, (cv_bridge::toCvCopy(msg, "8UC1")->image),d_msg);
		 point_cloud_pub.publish(*pointz);
		

	}

**/
 
/**
	void imu_callback(const boost::shared_ptr<const geometry_msgs::TransformStamped>& msg){

		/**
			double q[] = {(msg->transform).rotation.w, (msg->transform).rotation.x, (msg->transform).rotation.y, (msg->transform).rotation.z};
			// convert q_dot to R_dot
			quatToMatrix(q,Rot);

			std::cout<< "[" << Rot[0] << "," << Rot[1] << "," << Rot[2] << "]" <<std::endl;
			std::cout<< "[" << Rot[3] << "," << Rot[4] << "," << Rot[5] << "]" <<std::endl;
			std::cout<< "[" << Rot[6] << "," << Rot[7] << "," << Rot[8] << "]" <<std::endl;
	
			
	
		//calculate delta t
		
		double new_time = (msg->header.stamp).toSec();
		//double delta_t = new_time - old_time;
		//std::cout<<old_time<< "," << new_time << std::endl;
		double delta_t;

		if(first_time == 1){
			delta_t = 0.20f;
			first_time = 2;
		}else{

			 delta_t = new_time - old_time;
				//std::cout<<delta_t<<std::endl;
				//std::cout<<old_time<<std::endl;
		}
		
		//update time
		old_time = new_time;;
		
		// get q and delta_translation = double integral of t_double_dot
		double q[] = {(msg->transform).rotation.w, (msg->transform).rotation.x, (msg->transform).rotation.y, (msg->transform).rotation.z}; 
		double t[] = {delta_t * delta_t*g*(msg->transform).translation.x,delta_t * delta_t*g*(msg->transform).translation.y,delta_t *delta_t* g*((msg->transform).translation.z + 1.0)};

	  std::string text;
		std::sprintf((char*)text.c_str(),"%f,%f,%f,%f,%f,%f\n",new_time,t[0],t[1],t[2],0.0,1.0);
		//std::cout<<"["<< t[0]<<";"<<(msg->transform).translation.y<<";"<<(msg->transform).translation.z<<"]"<<std::endl;
		fp2.write(text.c_str(),strlen(text.c_str()));
		std::sprintf((char*)text.c_str(),"%f,%f,%f,%f,%f,%f\n",new_time,q[0],q[1],q[2],q[3],2.0);
		fp2.write(text.c_str(),strlen(text.c_str()));

		//std::cout<< "got image" <<std::endl;
		//image_count++;

		// convert q_dot to R_dot
		quatToMatrix(q,Rot);

		//integrate R_dot

		for(int i = 0; i < 3; i++){

			for(int j = 0; j < 3; j++){

					Rot_new.at<double>(i,j) = Rot[i*3+j];

			}

			trans_new.at<double>(i,0) = t[i];
			
		}

		
		trans_old = trans_old + (Rot_new*trans_new);
		pose_new = Rot_new*pose_old + trans_old;

		
		
		/**

		//Tf_new = {Rot[0],Rot[1],Rot[2],t[0],Rot[3],Rot[4],Rot[5],t[1],Rot[6],Rot[7],Rot[8],t[2],0.0,0.0,0.0,1.0};

		// stack delta R_new and delta translation_new into a 4x4 matrix
		Tf_new[0] = Rot[0];
		Tf_new[1] = Rot[1];
		Tf_new[2] = Rot[2];
		Tf_new[3] = t[0];
		Tf_new[4] = Rot[3];
		Tf_new[5] = Rot[4];
		Tf_new[6] = Rot[5];
		Tf_new[7] = t[1];
		Tf_new[8] = Rot[6];
		Tf_new[9] = Rot[7];
		Tf_new[10] = Rot[8];
		Tf_new[11] = t[2];


		// Multiply to get new transformation from initial frame to current frame
		multiply(Tf_old,Tf_new,C_old);
		memcpy(C_old,Tf_old, sizeof(C_old));
		
		R_old[0] = Tf_old[0];
		R_old[1] = Tf_old[1];
		R_old[2] = Tf_old[2];
		R_old[3] = Tf_old[4];
		R_old[4] = Tf_old[5];
		R_old[5] = Tf_old[6];
		R_old[6] = Tf_old[8];
		R_old[7] = Tf_old[9];
		R_old[8] = Tf_old[10];


		//convert the rotation part back to quaternion
		rotToQuat(q,R_old);

	


		
		//publish new transformation
		geometry_msgs::TransformStamped g_imu;
		g_imu.header = msg->header;
		g_imu.transform.translation.x = trans_old.at<double>(0,0) - drift_x;
		g_imu.transform.translation.y = trans_old.at<double>(1,0) - drift_y;
		g_imu.transform.translation.z = trans_old.at<double>(2,0) - drift_z;
		g_imu.transform.rotation.w = q[0];
		g_imu.transform.rotation.x = q[1];
		g_imu.transform.rotation.y = q[2];
		g_imu.transform.rotation.z = q[3];
		imu_pub.publish(g_imu);

		/**
		geometry_msgs::PoseStamped m_pose;
		m_pose.header = msg->header;
		m_pose.pose.position.x = pose_new.at<double>(0,0);
		m_pose.pose.position.y = pose_new.at<double>(1,0);
		m_pose.pose.position.z = pose_new.at<double>(2,0);
		m_pose.pose.orientation.w = q[0];
		m_pose.pose.orientation.x = q[1];
		m_pose.pose.orientation.y = q[2];
		m_pose.pose.orientation.z = q[3];
		pose_pub.publish(m_pose);

	

	
		static tf::TransformBroadcaster broadcaster; 
		 broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(q[1], q[2], q[3], q[0]), tf::Vector3(pose_new.at<double>(0,0)-0.42, pose_new.at<double>(1,0)-0.42, pose_new.at<double>(2,0)-0.01)),
        msg->header.stamp,"map", "guidance"));



		std::cout<< pose_new.at<double>(0,0)-0.42 << "," << pose_new.at<double>(1,0)-0.42 << "," << pose_new.at<double>(2,0)-0.01 <<std::endl;



		fp3<< "\n" << Rot_new << trans_old << "\n" << "0 0 0 1" << "\n";
		
	}

	**/


int main (int argc, char **argv)
{

	left_img_info.height = height;
	left_img_info.width = width;
	left_img_info.distortion_model = distortion_model;
	left_img_info.D = D_left;
	left_img_info.K = K_left;
	left_img_info.R = R_left;
	left_img_info.P = P_left;


	right_img_info.height = height;
	right_img_info.width = width;
	right_img_info.distortion_model = distortion_model;
	right_img_info.D = D_right;
	right_img_info.K = K_right;
	right_img_info.R = R_right;
	right_img_info.P = P_right;


	
	ros::init(argc, argv, "guidance2stereo_publisher");
	ros::NodeHandle nh;
	cv::namedWindow("view");
	cv::startWindowThread();
/**
	fp2.open(sensor_filename.c_str(),std::ofstream::app | std::ofstream::binary);
	fp3.open("/home/ee125/Documents/correspondences/log3.txt",std::ofstream::app | std::ofstream::binary);


	double A [] =	{1,1,1,2,2,2,3,3,3};
	double B [] = {1,1,1,1,1,1,1,1,1};
	double C [] = {0,0,0,0,0,0,0,0,0};

	double q [] = {-0.0025,-0.012,0.755,0.655};
	double q2 [] = {0,0,0,0};
	double R2 [] = {1,0,0,0,1,0,0,0,1};

**/

	

/**
	clock_t begin = clock();

	for (int i = 0; i < 1; i++){
	
		quatToMatrix(q,C);
	} 

	clock_t end = clock();
  double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;

	ROS_INFO("Elapsed time is : %f", elapsed_secs);

	std::cout<< "[" << C[0] << "," << C[1] << "," << C[2] << "]" <<std::endl;
	std::cout<< "|" << C[3] << "," << C[4] << "," << C[5] << "|" <<std::endl;
	std::cout<< "[" << C[6] << "," << C[7] << "," << C[8] << "]" <<std::endl;

	std::cout<< "[" << q2[0] << "," << q2[1] << "," << q2[2] << "," << q2[3]<< "]" <<std::endl;	
**/
	//message_filters::Subscriber<sensor_msgs::Image> rgb_image_sub(nh,"/guidance/left_image",1 );
	//message_filters::Subscriber<sensor_msgs::Image> d_image_sub(nh,"/guidance/depth_image",1 );

/**
	typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image,sensor_msgs::Image> MySyncPolicy;
	message_filters::Synchronizer<MySyncPolicy> sync(MySyncPolicy(10),rgb_image_sub,d_image_sub);
	sync.registerCallback(boost::bind(&dataCallback,_1,_2));

**/
	ros::Subscriber left_image_sub = nh.subscribe("/guidance/left_image", 1, imageLeftCallback);
	ros::Subscriber right_image_sub = nh.subscribe("/guidance/right_image", 1, imageRightCallback);
	
	//ros::Subscriber depth_image_sub = nh.subscribe("/guidance/depth_image", 100, depth_image_callback);
	
	//ros::Subscriber imu_sub = nh.subscribe("/guidance/imu",1,imu_callback);

	//imu_pub = nh.advertise<geometry_msgs::TransformStamped>("/guidance2/imu",3);

	//pose_pub = nh.advertise<geometry_msgs::PoseStamped>("/guidance2/pose",3);

        left_img_info_pub = nh.advertise<sensor_msgs::CameraInfo>("/guidance/left/camera_info", 1);
	right_img_info_pub = nh.advertise<sensor_msgs::CameraInfo>("/guidance/right/camera_info", 1);
	//rgbd_info_pub = nh.advertise<sensor_msgs::CameraInfo>("/camera/rgb/camera_info", 1);

	//depth_img_info_pub = nh.advertise<sensor_msgs::CameraInfo>("/camera/depth/camera_info", 1000);

	//depth_image_pub			= nh.advertise<sensor_msgs::Image>("/guidance/depth_image2",1);
  	//point_cloud_pub			= nh.advertise<sensor_msgs::PointCloud2>("/guidance/point",1);


		
	
 	ros::spin();
	                   
	 //fp2.close();
	 //fp3.close();
	 cv::destroyWindow("view");

}



