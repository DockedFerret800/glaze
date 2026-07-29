add_executable(compare_test)
target_sources(
    compare_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/compare_test.cpp)
target_link_libraries(compare_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME compare_test COMMAND compare_test)
