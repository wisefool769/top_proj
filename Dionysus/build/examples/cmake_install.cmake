# Install script for directory: /Users/aashiq/Downloads/Dionysus/examples

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/alphashapes/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/cech-complex/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/consistency/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/cohomology/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/fitness/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/pl-functions/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/triangle/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/poincare/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/rips/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/filtration/cmake_install.cmake")
  INCLUDE("/Users/aashiq/Downloads/Dionysus/build/examples/homology-zigzags/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

