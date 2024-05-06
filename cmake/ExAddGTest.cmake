# Ref: https://crascit.com/2015/07/25/cmake-gtest/
# Ref: https://github.com/Crascit/DownloadProject/blob/master/CMakeLists.txt

if (MSVC)
    if (MSVC_VERSION VERSION_EQUAL 1800)
        set(_gtest_git_tag release-1.8.1)
    else()
        set(_gtest_git_tag main)
    endif()
else()
    set(_gtest_git_tag main)
endif ()

include(${CMAKE_CURRENT_LIST_DIR}/DownloadProject.cmake)
download_project(PROJ googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG ${_gtest_git_tag}
        UPDATE_DISCONNECTED 1)
        
set(INSTALL_GTEST OFF CACHE BOOL "" FORCE)
set(BUILD_GMOCK OFF CACHE BOOL "" FORCE)
add_subdirectory("${googletest_SOURCE_DIR}" "${googletest_BINARY_DIR}")
