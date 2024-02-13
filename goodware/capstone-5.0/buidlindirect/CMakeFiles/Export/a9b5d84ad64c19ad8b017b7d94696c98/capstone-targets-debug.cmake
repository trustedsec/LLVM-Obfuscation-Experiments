#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "capstone::capstone" for configuration "Debug"
set_property(TARGET capstone::capstone APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(capstone::capstone PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/capstone.lib"
  )

list(APPEND _cmake_import_check_targets capstone::capstone )
list(APPEND _cmake_import_check_files_for_capstone::capstone "${_IMPORT_PREFIX}/lib/capstone.lib" )

# Import target "capstone::cstool" for configuration "Debug"
set_property(TARGET capstone::cstool APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(capstone::cstool PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/cstool.exe"
  )

list(APPEND _cmake_import_check_targets capstone::cstool )
list(APPEND _cmake_import_check_files_for_capstone::cstool "${_IMPORT_PREFIX}/bin/cstool.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
