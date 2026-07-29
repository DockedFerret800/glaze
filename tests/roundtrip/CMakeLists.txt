add_executable(roundtrip_JSON)
target_sources(
    roundtrip_JSON
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/roundtrip.cpp)
target_compile_definitions(
    roundtrip_JSON
    PRIVATE GLZ_TEST_FORMAT=glz::JSON)
target_link_libraries(roundtrip_JSON PRIVATE ut::ut glaze Boost::boost)
add_test(NAME roundtrip_JSON COMMAND roundtrip_JSON)

add_executable(roundtrip_BEVE)
target_sources(
    roundtrip_BEVE
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/roundtrip.cpp)
target_compile_definitions(
    roundtrip_BEVE
    PRIVATE GLZ_TEST_FORMAT=glz::BEVE)
target_link_libraries(roundtrip_BEVE PRIVATE ut::ut glaze Boost::boost)
add_test(NAME roundtrip_BEVE COMMAND roundtrip_BEVE)
