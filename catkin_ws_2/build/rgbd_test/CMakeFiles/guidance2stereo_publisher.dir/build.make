# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/viki/catkin_ws_2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viki/catkin_ws_2/build

# Include any dependencies generated for this target.
include rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/depend.make

# Include the progress variables for this target.
include rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/progress.make

# Include the compile flags for this target's objects.
include rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/flags.make

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o: rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/flags.make
rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o: /home/viki/catkin_ws_2/src/rgbd_test/src/guidance2stereo_publisher.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws_2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o"
	cd /home/viki/catkin_ws_2/build/rgbd_test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o -c /home/viki/catkin_ws_2/src/rgbd_test/src/guidance2stereo_publisher.cpp

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.i"
	cd /home/viki/catkin_ws_2/build/rgbd_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/viki/catkin_ws_2/src/rgbd_test/src/guidance2stereo_publisher.cpp > CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.i

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.s"
	cd /home/viki/catkin_ws_2/build/rgbd_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/viki/catkin_ws_2/src/rgbd_test/src/guidance2stereo_publisher.cpp -o CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.s

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o.requires:
.PHONY : rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o.requires

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o.provides: rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o.requires
	$(MAKE) -f rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/build.make rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o.provides.build
.PHONY : rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o.provides

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o.provides.build: rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o

# Object files for target guidance2stereo_publisher
guidance2stereo_publisher_OBJECTS = \
"CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o"

# External object files for target guidance2stereo_publisher
guidance2stereo_publisher_EXTERNAL_OBJECTS =

/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/build.make
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_common.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_kdtree.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_octree.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_search.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_surface.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_sample_consensus.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_filters.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_features.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_segmentation.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libOpenNI.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCommon.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkRendering.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkHybrid.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCharts.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_io.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_registration.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_keypoints.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_recognition.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_visualization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_people.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_outofcore.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_tracking.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_apps.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libOpenNI.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCommon.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkRendering.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkHybrid.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCharts.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libcv_bridge.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libimage_transport.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libpcl_ros_filters.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libpcl_ros_io.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libpcl_ros_tf.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_common.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_kdtree.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_octree.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_search.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_surface.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_sample_consensus.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_filters.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_features.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_segmentation.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_io.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_registration.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_keypoints.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_recognition.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_visualization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_people.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_outofcore.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_tracking.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_apps.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libOpenNI.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCommon.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkRendering.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkHybrid.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCharts.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libnodeletlib.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libbondcpp.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libclass_loader.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libPocoFoundation.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libdl.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libroslib.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosbag.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosbag_storage.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libroslz4.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libtopic_tools.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libtf.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libtf2_ros.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libactionlib.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libmessage_filters.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libtf2.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libroscpp.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosconsole.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/liblog4cxx.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librostime.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libcpp_common.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_common.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_kdtree.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_octree.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_search.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_surface.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_sample_consensus.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_filters.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_features.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_segmentation.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libOpenNI.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_io.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_registration.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_keypoints.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_recognition.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_visualization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_people.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_outofcore.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_tracking.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libpcl_apps.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libcv_bridge.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libimage_transport.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libpcl_ros_filters.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libpcl_ros_io.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libpcl_ros_tf.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCommon.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkRendering.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkHybrid.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCharts.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libnodeletlib.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libbondcpp.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libclass_loader.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libPocoFoundation.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libdl.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libroslib.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosbag.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosbag_storage.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libroslz4.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libtopic_tools.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libtf.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libtf2_ros.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libactionlib.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libmessage_filters.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libtf2.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libroscpp.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosconsole.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/liblog4cxx.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/librostime.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /opt/ros/indigo/lib/libcpp_common.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkViews.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkInfovis.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkWidgets.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkHybrid.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkParallel.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkVolumeRendering.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkRendering.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkGraphics.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkImaging.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkIO.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkFiltering.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtkCommon.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: /usr/lib/libvtksys.so.5.8.0
/home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher: rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher"
	cd /home/viki/catkin_ws_2/build/rgbd_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/guidance2stereo_publisher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/build: /home/viki/catkin_ws_2/devel/lib/rgbd_test/guidance2stereo_publisher
.PHONY : rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/build

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/requires: rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/src/guidance2stereo_publisher.cpp.o.requires
.PHONY : rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/requires

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/clean:
	cd /home/viki/catkin_ws_2/build/rgbd_test && $(CMAKE_COMMAND) -P CMakeFiles/guidance2stereo_publisher.dir/cmake_clean.cmake
.PHONY : rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/clean

rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/depend:
	cd /home/viki/catkin_ws_2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viki/catkin_ws_2/src /home/viki/catkin_ws_2/src/rgbd_test /home/viki/catkin_ws_2/build /home/viki/catkin_ws_2/build/rgbd_test /home/viki/catkin_ws_2/build/rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rgbd_test/CMakeFiles/guidance2stereo_publisher.dir/depend

