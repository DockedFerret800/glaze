cmake_minimum_required(VERSION 4.4)
project(glaze VERSION 7.8.1 LANGUAGES C CXX)
set(CMAKE_EXPERIMENTAL_FIND_CPS_PACKAGES ON)
set(CMAKE_CXX_MODULE_STD ON)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_C_STANDARD 23)
set(CMAKE_C_EXTENSIONS ON)
include(GNUInstallDirs)

include(options.cmake)
add_library(glaze)
set_target_properties(glaze PROPERTIES EXPORT_NAME "cxx_module")
target_include_directories(
    glaze
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/modules>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/glaze/modules>)
set(GLAZE_MODULE_SOURCES
    ${CMAKE_SOURCE_DIR}/modules/glaze/glaze.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/jsonb.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/cbor.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/bson.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/csv.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/chrono.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/version.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/glaze_exceptions.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/msgpack.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/toml.ixx # core
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/array_apply.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/as_array_wrapper.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/buffer_traits.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/cast.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/chrono.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/common.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/constraint.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/context.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/convert_struct.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/custom.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/custom_meta.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/istream_buffer.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/manage.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/meta.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/meta_fwd.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/optimization_level.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/opts.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/ostream_buffer.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/ptr.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/reflect.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/seek.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/std_error_code.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/streaming_state.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/to.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/traits.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/wrapper_traits.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/write.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/write_chars.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/core/write_wrappers.ixx # json
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/escape_unicode.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/float_format.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/generic.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/invoke.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/jmespath.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/json_concepts.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/json_format.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/json_ptr.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/json_stream.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/lazy.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/max_write_precision.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/minify.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/ndjson.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/patch.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/prettify.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/ptr.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/raw_string.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/schema.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/skip.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/study.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/wrappers.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/write.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/json/flatten_map.ixx # utils
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/string_literal.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/expected.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/dump.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/convert.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/parse.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/nullable_traits.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/atoi.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/for_each.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/type_traits.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/bit.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/compare.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/glaze_fast_float.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/simple_float.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/fast_float.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/variant.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/itoa.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/bit_array.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/help.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/tuple.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/validate.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/primes_64.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/dtoa.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/itoa_40kb.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/dragonbox.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/buffer_pool.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/progress_bar.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/key_transformers.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/uuid.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/util/zmij.ixx # concepts
    ${CMAKE_SOURCE_DIR}/modules/glaze/concepts/container_concepts.ixx # api
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/hash.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/tuplet.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/type_support.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/xxh64.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/impl.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/api.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/trait.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/lib.ixx # api/std
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/array.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/deque.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/functional.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/list.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/map.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/optional.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/set.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/shared_ptr.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/span.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/string.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/tuple.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/unique_ptr.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/unordered_map.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/unordered_set.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/variant.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/api/std/vector.ixx # tuplet
    ${CMAKE_SOURCE_DIR}/modules/glaze/tuplet/tuple.ixx # thread
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/atomic.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/async.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/async_string.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/async_vector.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/shared_async_map.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/shared_async_vector.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/threadpool.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/value_proxy.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/thread/guard.ixx # simd
    ${CMAKE_SOURCE_DIR}/modules/glaze/simd/avx.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/simd/neon.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/simd/sse.ixx # reflection
    ${CMAKE_SOURCE_DIR}/modules/glaze/reflection/to_tuple.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/reflection/get_name.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/reflection/requires_key.ixx # base64
    ${CMAKE_SOURCE_DIR}/modules/glaze/base64/base64.ixx # beve
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/header.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/beve_to_json.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/key_traits.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/lazy.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/peek_header.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/ptr.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/size.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/skip.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/wrappers.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/beve/write.ixx # file
    ${CMAKE_SOURCE_DIR}/modules/glaze/file/file_ops.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/file/hostname_include.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/file/raw_or_file.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/file/read_directory.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/file/write_directory.ixx # cbor
    ${CMAKE_SOURCE_DIR}/modules/glaze/cbor/cbor_to_json.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/cbor/header.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/cbor/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/cbor/skip.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/cbor/wrappers.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/cbor/write.ixx # bson
    ${CMAKE_SOURCE_DIR}/modules/glaze/bson/bson_to_json.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/bson/header.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/bson/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/bson/skip.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/bson/write.ixx # jsonb
    ${CMAKE_SOURCE_DIR}/modules/glaze/jsonb/header.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/jsonb/jsonb_to_json.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/jsonb/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/jsonb/skip.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/jsonb/text_decode.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/jsonb/write.ixx # containers
    ${CMAKE_SOURCE_DIR}/modules/glaze/containers/flat_map.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/containers/inplace_vector.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/containers/ordered_small_map.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/containers/ordered_map.ixx # hardware
    ${CMAKE_SOURCE_DIR}/modules/glaze/hardware/volatile_array.ixx # record
    ${CMAKE_SOURCE_DIR}/modules/glaze/record/recorder.ixx # trace
    ${CMAKE_SOURCE_DIR}/modules/glaze/trace/trace.ixx # csv
    ${CMAKE_SOURCE_DIR}/modules/glaze/csv/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/csv/skip.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/csv/write.ixx # exceptions
    ${CMAKE_SOURCE_DIR}/modules/glaze/exceptions/binary_exceptions.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/exceptions/cbor_exceptions.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/exceptions/core_exceptions.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/exceptions/csv_exceptions.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/exceptions/json_exceptions.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/exceptions/json_schema_exceptions.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/exceptions/jsonb_exceptions.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/exceptions/msgpack_exceptions.ixx
    # msgpack
    ${CMAKE_SOURCE_DIR}/modules/glaze/msgpack/common.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/msgpack/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/msgpack/skip.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/msgpack/write.ixx # ext (external)
    ${CMAKE_SOURCE_DIR}/modules/glaze/ext/cli_menu.ixx
    # ${CMAKE_SOURCE_DIR}/modules/glaze/ext/eigen.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/ext/jsonrpc.ixx # compare
    ${CMAKE_SOURCE_DIR}/modules/glaze/compare/compare.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/compare/approx.ixx # stencil
    ${CMAKE_SOURCE_DIR}/modules/glaze/stencil/stencil.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/stencil/stencilcount.ixx # format
    ${CMAKE_SOURCE_DIR}/modules/glaze/format/format_to.ixx # toml
    ${CMAKE_SOURCE_DIR}/modules/glaze/toml/common.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/toml/opts.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/toml/read.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/toml/skip.ixx
    ${CMAKE_SOURCE_DIR}/modules/glaze/toml/write.ixx # hash
    ${CMAKE_SOURCE_DIR}/modules/glaze/hash/sweethash.ixx)
