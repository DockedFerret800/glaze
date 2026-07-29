add_executable(json_test)
target_sources(
    json_test
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_test.cpp
    FILE_SET
        CXX_MODULES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_test_shared_types.ixx)
target_link_libraries(json_test PRIVATE ut::ut glaze Boost::boost)
if(glaze_ENABLE_REFLECTION26)
    target_compile_definitions(json_test PRIVATE GLZ_REFLECTION26)
else()
    target_compile_definitions(json_test PRIVATE GLZ_REFLECTION26=0)
endif()
add_test(NAME json_test COMMAND json_test)

add_executable(json_test_non_null)
target_sources(
    json_test_non_null
    PRIVATE
    FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_test.cpp
    FILE_SET
        CXX_MODULES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_test_shared_types.ixx)
target_compile_definitions(json_test_non_null PRIVATE GLZ_NULL_TERMINATED=false)
target_link_libraries(json_test_non_null PRIVATE ut::ut glaze Boost::boost)
if(glaze_ENABLE_REFLECTION26)
    target_compile_definitions(json_test_non_null PRIVATE GLZ_REFLECTION26)
else()
    target_compile_definitions(json_test_non_null PRIVATE GLZ_REFLECTION26=0)
endif()
add_test(NAME json_test_non_null COMMAND json_test_non_null)

# add_executable(json_variant_support_test)
# target_sources(
#     json_variant_support_test
#     PRIVATE
#     FILE_SET
#         SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_variant_support_test.cpp
#     FILE_SET
#         CXX_MODULES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_test_shared_types.ixx)
# target_link_libraries(
#     json_variant_support_test
#     PRIVATE ut::ut glaze Boost::boost)
# add_test(NAME json_variant_support_test COMMAND json_variant_support_test)

# add_executable(json_variant_support_test_non_null)
# target_sources(
#     json_variant_support_test_non_null
#     PRIVATE
#     FILE_SET
#         SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_variant_support_test.cpp
#     FILE_SET
#         CXX_MODULES FILES ${CMAKE_CURRENT_SOURCE_DIR}/json_test_shared_types.ixx)
# target_compile_definitions(
#     json_variant_support_test_non_null
#     PRIVATE GLZ_NULL_TERMINATED=false)
# target_link_libraries(
#     json_variant_support_test_non_null
#     PRIVATE ut::ut glaze Boost::boost)
# if(glaze_ENABLE_REFLECTION26)
#     target_compile_definitions(
#         json_variant_support_test_non_null
#         PRIVATE GLZ_REFLECTION26)
# else()
#     target_compile_definitions(
#         json_variant_support_test_non_null
#         PRIVATE GLZ_REFLECTION26=0)
# endif()
# add_test(
#     NAME json_variant_support_test_non_null
#     COMMAND json_variant_support_test_non_null)
# set_tests_properties(json_test json_test_non_null PROPERTIES TIMEOUT 60)

# foreach(
#     target
#     IN
#     ITEMS
#     generic_test
#     generic_int_test
#     jsonschema_test
#     variant_ambiguous_test
#     value_based_skip_test
#     skip_default_members_test
#     nullable_lambda_test
#     byte_array_test
#     indexed_rename_key_test
#     skip_null_on_read_test
#     u8string_test
#     json_patch_test
#     json_merge_patch_test
#     linear_search_test
#     allocate_raw_pointers_test
#     lazy_test
#     non_aggregate_reflection_test)

#     add_executable(${target})
#     target_sources(
#         ${target}
#         PRIVATE
#         FILE_SET SOURCES FILES ${CMAKE_CURRENT_SOURCE_DIR}/${target}.cpp
#         FILE_SET
#             CXX_MODULES FILES
#             ${CMAKE_CURRENT_SOURCE_DIR}/json_test_shared_types.ixx)
#     target_link_libraries(${target} PRIVATE ut::ut glaze Boost::boost)
#     add_test(NAME ${target} COMMAND ${target})
# endforeach()
