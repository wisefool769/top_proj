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
include examples/poincare/CMakeFiles/poincare.dir/depend.make

# Include the progress variables for this target.
include examples/poincare/CMakeFiles/poincare.dir/progress.make

# Include the compile flags for this target's objects.
include examples/poincare/CMakeFiles/poincare.dir/flags.make

examples/poincare/CMakeFiles/poincare.dir/poincare.o: examples/poincare/CMakeFiles/poincare.dir/flags.make
examples/poincare/CMakeFiles/poincare.dir/poincare.o: ../examples/poincare/poincare.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/aashiq/Downloads/Dionysus/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/poincare/CMakeFiles/poincare.dir/poincare.o"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/poincare && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/poincare.dir/poincare.o -c /Users/aashiq/Downloads/Dionysus/examples/poincare/poincare.cpp

examples/poincare/CMakeFiles/poincare.dir/poincare.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/poincare.dir/poincare.i"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/poincare && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/aashiq/Downloads/Dionysus/examples/poincare/poincare.cpp > CMakeFiles/poincare.dir/poincare.i

examples/poincare/CMakeFiles/poincare.dir/poincare.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/poincare.dir/poincare.s"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/poincare && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/aashiq/Downloads/Dionysus/examples/poincare/poincare.cpp -o CMakeFiles/poincare.dir/poincare.s

examples/poincare/CMakeFiles/poincare.dir/poincare.o.requires:
.PHONY : examples/poincare/CMakeFiles/poincare.dir/poincare.o.requires

examples/poincare/CMakeFiles/poincare.dir/poincare.o.provides: examples/poincare/CMakeFiles/poincare.dir/poincare.o.requires
	$(MAKE) -f examples/poincare/CMakeFiles/poincare.dir/build.make examples/poincare/CMakeFiles/poincare.dir/poincare.o.provides.build
.PHONY : examples/poincare/CMakeFiles/poincare.dir/poincare.o.provides

examples/poincare/CMakeFiles/poincare.dir/poincare.o.provides.build: examples/poincare/CMakeFiles/poincare.dir/poincare.o

# Object files for target poincare
poincare_OBJECTS = \
"CMakeFiles/poincare.dir/poincare.o"

# External object files for target poincare
poincare_EXTERNAL_OBJECTS =

examples/poincare/poincare: examples/poincare/CMakeFiles/poincare.dir/poincare.o
examples/poincare/poincare: examples/poincare/CMakeFiles/poincare.dir/build.make
examples/poincare/poincare: /usr/local/lib/libboost_program_options-mt.dylib
examples/poincare/poincare: examples/poincare/CMakeFiles/poincare.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable poincare"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/poincare && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/poincare.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/poincare/CMakeFiles/poincare.dir/build: examples/poincare/poincare
.PHONY : examples/poincare/CMakeFiles/poincare.dir/build

examples/poincare/CMakeFiles/poincare.dir/requires: examples/poincare/CMakeFiles/poincare.dir/poincare.o.requires
.PHONY : examples/poincare/CMakeFiles/poincare.dir/requires

examples/poincare/CMakeFiles/poincare.dir/clean:
	cd /Users/aashiq/Downloads/Dionysus/build/examples/poincare && $(CMAKE_COMMAND) -P CMakeFiles/poincare.dir/cmake_clean.cmake
.PHONY : examples/poincare/CMakeFiles/poincare.dir/clean

examples/poincare/CMakeFiles/poincare.dir/depend:
	cd /Users/aashiq/Downloads/Dionysus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aashiq/Downloads/Dionysus /Users/aashiq/Downloads/Dionysus/examples/poincare /Users/aashiq/Downloads/Dionysus/build /Users/aashiq/Downloads/Dionysus/build/examples/poincare /Users/aashiq/Downloads/Dionysus/build/examples/poincare/CMakeFiles/poincare.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/poincare/CMakeFiles/poincare.dir/depend

