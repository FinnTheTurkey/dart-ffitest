cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(hello_library VERSION 1.0.0 LANGUAGES C)
add_library(hello_library SHARED hello.c hello.def)
add_executable(hello_test hello.c)

set_target_properties(hello_library PROPERTIES
    PUBLIC_HEADER hello.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    OUTPUT_NAME "hello"
)

if (EMSCRIPTEN)
    set(CMAKE_EXECUTABLE_SUFFIX ".html")
    set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -s EXPORTED_FUNCTIONS=_hello_world -s EXPORTED_RUNTIME_METHODS=ccall,cwrap --shell-file ../shell.html")
endif()
