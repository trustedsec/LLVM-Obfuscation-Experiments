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
include CMakeFiles/test_xcore.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_xcore.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_xcore.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_xcore.dir/flags.make

CMakeFiles/test_xcore.dir/tests/test_xcore.c.obj: CMakeFiles/test_xcore.dir/flags.make
CMakeFiles/test_xcore.dir/tests/test_xcore.c.obj: /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_xcore.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test_xcore.dir/tests/test_xcore.c.obj"
	/usr/bin/clang-cl  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles/test_xcore.dir/tests/test_xcore.c.obj /FdCMakeFiles/test_xcore.dir/ -c -- /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_xcore.c

CMakeFiles/test_xcore.dir/tests/test_xcore.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test_xcore.dir/tests/test_xcore.c.i"
	/usr/bin/clang-cl > CMakeFiles/test_xcore.dir/tests/test_xcore.c.i  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_xcore.c

CMakeFiles/test_xcore.dir/tests/test_xcore.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test_xcore.dir/tests/test_xcore.c.s"
	/usr/bin/clang-cl  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles/test_xcore.dir/tests/test_xcore.c.s /c /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_xcore.c

# Object files for target test_xcore
test_xcore_OBJECTS = \
"CMakeFiles/test_xcore.dir/tests/test_xcore.c.obj"

# External object files for target test_xcore
test_xcore_EXTERNAL_OBJECTS =

test_xcore.exe: CMakeFiles/test_xcore.dir/tests/test_xcore.c.obj
test_xcore.exe: CMakeFiles/test_xcore.dir/build.make
test_xcore.exe: capstone.lib
test_xcore.exe: CMakeFiles/test_xcore.dir/objects1.rsp
test_xcore.exe: CMakeFiles/test_xcore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_xcore.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_xcore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_xcore.dir/build: test_xcore.exe
.PHONY : CMakeFiles/test_xcore.dir/build

CMakeFiles/test_xcore.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_xcore.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_xcore.dir/clean

CMakeFiles/test_xcore.dir/depend:
	cd /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0 /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0 /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles/test_xcore.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test_xcore.dir/depend
