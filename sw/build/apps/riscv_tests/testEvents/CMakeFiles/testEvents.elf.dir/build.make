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
include apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/depend.make

# Include the progress variables for this target.
include apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/progress.make

# Include the compile flags for this target's objects.
include apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/flags.make

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o: apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/flags.make
apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o: ../apps/riscv_tests/testEvents/testEvents.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o"
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testEvents && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testEvents.elf.dir/testEvents.c.o   -c /media/sf_Shared/pulpino/sw/apps/riscv_tests/testEvents/testEvents.c

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testEvents.elf.dir/testEvents.c.i"
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testEvents && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/sf_Shared/pulpino/sw/apps/riscv_tests/testEvents/testEvents.c > CMakeFiles/testEvents.elf.dir/testEvents.c.i

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testEvents.elf.dir/testEvents.c.s"
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testEvents && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/sf_Shared/pulpino/sw/apps/riscv_tests/testEvents/testEvents.c -o CMakeFiles/testEvents.elf.dir/testEvents.c.s

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o.requires:

.PHONY : apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o.requires

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o.provides: apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o.requires
	$(MAKE) -f apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/build.make apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o.provides.build
.PHONY : apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o.provides

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o.provides.build: apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o


# Object files for target testEvents.elf
testEvents_elf_OBJECTS = \
"CMakeFiles/testEvents.elf.dir/testEvents.c.o"

# External object files for target testEvents.elf
testEvents_elf_EXTERNAL_OBJECTS = \
"/media/sf_Shared/pulpino/sw/build/CMakeFiles/crt0.dir/ref/crt0.riscv.S.o"

apps/riscv_tests/testEvents/testEvents.elf: apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o
apps/riscv_tests/testEvents/testEvents.elf: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o
apps/riscv_tests/testEvents/testEvents.elf: apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/build.make
apps/riscv_tests/testEvents/testEvents.elf: libs/bench_lib/libbench.a
apps/riscv_tests/testEvents/testEvents.elf: libs/string_lib/libstring.a
apps/riscv_tests/testEvents/testEvents.elf: libs/sys_lib/libsys.a
apps/riscv_tests/testEvents/testEvents.elf: apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testEvents.elf"
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testEvents && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testEvents.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/build: apps/riscv_tests/testEvents/testEvents.elf

.PHONY : apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/build

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/requires: apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/testEvents.c.o.requires

.PHONY : apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/requires

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testEvents && $(CMAKE_COMMAND) -P CMakeFiles/testEvents.elf.dir/cmake_clean.cmake
.PHONY : apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/clean

apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/riscv_tests/testEvents /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testEvents /media/sf_Shared/pulpino/sw/build/apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/riscv_tests/testEvents/CMakeFiles/testEvents.elf.dir/depend

