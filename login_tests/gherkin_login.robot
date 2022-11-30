*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "demo" logs in with password "mode"
    Then welcome page should be open

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Click Button   time_button
    Input username    ${username}
    Enter Password    ${password}
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/login.png
    Analyze checkpoint "${CHECKPOINT_LOCATION}/login.png"
    Submit credentials
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/welcome.png
    Analyze checkpoint "${CHECKPOINT_LOCATION}/welcome.png"
