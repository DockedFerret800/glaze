add_executable(float_write_test)
target_sources(float_write_test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/float_write_test.cpp)
target_link_libraries(float_write_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME float_write_test COMMAND float_write_test)
