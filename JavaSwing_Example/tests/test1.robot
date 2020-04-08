*** Settings ***
Library  SwingLibrary
Suite Setup  Start Test Application

*** Test Cases ***
#Test Show It
#    Select Window  DialogDemo
#    Push Button  Show it!
#    Select Dialog  Message
#    Push Button  OK

Test Custom Dialog
    Select Window  DialogDemo
    Select Tab As Context  More Dialogs
    Sleep  1
    Push Radio Button  Input-validating dialog (with custom message area)
    Sleep  1
    Push Button  Show it!
    Select Dialog  Quiz
    List Components In Context

*** Keywords ***
Start Test Application
    Start Application  components.DialogDemo
    #Select Window  DialogDemo