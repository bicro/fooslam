/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by gensrv_cpp from file /home/viki/catkin_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui_s.srv
 *
 */


#ifndef RGBDSLAM_MESSAGE_RGBDSLAM_ROS_UI_S_H
#define RGBDSLAM_MESSAGE_RGBDSLAM_ROS_UI_S_H

#include <ros/service_traits.h>


#include <rgbdslam/rgbdslam_ros_ui_sRequest.h>
#include <rgbdslam/rgbdslam_ros_ui_sResponse.h>


namespace rgbdslam
{

struct rgbdslam_ros_ui_s
{

typedef rgbdslam_ros_ui_sRequest Request;
typedef rgbdslam_ros_ui_sResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct rgbdslam_ros_ui_s
} // namespace rgbdslam


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rgbdslam::rgbdslam_ros_ui_s > {
  static const char* value()
  {
    return "406bad1a44daaa500258274f332bb924";
  }

  static const char* value(const ::rgbdslam::rgbdslam_ros_ui_s&) { return value(); }
};

template<>
struct DataType< ::rgbdslam::rgbdslam_ros_ui_s > {
  static const char* value()
  {
    return "rgbdslam/rgbdslam_ros_ui_s";
  }

  static const char* value(const ::rgbdslam::rgbdslam_ros_ui_s&) { return value(); }
};


// service_traits::MD5Sum< ::rgbdslam::rgbdslam_ros_ui_sRequest> should match 
// service_traits::MD5Sum< ::rgbdslam::rgbdslam_ros_ui_s > 
template<>
struct MD5Sum< ::rgbdslam::rgbdslam_ros_ui_sRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rgbdslam::rgbdslam_ros_ui_s >::value();
  }
  static const char* value(const ::rgbdslam::rgbdslam_ros_ui_sRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rgbdslam::rgbdslam_ros_ui_sRequest> should match 
// service_traits::DataType< ::rgbdslam::rgbdslam_ros_ui_s > 
template<>
struct DataType< ::rgbdslam::rgbdslam_ros_ui_sRequest>
{
  static const char* value()
  {
    return DataType< ::rgbdslam::rgbdslam_ros_ui_s >::value();
  }
  static const char* value(const ::rgbdslam::rgbdslam_ros_ui_sRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rgbdslam::rgbdslam_ros_ui_sResponse> should match 
// service_traits::MD5Sum< ::rgbdslam::rgbdslam_ros_ui_s > 
template<>
struct MD5Sum< ::rgbdslam::rgbdslam_ros_ui_sResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rgbdslam::rgbdslam_ros_ui_s >::value();
  }
  static const char* value(const ::rgbdslam::rgbdslam_ros_ui_sResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rgbdslam::rgbdslam_ros_ui_sResponse> should match 
// service_traits::DataType< ::rgbdslam::rgbdslam_ros_ui_s > 
template<>
struct DataType< ::rgbdslam::rgbdslam_ros_ui_sResponse>
{
  static const char* value()
  {
    return DataType< ::rgbdslam::rgbdslam_ros_ui_s >::value();
  }
  static const char* value(const ::rgbdslam::rgbdslam_ros_ui_sResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RGBDSLAM_MESSAGE_RGBDSLAM_ROS_UI_S_H
