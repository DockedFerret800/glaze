add_executable(api_test)
target_sources(
    api_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/api_test.cpp)
target_link_libraries(api_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME api_test COMMAND api_test)
