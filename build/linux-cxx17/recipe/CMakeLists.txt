
# This is an #inglued <> generated CMakeLists.txt (https://github.com/header-only/inglued)
# To modify it edit CMakeLists.txt.tpl ( i.e. Generate it with `inglued cmaketpl` )


cmake_minimum_required(VERSION 3.17.0)

##### PLATFORM deps #####
set(HUNTER_ROOT "/root/.tipi/platform/6b9afd6")
include(HunterGate)
HunterGate(
    URL "unused" 
    SHA1 "unused" 
)
##### PLATFORM deps #####

project(unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6 VERSION "0.0.1")
enable_testing()

# Compile with shipped-with headers or without 
option(INGLUED "Enable use of #inglued shipped with dependencies." ON)
option(TIPI_LIB_ONLY "Only installs the lib, don't build anything else." OFF)

# Compile unit tests
option(UNIT_TESTS "Enable Unit Testing" OFF)


# Warning as errors to ensure unit-test-project-compile-2e803a6 quality
string(TOUPPER "${CMAKE_CXX_COMPILER_ID}" COMPILER_IN_USE)
if ("${COMPILER_IN_USE}" STREQUAL "GNU" OR "${COMPILER_IN_USE}" MATCHES "CLANG")
	add_definitions(
    -Wall
		#-Werror
		-Wno-unused-local-typedefs
		-Wno-unused-variable
  )
endif()

find_package(Threads)








# Define library
add_library(unit-test-project-compile-2e803a6 INTERFACE )
add_library(unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6::unit-test-project-compile-2e803a6 ALIAS unit-test-project-compile-2e803a6)

target_include_directories(unit-test-project-compile-2e803a6 BEFORE INTERFACE 
  $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../../..> 
  $<INSTALL_INTERFACE:${include_install_dir}/>)

#

target_link_libraries(unit-test-project-compile-2e803a6 INTERFACE 
  
  ${CMAKE_THREAD_LIBS_INIT}
)

set(include_install_dir "include")

if (NOT TIPI_LIB_ONLY)

  # main
  add_executable(main "../../../main.cpp" )
  set_target_properties(main PROPERTIES OUTPUT_NAME main)
  target_link_libraries(main unit-test-project-compile-2e803a6_unit-test-project-compile-2e803a6::unit-test-project-compile-2e803a6)




endif()

if (NOT TIPI_LIB_ONLY)
endif()


# Installing

# Layout. This works for all platforms:
#   * <prefix>/lib/cmake/<PROJECT-NAME>
#   * <prefix>/lib/
#   * <prefix>/include/
set(config_install_dir "lib/cmake/${PROJECT_NAME}")

set(generated_dir "${CMAKE_CURRENT_BINARY_DIR}/generated")

# Configuration
set(version_config "${generated_dir}/${PROJECT_NAME}ConfigVersion.cmake")
set(project_config "${generated_dir}/${PROJECT_NAME}Config.cmake")
set(targets_export_name "${PROJECT_NAME}Targets")
set(namespace "${PROJECT_NAME}::")

# Include module with fuction 'write_basic_package_version_file'
include(CMakePackageConfigHelpers)

# Configure '<PROJECT-NAME>ConfigVersion.cmake'
# Note: PROJECT_VERSION is used as a VERSION
write_basic_package_version_file(
    "${version_config}" COMPATIBILITY SameMajorVersion
)

# Configure '<PROJECT-NAME>Config.cmake'
# Use variables:
#   * targets_export_name
#   * PROJECT_NAME
configure_package_config_file(
    "cmake/modules/Config.cmake.in"
    "${project_config}"
    INSTALL_DESTINATION "${config_install_dir}"
)


# Targets:
install(
    TARGETS unit-test-project-compile-2e803a6
    EXPORT "${targets_export_name}"
    LIBRARY DESTINATION "lib"
    ARCHIVE DESTINATION "lib"
    RUNTIME DESTINATION "bin"
    INCLUDES DESTINATION "${include_install_dir}"
)

# Headers:
install(
    DIRECTORY ../../../
    DESTINATION "${include_install_dir}"
    FILES_MATCHING PATTERN "*.[ih]*"
    PATTERN ../../../build EXCLUDE
     PATTERN "/build*" EXCLUDE 
 PATTERN ".git/*" EXCLUDE 
 PATTERN "doc/*" EXCLUDE 
 PATTERN "node_modules/*" EXCLUDE 
)



# Config
#   * <prefix>/lib/cmake/unit-test-project-compile-2e803a6/unit-test-project-compile-2e803a6Config.cmake
#   * <prefix>/lib/cmake/unit-test-project-compile-2e803a6/unit-test-project-compile-2e803a6ConfigVersion.cmake
#   * <prefix>/lib/cmake/unit-test-project-compile-2e803a6/unit-test-project-compile-2e803a6Targets.cmake
install(
    FILES "${project_config}" "${version_config}"
    DESTINATION "${config_install_dir}"
)
install(
    EXPORT "${targets_export_name}"
    NAMESPACE "${namespace}"
    DESTINATION "${config_install_dir}"
)

