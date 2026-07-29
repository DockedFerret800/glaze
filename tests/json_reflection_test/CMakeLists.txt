add_executable(json_reflection_test)
target_sources(
    json_reflection_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/json_reflection_test.cpp)
target_link_libraries(json_reflection_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME json_reflection_test COMMAND json_reflection_test)

add_executable(front_hash_test)
target_sources(
    front_hash_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/front_hash_test.cpp)
target_link_libraries(front_hash_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME front_hash_test COMMAND front_hash_test)
