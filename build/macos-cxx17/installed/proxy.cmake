# Include the tipi environment toolchain file
include( "/Users/luclambour/.tipi/environments/088baf5/macos-cxx17.cmake")

# Refine behaviour by giving CMAKE_FIND_ROOT_PATH priority to our install_prefix
list(INSERT CMAKE_FIND_ROOT_PATH 0 "/Users/luclambour/.tipi/w/unit-test-project-compile-2e803a6/build/macos-cxx17/installed" )
list(APPEND CMAKE_PREFIX_PATH "/Users/luclambour/.tipi/w/unit-test-project-compile-2e803a6/build/macos-cxx17/installed/lib/cmake" )
# Find dependencies

# Avoid BOOST autolinking on windows otherwise Hunter produced libs aren't found
add_compile_definitions(BOOST_ALL_NO_LIB=1)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# required in Boost 1.73.0 PackageConfig files
cmake_policy(SET CMP0057 NEW)

# required to take advantages of <PackageName>_Root variable
set(CMAKE_POLICY_DEFAULT_CMP0074 NEW CACHE STRING "")
set(CMAKE_FIND_USE_PACKAGE_ROOT_PATH TRUE CACHE BOOL "")

add_compile_definitions( )