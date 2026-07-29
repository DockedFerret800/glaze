add_executable(inplace_vector_test)
target_sources(
    inplace_vector_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/inplace_vector_test.cpp)
target_link_libraries(inplace_vector_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME inplace_vector_test COMMAND inplace_vector_test)
