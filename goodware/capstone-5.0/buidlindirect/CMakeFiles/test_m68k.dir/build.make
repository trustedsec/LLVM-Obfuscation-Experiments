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
include CMakeFiles/test_m68k.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_m68k.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_m68k.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_m68k.dir/flags.make

CMakeFiles/test_m68k.dir/tests/test_m68k.c.obj: CMakeFiles/test_m68k.dir/flags.make
CMakeFiles/test_m68k.dir/tests/test_m68k.c.obj: /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_m68k.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test_m68k.dir/tests/test_m68k.c.obj"
	/usr/bin/clang-cl  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles/test_m68k.dir/tests/test_m68k.c.obj /FdCMakeFiles/test_m68k.dir/ -c -- /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_m68k.c

CMakeFiles/test_m68k.dir/tests/test_m68k.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test_m68k.dir/tests/test_m68k.c.i"
	/usr/bin/clang-cl > CMakeFiles/test_m68k.dir/tests/test_m68k.c.i  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_m68k.c

CMakeFiles/test_m68k.dir/tests/test_m68k.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test_m68k.dir/tests/test_m68k.c.s"
	/usr/bin/clang-cl  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles/test_m68k.dir/tests/test_m68k.c.s /c /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/tests/test_m68k.c

# Object files for target test_m68k
test_m68k_OBJECTS = \
"CMakeFiles/test_m68k.dir/tests/test_m68k.c.obj"

# External object files for target test_m68k
test_m68k_EXTERNAL_OBJECTS =

test_m68k.exe: CMakeFiles/test_m68k.dir/tests/test_m68k.c.obj
test_m68k.exe: CMakeFiles/test_m68k.dir/build.make
test_m68k.exe: capstone.lib
test_m68k.exe: CMakeFiles/test_m68k.dir/objects1.rsp
test_m68k.exe: CMakeFiles/test_m68k.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_m68k.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_m68k.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_m68k.dir/build: test_m68k.exe
.PHONY : CMakeFiles/test_m68k.dir/build

CMakeFiles/test_m68k.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_m68k.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_m68k.dir/clean

CMakeFiles/test_m68k.dir/depend:
	cd /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0 /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0 /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles/test_m68k.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test_m68k.dir/depend

