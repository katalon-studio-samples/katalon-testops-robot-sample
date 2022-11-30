====================================================
Web Visual testing with Upload report to TestOps by Robot Framework and SeleniumLibrary
====================================================

Downloading demo package
========================

To get the demo, you can either `download`_ the repository from GitHub or checkout
the `source code`_ directly. As a result you get ``testops-robot-sample`` directory with
``demoapp`` and ``login_tests`` sub directories.

Test cases
==========

Test case files as well as a resource file used by them are located in
the ``login_tests`` directory. Click file names below to see the latest versions
online.

`valid_login.robot`_
    A test suite with a single test for valid login.

    This test has a workflow that is created using keywords in
    the imported resource file.

`invalid_login.robot`_
    A test suite containing tests related to invalid login.

    These tests are data-driven by their nature. They use a single
    keyword, specified with the ``Test Template`` setting, that is called
    with different arguments to cover different scenarios.

    This suite also demonstrates using setups and teardowns in
    different levels.

`gherkin_login.robot`_
    A test suite with a single Gherkin style test.

    This test is functionally identical to the example in the
    `valid_login.robot`_ file.

`resource.robot`_
    A resource file with reusable keywords and variables.

    The system specific keywords created here form our own
    domain specific language. They utilize keywords provided
    by the imported SeleniumLibrary_.

Preconditions
-------------

A precondition for running the tests is having `Robot Framework`_ and
SeleniumLibrary_ installed, and they in turn require
Python_. Robot Framework `installation instructions`__ cover both
Robot and Python installations, and SeleniumLibrary has its own
`installation instructions`__.

In practice it is easiest to install Robot Framework and
SeleniumLibrary along with its dependencies using `pip`_ package
manager. Once you have pip installed, all you need to do is running
these commands::
```
    pip install -r requirements.txt
```

Starting demo application
-------------------------

Running tests requires the `demo application`_ located under ``demoapp``
directory to be running.  It can be started either by double clicking
``demoapp/server.py`` file in a file manager or by executing it from the
command line::
```
    python demoapp/server.py
```
After the demo application is started, it is be available in URL
http://localhost:7272. You can test it manually, valid credentials are
``demo/mode``, and it needs to be running while executing the automated
tests.

If the application was started by double-clicking ``demoapp/server.py``
file, it can be shut down by closing the opened window. If it was
executed from the command line, using ``Ctrl-C`` is enough.

Running tests
-------------

The `test cases`_ are located in the ``login_tests`` directory. They can be
executed using the ``robot`` command::
```
    robot --testops.Listener login_tests
```