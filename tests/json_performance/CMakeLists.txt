add_library(json_perf_common)
target_sources(
    json_perf_common
    PUBLIC
    FILE_SET CXX_MODULES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_perf_common.ixx)
add_executable(json_performance)
target_sources(
    json_performance
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_performance.cpp)
target_link_libraries(
    json_performance
    PRIVATE ut::ut glaze Boost::boost json_perf_common)
add_test(NAME json_performance COMMAND json_performance)

add_executable(json_perf_strings)
target_sources(
    json_perf_strings
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_perf_strings.cpp)
target_link_libraries(
    json_perf_strings
    PRIVATE ut::ut glaze Boost::boost json_perf_common)
add_test(NAME json_perf_strings COMMAND json_perf_strings)

add_executable(json_perf_numbers)
target_sources(
    json_perf_numbers
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_perf_numbers.cpp)
target_link_libraries(
    json_perf_numbers
    PRIVATE ut::ut glaze Boost::boost json_perf_common)
add_test(NAME json_perf_numbers COMMAND json_perf_numbers)

add_executable(json_perf_objects)
target_sources(
    json_perf_objects
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_perf_objects.cpp)
target_link_libraries(
    json_perf_objects
    PRIVATE ut::ut glaze Boost::boost json_perf_common)
add_test(NAME json_perf_objects COMMAND json_perf_objects)

add_executable(json_perf_discord)
target_sources(
    json_perf_discord
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_perf_discord.cpp)
target_link_libraries(
    json_perf_discord
    PRIVATE ut::ut glaze Boost::boost json_perf_common)
add_test(NAME json_perf_discord COMMAND json_perf_discord)

add_executable(json_perf_benchmark)
target_sources(
    json_perf_benchmark
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_perf_benchmark.cpp)
target_link_libraries(
    json_perf_benchmark
    PRIVATE ut::ut glaze Boost::boost json_perf_common)
add_test(NAME json_perf_benchmark COMMAND json_perf_benchmark)
