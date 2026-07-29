add_executable(buffer_pool_test)
target_sources(
    buffer_pool_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/buffer_pool_test.cpp)
target_link_libraries(buffer_pool_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME buffer_pool_test COMMAND buffer_pool_test)
