add_executable(stencil_test)
target_compile_definitions(
    stencil_test
    PRIVATE GLZ_TEST_DIRECTORY="${CMAKE_CURRENT_SOURCE_DIR}")
target_sources(
    stencil_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/stencil_test.cpp)
target_link_libraries(stencil_test PRIVATE ut::ut glaze glaze::asio)
add_test(NAME stencil_test COMMAND stencil_test)
