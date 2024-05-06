include(GoogleTest)

# for gmock
set(BUILD_GMOCK ON CACHE BOOL "" FORCE)

set(SRCS 
	uTest.cpp
	first_test.cpp
	)
	
# set(HEADERS)

set(INCS 
	${PROJECT_SOURCE_DIR}/lib/myAlgo
)

set(LIBS gtest gtest_main myAlgo)

include_directories(${INCS})
add_executable(AlgorithmPracticeUnitest ${SRCS} ${HEADERS})
target_link_libraries(AlgorithmPracticeUnitest ${LIBS})

gtest_discover_tests(AlgorithmPracticeUnitest)