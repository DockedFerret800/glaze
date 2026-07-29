add_executable(cbor_test)
target_sources(
    cbor_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/cbor_test.cpp)
target_link_libraries(cbor_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME cbor_test COMMAND cbor_test)
