# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /home/xuqi/Tool/clion-2018.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/xuqi/Tool/clion-2018.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/C_Project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/C_Project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/C_Project.dir/flags.make

CMakeFiles/C_Project.dir/test.c.o: CMakeFiles/C_Project.dir/flags.make
CMakeFiles/C_Project.dir/test.c.o: ../test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/C_Project.dir/test.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/C_Project.dir/test.c.o   -c /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/test.c

CMakeFiles/C_Project.dir/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/C_Project.dir/test.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/test.c > CMakeFiles/C_Project.dir/test.c.i

CMakeFiles/C_Project.dir/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/C_Project.dir/test.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/test.c -o CMakeFiles/C_Project.dir/test.c.s

# Object files for target C_Project
C_Project_OBJECTS = \
"CMakeFiles/C_Project.dir/test.c.o"

# External object files for target C_Project
C_Project_EXTERNAL_OBJECTS =

C_Project: CMakeFiles/C_Project.dir/test.c.o
C_Project: CMakeFiles/C_Project.dir/build.make
C_Project: CMakeFiles/C_Project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable C_Project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/C_Project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/C_Project.dir/build: C_Project

.PHONY : CMakeFiles/C_Project.dir/build

CMakeFiles/C_Project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/C_Project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/C_Project.dir/clean

CMakeFiles/C_Project.dir/depend:
	cd /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/cmake-build-debug /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/cmake-build-debug /home/xuqi/proj/Private/Linux-NoteBook/Code-Snap/04_Interview/C-Project/cmake-build-debug/CMakeFiles/C_Project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/C_Project.dir/depend

