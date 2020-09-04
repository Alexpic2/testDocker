cmake_minimum_required(VERSION 3.10)
PROJECT(TEST)

IF(WIN32)
        MESSAGE(STATUS "================ WIN32 ================")
ENDIF(WIN32)

IF(UNIX)
        MESSAGE(STATUS "================ UNIX ================")
	EXECUTE_PROCESS( COMMAND uname -m COMMAND tr -d '\n' OUTPUT_VARIABLE ARCHITECTURE )
	message(STATUS "Architecture: ${ARCHITECTURE}" )

        IF(ARCHITECTURE STREQUAL "aarch64")
                message(STATUS "Nvidia jetson")
        ELSE()
                message(STATUS "Intel core")
        ENDIF()
ENDIF(UNIX)

add_executable(helloTest test.cpp)
