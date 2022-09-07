# Install script for directory: C:/.tipi/w/unit-test-project-compile-2e803a6/build/windows-cxx17/recipe

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6")
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
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/.tipi/clang/6f9b4e0/bin/llvm-objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/.tipi/w/unit-test-project-compile-2e803a6/build/windows-cxx17/recipe/../../../" FILES_MATCHING REGEX "/[^/]*\\.[ih][^/]*$" REGEX "/\\.\\.\\/\\.\\.\\/\\.\\.\\/build$" EXCLUDE REGEX "/\\/build[^/]*$" EXCLUDE REGEX "/\\.git\\/[^/]*$" EXCLUDE REGEX "/doc\\/[^/]*$" EXCLUDE REGEX "/node\\_modules\\/[^/]*$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6" TYPE FILE FILES
    "C:/.tipi/w/unit-test-project-compile-2e803a6/build/windows-cxx17/bin/generated/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6Config.cmake"
    "C:/.tipi/w/unit-test-project-compile-2e803a6/build/windows-cxx17/bin/generated/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6Targets.cmake"
         "C:/.tipi/w/unit-test-project-compile-2e803a6/build/windows-cxx17/bin/CMakeFiles/Export/6eccf1d57279182ec03b24689f11fd91/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6" TYPE FILE FILES "C:/.tipi/w/unit-test-project-compile-2e803a6/build/windows-cxx17/bin/CMakeFiles/Export/6eccf1d57279182ec03b24689f11fd91/unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6Targets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/.tipi/w/unit-test-project-compile-2e803a6/build/windows-cxx17/bin/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
