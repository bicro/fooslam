#!/bin/bash

gnome-terminal --tab -e "bash -c 'roscore'";
sleep 5s;
gnome-terminal --tab -e "bash -c '/home/viki/Desktop/fixusb.sh; cd /home/viki/catkin_ws; catkin_make; source devel/setup.bash; rosrun guidance guidanceNode'";
sleep 5s;
gnome-terminal --tab -e "bash -c '/home/viki/Desktop/fixusb.sh; cd /home/viki/catkin_ws_2; catkin_make; source devel/setup.bash; rosrun rgbd_test guidance2stereo_publishe``r'";
sleep 5s;
gnome-terminal --tab -e "bash -c '/home/viki/Desktop/fixusb.sh; cd /home/viki/catkin_ws; catkin_make; source devel/setup.bash; roslaunch rgbdslam rgbdslam.launch'";
sleep 5s;

