# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/s22100141/AFLplusplus-experimental/cJSON

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/s22100141/AFLplusplus-experimental/cJSON/fuzzing/afl-build-suppress1

# Include any dependencies generated for this target.
include CMakeFiles/cjson.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cjson.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cjson.dir/flags.make

CMakeFiles/cjson.dir/cJSON.c.o: CMakeFiles/cjson.dir/flags.make
CMakeFiles/cjson.dir/cJSON.c.o: ../../cJSON.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s22100141/AFLplusplus-experimental/cJSON/fuzzing/afl-build-suppress1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cjson.dir/cJSON.c.o"
	/home/s22100141/AFLplusplus-experimental/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cjson.dir/cJSON.c.o -c /home/s22100141/AFLplusplus-experimental/cJSON/cJSON.c

CMakeFiles/cjson.dir/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjson.dir/cJSON.c.i"
	/home/s22100141/AFLplusplus-experimental/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/s22100141/AFLplusplus-experimental/cJSON/cJSON.c > CMakeFiles/cjson.dir/cJSON.c.i

CMakeFiles/cjson.dir/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjson.dir/cJSON.c.s"
	/home/s22100141/AFLplusplus-experimental/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/s22100141/AFLplusplus-experimental/cJSON/cJSON.c -o CMakeFiles/cjson.dir/cJSON.c.s

# Object files for target cjson
cjson_OBJECTS = \
"CMakeFiles/cjson.dir/cJSON.c.o"

# External object files for target cjson
cjson_EXTERNAL_OBJECTS =

libcjson.a: CMakeFiles/cjson.dir/cJSON.c.o
libcjson.a: CMakeFiles/cjson.dir/build.make
libcjson.a: CMakeFiles/cjson.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/s22100141/AFLplusplus-experimental/cJSON/fuzzing/afl-build-suppress1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libcjson.a"
	$(CMAKE_COMMAND) -P CMakeFiles/cjson.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cjson.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cjson.dir/build: libcjson.a

.PHONY : CMakeFiles/cjson.dir/build

CMakeFiles/cjson.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cjson.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cjson.dir/clean

CMakeFiles/cjson.dir/depend:
	cd /home/s22100141/AFLplusplus-experimental/cJSON/fuzzing/afl-build-suppress1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/s22100141/AFLplusplus-experimental/cJSON /home/s22100141/AFLplusplus-experimental/cJSON /home/s22100141/AFLplusplus-experimental/cJSON/fuzzing/afl-build-suppress1 /home/s22100141/AFLplusplus-experimental/cJSON/fuzzing/afl-build-suppress1 /home/s22100141/AFLplusplus-experimental/cJSON/fuzzing/afl-build-suppress1/CMakeFiles/cjson.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cjson.dir/depend

