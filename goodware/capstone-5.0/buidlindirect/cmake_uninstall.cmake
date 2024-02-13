if(NOT EXISTS "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: /opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/install_manifest.txt")
endif()

file(READ "/opt/winsdk/LLVM-Obfuscation-Experiments/capstone-5.0/buidlindirect/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
  message(STATUS "Uninstalling $ENV{DESTDIR}${file}")
  if(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    file(REMOVE_RECURSE $ENV{DESTDIR}${file})
  else(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    message(STATUS "File $ENV{DESTDIR}${file} does not exist.")
  endif()
endforeach()

message(STATUS "Uninstalling /usr/local/include/capstone")
file(REMOVE_RECURSE /usr/local/include/capstone)

message(STATUS "Uninstalling /usr/local/lib/cmake/capstone")
file(REMOVE_RECURSE /usr/local/lib/cmake/capstone)
