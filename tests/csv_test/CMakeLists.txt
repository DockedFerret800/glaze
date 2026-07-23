add_executable(csv_test)
target_sources(
    csv_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/csv_test.cpp)
target_link_libraries(csv_test PRIVATE ut::ut glaze glaze::asio)
target_compile_definitions(csv_test PRIVATE
    GLZ_TEST_DIRECTORY="${CMAKE_CURRENT_SOURCE_DIR}"
)
add_test(NAME csv_test COMMAND csv_test)

add_executable(csv_bounded_buffer_test)
target_sources(
    csv_bounded_buffer_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/csv_bounded_buffer_test.cpp)
target_link_libraries(csv_bounded_buffer_test PRIVATE ut::ut glaze glaze::asio)
target_compile_definitions(csv_bounded_buffer_test PRIVATE
    GLZ_TEST_DIRECTORY="${CMAKE_CURRENT_SOURCE_DIR}"
)
add_test(NAME csv_bounded_buffer_test COMMAND csv_bounded_buffer_test)
