add_executable(istream_buffer_test)
target_sources(
    istream_buffer_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/istream_buffer_test.cpp)
target_link_libraries(istream_buffer_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME istream_buffer_test COMMAND istream_buffer_test)
