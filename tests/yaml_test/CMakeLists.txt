add_executable(yaml_test)
target_sources(yaml_test PRIVATE FILE_SET SOURCES FILES yaml_test.cpp)
target_link_libraries(yaml_test PRIVATE ut::ut glaze Boost::boost)
target_compile_definitions(yaml_test PRIVATE
    GLZ_TEST_DIRECTORY="${CMAKE_CURRENT_SOURCE_DIR}"
)
add_test(NAME yaml_test COMMAND yaml_test)
