add_executable(simple_float_test)
target_sources(
    simple_float_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/simple_float_test.cpp)
target_link_libraries(simple_float_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME simple_float_test COMMAND simple_float_test)
