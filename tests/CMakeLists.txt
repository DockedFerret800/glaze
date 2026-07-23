include(FetchContent)

fetchcontent_declare(
    ut
    GIT_REPOSITORY https://github.com/mccakit/ut-glaze
    GIT_TAG 9a23541475269ead9046d70e3583515bb91c5e7d
    GIT_SHALLOW TRUE)

set(UT_ENABLE_MODULES ON)
fetchcontent_makeavailable(ut)
set_target_properties(ut::ut PROPERTIES CXX_MODULE_STD ON)

# Setup the Asio backend (Boost / standalone / bundled) used by networking
# tests.
# Selection plus the GLZ_USE_BOOST_ASIO bridge live in cmake/glaze-asio.cmake,
# the
# single source of truth shared with the benchmarks, so glaze/ext/glaze_asio.hpp
# and
# the backend CMake links can never disagree (issue #2599). Must run before
# glz_test_common/glz_test_exceptions, which link glaze::asio.
#
# Distro maintainers can set -Dglaze_USE_BUNDLED_ASIO=OFF to require system
# packages.
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../cmake")
include(glaze-asio)
glaze_setup_asio()

# include(../cmake/code-coverage.cmake)
# add_code_coverage_all_targets()
# add_library(glz_test_common INTERFACE)
# target_compile_features(glz_test_common INTERFACE cxx_std_23)
# target_link_libraries(glz_test_common INTERFACE ut::ut glaze::glaze
# glaze::asio)

# if(MSVC)
#     target_compile_options(glz_test_common INTERFACE /bigobj)
#     target_compile_options(glz_test_common INTERFACE /W4 /wd4459 /wd4805)
# elseif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
#     target_compile_options(glz_test_common INTERFACE -fno-rtti)
#     if(CMAKE_CXX_COMPILER_VERSION VERSION_LESS 13)
# target_compile_options(glz_test_common INTERFACE -Wall -Wextra -pedantic)
#     else()
# target_compile_options(glz_test_common INTERFACE -Wall -Wextra -pedantic
# $<$<CONFIG:Debug>:-Werror>)
#     endif()
# elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang|AppleClang")
#     target_compile_options(glz_test_common INTERFACE -fno-rtti)
# target_compile_options(glz_test_common INTERFACE -Wall -Wextra -pedantic
# $<$<CONFIG:Debug>:-Werror>)
#     target_compile_options(glz_test_common INTERFACE -ftime-trace)
# endif()

# add_library(glz_test_noexceptions INTERFACE)
# target_compile_features(glz_test_noexceptions INTERFACE cxx_std_23)
# target_link_libraries(glz_test_noexceptions INTERFACE glz_test_common)
# if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang|AppleClang")
#     target_compile_options(glz_test_noexceptions INTERFACE -fno-exceptions)
# endif()

# add_library(glz_test_exceptions INTERFACE)
# target_compile_features(glz_test_exceptions INTERFACE cxx_std_23)
# target_link_libraries(glz_test_exceptions INTERFACE ut::ut glaze::glaze
# glaze::asio)
# if(MSVC)
#     target_compile_options(glz_test_exceptions INTERFACE /bigobj)
#     target_compile_options(glz_test_exceptions INTERFACE /W4 /wd4459 /wd4805)
# elseif(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang|AppleClang")
# target_compile_options(glz_test_exceptions INTERFACE -Wall -Wextra -pedantic)
# endif()

add_subdirectory(api_test)
add_subdirectory(beve_test)
add_subdirectory(bson_test)
add_subdirectory(cbor_test)
add_subdirectory(jsonb_test)
add_subdirectory(jsonb_sqlite_test)
add_subdirectory(buffer_pool_test)
add_subdirectory(cli_menu_test)
add_subdirectory(compare_test)
add_subdirectory(ordered_small_map_test)
add_subdirectory(ordered_map_test)
add_subdirectory(csv_test)
# # add_subdirectory(eigen_test) unfinished
add_subdirectory(example_json)
add_subdirectory(exceptions_test)
add_subdirectory(inplace_vector)
add_subdirectory(float_write_test)
if(glaze_BUILD_PERFORMANCE_TESTS)
    add_subdirectory(int_parsing)
endif()
add_subdirectory(jmespath)
if(NOT glaze_ENABLE_REFLECTION26)
    add_subdirectory(jsonrpc_test)
endif()
add_subdirectory(key_transformers_test)
#add_subdirectory(lib_test)
add_subdirectory(mock_json_test)
add_subdirectory(reflection)
add_subdirectory(roundtrip)
add_subdirectory(stencil)
add_subdirectory(threading_test)
add_subdirectory(toml_test)
add_subdirectory(utility_formats)
# # add_subdirectory(yaml_test) disable for now, until latest changes are pulled
# # add_subdirectory(yaml_conformance)
add_subdirectory(msgpack_test)
add_subdirectory(ostream_buffer_test)
add_subdirectory(istream_buffer_test)

if(glaze_SIMPLE_FLOAT_TEST)
    add_subdirectory(simple_float_test)
endif()

# JSON Tests
add_subdirectory(chrono_test)
add_subdirectory(json_conformance)
# if(glaze_BUILD_PERFORMANCE_TESTS)
#     add_subdirectory(json_performance)
# endif()
add_subdirectory(json_reflection_test)
add_subdirectory(json_test)

# if(glaze_BUILD_NETWORKING_TESTS)
#     add_subdirectory(networking_tests)
# endif()

# if(glaze_EETF_FORMAT)
#     add_subdirectory(eetf_test)
# endif()

# if(glaze_ENABLE_REFLECTION26)
#     add_subdirectory(p2996_test)
# endif()
