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

# Utility rule file for testI2C.slm.cmd.

# Include the progress variables for this target.
include apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/progress.make

apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd: apps/imperio_tests/testI2C/slm_files/l2_ram.slm


apps/imperio_tests/testI2C/slm_files/l2_ram.slm: apps/imperio_tests/testI2C/testI2C.s19
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating slm_files/l2_ram.slm"
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testI2C/slm_files && /media/sf_Shared/pulpino/sw/utils/s19toslm.py ../testI2C.s19
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testI2C/slm_files && /usr/bin/cmake -E touch l2_ram.slm

apps/imperio_tests/testI2C/testI2C.s19: apps/imperio_tests/testI2C/testI2C.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating testI2C.s19"
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testI2C && /opt/riscv/bin/riscv32-unknown-elf-objcopy --srec-len 1 --output-target=srec /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testI2C/testI2C.elf testI2C.s19

testI2C.slm.cmd: apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd
testI2C.slm.cmd: apps/imperio_tests/testI2C/slm_files/l2_ram.slm
testI2C.slm.cmd: apps/imperio_tests/testI2C/testI2C.s19
testI2C.slm.cmd: apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/build.make

.PHONY : testI2C.slm.cmd

# Rule to build all files generated by this target.
apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/build: testI2C.slm.cmd

.PHONY : apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/build

apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testI2C && $(CMAKE_COMMAND) -P CMakeFiles/testI2C.slm.cmd.dir/cmake_clean.cmake
.PHONY : apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/clean

apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/imperio_tests/testI2C /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testI2C /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/imperio_tests/testI2C/CMakeFiles/testI2C.slm.cmd.dir/depend

