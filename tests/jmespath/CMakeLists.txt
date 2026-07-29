add_executable(jmespath)
target_sources(jmespath PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/jmespath.cpp)
target_link_libraries(jmespath PRIVATE ut::ut glaze Boost::boost)
add_test(NAME jmespath COMMAND jmespath)
