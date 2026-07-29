option(GLAZE_ENABLE_MODULES "Enable modules with import std" ON)
option(glaze_INSTALL "Generate installation rules for glaze"
       "${PROJECT_IS_TOP_LEVEL}")
option(glaze_DISABLE_SIMD_WHEN_SUPPORTED
       "disable SIMD optimizations even when targets support it (e.g. AVX2)" OFF)
option(glaze_DISABLE_ALWAYS_INLINE
       "disable forced inlining to reduce binary size and compilation time" OFF)
option(glaze_BUILD_EXAMPLES "Build GLAZE examples" OFF)
option(glaze_EETF_FORMAT "Enable Erlang external term format parsing" OFF) # TODO:
                                                                           # Convert
option(glaze_ENABLE_SSL "Enable SSL/TLS support for HTTPS servers" OFF)
option(
    glaze_ENABLE_REFLECTION26
    "Enable C++26 P2996 reflection (requires Bloomberg clang-p2996 or compatible compiler)"
    OFF)
option(BUILD_TESTS "Build GLAZE tests" OFF)
option(glaze_BUILD_PERFORMANCE_TESTS "Build performance tests" OFF)
option(
    glaze_SIMPLE_FLOAT_TEST
    "Build simple_float exhaustive tests (slow,
Release mode recommended)"
    OFF)
option(
    glaze_BUILD_NETWORKING_TESTS
    "Build networking tests (requires
    OpenSSL)"
    OFF)
option(
    glaze_BUILD_SSL_TESTS
    "Build SSL/TLS tests (requires OpenSSL headers matching target architecture)"
    ON)
option(glaze_ENABLE_EIGEN "Enable Eigen support" OFF)
