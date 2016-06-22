INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_RFNOC_EXAMPLE rfnoc_example)

FIND_PATH(
    RFNOC_EXAMPLE_INCLUDE_DIRS
    NAMES rfnoc_example/api.h
    HINTS $ENV{RFNOC_EXAMPLE_DIR}/include
        ${PC_RFNOC_EXAMPLE_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    RFNOC_EXAMPLE_LIBRARIES
    NAMES gnuradio-rfnoc_example
    HINTS $ENV{RFNOC_EXAMPLE_DIR}/lib
        ${PC_RFNOC_EXAMPLE_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(RFNOC_EXAMPLE DEFAULT_MSG RFNOC_EXAMPLE_LIBRARIES RFNOC_EXAMPLE_INCLUDE_DIRS)
MARK_AS_ADVANCED(RFNOC_EXAMPLE_LIBRARIES RFNOC_EXAMPLE_INCLUDE_DIRS)
