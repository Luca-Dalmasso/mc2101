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

# Utility rule file for perfbench.ipm.bin.cmd.

# Include the progress variables for this target.
include apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/progress.make

apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd: apps/bench/ipm/perfbench.ipm.bin


apps/bench/ipm/perfbench.ipm.bin: apps/bench/ipm/perfbench.ipm.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating perfbench.ipm.bin"
	cd /media/sf_Shared/pulpino/sw/build/apps/bench/ipm && /opt/riscv/bin/riscv32-unknown-elf-objcopy -R .debug_frame -R .comment -R .stack -R .heapsram -R .heapscm -R .scmlock -O binary /media/sf_Shared/pulpino/sw/build/apps/bench/ipm/perfbench.ipm.elf perfbench.ipm.bin

perfbench.ipm.bin.cmd: apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd
perfbench.ipm.bin.cmd: apps/bench/ipm/perfbench.ipm.bin
perfbench.ipm.bin.cmd: apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/build.make

.PHONY : perfbench.ipm.bin.cmd

# Rule to build all files generated by this target.
apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/build: perfbench.ipm.bin.cmd

.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/build

apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/bench/ipm && $(CMAKE_COMMAND) -P CMakeFiles/perfbench.ipm.bin.cmd.dir/cmake_clean.cmake
.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/clean

apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/bench/ipm /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/bench/ipm /media/sf_Shared/pulpino/sw/build/apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.bin.cmd.dir/depend

