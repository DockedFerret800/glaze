add_executable(json_conformance)
target_sources(
    json_conformance
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/json_conformance.cpp)
target_link_libraries(json_conformance PRIVATE ut::ut glaze glaze::asio)
add_test(NAME json_conformance COMMAND json_conformance)
