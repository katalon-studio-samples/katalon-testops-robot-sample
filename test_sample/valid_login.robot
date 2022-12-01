*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Cura Shop
    Click Element       //a[contains(text(),'Make Appointment')]
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/Login-Dialog-Origin.png
    Input Username    John Doe
    Enter Password    ThisIsNotAPassword
    Capture Page Screenshot    ${CHECKPOINT_LOCATION}/Login-Dialog-With-Data.png
    Submit Credentials
    Element Should Be Visible  appointment
    [Teardown]    Close Browser

Validate Login Dialog Origin
    Analyze checkpoint "${CHECKPOINT_LOCATION}/Login-Dialog-Origin.png"

Validate Login Dialog With Data
    Analyze checkpoint "${CHECKPOINT_LOCATION}/Login-Dialog-With-Data.png"