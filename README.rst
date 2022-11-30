====================================================
Web Visual testing with Upload report to TestOps by Robot Framework and SeleniumLibrary
====================================================

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

    pip install -r requirements.txt


Running tests
-------------

The `test cases`_ are located in the ``login_tests`` directory. They can be
executed using the ``robot`` command::

    robot --listener testops.Listener login_tests
    robot --listener testops.Listener login_tests/valid_login.robot
    robot --listener testops.Listener login_tests/invalid_login.robot
    robot --listener testops.Listener login_tests/gherkin_login.robot
