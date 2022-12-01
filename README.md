# Web Visual testing with Upload report to TestOps by Robot Framework and SeleniumLibrary

## Preconditions
- Prepare library:
```
    pip install -r requirements.txt
```

## Running tests

The tests are located in the test_sample directory. They can be executed using the commands :
```
    robot --listener testops.Listener test_sample
    robot --listener testops.Listener test_sample/valid_login.robot
    robot --listener testops.Listener test_sample/invalid_login.robot
    robot --listener testops.Listener test_sample/gherkin_login.robot
```
