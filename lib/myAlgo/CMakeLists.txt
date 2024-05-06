
set(algorithm_headers 
	test.h

)

set(algorithm_srcs 
	test.cpp

)

set(HEADERS 
	${algorithm_headers}
	myAlgo.h
)

set(SRCS 
	${algorithm_srcs} 

)

# source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${HEADERS})
# source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SRCS})


add_library(myAlgo STATIC ${SRCS} ${HEADERS})