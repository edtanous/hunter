# Copyright (c) 2016 Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

# http://www.x.org/releases/X11R7.7/src/lib
hunter_add_version(
    PACKAGE_NAME
    ice
    VERSION
    "1.0.8"
    URL
    "http://www.x.org/releases/X11R7.7/src/lib/libICE-1.0.8.tar.bz2"
    SHA1
    ddb14df8bbc43df7322978f5f9f802936e2a7324
)

hunter_configuration_types(ice CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
set(x11_dependencies
    xproto
    xtrans
)
hunter_cmake_args(
    x11
    CMAKE_ARGS         # do not use double quotes on CMAKE_ARGS
      DEPENDS_ON_PACKAGES=${x11_dependencies}
)
hunter_cacheable(ice)
hunter_download(
    PACKAGE_NAME ice
    PACKAGE_INTERNAL_DEPS_ID "2"
    PACKAGE_UNRELOCATABLE_TEXT_FILES
    "lib/libICE.la"
    "lib/pkgconfig/ice.pc"
)
