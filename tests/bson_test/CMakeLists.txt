add_executable(bson_test)
target_sources(
    bson_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/bson_test.cpp)
target_link_libraries(bson_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME bson_test COMMAND bson_test)
