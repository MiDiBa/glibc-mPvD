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

# Utility rule file for contain-browser.

# Include the progress variables for this target.
include tests/CMakeFiles/contain-browser.dir/progress.make

tests/CMakeFiles/contain-browser:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && /usr/bin/cmake -E remove_directory /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/browser-folders
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && /usr/bin/cmake -E make_directory /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/browser-folders/XDG_CACHE_HOME
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && /usr/bin/cmake -E make_directory /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/browser-folders/XDG_CONFIG_HOME
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && /usr/bin/cmake -E make_directory /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/browser-folders/XDG_DATA_HOME
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && /usr/bin/cmake -E make_directory /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/browser-folders/XDG_RUNTIME_DIR
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && /usr/bin/cmake -E make_directory /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/browser-folders/TMPDIR

contain-browser: tests/CMakeFiles/contain-browser
contain-browser: tests/CMakeFiles/contain-browser.dir/build.make

.PHONY : contain-browser

# Rule to build all files generated by this target.
tests/CMakeFiles/contain-browser.dir/build: contain-browser

.PHONY : tests/CMakeFiles/contain-browser.dir/build

tests/CMakeFiles/contain-browser.dir/clean:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests && $(CMAKE_COMMAND) -P CMakeFiles/contain-browser.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/contain-browser.dir/clean

tests/CMakeFiles/contain-browser.dir/depend:
	cd /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/tests /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/CMakeFiles/contain-browser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/contain-browser.dir/depend

