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

# Utility rule file for gdb-properties.

# Include the progress variables for this target.
include tests/CMakeFiles/gdb-properties.dir/progress.make

tests/CMakeFiles/gdb-properties:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && env XDG_CACHE_HOME=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/properties-folders/XDG_CACHE_HOME XDG_CONFIG_HOME=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/properties-folders/XDG_CONFIG_HOME XDG_DATA_HOME=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/properties-folders/XDG_DATA_HOME XDG_RUNTIME_DIR=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/properties-folders/XDG_RUNTIME_DIR TMPDIR=/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/properties-folders/TMPDIR gdb --batch -ex 'set print thread-events off' -ex 'run' -ex 'bt' --args properties

gdb-properties: tests/CMakeFiles/gdb-properties
gdb-properties: tests/CMakeFiles/gdb-properties.dir/build.make

.PHONY : gdb-properties

# Rule to build all files generated by this target.
tests/CMakeFiles/gdb-properties.dir/build: gdb-properties

.PHONY : tests/CMakeFiles/gdb-properties.dir/build

tests/CMakeFiles/gdb-properties.dir/clean:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && $(CMAKE_COMMAND) -P CMakeFiles/gdb-properties.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/gdb-properties.dir/clean

tests/CMakeFiles/gdb-properties.dir/depend:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/tests /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/CMakeFiles/gdb-properties.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/gdb-properties.dir/depend

