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

# Utility rule file for matrixAdd16.kcg.

# Include the progress variables for this target.
include apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/progress.make

apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg:
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd/matrixAdd16 && pulp-pc-analyze --rtl --input=trace_core_00.log --binary=matrixAdd16.elf
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd/matrixAdd16 && kcachegrind kcg.txt

matrixAdd16.kcg: apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg
matrixAdd16.kcg: apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/build.make

.PHONY : matrixAdd16.kcg

# Rule to build all files generated by this target.
apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/build: matrixAdd16.kcg

.PHONY : apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/build

apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd && $(CMAKE_COMMAND) -P CMakeFiles/matrixAdd16.kcg.dir/cmake_clean.cmake
.PHONY : apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/clean

apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/sequential_tests/matrixAdd /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sequential_tests/matrixAdd/CMakeFiles/matrixAdd16.kcg.dir/depend
