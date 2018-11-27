cmake_minimum_required(VERSION 3.8)
project(BETA C CXX)

add_subdirectory(cmv_tools)
add_subdirectory(processing_tools)

install(DIRECTORY scripts/
        DESTINATION /opt/axiom-firmware/software/scripts
        FILES_MATCHING PATTERN "scripts/*"
    )
