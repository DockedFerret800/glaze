add_executable(ordered_map_test)
target_sources(
    ordered_map_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/ordered_map_test.cpp)
target_link_libraries(ordered_map_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME ordered_map_test COMMAND ordered_map_test)
