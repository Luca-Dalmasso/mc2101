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

# Utility rule file for GPIO_test.fpga.

# Include the progress variables for this target.
include apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/progress.make

apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running GPIO_test on FPGA"
	cd /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test && /media/sf_Shared/pulpino/sw/utils/run-on-fpga.sh GPIO_test

GPIO_test.fpga: apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga
GPIO_test.fpga: apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/build.make

.PHONY : GPIO_test.fpga

# Rule to build all files generated by this target.
apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/build: GPIO_test.fpga

.PHONY : apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/build

apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test && $(CMAKE_COMMAND) -P CMakeFiles/GPIO_test.fpga.dir/cmake_clean.cmake
.PHONY : apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/clean

apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/Arduino_tests/GPIO_test /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.fpga.dir/depend
