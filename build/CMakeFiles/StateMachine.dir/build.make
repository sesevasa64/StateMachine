# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/build"

# Include any dependencies generated for this target.
include CMakeFiles/StateMachine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/StateMachine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/StateMachine.dir/flags.make

CMakeFiles/StateMachine.dir/main.cpp.obj: CMakeFiles/StateMachine.dir/flags.make
CMakeFiles/StateMachine.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/StateMachine.dir/main.cpp.obj"
	C:/MinGW/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/StateMachine.dir/main.cpp.obj -c "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/main.cpp"

CMakeFiles/StateMachine.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StateMachine.dir/main.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/main.cpp" > CMakeFiles/StateMachine.dir/main.cpp.i

CMakeFiles/StateMachine.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StateMachine.dir/main.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/main.cpp" -o CMakeFiles/StateMachine.dir/main.cpp.s

CMakeFiles/StateMachine.dir/statemachine.cpp.obj: CMakeFiles/StateMachine.dir/flags.make
CMakeFiles/StateMachine.dir/statemachine.cpp.obj: ../statemachine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/StateMachine.dir/statemachine.cpp.obj"
	C:/MinGW/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/StateMachine.dir/statemachine.cpp.obj -c "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/statemachine.cpp"

CMakeFiles/StateMachine.dir/statemachine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StateMachine.dir/statemachine.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/statemachine.cpp" > CMakeFiles/StateMachine.dir/statemachine.cpp.i

CMakeFiles/StateMachine.dir/statemachine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StateMachine.dir/statemachine.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/statemachine.cpp" -o CMakeFiles/StateMachine.dir/statemachine.cpp.s

CMakeFiles/StateMachine.dir/helper.cpp.obj: CMakeFiles/StateMachine.dir/flags.make
CMakeFiles/StateMachine.dir/helper.cpp.obj: ../helper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/StateMachine.dir/helper.cpp.obj"
	C:/MinGW/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/StateMachine.dir/helper.cpp.obj -c "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/helper.cpp"

CMakeFiles/StateMachine.dir/helper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StateMachine.dir/helper.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/helper.cpp" > CMakeFiles/StateMachine.dir/helper.cpp.i

CMakeFiles/StateMachine.dir/helper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StateMachine.dir/helper.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/helper.cpp" -o CMakeFiles/StateMachine.dir/helper.cpp.s

# Object files for target StateMachine
StateMachine_OBJECTS = \
"CMakeFiles/StateMachine.dir/main.cpp.obj" \
"CMakeFiles/StateMachine.dir/statemachine.cpp.obj" \
"CMakeFiles/StateMachine.dir/helper.cpp.obj"

# External object files for target StateMachine
StateMachine_EXTERNAL_OBJECTS =

StateMachine.exe: CMakeFiles/StateMachine.dir/main.cpp.obj
StateMachine.exe: CMakeFiles/StateMachine.dir/statemachine.cpp.obj
StateMachine.exe: CMakeFiles/StateMachine.dir/helper.cpp.obj
StateMachine.exe: CMakeFiles/StateMachine.dir/build.make
StateMachine.exe: CMakeFiles/StateMachine.dir/linklibs.rsp
StateMachine.exe: CMakeFiles/StateMachine.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable StateMachine.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/StateMachine.dir/objects.a
	C:/MinGW/bin/ar.exe cr CMakeFiles/StateMachine.dir/objects.a @CMakeFiles/StateMachine.dir/objects1.rsp
	C:/MinGW/bin/g++.exe -std=c++17 -g   -Wl,--whole-archive CMakeFiles/StateMachine.dir/objects.a -Wl,--no-whole-archive  -o StateMachine.exe -Wl,--out-implib,libStateMachine.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/StateMachine.dir/linklibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/StateMachine.dir/build: StateMachine.exe

.PHONY : CMakeFiles/StateMachine.dir/build

CMakeFiles/StateMachine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/StateMachine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/StateMachine.dir/clean

CMakeFiles/StateMachine.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine" "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine" "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/build" "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/build" "C:/Users/sesev/Desktop/My (not) finished projects/StateMachine/build/CMakeFiles/StateMachine.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/StateMachine.dir/depend
