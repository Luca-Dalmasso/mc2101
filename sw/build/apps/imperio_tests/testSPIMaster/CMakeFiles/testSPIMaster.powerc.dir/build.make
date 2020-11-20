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

# Utility rule file for testSPIMaster.powerc.

# Include the progress variables for this target.
include apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/progress.make

apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running testSPIMaster in ModelSim (post layout)"
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testSPIMaster && /usr/bin/cmake -E remove stdout/*
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testSPIMaster && /usr/bin/cmake -E remove FS/*
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testSPIMaster && tcsh -c env\ VSIM_DIR=/media/sf_Shared/pulpino/vsim\ USE_ZERO_RISCY=1\ RISCY_RV32F=0\ ZERO_RV32M=1\ ZERO_RV32E=0\ PL_NETLIST=\ TB_TEST=""\ /opt/intelFPGA/20.1/modelsim_ase/linuxaloem/vsim\ \ -c\ -64\ -do\ 'source\ tcl_files/run_power.tcl\;\ run\ -a\;\ exit'

testSPIMaster.powerc: apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc
testSPIMaster.powerc: apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/build.make

.PHONY : testSPIMaster.powerc

# Rule to build all files generated by this target.
apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/build: testSPIMaster.powerc

.PHONY : apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/build

apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testSPIMaster && $(CMAKE_COMMAND) -P CMakeFiles/testSPIMaster.powerc.dir/cmake_clean.cmake
.PHONY : apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/clean

apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/imperio_tests/testSPIMaster /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testSPIMaster /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.powerc.dir/depend
