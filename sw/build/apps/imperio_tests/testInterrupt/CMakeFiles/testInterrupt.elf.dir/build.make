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
include apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/depend.make

# Include the progress variables for this target.
include apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/progress.make

# Include the compile flags for this target's objects.
include apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/flags.make

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o: apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/flags.make
apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o: ../apps/imperio_tests/testInterrupt/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o"
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testInterrupt && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testInterrupt.elf.dir/main.c.o   -c /media/sf_Shared/pulpino/sw/apps/imperio_tests/testInterrupt/main.c

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testInterrupt.elf.dir/main.c.i"
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testInterrupt && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/sf_Shared/pulpino/sw/apps/imperio_tests/testInterrupt/main.c > CMakeFiles/testInterrupt.elf.dir/main.c.i

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testInterrupt.elf.dir/main.c.s"
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testInterrupt && /opt/riscv/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/sf_Shared/pulpino/sw/apps/imperio_tests/testInterrupt/main.c -o CMakeFiles/testInterrupt.elf.dir/main.c.s

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o.requires:

.PHONY : apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o.requires

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o.provides: apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o.requires
	$(MAKE) -f apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/build.make apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o.provides.build
.PHONY : apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o.provides

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o.provides.build: apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o


# Object files for target testInterrupt.elf
testInterrupt_elf_OBJECTS = \
"CMakeFiles/testInterrupt.elf.dir/main.c.o"

# External object files for target testInterrupt.elf
testInterrupt_elf_EXTERNAL_OBJECTS = \
"/media/sf_Shared/pulpino/sw/build/CMakeFiles/crt0.dir/ref/crt0.riscv.S.o"

apps/imperio_tests/testInterrupt/testInterrupt.elf: apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o
apps/imperio_tests/testInterrupt/testInterrupt.elf: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o
apps/imperio_tests/testInterrupt/testInterrupt.elf: apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/build.make
apps/imperio_tests/testInterrupt/testInterrupt.elf: libs/bench_lib/libbench.a
apps/imperio_tests/testInterrupt/testInterrupt.elf: libs/string_lib/libstring.a
apps/imperio_tests/testInterrupt/testInterrupt.elf: libs/sys_lib/libsys.a
apps/imperio_tests/testInterrupt/testInterrupt.elf: apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testInterrupt.elf"
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testInterrupt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testInterrupt.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/build: apps/imperio_tests/testInterrupt/testInterrupt.elf

.PHONY : apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/build

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/requires: apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/main.c.o.requires

.PHONY : apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/requires

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testInterrupt && $(CMAKE_COMMAND) -P CMakeFiles/testInterrupt.elf.dir/cmake_clean.cmake
.PHONY : apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/clean

apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/imperio_tests/testInterrupt /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testInterrupt /media/sf_Shared/pulpino/sw/build/apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/imperio_tests/testInterrupt/CMakeFiles/testInterrupt.elf.dir/depend

