# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = "/Applications/CMake 2.8-12.app/Contents/bin/cmake"

# The command to remove a file.
RM = "/Applications/CMake 2.8-12.app/Contents/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "/Applications/CMake 2.8-12.app/Contents/bin/ccmake"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aashiq/Downloads/Dionysus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aashiq/Downloads/Dionysus/build

# Include any dependencies generated for this target.
include tests/geometry/CMakeFiles/euclidean.dir/depend.make

# Include the progress variables for this target.
include tests/geometry/CMakeFiles/euclidean.dir/progress.make

# Include the compile flags for this target's objects.
include tests/geometry/CMakeFiles/euclidean.dir/flags.make

tests/geometry/CMakeFiles/euclidean.dir/euclidean.o: tests/geometry/CMakeFiles/euclidean.dir/flags.make
tests/geometry/CMakeFiles/euclidean.dir/euclidean.o: ../tests/geometry/euclidean.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/aashiq/Downloads/Dionysus/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/geometry/CMakeFiles/euclidean.dir/euclidean.o"
	cd /Users/aashiq/Downloads/Dionysus/build/tests/geometry && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/euclidean.dir/euclidean.o -c /Users/aashiq/Downloads/Dionysus/tests/geometry/euclidean.cpp

tests/geometry/CMakeFiles/euclidean.dir/euclidean.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/euclidean.dir/euclidean.i"
	cd /Users/aashiq/Downloads/Dionysus/build/tests/geometry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/aashiq/Downloads/Dionysus/tests/geometry/euclidean.cpp > CMakeFiles/euclidean.dir/euclidean.i

tests/geometry/CMakeFiles/euclidean.dir/euclidean.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/euclidean.dir/euclidean.s"
	cd /Users/aashiq/Downloads/Dionysus/build/tests/geometry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/aashiq/Downloads/Dionysus/tests/geometry/euclidean.cpp -o CMakeFiles/euclidean.dir/euclidean.s

tests/geometry/CMakeFiles/euclidean.dir/euclidean.o.requires:
.PHONY : tests/geometry/CMakeFiles/euclidean.dir/euclidean.o.requires

tests/geometry/CMakeFiles/euclidean.dir/euclidean.o.provides: tests/geometry/CMakeFiles/euclidean.dir/euclidean.o.requires
	$(MAKE) -f tests/geometry/CMakeFiles/euclidean.dir/build.make tests/geometry/CMakeFiles/euclidean.dir/euclidean.o.provides.build
.PHONY : tests/geometry/CMakeFiles/euclidean.dir/euclidean.o.provides

tests/geometry/CMakeFiles/euclidean.dir/euclidean.o.provides.build: tests/geometry/CMakeFiles/euclidean.dir/euclidean.o

# Object files for target euclidean
euclidean_OBJECTS = \
"CMakeFiles/euclidean.dir/euclidean.o"

# External object files for target euclidean
euclidean_EXTERNAL_OBJECTS =

tests/geometry/euclidean: tests/geometry/CMakeFiles/euclidean.dir/euclidean.o
tests/geometry/euclidean: tests/geometry/CMakeFiles/euclidean.dir/build.make
tests/geometry/euclidean: tests/geometry/CMakeFiles/euclidean.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable euclidean"
	cd /Users/aashiq/Downloads/Dionysus/build/tests/geometry && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/euclidean.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/geometry/CMakeFiles/euclidean.dir/build: tests/geometry/euclidean
.PHONY : tests/geometry/CMakeFiles/euclidean.dir/build

tests/geometry/CMakeFiles/euclidean.dir/requires: tests/geometry/CMakeFiles/euclidean.dir/euclidean.o.requires
.PHONY : tests/geometry/CMakeFiles/euclidean.dir/requires

tests/geometry/CMakeFiles/euclidean.dir/clean:
	cd /Users/aashiq/Downloads/Dionysus/build/tests/geometry && $(CMAKE_COMMAND) -P CMakeFiles/euclidean.dir/cmake_clean.cmake
.PHONY : tests/geometry/CMakeFiles/euclidean.dir/clean

tests/geometry/CMakeFiles/euclidean.dir/depend:
	cd /Users/aashiq/Downloads/Dionysus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aashiq/Downloads/Dionysus /Users/aashiq/Downloads/Dionysus/tests/geometry /Users/aashiq/Downloads/Dionysus/build /Users/aashiq/Downloads/Dionysus/build/tests/geometry /Users/aashiq/Downloads/Dionysus/build/tests/geometry/CMakeFiles/euclidean.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/geometry/CMakeFiles/euclidean.dir/depend
