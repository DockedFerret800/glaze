add_executable(threading_test)
target_sources(
    threading_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/threading_test.cpp)
target_link_libraries(threading_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME threading_test COMMAND threading_test)
