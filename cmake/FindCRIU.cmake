include(LibFindMacros)

libfind_pkg_check_modules(CRIU_PKGCONF criu)
message(STATUS "pkg conf paths ${CRIU_PKGCONF_INCLUDE_DIRS}")

find_path(CRIU_INCLUDE_DIR NAMES criu.h PATHS ${CRIU_PKGCONF_INCLUDE_DIRS})

find_library(CRIU_LIBRARY NAMES criu PATHS ${CRIU_PKGCONF_LIBRARY_DIRS})

set(CRIU_PROCESS_INCLUDES CRIU_INCLUDE_DIR )
set(CRIU_PROCESS_LIBS CRIU_LIBRARY )

libfind_process(CRIU)