target_sources(glaze PUBLIC FILE_SET CXX_MODULES FILES ${GLAZE_MODULE_SOURCES})

if(glaze_DISABLE_SIMD_WHEN_SUPPORTED)
    target_compile_definitions(glaze PRIVATE GLZ_DISABLE_SIMD)
endif()

if(glaze_DISABLE_ALWAYS_INLINE)
    target_compile_definitions(glaze PRIVATE GLZ_DISABLE_ALWAYS_INLINE)
endif()

if(glaze_BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()

if(glaze_EETF_FORMAT)
    list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
    find_package(Erlang REQUIRED)
    target_link_libraries(glaze PUBLIC Erlang::EI Erlang::Erlang)
    target_compile_definitions(glaze PRIVATE GLZ_ENABLE_EETF)
endif()

if(glaze_ENABLE_SSL)
    find_package(OpenSSL REQUIRED)
    target_link_libraries(glaze PUBLIC OpenSSL::SSL OpenSSL::Crypto)
    target_compile_definitions(glaze PRIVATE GLZ_ENABLE_SSL)
endif()

if(glaze_ENABLE_REFLECTION26)
    target_compile_definitions(glaze PRIVATE GLZ_REFLECTION26=1)
endif()

install(
    TARGETS glaze
    EXPORT glaze-targets
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FILE_SET CXX_MODULES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/glaze)

install(
    PACKAGE_INFO glaze
    EXPORT glaze-targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cps/glaze
    CXX_MODULES_DIRECTORY cxxmodules)

install(
    DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/modules"
    DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/glaze"
    FILES_MATCHING
    PATTERN "*.hpp")

if(BUILD_TESTS)
    include(CTest)
    add_subdirectory(tests)
endif()
