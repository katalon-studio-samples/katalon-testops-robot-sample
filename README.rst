====================================================
Web Visual testing with Upload report to TestOps by Robot Framework and SeleniumLibrary
====================================================

Preconditions
-------------


In practice it is easiest to install Robot Framework and
SeleniumLibrary along with its dependencies using `pip`_ package
manager. Once you have pip installed, all you need to do is running
these commands::
    pip install -r requirements.txt

Starting demo application
-------------------------

Running tests requires the `demo application`_ located under ``demoapp``
directory to be running.  It can be started either by double clicking
``demoapp/server.py`` file in a file manager or by executing it from the
command line::
    python demoapp/server.py
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
    robot --testops.Listener login_tests