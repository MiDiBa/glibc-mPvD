# Install script for directory: /home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/midori" TYPE FILE FILES
    "/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/AUTHORS"
    "/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/COPYING"
    "/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/ChangeLog"
    "/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/EXPAT"
    "/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/README"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/midori/cmake_install.cmake")
  include("/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/extensions/cmake_install.cmake")
  include("/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/tests/cmake_install.cmake")
  include("/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/po/cmake_install.cmake")
  include("/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/icons/cmake_install.cmake")
  include("/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/data/cmake_install.cmake")
  include("/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/config/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/pvd/Documents/glibc-mPvD/pvd-aware-app/midori/_build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
