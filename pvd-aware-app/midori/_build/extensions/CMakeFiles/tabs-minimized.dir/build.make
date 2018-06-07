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
CMAKE_SOURCE_DIR = /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build

# Include any dependencies generated for this target.
include extensions/CMakeFiles/tabs-minimized.dir/depend.make

# Include the progress variables for this target.
include extensions/CMakeFiles/tabs-minimized.dir/progress.make

# Include the compile flags for this target's objects.
include extensions/CMakeFiles/tabs-minimized.dir/flags.make

extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o: extensions/CMakeFiles/tabs-minimized.dir/flags.make
extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o: ../extensions/tabs-minimized.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o"
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o   -c /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/extensions/tabs-minimized.c

extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tabs-minimized.dir/tabs-minimized.c.i"
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/extensions/tabs-minimized.c > CMakeFiles/tabs-minimized.dir/tabs-minimized.c.i

extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tabs-minimized.dir/tabs-minimized.c.s"
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/extensions/tabs-minimized.c -o CMakeFiles/tabs-minimized.dir/tabs-minimized.c.s

extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o.requires:

.PHONY : extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o.requires

extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o.provides: extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o.requires
	$(MAKE) -f extensions/CMakeFiles/tabs-minimized.dir/build.make extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o.provides.build
.PHONY : extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o.provides

extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o.provides.build: extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o


# Object files for target tabs-minimized
tabs__minimized_OBJECTS = \
"CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o"

# External object files for target tabs-minimized
tabs__minimized_EXTERNAL_OBJECTS =

extensions/libtabs-minimized.so: extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o
extensions/libtabs-minimized.so: extensions/CMakeFiles/tabs-minimized.dir/build.make
extensions/libtabs-minimized.so: midori/libmidori-core.so.0.0.0
extensions/libtabs-minimized.so: midori/libmidori-core-vala.a
extensions/libtabs-minimized.so: /usr/local/lib/libpvd.so
extensions/libtabs-minimized.so: extensions/CMakeFiles/tabs-minimized.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module libtabs-minimized.so"
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tabs-minimized.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extensions/CMakeFiles/tabs-minimized.dir/build: extensions/libtabs-minimized.so

.PHONY : extensions/CMakeFiles/tabs-minimized.dir/build

extensions/CMakeFiles/tabs-minimized.dir/requires: extensions/CMakeFiles/tabs-minimized.dir/tabs-minimized.c.o.requires

.PHONY : extensions/CMakeFiles/tabs-minimized.dir/requires

extensions/CMakeFiles/tabs-minimized.dir/clean:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && $(CMAKE_COMMAND) -P CMakeFiles/tabs-minimized.dir/cmake_clean.cmake
.PHONY : extensions/CMakeFiles/tabs-minimized.dir/clean

extensions/CMakeFiles/tabs-minimized.dir/depend:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/extensions /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions/CMakeFiles/tabs-minimized.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extensions/CMakeFiles/tabs-minimized.dir/depend

