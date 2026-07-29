add_executable(cli_menu_test)
target_sources(
    cli_menu_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/cli_menu_test.cpp)
target_link_libraries(cli_menu_test PRIVATE ut::ut glaze Boost::boost)
