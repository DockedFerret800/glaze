add_executable(mock_json_test)
target_sources(
    mock_json_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/mock_json_test.cpp)
target_compile_definitions(
    mock_json_test
    PRIVATE GLZ_TEST_DIRECTORY="${CMAKE_CURRENT_SOURCE_DIR}")
target_link_libraries(mock_json_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME mock_json_test COMMAND mock_json_test)
