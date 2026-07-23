add_executable(eetf_test)
target_sources(
    eetf_test
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/eetf_test.cpp)
target_link_libraries(eetf_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME eetf_test COMMAND eetf_test)
