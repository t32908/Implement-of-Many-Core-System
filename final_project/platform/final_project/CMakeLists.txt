file(GLOB_RECURSE HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/*.h)

add_library(platform-final_project
ethernet.cpp
display.cpp
${HEADERS})

target_include_directories(platform-final_project PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(final_project
        main_multicore.cpp
        ${HEADERS})

#main.cpp

target_link_libraries(final_project rv32 platform-basic-acc platform-common gdb-mc ${Boost_LIBRARIES} ${SystemC_LIBRARIES} pthread)

INSTALL(TARGETS riscv-vp RUNTIME DESTINATION bin)
