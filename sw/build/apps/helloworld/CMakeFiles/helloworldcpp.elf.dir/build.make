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
include apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/depend.make

# Include the progress variables for this target.
include apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/progress.make

# Include the compile flags for this target's objects.
include apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/flags.make

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o: apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/flags.make
apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o: ../apps/helloworld/helloworld.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o"
	cd /media/sf_Shared/pulpino/sw/build/apps/helloworld && /opt/riscv/bin/riscv32-unknown-elf-gcc  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o -c /media/sf_Shared/pulpino/sw/apps/helloworld/helloworld.cpp

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.i"
	cd /media/sf_Shared/pulpino/sw/build/apps/helloworld && /opt/riscv/bin/riscv32-unknown-elf-gcc $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/sf_Shared/pulpino/sw/apps/helloworld/helloworld.cpp > CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.i

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.s"
	cd /media/sf_Shared/pulpino/sw/build/apps/helloworld && /opt/riscv/bin/riscv32-unknown-elf-gcc $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/sf_Shared/pulpino/sw/apps/helloworld/helloworld.cpp -o CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.s

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o.requires:

.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o.requires

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o.provides: apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o.requires
	$(MAKE) -f apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/build.make apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o.provides.build
.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o.provides

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o.provides.build: apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o


# Object files for target helloworldcpp.elf
helloworldcpp_elf_OBJECTS = \
"CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o"

# External object files for target helloworldcpp.elf
helloworldcpp_elf_EXTERNAL_OBJECTS = \
"/media/sf_Shared/pulpino/sw/build/CMakeFiles/crt0.dir/ref/crt0.riscv.S.o"

apps/helloworldcpp/helloworldcpp.elf: apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o
apps/helloworldcpp/helloworldcpp.elf: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o
apps/helloworldcpp/helloworldcpp.elf: apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/build.make
apps/helloworldcpp/helloworldcpp.elf: libs/bench_lib/libbench.a
apps/helloworldcpp/helloworldcpp.elf: libs/string_lib/libstring.a
apps/helloworldcpp/helloworldcpp.elf: libs/sys_lib/libsys.a
apps/helloworldcpp/helloworldcpp.elf: apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/sf_Shared/pulpino/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../helloworldcpp/helloworldcpp.elf"
	cd /media/sf_Shared/pulpino/sw/build/apps/helloworld && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/helloworldcpp.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/build: apps/helloworldcpp/helloworldcpp.elf

.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/build

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/requires: apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/helloworld.cpp.o.requires

.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/requires

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/clean:
	cd /media/sf_Shared/pulpino/sw/build/apps/helloworld && $(CMAKE_COMMAND) -P CMakeFiles/helloworldcpp.elf.dir/cmake_clean.cmake
.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/clean

apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/depend:
	cd /media/sf_Shared/pulpino/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Shared/pulpino/sw /media/sf_Shared/pulpino/sw/apps/helloworld /media/sf_Shared/pulpino/sw/build /media/sf_Shared/pulpino/sw/build/apps/helloworld /media/sf_Shared/pulpino/sw/build/apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.elf.dir/depend
