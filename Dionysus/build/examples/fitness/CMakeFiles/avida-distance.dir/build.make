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
include examples/fitness/CMakeFiles/avida-distance.dir/depend.make

# Include the progress variables for this target.
include examples/fitness/CMakeFiles/avida-distance.dir/progress.make

# Include the compile flags for this target's objects.
include examples/fitness/CMakeFiles/avida-distance.dir/flags.make

examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o: examples/fitness/CMakeFiles/avida-distance.dir/flags.make
examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o: ../examples/fitness/avida-distance.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/aashiq/Downloads/Dionysus/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/fitness && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/avida-distance.dir/avida-distance.o -c /Users/aashiq/Downloads/Dionysus/examples/fitness/avida-distance.cpp

examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avida-distance.dir/avida-distance.i"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/fitness && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/aashiq/Downloads/Dionysus/examples/fitness/avida-distance.cpp > CMakeFiles/avida-distance.dir/avida-distance.i

examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avida-distance.dir/avida-distance.s"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/fitness && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/aashiq/Downloads/Dionysus/examples/fitness/avida-distance.cpp -o CMakeFiles/avida-distance.dir/avida-distance.s

examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o.requires:
.PHONY : examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o.requires

examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o.provides: examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o.requires
	$(MAKE) -f examples/fitness/CMakeFiles/avida-distance.dir/build.make examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o.provides.build
.PHONY : examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o.provides

examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o.provides.build: examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o

# Object files for target avida-distance
avida__distance_OBJECTS = \
"CMakeFiles/avida-distance.dir/avida-distance.o"

# External object files for target avida-distance
avida__distance_EXTERNAL_OBJECTS =

examples/fitness/avida-distance: examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o
examples/fitness/avida-distance: examples/fitness/CMakeFiles/avida-distance.dir/build.make
examples/fitness/avida-distance: /usr/local/lib/libboost_program_options-mt.dylib
examples/fitness/avida-distance: examples/fitness/CMakeFiles/avida-distance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable avida-distance"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/fitness && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avida-distance.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/fitness/CMakeFiles/avida-distance.dir/build: examples/fitness/avida-distance
.PHONY : examples/fitness/CMakeFiles/avida-distance.dir/build

examples/fitness/CMakeFiles/avida-distance.dir/requires: examples/fitness/CMakeFiles/avida-distance.dir/avida-distance.o.requires
.PHONY : examples/fitness/CMakeFiles/avida-distance.dir/requires

examples/fitness/CMakeFiles/avida-distance.dir/clean:
	cd /Users/aashiq/Downloads/Dionysus/build/examples/fitness && $(CMAKE_COMMAND) -P CMakeFiles/avida-distance.dir/cmake_clean.cmake
.PHONY : examples/fitness/CMakeFiles/avida-distance.dir/clean

examples/fitness/CMakeFiles/avida-distance.dir/depend:
	cd /Users/aashiq/Downloads/Dionysus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aashiq/Downloads/Dionysus /Users/aashiq/Downloads/Dionysus/examples/fitness /Users/aashiq/Downloads/Dionysus/build /Users/aashiq/Downloads/Dionysus/build/examples/fitness /Users/aashiq/Downloads/Dionysus/build/examples/fitness/CMakeFiles/avida-distance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/fitness/CMakeFiles/avida-distance.dir/depend

