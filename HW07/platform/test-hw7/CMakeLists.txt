file(GLOB_RECURSE HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/*.h)

add_library(platform-test-hw7
ethernet.cpp
display.cpp
${HEADERS})

target_include_directories(platform-test-hw7 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(test-hw7
        main_multicore.cpp
        ${HEADERS})

#main.cpp

target_link_libraries(test-hw7 rv32 platform-basic-acc platform-common gdb-mc ${Boost_LIBRARIES} ${SystemC_LIBRARIES} pthread)

INSTALL(TARGETS riscv-vp RUNTIME DESTINATION bin)
