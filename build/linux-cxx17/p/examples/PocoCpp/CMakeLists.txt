cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-Poco)

hunter_add_package(Poco)
find_package(Poco REQUIRED Foundation Util CONFIG)

add_executable(hello-poco hello-poco.cpp)
target_link_libraries(hello-poco Poco::Foundation Poco::Util)
