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
include examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/depend.make

# Include the progress variables for this target.
include examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/progress.make

# Include the compile flags for this target's objects.
include examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/flags.make

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o: examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/flags.make
examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o: ../examples/consistency/rips-consistency-zigzag.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/aashiq/Downloads/Dionysus/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/consistency && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o -c /Users/aashiq/Downloads/Dionysus/examples/consistency/rips-consistency-zigzag.cpp

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.i"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/consistency && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/aashiq/Downloads/Dionysus/examples/consistency/rips-consistency-zigzag.cpp > CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.i

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.s"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/consistency && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/aashiq/Downloads/Dionysus/examples/consistency/rips-consistency-zigzag.cpp -o CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.s

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o.requires:
.PHONY : examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o.requires

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o.provides: examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o.requires
	$(MAKE) -f examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/build.make examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o.provides.build
.PHONY : examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o.provides

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o.provides.build: examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o

# Object files for target rips-consistency-zigzag
rips__consistency__zigzag_OBJECTS = \
"CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o"

# External object files for target rips-consistency-zigzag
rips__consistency__zigzag_EXTERNAL_OBJECTS =

examples/consistency/rips-consistency-zigzag: examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o
examples/consistency/rips-consistency-zigzag: examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/build.make
examples/consistency/rips-consistency-zigzag: /usr/local/lib/libboost_program_options-mt.dylib
examples/consistency/rips-consistency-zigzag: /usr/local/lib/libboost_serialization-mt.dylib
examples/consistency/rips-consistency-zigzag: examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable rips-consistency-zigzag"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/consistency && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rips-consistency-zigzag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/build: examples/consistency/rips-consistency-zigzag
.PHONY : examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/build

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/requires: examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/rips-consistency-zigzag.o.requires
.PHONY : examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/requires

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/clean:
	cd /Users/aashiq/Downloads/Dionysus/build/examples/consistency && $(CMAKE_COMMAND) -P CMakeFiles/rips-consistency-zigzag.dir/cmake_clean.cmake
.PHONY : examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/clean

examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/depend:
	cd /Users/aashiq/Downloads/Dionysus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aashiq/Downloads/Dionysus /Users/aashiq/Downloads/Dionysus/examples/consistency /Users/aashiq/Downloads/Dionysus/build /Users/aashiq/Downloads/Dionysus/build/examples/consistency /Users/aashiq/Downloads/Dionysus/build/examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/consistency/CMakeFiles/rips-consistency-zigzag.dir/depend

