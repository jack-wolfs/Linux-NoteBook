# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/07_Crash.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/07_Crash.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/07_Crash.dir/flags.make

CMakeFiles/07_Crash.dir/main.cpp.o: CMakeFiles/07_Crash.dir/flags.make
CMakeFiles/07_Crash.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/07_Crash.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/07_Crash.dir/main.cpp.o -c /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/main.cpp

CMakeFiles/07_Crash.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/07_Crash.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/main.cpp > CMakeFiles/07_Crash.dir/main.cpp.i

CMakeFiles/07_Crash.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/07_Crash.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/main.cpp -o CMakeFiles/07_Crash.dir/main.cpp.s

# Object files for target 07_Crash
07_Crash_OBJECTS = \
"CMakeFiles/07_Crash.dir/main.cpp.o"

# External object files for target 07_Crash
07_Crash_EXTERNAL_OBJECTS =

07_Crash: CMakeFiles/07_Crash.dir/main.cpp.o
07_Crash: CMakeFiles/07_Crash.dir/build.make
07_Crash: CMakeFiles/07_Crash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 07_Crash"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/07_Crash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/07_Crash.dir/build: 07_Crash

.PHONY : CMakeFiles/07_Crash.dir/build

CMakeFiles/07_Crash.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/07_Crash.dir/cmake_clean.cmake
.PHONY : CMakeFiles/07_Crash.dir/clean

CMakeFiles/07_Crash.dir/depend:
	cd /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/cmake-build-debug /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/cmake-build-debug /Users/xuqi/Documents/Linux-NoteBook/Code-Snap/07_Crash/cmake-build-debug/CMakeFiles/07_Crash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/07_Crash.dir/depend
