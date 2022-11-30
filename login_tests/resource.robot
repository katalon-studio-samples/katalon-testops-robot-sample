*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
| Library |       SeleniumLibrary
| Library |       ../test/CustomLib.py


*** Variables ***
${SERVER}         https://katalon-demo-cura.herokuapp.com
${BROWSER}        Chrome
${DELAY}          0
${VALID USER}     John Doe
${VALID PASSWORD}    ThisIsNotAPassword
${CHECKPOINT_LOCATION}    checkpoint
${BOOKING_URL}    ${SERVER}/#appointment
*** Keywords ***
Analyze checkpoint "${checkpoint}"
    Verify checkpoint    ${checkpoint}

Open Browser To Cura Shop
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Username
    [Arguments]    ${username}
    Input Text    txt-username    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    txt-password    ${password}

Submit Credentials
    Click Button    btn-login

Welcome Page Should Be Open
    Location Should Be    ${BOOKING_URL}
    Title Should Be    CURA Healthcare Service

Login Should Have Failed
    Element Should Be Visible    //p[contains(text(), "Login failed! Please ensure the username and password are valid.")]
