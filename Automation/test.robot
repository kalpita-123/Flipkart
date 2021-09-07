*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Observe user is able to test sanity flow
     Given User Launch browser for flipkart
           User Enter Mobile Number and password to login
           User click on electronics section
           User select product
           User add item to cart
           User go back to homepage
           User go to cart


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
User click on electronics section
    mouse over   ${Electronics}
    sleep  5s
    mouse over  link:Powerbank
    click link  link:Powerbank
    sleep  5s
User select product
    click element  ${product}
    sleep  5s
    Switch window  locator=NEW
    sleep  2s
User add item to cart
    execute javascript  window.scrollTo(0,200)
    click button    ${ADD TO CART}
    sleep  2s
User go back to homepage
    click element  ${Homepage}
    sleep  2s
User go to cart
    click element    ${go to cart}
    sleep  10s
    close browser





*** Variables ***
${Mobile Number}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${password}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${submit}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
${Electronics}=  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div/div
${product}=  xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/div/a[2]
${ADD TO CART}=  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
${Homepage}=   xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/a/img
${go to cart}=  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a

