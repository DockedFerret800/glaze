add_executable(toml_test)
target_sources(
    toml_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/toml_test.cpp)
target_compile_definitions(
    toml_test
    PRIVATE GLZ_TEST_DIRECTORY="${CMAKE_CURRENT_SOURCE_DIR}")
target_link_libraries(
    toml_test
    PRIVATE ut::ut glaze glaze::asio)
add_test(NAME toml_test COMMAND toml_test)
