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

# Utility rule file for perfbench.fft.kcg.

# Include the progress variables for this target.
include apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/progress.make

apps/bench/fft/CMakeFiles/perfbench.fft.kcg:
	cd /media/sf_Shared/pulpino/sw/build/apps/bench/fft && pulp-pc-analyze --rtl --input=trace_core_00.log --binary=perfbench.fft.elf
	cd /media/sf_Shared/pulpino/sw/build/apps/bench/fft && kcachegrind kcg.txt

perfbench.fft.kcg: apps/bench/fft/CMakeFiles/perfbench.fft.kcg
perfbench.fft.kcg: apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/build.make

.PHONY : perfbench.fft.kcg

# Rule to build all files generated by this target.
apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/build: perfbench.fft.kcg

.PHONY : apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/build

apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/bench/fft && $(CMAKE_COMMAND) -P CMakeFiles/perfbench.fft.kcg.dir/cmake_clean.cmake
.PHONY : apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/clean

apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/bench/fft /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/bench/fft /media/sf_Shared/pulpino/sw/build/apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/bench/fft/CMakeFiles/perfbench.fft.kcg.dir/depend
