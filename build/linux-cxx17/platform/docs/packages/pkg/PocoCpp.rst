.. spelling::

    Poco
    Util

.. index:: networking ; Poco

.. _pkg.Poco:

Poco
=======

POCO C++ Libraries

-  `Official <https://https://pocoproject.org>`__
-  `Official Repository <https://github.com/pocoproject/poco>`__
-  `Hunterized Repository <https://github.com/cpp-pm/poco>`__

.. code-block:: cmake

    hunter_add_package(Poco)
    find_package(Poco REQUIRED Foundation CONFIG)
    target_link_libraries(... Poco::Foundation)

``find_package`` command requires at least one of the following
components, else CMake will fail.

Components are as follows:

- Foundation (``Poco::Foundation``)
- JSON (``Poco::JSON``)
- Net (``Poco::Net``)
- Util (``Poco::Util``)
- XML (``Poco::XML``)
- Zip (``Poco::Zip``)


**Note**: Components can be enabled or disabled by using following:

.. code-block:: cmake

  hunter_config(Poco VERSION 1.10.0
    CMAKE_ARGS
      ENABLE_DATA=OFF
      ....
  )

The map between ``CMAKE_ARGS`` and Poco components can be found
`here <https://pocoproject.org/docs/00200-GettingStarted.html#9>`__.
