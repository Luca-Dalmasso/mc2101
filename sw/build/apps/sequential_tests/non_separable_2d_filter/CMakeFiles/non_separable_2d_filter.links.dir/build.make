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

# Utility rule file for non_separable_2d_filter.links.

# Include the progress variables for this target.
include apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/progress.make

apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/modelsim.ini
apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/work
apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/tcl_files
apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/waves


apps/sequential_tests/non_separable_2d_filter/modelsim.ini:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating modelsim.ini"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter && /usr/bin/cmake -E create_symlink /media/sf_Shared/pulpino/vsim/modelsim.ini /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter//modelsim.ini

apps/sequential_tests/non_separable_2d_filter/work:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating work"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter && /usr/bin/cmake -E create_symlink /media/sf_Shared/pulpino/vsim/work /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter//work

apps/sequential_tests/non_separable_2d_filter/tcl_files:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating tcl_files"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter && /usr/bin/cmake -E create_symlink /media/sf_Shared/pulpino/vsim/tcl_files /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter//tcl_files

apps/sequential_tests/non_separable_2d_filter/waves:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating waves"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter && /usr/bin/cmake -E create_symlink /media/sf_Shared/pulpino/vsim/waves /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter//waves

non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links
non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/modelsim.ini
non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/work
non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/tcl_files
non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/waves
non_separable_2d_filter.links: apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/build.make

.PHONY : non_separable_2d_filter.links

# Rule to build all files generated by this target.
apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/build: non_separable_2d_filter.links

.PHONY : apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/build

apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter && $(CMAKE_COMMAND) -P CMakeFiles/non_separable_2d_filter.links.dir/cmake_clean.cmake
.PHONY : apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/clean

apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/sequential_tests/non_separable_2d_filter /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sequential_tests/non_separable_2d_filter/CMakeFiles/non_separable_2d_filter.links.dir/depend
