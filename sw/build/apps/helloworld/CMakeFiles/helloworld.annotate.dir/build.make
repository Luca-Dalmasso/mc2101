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

# Utility rule file for helloworld.annotate.

# Include the progress variables for this target.
include apps/helloworld/CMakeFiles/helloworld.annotate.dir/progress.make

helloworld.annotate: apps/helloworld/CMakeFiles/helloworld.annotate.dir/build.make
	cd /media/sf_Shared/pulpino/sw/build/apps/helloworld && /media/sf_Shared/pulpino/sw/utils/annotate.py helloworld.read
.PHONY : helloworld.annotate

# Rule to build all files generated by this target.
apps/helloworld/CMakeFiles/helloworld.annotate.dir/build: helloworld.annotate

.PHONY : apps/helloworld/CMakeFiles/helloworld.annotate.dir/build

apps/helloworld/CMakeFiles/helloworld.annotate.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/helloworld && $(CMAKE_COMMAND) -P CMakeFiles/helloworld.annotate.dir/cmake_clean.cmake
.PHONY : apps/helloworld/CMakeFiles/helloworld.annotate.dir/clean

apps/helloworld/CMakeFiles/helloworld.annotate.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/helloworld /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/helloworld /media/sf_Shared/pulpino/sw/build/apps/helloworld/CMakeFiles/helloworld.annotate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/helloworld/CMakeFiles/helloworld.annotate.dir/depend
