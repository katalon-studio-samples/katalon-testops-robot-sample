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
    When user "John Doe" logs in with password "ThisIsNotAPassword"
    Then welcome page should be open

*** Keywords ***
Browser is opened to login page
    Open Browser To Cura Shop

User "${username}" logs in with password "${password}"
    Click Element       //a[contains(text(),'Make Appointment')]
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/Login-Dialog-Origin-2.png
    Input Username    ${username}
    Enter Password    ${password}
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/Login-Dialog-With-Data-2.png
    Submit Credentials
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/Login-Dialog-Failed.png

Validate Login Dialog Origin
    Analyze checkpoint "${CHECKPOINT_LOCATION}/Login-Dialog-Origin-2.png"

Validate Login Dialog With Data
    Analyze checkpoint "${CHECKPOINT_LOCATION}/Login-Dialog-With-Data-2.png"

Validate Login Dialog Origin
    Analyze checkpoint "${CHECKPOINT_LOCATION}/Login-Dialog-Failed.png"