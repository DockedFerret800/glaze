add_executable(ostream_buffer_test)
target_sources(
    ostream_buffer_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/ostream_buffer_test.cpp)
target_link_libraries(ostream_buffer_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME ostream_buffer_test COMMAND ostream_buffer_test)
