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
include examples/pl-functions/CMakeFiles/pl-vineyard.dir/depend.make

# Include the progress variables for this target.
include examples/pl-functions/CMakeFiles/pl-vineyard.dir/progress.make

# Include the compile flags for this target's objects.
include examples/pl-functions/CMakeFiles/pl-vineyard.dir/flags.make

examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o: examples/pl-functions/CMakeFiles/pl-vineyard.dir/flags.make
examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o: ../examples/pl-functions/pl-vineyard.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/aashiq/Downloads/Dionysus/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/pl-functions && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pl-vineyard.dir/pl-vineyard.o -c /Users/aashiq/Downloads/Dionysus/examples/pl-functions/pl-vineyard.cpp

examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pl-vineyard.dir/pl-vineyard.i"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/pl-functions && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/aashiq/Downloads/Dionysus/examples/pl-functions/pl-vineyard.cpp > CMakeFiles/pl-vineyard.dir/pl-vineyard.i

examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pl-vineyard.dir/pl-vineyard.s"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/pl-functions && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/aashiq/Downloads/Dionysus/examples/pl-functions/pl-vineyard.cpp -o CMakeFiles/pl-vineyard.dir/pl-vineyard.s

examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o.requires:
.PHONY : examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o.requires

examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o.provides: examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o.requires
	$(MAKE) -f examples/pl-functions/CMakeFiles/pl-vineyard.dir/build.make examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o.provides.build
.PHONY : examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o.provides

examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o.provides.build: examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o

# Object files for target pl-vineyard
pl__vineyard_OBJECTS = \
"CMakeFiles/pl-vineyard.dir/pl-vineyard.o"

# External object files for target pl-vineyard
pl__vineyard_EXTERNAL_OBJECTS =

examples/pl-functions/pl-vineyard: examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o
examples/pl-functions/pl-vineyard: examples/pl-functions/CMakeFiles/pl-vineyard.dir/build.make
examples/pl-functions/pl-vineyard: /usr/local/lib/libboost_program_options-mt.dylib
examples/pl-functions/pl-vineyard: examples/pl-functions/CMakeFiles/pl-vineyard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable pl-vineyard"
	cd /Users/aashiq/Downloads/Dionysus/build/examples/pl-functions && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pl-vineyard.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/pl-functions/CMakeFiles/pl-vineyard.dir/build: examples/pl-functions/pl-vineyard
.PHONY : examples/pl-functions/CMakeFiles/pl-vineyard.dir/build

examples/pl-functions/CMakeFiles/pl-vineyard.dir/requires: examples/pl-functions/CMakeFiles/pl-vineyard.dir/pl-vineyard.o.requires
.PHONY : examples/pl-functions/CMakeFiles/pl-vineyard.dir/requires

examples/pl-functions/CMakeFiles/pl-vineyard.dir/clean:
	cd /Users/aashiq/Downloads/Dionysus/build/examples/pl-functions && $(CMAKE_COMMAND) -P CMakeFiles/pl-vineyard.dir/cmake_clean.cmake
.PHONY : examples/pl-functions/CMakeFiles/pl-vineyard.dir/clean

examples/pl-functions/CMakeFiles/pl-vineyard.dir/depend:
	cd /Users/aashiq/Downloads/Dionysus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aashiq/Downloads/Dionysus /Users/aashiq/Downloads/Dionysus/examples/pl-functions /Users/aashiq/Downloads/Dionysus/build /Users/aashiq/Downloads/Dionysus/build/examples/pl-functions /Users/aashiq/Downloads/Dionysus/build/examples/pl-functions/CMakeFiles/pl-vineyard.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/pl-functions/CMakeFiles/pl-vineyard.dir/depend

