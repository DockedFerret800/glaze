add_executable(jsonrpc_test)
target_sources(
    jsonrpc_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/jsonrpc_test.cpp)
target_link_libraries(jsonrpc_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME jsonrpc_test COMMAND jsonrpc_test)
