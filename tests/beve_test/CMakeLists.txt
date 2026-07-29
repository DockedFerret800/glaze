add_executable(beve_test)
target_sources(
    beve_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/beve_test.cpp)
target_link_libraries(beve_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME beve_test COMMAND beve_test)

add_executable(beve_skip_null_on_read_test)
target_sources(
    beve_skip_null_on_read_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/skip_null_on_read_test.cpp)
target_link_libraries(beve_skip_null_on_read_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME beve_skip_null_on_read_test COMMAND beve_skip_null_on_read_test)

## Lazy BEVE test - for lazy parsing of BEVE data

add_executable(lazy_beve_test)
target_sources(
    lazy_beve_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/lazy_beve_test.cpp)
target_link_libraries(lazy_beve_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME lazy_beve_test COMMAND lazy_beve_test)
