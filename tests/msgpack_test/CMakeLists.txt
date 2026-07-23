add_executable(msgpack_test)
target_sources(
    msgpack_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/msgpack_test.cpp)
target_link_libraries(msgpack_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME msgpack_test COMMAND msgpack_test)
