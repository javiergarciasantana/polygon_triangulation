# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.29.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.29.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/build"

# Include any dependencies generated for this target.
include CMakeFiles/PolygonTriangulation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PolygonTriangulation.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PolygonTriangulation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PolygonTriangulation.dir/flags.make

CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o: CMakeFiles/PolygonTriangulation.dir/flags.make
CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o: /Users/javiersantana/VU_Files/Randomized\ Algorithms/polygon_triangulation/src/polygon.cc
CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o: CMakeFiles/PolygonTriangulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o -MF CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o.d -o CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o -c "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/src/polygon.cc"

CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/src/polygon.cc" > CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.i

CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/src/polygon.cc" -o CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.s

CMakeFiles/PolygonTriangulation.dir/src/main.cc.o: CMakeFiles/PolygonTriangulation.dir/flags.make
CMakeFiles/PolygonTriangulation.dir/src/main.cc.o: /Users/javiersantana/VU_Files/Randomized\ Algorithms/polygon_triangulation/src/main.cc
CMakeFiles/PolygonTriangulation.dir/src/main.cc.o: CMakeFiles/PolygonTriangulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PolygonTriangulation.dir/src/main.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PolygonTriangulation.dir/src/main.cc.o -MF CMakeFiles/PolygonTriangulation.dir/src/main.cc.o.d -o CMakeFiles/PolygonTriangulation.dir/src/main.cc.o -c "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/src/main.cc"

CMakeFiles/PolygonTriangulation.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PolygonTriangulation.dir/src/main.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/src/main.cc" > CMakeFiles/PolygonTriangulation.dir/src/main.cc.i

CMakeFiles/PolygonTriangulation.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PolygonTriangulation.dir/src/main.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/src/main.cc" -o CMakeFiles/PolygonTriangulation.dir/src/main.cc.s

# Object files for target PolygonTriangulation
PolygonTriangulation_OBJECTS = \
"CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o" \
"CMakeFiles/PolygonTriangulation.dir/src/main.cc.o"

# External object files for target PolygonTriangulation
PolygonTriangulation_EXTERNAL_OBJECTS =

PolygonTriangulation: CMakeFiles/PolygonTriangulation.dir/src/polygon.cc.o
PolygonTriangulation: CMakeFiles/PolygonTriangulation.dir/src/main.cc.o
PolygonTriangulation: CMakeFiles/PolygonTriangulation.dir/build.make
PolygonTriangulation: /usr/local/lib/libglfw.3.4.dylib
PolygonTriangulation: /System/Library/Frameworks/OpenGL.framework
PolygonTriangulation: CMakeFiles/PolygonTriangulation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable PolygonTriangulation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PolygonTriangulation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PolygonTriangulation.dir/build: PolygonTriangulation
.PHONY : CMakeFiles/PolygonTriangulation.dir/build

CMakeFiles/PolygonTriangulation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PolygonTriangulation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PolygonTriangulation.dir/clean

CMakeFiles/PolygonTriangulation.dir/depend:
	cd "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation" "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation" "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/build" "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/build" "/Users/javiersantana/VU_Files/Randomized Algorithms/polygon_triangulation/build/CMakeFiles/PolygonTriangulation.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/PolygonTriangulation.dir/depend

