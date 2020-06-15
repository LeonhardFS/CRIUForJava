cmake_minimum_required(VERSION 3.10)
project(CheckpointRestore)

# fetch additional find modules files
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

set(CMAKE_BUILD_TYPE Release)
find_package(JNI REQUIRED)
find_package(CRIU REQUIRED)
include_directories(${JNI_INCLUDE_DIRS} ${CRIU_INCLUDE_DIRS})
set(SOURCE_FILES CheckpointRestore.cc)

add_library(CheckpointRestore SHARED ${SOURCE_FILES})
target_link_libraries(CheckpointRestore ${CRIU_LIBRARIES})
