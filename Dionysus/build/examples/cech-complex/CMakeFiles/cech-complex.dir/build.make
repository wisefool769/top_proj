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
include examples/cech-complex/CMakeFiles/cech-complex.dir/depend.make

# Include the progress variables for this target.
include examples/cech-complex/CMakeFiles/cech-complex.dir/progress.make

# Include the compile flags for this target's objects.
include examples/cech-complex/CMakeFiles/cech-complex.dir/flags.make

examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o: examples/cech-complex/CMakeFiles/cech-complex.dir/flags.make
examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o: ../examples/cech-complex/cech-complex.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/aashiq/Downloads/Dionysus/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/cech-complex && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cech-complex.dir/cech-complex.o -c /Users/aashiq/Downloads/Dionysus/examples/cech-complex/cech-complex.cpp

examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cech-complex.dir/cech-complex.i"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/cech-complex && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/aashiq/Downloads/Dionysus/examples/cech-complex/cech-complex.cpp > CMakeFiles/cech-complex.dir/cech-complex.i

examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cech-complex.dir/cech-complex.s"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/cech-complex && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/aashiq/Downloads/Dionysus/examples/cech-complex/cech-complex.cpp -o CMakeFiles/cech-complex.dir/cech-complex.s

examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o.requires:
.PHONY : examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o.requires

examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o.provides: examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o.requires
	$(MAKE) -f examples/cech-complex/CMakeFiles/cech-complex.dir/build.make examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o.provides.build
.PHONY : examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o.provides

examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o.provides.build: examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o

# Object files for target cech-complex
cech__complex_OBJECTS = \
"CMakeFiles/cech-complex.dir/cech-complex.o"

# External object files for target cech-complex
cech__complex_EXTERNAL_OBJECTS =

examples/cech-complex/cech-complex: examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o
examples/cech-complex/cech-complex: examples/cech-complex/CMakeFiles/cech-complex.dir/build.make
examples/cech-complex/cech-complex: examples/cech-complex/CMakeFiles/cech-complex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable cech-complex"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/cech-complex && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cech-complex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/cech-complex/CMakeFiles/cech-complex.dir/build: examples/cech-complex/cech-complex
.PHONY : examples/cech-complex/CMakeFiles/cech-complex.dir/build

examples/cech-complex/CMakeFiles/cech-complex.dir/requires: examples/cech-complex/CMakeFiles/cech-complex.dir/cech-complex.o.requires
.PHONY : examples/cech-complex/CMakeFiles/cech-complex.dir/requires

examples/cech-complex/CMakeFiles/cech-complex.dir/clean:
	cd /Users/aashiq/Downloads/Dionysus/build/examples/cech-complex && $(CMAKE_COMMAND) -P CMakeFiles/cech-complex.dir/cmake_clean.cmake
.PHONY : examples/cech-complex/CMakeFiles/cech-complex.dir/clean

examples/cech-complex/CMakeFiles/cech-complex.dir/depend:
	cd /Users/aashiq/Downloads/Dionysus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aashiq/Downloads/Dionysus /Users/aashiq/Downloads/Dionysus/examples/cech-complex /Users/aashiq/Downloads/Dionysus/build /Users/aashiq/Downloads/Dionysus/build/examples/cech-complex /Users/aashiq/Downloads/Dionysus/build/examples/cech-complex/CMakeFiles/cech-complex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/cech-complex/CMakeFiles/cech-complex.dir/depend

