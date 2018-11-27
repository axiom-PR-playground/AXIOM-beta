# CMakeLists files in this project can
# refer to the root source directory of the project as ${PROCESSING_TOOLS_SOURCE_DIR} and
# to the root binary directory of the project as ${PROCESSING_TOOLS_BINARY_DIR}.
cmake_minimum_required(VERSION 3.8)
project(PROCESSING_TOOLS C CXX)
find_package(Threads REQUIRED)

# Use Release build type as default
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()
set(CMAKE_C_STANDARD 99)
# Use this with caution, it's global override to all targets and compile flags
# set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

function(add_common_properties target)
    # Add libm and pthread to the library set
    target_link_libraries(${target} m Threads::Threads)
    target_include_directories(${target} PUBLIC include)
    target_compile_options(${target} PRIVATE -Wall -Wno-deprecated-declarations)
endfunction(add_common_properties)

add_executable(lut_conf3 src/lut_conf3.c)
add_common_properties(lut_conf3)

add_executable(mimg src/mimg.c)
add_common_properties(mimg)

install(TARGETS lut_conf3 mimg
    DESTINATION usr/local/bin
    )
install(DIRECTORY overlays/
        DESTINATION /opt/overlays
        FILES_MATCHING PATTERN "overlays/*.raw"
    )
