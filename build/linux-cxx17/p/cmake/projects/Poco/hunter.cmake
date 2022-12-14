include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.11.0-p0
    URL
    "https://github.com/nxxm/poco/archive/3b14b35c25bc6f57aced86ed3f6fdfc0bfdb51a8.zip"
    SHA1
    93916ec58e62c9b0c5cf7bff5edc8db8145a931f 
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.10.1-p0
    URL
    "https://github.com/cpp-pm/poco/archive/v1.10.1-p0.zip"
    SHA1
    3922c320158ec4c1bc37c10be76ff788d253d64f
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.10.0-p0
    URL
    "https://github.com/cpp-pm/poco/archive/v1.10.0-p0.zip"
    SHA1
    5628e07d21d31802405ef4a37e7de22db69177e3
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.7.9-p1
    URL
    "https://github.com/hunter-packages/poco/archive/v1.7.9-p1.zip"
    SHA1
    28adb9a84af3000dde5525c14e906f5f5ea095f3
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.7.9-p0
    URL
    "https://github.com/hunter-packages/poco/archive/v1.7.9-p0.zip"
    SHA1
    1ad6193edd0dbd67c351af7458b464252baf5bb3
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.7.8-p0
    URL
    "https://github.com/hunter-packages/poco/archive/v1.7.8-p0.zip"
    SHA1
    229dd0f6c3696c2ab0c7b4449b664a75c2211188
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.7.6-p0
    URL
    "https://github.com/hunter-packages/poco/archive/v1.7.6-p0.zip"
    SHA1
    a4b577d4fd6907c87d20dff31fa5caf4bd94bc89
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.7.3
    URL
    "https://github.com/pocoproject/poco/archive/poco-1.7.3-release.zip"
    SHA1
    22dcb34d85d2cbf2ce71fd84b28489c99ed112d0
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    1.7.4
    URL
    "https://github.com/pocoproject/poco/archive/poco-1.7.4-release.zip"
    SHA1
    f392b87edb5bbc2b44aa08cfd72d87da8cc8661f
)




if(HUNTER_Poco_VERSION VERSION_LESS "1.10.0")
    hunter_cmake_args(
        Poco
        CMAKE_ARGS
            CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP=TRUE
            POCO_STATIC=ON
            ENABLE_CPPUNIT=OFF
            ENABLE_MONGODB=OFF
            ENABLE_NETSSL=ON
            ENABLE_CRYPTO=ON
            ENABLE_DATA=ON
            ENABLE_PAGECOMPILER=OFF
            ENABLE_PAGECOMPILER_FILE2PAGE=OFF
            ENABLE_REDIS=OFF
    )
else()
    hunter_cmake_args(
        Poco
        CMAKE_ARGS
          ENABLE_NETSSL=ON
            ENABLE_CPPUNIT=OFF
            ENABLE_PAGECOMPILER=OFF
            ENABLE_PAGECOMPILER_FILE2PAGE=OFF
    )
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Poco)
hunter_download(PACKAGE_NAME Poco)
