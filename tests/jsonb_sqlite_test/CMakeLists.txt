find_package(SQLite3 REQUIRED)
add_executable(jsonb_sqlite_test)
target_sources(
    jsonb_sqlite_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/jsonb_sqlite_test.cpp)
target_link_libraries(jsonb_sqlite_test PRIVATE ut::ut glaze glaze::asio SQLite::SQLite3)
add_test(NAME jsonb_sqlite_test COMMAND jsonb_sqlite_test)
