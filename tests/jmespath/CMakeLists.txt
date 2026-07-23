add_executable(jmespath)
target_sources(jmespath PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/jmespath.cpp)
target_link_libraries(jmespath PRIVATE ut::ut glaze glaze::asio)
add_test(NAME jmespath COMMAND jmespath)
