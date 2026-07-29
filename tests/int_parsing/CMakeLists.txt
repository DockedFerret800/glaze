add_executable(int_parsing)
target_sources(int_parsing PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/int_parsing.cpp)
target_link_libraries(int_parsing PRIVATE ut::ut glaze Boost::boost)
add_test(NAME int_parsing COMMAND int_parsing)
