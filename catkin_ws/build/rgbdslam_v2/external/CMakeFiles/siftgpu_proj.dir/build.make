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
CMAKE_SOURCE_DIR = /home/viki/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viki/catkin_ws/build

# Utility rule file for siftgpu_proj.

# Include the progress variables for this target.
include rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/progress.make

rgbdslam_v2/external/CMakeFiles/siftgpu_proj: rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete

rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install
rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir
rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download
rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update
rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch
rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure
rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build
rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Completed 'siftgpu_proj'"
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E make_directory /home/viki/catkin_ws/build/rgbdslam_v2/external/CMakeFiles
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-done

rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No install step for 'siftgpu_proj'"
	cd /home/viki/catkin_ws/src/rgbdslam_v2/external/SiftGPU && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install

rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Creating directories for 'siftgpu_proj'"
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E make_directory /home/viki/catkin_ws/src/rgbdslam_v2/external/SiftGPU/
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E make_directory /home/viki/catkin_ws/src/rgbdslam_v2/external/SiftGPU/
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E make_directory /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E make_directory /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/tmp
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E make_directory /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E make_directory /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir

rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No download step for 'siftgpu_proj'"
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download

rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No update step for 'siftgpu_proj'"
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update

rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No patch step for 'siftgpu_proj'"
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch

rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure: rgbdslam_v2/external/siftgpu_prefix/tmp/siftgpu_proj-cfgcmd.txt
rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update
rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No configure step for 'siftgpu_proj'"
	cd /home/viki/catkin_ws/src/rgbdslam_v2/external/SiftGPU && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure

rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing build step for 'siftgpu_proj'"
	cd /home/viki/catkin_ws/src/rgbdslam_v2/external/SiftGPU && make
	cd /home/viki/catkin_ws/src/rgbdslam_v2/external/SiftGPU && /usr/bin/cmake -E touch /home/viki/catkin_ws/build/rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build

siftgpu_proj: rgbdslam_v2/external/CMakeFiles/siftgpu_proj
siftgpu_proj: rgbdslam_v2/external/CMakeFiles/siftgpu_proj-complete
siftgpu_proj: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install
siftgpu_proj: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir
siftgpu_proj: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download
siftgpu_proj: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update
siftgpu_proj: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch
siftgpu_proj: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure
siftgpu_proj: rgbdslam_v2/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build
siftgpu_proj: rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/build.make
.PHONY : siftgpu_proj

# Rule to build all files generated by this target.
rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/build: siftgpu_proj
.PHONY : rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/build

rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/clean:
	cd /home/viki/catkin_ws/build/rgbdslam_v2/external && $(CMAKE_COMMAND) -P CMakeFiles/siftgpu_proj.dir/cmake_clean.cmake
.PHONY : rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/clean

rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/depend:
	cd /home/viki/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viki/catkin_ws/src /home/viki/catkin_ws/src/rgbdslam_v2/external /home/viki/catkin_ws/build /home/viki/catkin_ws/build/rgbdslam_v2/external /home/viki/catkin_ws/build/rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rgbdslam_v2/external/CMakeFiles/siftgpu_proj.dir/depend

