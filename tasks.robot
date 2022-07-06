*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium
Library    RPA.Browser

*** Variables ***
${pet_home}=    Cat
${num_home}=    ${2}
${num_pet}=    ${2}
@{list_pet}=    Cat    Dog    Cow    Horse
&{dictionary_pet}    string=${pet_home}    number=${num_pet}    List=@{list_pet}
${num_home}=    ${num_pet}

*** Keywords ***
condition of IF
${num_pet}=    2

*** Tasks ***
${pet_home}
    Log    ${pet_home}

${list_pet}
    Log    ${list_pet}


