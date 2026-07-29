add_executable(jsonb_test)
target_sources(
    jsonb_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/jsonb_test.cpp)
target_link_libraries(jsonb_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME jsonb_test COMMAND jsonb_test)
