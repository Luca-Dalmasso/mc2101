# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /media/sf_Shared/pulpino/sw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/sf_Shared/pulpino/sw/build

# Utility rule file for motion_detection.fpga.

# Include the progress variables for this target.
include apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/progress.make

apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running motion_detection on FPGA"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/motion_detection && /media/sf_Shared/pulpino/sw/utils/run-on-fpga.sh motion_detection

motion_detection.fpga: apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga
motion_detection.fpga: apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/build.make

.PHONY : motion_detection.fpga

# Rule to build all files generated by this target.
apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/build: motion_detection.fpga

.PHONY : apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/build

apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/motion_detection && $(CMAKE_COMMAND) -P CMakeFiles/motion_detection.fpga.dir/cmake_clean.cmake
.PHONY : apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/clean

apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/sequential_tests/motion_detection /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/motion_detection /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sequential_tests/motion_detection/CMakeFiles/motion_detection.fpga.dir/depend

