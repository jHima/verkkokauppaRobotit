*** Settings ***

Library         SeleniumLibrary
Library         BuiltIn
Library         String

*** Test Cases ***
Foodie haku
    Open Browser     https://www.foodie.fi/   Chrome
    Wait Until Element Is Visible  //*[contains(text(), 'Hyväksy')]
    Click Element  //*[contains(text(), 'Hyväksy kaikki')]
    Click Element  id=js-root-recipes
    Input Text   id=multisearch-query  jäätelö
    Click Button  id=multisearch-btn

Reseptin valinta
    Wait Until Element Is Visible  //*[contains(text(), 'Kukkatikkarit')]
    Click Element  //*[contains(text(), 'Kukkatikkarit')]
    

Reseptin lisäys
    Wait Until Element Is Visible  //*[contains(text(), 'Sunnuntai')]
    Click Element  //span[contains(text(),'Lisää')]

Siirry ostoslistalle
    Wait Until Element Is Visible  //*[contains(text(), 'tuotetta')]
    Click Element  id=topmenu-shoppinglist


