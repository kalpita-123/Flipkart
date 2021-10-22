*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Observe user is able to test sanity flow
     Given User Launch browser for flipkart
           User Enter Mobile Number and password to login
           User clicks on Search bar and Search mobiles
           User clicks on device
           Click on add to cart
           User go to homepage
           User check and verify device is in cart or not



*** Keywords ***
User Launch browser for flipkart

    Open Browser    https://www.flipkart.com/   chrome

    Maximize Browser Window

User Enter Mobile Number and password to login
    input text  ${Mobile Number}  6300398045
    sleep  5s
    input text  ${password}  kalpita
    click button  ${submit}
    sleep  5s
User clicks on Search bar and Search mobiles
    Wait Until Page Contains Element  class:_3704LK  timeout=30s
    Click Element  class:_3704LK
    Input Text  class:_3704LK  mobiles
    Wait Until Page Contains Element  class:L0Z3Pu  timeout=30s
    click element  class:L0Z3Pu


User clicks on device
    Wait Until Page Contains Element  class:_4rR01T  timeout=20s
    click element  class:_4rR01T
    switch window  locator=NEW

Click on add to cart
    Execute JavaScript    window.scrollTo(0,300)
    click button  xpath://*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button

User go to homepage
    click element   class:_2xm1JU

User check and verify device is in cart or not
    Wait Until Page Contains  Cart  timeout=20s
    click element   class:_3SkBxJ
    Close Browser




*** Variables ***
${Mobile Number}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${password}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${submit}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
${product}=  xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/div/a[2]
${ADD TO CART}=  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
${Homepage}=   xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/a/img
${go to cart}=  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a
