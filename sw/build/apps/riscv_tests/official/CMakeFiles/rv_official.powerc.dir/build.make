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

# Utility rule file for rv_official.powerc.

# Include the progress variables for this target.
include apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/progress.make

apps/riscv_tests/official/CMakeFiles/rv_official.powerc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running rv_official in ModelSim (post layout)"
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/official && /usr/bin/cmake -E remove stdout/*
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/official && /usr/bin/cmake -E remove FS/*
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/official && tcsh -c env\ VSIM_DIR=/media/sf_Shared/pulpino/vsim\ USE_ZERO_RISCY=0\ RISCY_RV32F=0\ ZERO_RV32M=0\ ZERO_RV32E=0\ PL_NETLIST=\ TB_TEST=""\ /opt/intelFPGA/20.1/modelsim_ase/linuxaloem/vsim\ \ -c\ -64\ -do\ 'source\ tcl_files/run_power.tcl\;\ run\ -a\;\ exit'

rv_official.powerc: apps/riscv_tests/official/CMakeFiles/rv_official.powerc
rv_official.powerc: apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/build.make

.PHONY : rv_official.powerc

# Rule to build all files generated by this target.
apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/build: rv_official.powerc

.PHONY : apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/build

apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/official && $(CMAKE_COMMAND) -P CMakeFiles/rv_official.powerc.dir/cmake_clean.cmake
.PHONY : apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/clean

apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/riscv_tests/official /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/official /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/riscv_tests/official/CMakeFiles/rv_official.powerc.dir/depend

