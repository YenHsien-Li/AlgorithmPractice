include(GoogleTest)
# for gmock
set(BUILD_GMOCK ON CACHE BOOL "" FORCE)

set(SRCS uTest.cpp)
	
# set(HEADERS)

# set(INCS)

set(LIBS gtest gtest_main )

include_directories(${INCS})
add_executable(AlgorithmPracticeUnitest ${SRCS} ${HEADERS})
target_link_libraries(AlgorithmPracticeUnitest ${LIBS})

gtest_discover_tests(AlgorithmPracticeUnitest)