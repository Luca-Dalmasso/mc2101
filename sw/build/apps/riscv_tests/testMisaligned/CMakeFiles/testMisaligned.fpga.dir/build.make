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

# Utility rule file for testMisaligned.fpga.

# Include the progress variables for this target.
include apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/progress.make

apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running testMisaligned on FPGA"
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testMisaligned && /media/sf_Shared/pulpino/sw/utils/run-on-fpga.sh testMisaligned

testMisaligned.fpga: apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga
testMisaligned.fpga: apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/build.make

.PHONY : testMisaligned.fpga

# Rule to build all files generated by this target.
apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/build: testMisaligned.fpga

.PHONY : apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/build

apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testMisaligned && $(CMAKE_COMMAND) -P CMakeFiles/testMisaligned.fpga.dir/cmake_clean.cmake
.PHONY : apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/clean

apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/riscv_tests/testMisaligned /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testMisaligned /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/riscv_tests/testMisaligned/CMakeFiles/testMisaligned.fpga.dir/depend

