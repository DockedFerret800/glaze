add_executable(eigen_test ${CMAKE_CURRENT_SOURCE_DIR}/eigen_test.cpp)
target_link_libraries(eigen_test PRIVATE ut::ut glaze Boost::boost Eigen3::Eigen)
add_test(NAME eigen_test COMMAND eigen_test)
