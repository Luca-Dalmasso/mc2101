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

# Utility rule file for wire_test.kcg.

# Include the progress variables for this target.
include apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/progress.make

apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg:
	cd /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/wire_test && pulp-pc-analyze --rtl --input=trace_core_00.log --binary=wire_test.elf
	cd /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/wire_test && kcachegrind kcg.txt

wire_test.kcg: apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg
wire_test.kcg: apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/build.make

.PHONY : wire_test.kcg

# Rule to build all files generated by this target.
apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/build: wire_test.kcg

.PHONY : apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/build

apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/wire_test && $(CMAKE_COMMAND) -P CMakeFiles/wire_test.kcg.dir/cmake_clean.cmake
.PHONY : apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/clean

apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/Arduino_tests/wire_test /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/wire_test /media/sf_Shared/pulpino/sw/build/apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/Arduino_tests/wire_test/CMakeFiles/wire_test.kcg.dir/depend

