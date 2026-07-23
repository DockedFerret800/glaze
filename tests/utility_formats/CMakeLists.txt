add_executable(utility_formats)
target_sources(
    utility_formats
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/utility_formats.cpp)
target_link_libraries(utility_formats PRIVATE ut::ut glaze glaze::asio)
add_test(NAME utility_formats COMMAND utility_formats)
