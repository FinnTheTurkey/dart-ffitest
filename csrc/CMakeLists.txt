cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(hello_library VERSION 1.0.0 LANGUAGES C CXX)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(bindings "")
if (EMSCRIPTEN)
    set(bindings "bindings.cpp")
endif()

add_library(hello_library SHARED hello.c ${bindings} hello.def)
add_executable(hello_test hello.c ${bindings})

set_target_properties(hello_library PROPERTIES
    PUBLIC_HEADER hello.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    OUTPUT_NAME "hello"
)

if (EMSCRIPTEN)
    set(CMAKE_EXECUTABLE_SUFFIX ".html")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -lembind -s LLD_REPORT_UNDEFINED --shell-file ../shell.html")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lembind -s LLD_REPORT_UNDEFINED --shell-file ../shell.html")
endif()
