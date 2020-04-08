*** Settings ***
Library  SwingLibrary
Suite Setup  Start Test Application

*** Test Cases ***
Test Show It
    Select Window  DialogDemo
    Push Button  Show it!
    Select Dialog  Message
    Push Button  OK

Test Custom Dialog
    Select Window  DialogDemo
    Select Tab As Context  More Dialogs
    Push Radio Button  Input-validating dialog (with custom message area)
    Push Button  Show it!
    Select Dialog  Quiz
    Type Into Text Field  0  Testing...
    Push Button  Enter
    Select Dialog  Try again
    Push Button  OK
    Select Dialog  Quiz
    Clear Text Field  0
    Type Into Text Field  0  GEISEL
    Sleep  1
    Push Button  Enter
    Select Window  DialogDemo
    Label Text Should Be  3  Congratulations! You entered "GEISEL".

*** Keywords ***
Start Test Application
    Start Application  components.DialogDemo
    #Select Window  DialogDemo