# Install script for directory: /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/capstone" TYPE FILE FILES
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/arm64.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/arm.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/capstone.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/evm.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/wasm.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/mips.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/ppc.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/x86.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/sparc.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/systemz.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/xcore.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/m68k.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/tms320c64x.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/m680x.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/mos65xx.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/bpf.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/riscv.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/sh.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/tricore.h"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/include/capstone/platform.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/capstone.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/capstone" TYPE FILE FILES
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/capstone-config.cmake"
    "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/capstone-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/capstone.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/capstone/capstone-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/capstone/capstone-targets.cmake"
         "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles/Export/a9b5d84ad64c19ad8b017b7d94696c98/capstone-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/capstone/capstone-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/capstone/capstone-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/capstone" TYPE FILE FILES "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles/Export/a9b5d84ad64c19ad8b017b7d94696c98/capstone-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/capstone" TYPE FILE FILES "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/CMakeFiles/Export/a9b5d84ad64c19ad8b017b7d94696c98/capstone-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/cstool.exe")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
