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

# Utility rule file for GPIO_test.read.

# Include the progress variables for this target.
include apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/progress.make

GPIO_test.read: apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/build.make
	cd /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test && /opt/riscv/bin/riscv32-unknown-elf-objdump -Mmarch=RV32IM -d /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test/GPIO_test.elf > GPIO_test.read
.PHONY : GPIO_test.read

# Rule to build all files generated by this target.
apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/build: GPIO_test.read

.PHONY : apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/build

apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test && $(CMAKE_COMMAND) -P CMakeFiles/GPIO_test.read.dir/cmake_clean.cmake
.PHONY : apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/clean

apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/Arduino_tests/GPIO_test /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/Arduino_tests/GPIO_test/CMakeFiles/GPIO_test.read.dir/depend

