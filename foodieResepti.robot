*** Settings ***

Library         SeleniumLibrary

*** Test Cases ***
Foodie
    Open Browser     https://www.foodie.fi/   Chrome
    Click Element  id=js-root-recipes
    Input Text   id=multisearch-query  jäätelö
    Click Button  id=multisearch-btn
    Click Link  link=/recipe/uunijaatelo/feafa2990a9f27694663302baf9bbde5


