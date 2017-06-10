INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_FLEXPAGER flexpager)

FIND_PATH(
    FLEXPAGER_INCLUDE_DIRS
    NAMES flexpager/api.h
    HINTS $ENV{FLEXPAGER_DIR}/include
        ${PC_FLEXPAGER_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    FLEXPAGER_LIBRARIES
    NAMES gnuradio-flexpager
    HINTS $ENV{FLEXPAGER_DIR}/lib
        ${PC_FLEXPAGER_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(FLEXPAGER DEFAULT_MSG FLEXPAGER_LIBRARIES FLEXPAGER_INCLUDE_DIRS)
MARK_AS_ADVANCED(FLEXPAGER_LIBRARIES FLEXPAGER_INCLUDE_DIRS)

