# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect

# Include any dependencies generated for this target.
include CMakeFiles/test_basic.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_basic.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_basic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_basic.dir/flags.make

CMakeFiles/test_basic.dir/tests/test_basic.c.obj: CMakeFiles/test_basic.dir/flags.make
CMakeFiles/test_basic.dir/tests/test_basic.c.obj: /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_basic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test_basic.dir/tests/test_basic.c.obj"
	/usr/bin/clang-cl  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles/test_basic.dir/tests/test_basic.c.obj /FdCMakeFiles/test_basic.dir/ -c -- /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_basic.c

CMakeFiles/test_basic.dir/tests/test_basic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test_basic.dir/tests/test_basic.c.i"
	/usr/bin/clang-cl > CMakeFiles/test_basic.dir/tests/test_basic.c.i  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_basic.c

CMakeFiles/test_basic.dir/tests/test_basic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test_basic.dir/tests/test_basic.c.s"
	/usr/bin/clang-cl  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles/test_basic.dir/tests/test_basic.c.s /c /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_basic.c

# Object files for target test_basic
test_basic_OBJECTS = \
"CMakeFiles/test_basic.dir/tests/test_basic.c.obj"

# External object files for target test_basic
test_basic_EXTERNAL_OBJECTS =

test_basic.exe: CMakeFiles/test_basic.dir/tests/test_basic.c.obj
test_basic.exe: CMakeFiles/test_basic.dir/build.make
test_basic.exe: capstone.lib
test_basic.exe: CMakeFiles/test_basic.dir/objects1.rsp
test_basic.exe: CMakeFiles/test_basic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_basic.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_basic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_basic.dir/build: test_basic.exe
.PHONY : CMakeFiles/test_basic.dir/build

CMakeFiles/test_basic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_basic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_basic.dir/clean

CMakeFiles/test_basic.dir/depend:
	cd /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0 /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0 /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles/test_basic.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test_basic.dir/depend

