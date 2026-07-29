add_executable(chrono_test)
target_sources(chrono_test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/chrono_test.cpp)
target_link_libraries(chrono_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME chrono_test COMMAND chrono_test)
