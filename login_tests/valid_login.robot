*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Click Button   time_button
    Input Username    demo
    Enter Password    mode
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/login.png
    Submit Credentials
    Welcome Page Should Be Open
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/welcome.png
    [Teardown]    Close Browser

Validate Login UI
    Analyze checkpoint "${CHECKPOINT_LOCATION}/login.png"

Validate Welcome UI
    Analyze checkpoint "${CHECKPOINT_LOCATION}/welcome.png"