add_executable(example_json)
target_sources(example_json PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/example_json.cpp)
target_link_libraries(example_json PRIVATE ut::ut glaze glaze::asio)
add_test(NAME example_json COMMAND example_json)
