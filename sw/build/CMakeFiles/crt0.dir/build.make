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

# Include any dependencies generated for this target.
include CMakeFiles/crt0.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/crt0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/crt0.dir/flags.make

CMakeFiles/crt0.dir/ref/crt0.riscv.S.o: CMakeFiles/crt0.dir/flags.make
CMakeFiles/crt0.dir/ref/crt0.riscv.S.o: ../ref/crt0.riscv.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/crt0.dir/ref/crt0.riscv.S.o"
	/opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crt0.dir/ref/crt0.riscv.S.o   -c /media/sf_Shared/pulpino/sw/ref/crt0.riscv.S

CMakeFiles/crt0.dir/ref/crt0.riscv.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crt0.dir/ref/crt0.riscv.S.i"
	/opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/sf_Shared/pulpino/sw/ref/crt0.riscv.S > CMakeFiles/crt0.dir/ref/crt0.riscv.S.i

CMakeFiles/crt0.dir/ref/crt0.riscv.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crt0.dir/ref/crt0.riscv.S.s"
	/opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/sf_Shared/pulpino/sw/ref/crt0.riscv.S -o CMakeFiles/crt0.dir/ref/crt0.riscv.S.s

CMakeFiles/crt0.dir/ref/crt0.riscv.S.o.requires:

.PHONY : CMakeFiles/crt0.dir/ref/crt0.riscv.S.o.requires

CMakeFiles/crt0.dir/ref/crt0.riscv.S.o.provides: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o.requires
	$(MAKE) -f CMakeFiles/crt0.dir/build.make CMakeFiles/crt0.dir/ref/crt0.riscv.S.o.provides.build
.PHONY : CMakeFiles/crt0.dir/ref/crt0.riscv.S.o.provides

CMakeFiles/crt0.dir/ref/crt0.riscv.S.o.provides.build: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o


crt0: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o
crt0: CMakeFiles/crt0.dir/build.make

.PHONY : crt0

# Rule to build all files generated by this target.
CMakeFiles/crt0.dir/build: crt0

.PHONY : CMakeFiles/crt0.dir/build

CMakeFiles/crt0.dir/requires: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o.requires

.PHONY : CMakeFiles/crt0.dir/requires

CMakeFiles/crt0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/crt0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/crt0.dir/clean

CMakeFiles/crt0.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/CMakeFiles/crt0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/crt0.dir/depend
