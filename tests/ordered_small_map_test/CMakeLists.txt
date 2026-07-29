add_executable(ordered_small_map_test)
target_sources(
    ordered_small_map_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/ordered_small_map_test.cpp)
target_link_libraries(ordered_small_map_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME ordered_small_map_test COMMAND ordered_small_map_test)
