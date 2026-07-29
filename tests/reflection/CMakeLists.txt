add_executable(reflection)
target_sources(reflection PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/reflection.cpp)
target_link_libraries(reflection PRIVATE ut::ut glaze Boost::boost)
add_test(NAME reflection COMMAND reflection)

add_executable(enum_test)
target_sources(enum_test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/enum_test.cpp)
target_link_libraries(enum_test PRIVATE ut::ut glaze Boost::boost)
add_test(NAME enum_test COMMAND enum_test)
