*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** Variables ***
${URL}     https://www.cermati.com/gabung
${EMAIL}   rickybackup2094@gmail.com
${PASSWORD}   StrongPassword123
${FIRSTNAME}   ricky
${LASTNAME}    julianto
${PHONE}   081234567890
${CITY}    Jakarta  # Replace with the actual city option if needed

*** Test Cases ***
Cermati Registration - Positive Cases
    [Documentation]    Test case for successful registration on Cermati
    SeleniumLibrary.Open Browser   ${URL}    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name=email    ${EMAIL}
    Input Text    name=firstName    ${FIRSTNAME}
    Input Text    name=lastName    ${LASTNAME}
    Input Text    name=mobilePhone    ${PHONE}
    Click Button    xpath=//button[@data-button-name='register-new']  # Adjust the selector if necessary
    Sleep    10
    Click Button    xpath=//button[@data-button-name='register-new']
    Element Should Be Visible    xpath=//div[normalize-space(text())='No. Handphone atau Email sudah terdaftar pada akun lain']
