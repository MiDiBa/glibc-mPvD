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
include extensions/CMakeFiles/addons.dir/depend.make

# Include the progress variables for this target.
include extensions/CMakeFiles/addons.dir/progress.make

# Include the compile flags for this target's objects.
include extensions/CMakeFiles/addons.dir/flags.make

extensions/CMakeFiles/addons.dir/addons.c.o: extensions/CMakeFiles/addons.dir/flags.make
extensions/CMakeFiles/addons.dir/addons.c.o: ../extensions/addons.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object extensions/CMakeFiles/addons.dir/addons.c.o"
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/addons.dir/addons.c.o   -c /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/extensions/addons.c

extensions/CMakeFiles/addons.dir/addons.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addons.dir/addons.c.i"
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/extensions/addons.c > CMakeFiles/addons.dir/addons.c.i

extensions/CMakeFiles/addons.dir/addons.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addons.dir/addons.c.s"
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/extensions/addons.c -o CMakeFiles/addons.dir/addons.c.s

extensions/CMakeFiles/addons.dir/addons.c.o.requires:

.PHONY : extensions/CMakeFiles/addons.dir/addons.c.o.requires

extensions/CMakeFiles/addons.dir/addons.c.o.provides: extensions/CMakeFiles/addons.dir/addons.c.o.requires
	$(MAKE) -f extensions/CMakeFiles/addons.dir/build.make extensions/CMakeFiles/addons.dir/addons.c.o.provides.build
.PHONY : extensions/CMakeFiles/addons.dir/addons.c.o.provides

extensions/CMakeFiles/addons.dir/addons.c.o.provides.build: extensions/CMakeFiles/addons.dir/addons.c.o


# Object files for target addons
addons_OBJECTS = \
"CMakeFiles/addons.dir/addons.c.o"

# External object files for target addons
addons_EXTERNAL_OBJECTS =

extensions/libaddons.so: extensions/CMakeFiles/addons.dir/addons.c.o
extensions/libaddons.so: extensions/CMakeFiles/addons.dir/build.make
extensions/libaddons.so: midori/libmidori-core.so.0.0.0
extensions/libaddons.so: midori/libmidori-core-vala.a
extensions/libaddons.so: /usr/local/lib/libpvd.so
extensions/libaddons.so: extensions/CMakeFiles/addons.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module libaddons.so"
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/addons.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extensions/CMakeFiles/addons.dir/build: extensions/libaddons.so

.PHONY : extensions/CMakeFiles/addons.dir/build

extensions/CMakeFiles/addons.dir/requires: extensions/CMakeFiles/addons.dir/addons.c.o.requires

.PHONY : extensions/CMakeFiles/addons.dir/requires

extensions/CMakeFiles/addons.dir/clean:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions && $(CMAKE_COMMAND) -P CMakeFiles/addons.dir/cmake_clean.cmake
.PHONY : extensions/CMakeFiles/addons.dir/clean

extensions/CMakeFiles/addons.dir/depend:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/extensions /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions/CMakeFiles/addons.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extensions/CMakeFiles/addons.dir/depend

