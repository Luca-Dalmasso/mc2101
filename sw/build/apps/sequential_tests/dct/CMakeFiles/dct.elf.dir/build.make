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
include apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/depend.make

# Include the progress variables for this target.
include apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/progress.make

# Include the compile flags for this target's objects.
include apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/flags.make

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o: apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/flags.make
apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o: ../apps/sequential_tests/dct/dct.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/dct && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dct.elf.dir/dct.c.o   -c /media/sf_Shared/pulpino/sw/apps/sequential_tests/dct/dct.c

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dct.elf.dir/dct.c.i"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/dct && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/sf_Shared/pulpino/sw/apps/sequential_tests/dct/dct.c > CMakeFiles/dct.elf.dir/dct.c.i

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dct.elf.dir/dct.c.s"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/dct && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/sf_Shared/pulpino/sw/apps/sequential_tests/dct/dct.c -o CMakeFiles/dct.elf.dir/dct.c.s

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o.requires:

.PHONY : apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o.requires

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o.provides: apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o.requires
	$(MAKE) -f apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/build.make apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o.provides.build
.PHONY : apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o.provides

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o.provides.build: apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o


# Object files for target dct.elf
dct_elf_OBJECTS = \
"CMakeFiles/dct.elf.dir/dct.c.o"

# External object files for target dct.elf
dct_elf_EXTERNAL_OBJECTS = \
"/media/sf_Shared/pulpino/sw/build/CMakeFiles/crt0.dir/ref/crt0.riscv.S.o"

apps/sequential_tests/dct/dct.elf: apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o
apps/sequential_tests/dct/dct.elf: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o
apps/sequential_tests/dct/dct.elf: apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/build.make
apps/sequential_tests/dct/dct.elf: libs/bench_lib/libbench.a
apps/sequential_tests/dct/dct.elf: libs/string_lib/libstring.a
apps/sequential_tests/dct/dct.elf: libs/sys_lib/libsys.a
apps/sequential_tests/dct/dct.elf: apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable dct.elf"
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/dct && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dct.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/build: apps/sequential_tests/dct/dct.elf

.PHONY : apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/build

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/requires: apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/dct.c.o.requires

.PHONY : apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/requires

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/dct && $(CMAKE_COMMAND) -P CMakeFiles/dct.elf.dir/cmake_clean.cmake
.PHONY : apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/clean

apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/sequential_tests/dct /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/dct /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sequential_tests/dct/CMakeFiles/dct.elf.dir/depend
