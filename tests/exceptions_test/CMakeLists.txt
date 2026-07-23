add_executable(exceptions_test)
target_sources(
    exceptions_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/exceptions_test.cpp)
target_link_libraries(exceptions_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME exceptions_test COMMAND exceptions_test)
