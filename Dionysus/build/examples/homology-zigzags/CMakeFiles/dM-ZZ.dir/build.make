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
include examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/depend.make

# Include the progress variables for this target.
include examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/progress.make

# Include the compile flags for this target's objects.
include examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/flags.make

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o: examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/flags.make
examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o: ../examples/homology-zigzags/dM-ZZ.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/aashiq/Downloads/Dionysus/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/homology-zigzags && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dM-ZZ.dir/dM-ZZ.o -c /Users/aashiq/Downloads/Dionysus/examples/homology-zigzags/dM-ZZ.cpp

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dM-ZZ.dir/dM-ZZ.i"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/homology-zigzags && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/aashiq/Downloads/Dionysus/examples/homology-zigzags/dM-ZZ.cpp > CMakeFiles/dM-ZZ.dir/dM-ZZ.i

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dM-ZZ.dir/dM-ZZ.s"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/homology-zigzags && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/aashiq/Downloads/Dionysus/examples/homology-zigzags/dM-ZZ.cpp -o CMakeFiles/dM-ZZ.dir/dM-ZZ.s

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o.requires:
.PHONY : examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o.requires

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o.provides: examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o.requires
	$(MAKE) -f examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/build.make examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o.provides.build
.PHONY : examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o.provides

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o.provides.build: examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o

# Object files for target dM-ZZ
dM__ZZ_OBJECTS = \
"CMakeFiles/dM-ZZ.dir/dM-ZZ.o"

# External object files for target dM-ZZ
dM__ZZ_EXTERNAL_OBJECTS =

examples/homology-zigzags/dM-ZZ: examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o
examples/homology-zigzags/dM-ZZ: examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/build.make
examples/homology-zigzags/dM-ZZ: /usr/local/lib/libboost_program_options-mt.dylib
examples/homology-zigzags/dM-ZZ: examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable dM-ZZ"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/homology-zigzags && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dM-ZZ.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/build: examples/homology-zigzags/dM-ZZ
.PHONY : examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/build

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/requires: examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/dM-ZZ.o.requires
.PHONY : examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/requires

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/clean:
	cd /Users/aashiq/Downloads/Dionysus/build/examples/homology-zigzags && $(CMAKE_COMMAND) -P CMakeFiles/dM-ZZ.dir/cmake_clean.cmake
.PHONY : examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/clean

examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/depend:
	cd /Users/aashiq/Downloads/Dionysus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aashiq/Downloads/Dionysus /Users/aashiq/Downloads/Dionysus/examples/homology-zigzags /Users/aashiq/Downloads/Dionysus/build /Users/aashiq/Downloads/Dionysus/build/examples/homology-zigzags /Users/aashiq/Downloads/Dionysus/build/examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/homology-zigzags/CMakeFiles/dM-ZZ.dir/depend

