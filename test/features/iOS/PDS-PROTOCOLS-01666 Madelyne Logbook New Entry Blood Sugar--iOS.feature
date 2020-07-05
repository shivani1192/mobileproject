Feature: MADELYNE LOGBOOK NEW ENTRY BLOOD SUGAR SOFTWARE TEST PROTOCOL FOR IOS
  # INSTRUCTIONS FOR REGISTERING IN MMA APP
  #	Make sure that user has been installed MMA App successfully on the device as per section 6.1
  #	A pop up is displayed with title, “Your “Tempo” app would like to send you notifications” with message, “Notifications may include alerts, sounds and icon badges. These can be configured in Settings” and two buttons “Don’t Allow” and “Allow”.
  #	Tap on “Allow” button.
  @Precondition
  Scenario: MAD10-TC-56: LOGBOOK NEW ENTRY BLOOD SUGAR ADD, VIEW, EDIT 12 HOUR FORMAT IOS
    # # PRE-CONDITIONS:
    # # Ensure that this protocol is executed in sequence only.
    # # Ensure that user has launched MMA App as per section 6.1.
    # # Ensure that user is registered successfully on MMA app as per section 6.2
    # # Ensure that user is navigated to the Home screen of the MMA app as per section 6.3.
    # # Ensure that the Internet connection is turned ON.
    # # Make sure that the in the device settings, the date and time is the current one in 12-hour format <HH:MM> <AM/PM>.
    # # Ensure that in the “More” Menu – “Schedule and Reminders”, all the check boxes in every time block are deselected.
    # ####### Steps till Home screen

   Given I launch the Madelyne application
# When I set deviceformat to 12 hour
#   And I enable set automatically in device settings
 And I should see "welcome.to.tempotm" screen
  And I Verify "welcome.to.tempotm" text
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "25" seconds
        Then I should see "verify.email" screen
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen
        When I enter "first.name" into "first.name" field
        And I enter "last.name" into "last.name" field
        And I tap "date.of.birth" field
        And I select "month"
        And I select "year"
        And I select "date"
        And I wait for recording
        And I tap "done" button
        And I tap "next" button
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen
        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap "bgm.skip" button
         And I wait for "25" seconds
         Then I should see "home" screen
         And I relaunch the app
         And I handle Notification pop-up
         And I handle Bluetooth Notification pop-up
         And I handle ok button
           Then I should see "home" screen
        

  @BloodsugarAddLNE12hr
  Scenario: MAD10-TC-56: LOGBOOK NEW ENTRY BLOOD SUGAR ADD, VIEW, EDIT 12 HOUR FORMAT IOS

    # When I set deviceformat to 12 hour
    # And I enable set automatically in device settings
     Then I should see "home.icon"
 When I tap on "logbook" option
   And I tap on "new.entry" option
    Then I should see "new.logbook.entry" screen
    When I tap on "close.newentry" option
      And I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
  
  When I tap on "cancel" button
And I tap on "new.entry" option
    When I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen

    When I clear "blood.sugar.mg.dl" field
    And I enter "2000" into "blood.sugar.mg.dl" field
    Then I should see "cannot.pick.a.mg.dl.above.1999" errormessage
    And I should see "save" button is disabled

  @BloodsugarAddLNE12hr
  Scenario Outline: Blood sugar entry
    When I clear "blood.sugar.mg.dl" field
    And I enter "<BloodSugar>" into "blood.sugar.mg.dl" field
    Then I should see "<BloodSugar>" in "blood.sugar.mg.dl" field
    And I should see "save" button is enabled

    Examples:
      | BloodSugar |
      | 500        |
      | 0          |
      | 1999       |
      | 250        |

  @BloodsugarAddLNE12hr
  Scenario: Blood sugar entry

    When I tap on "blood.sugar.date" field
    And I select "future.year" in "year" field
    Then I should see "date.picker.logbook"
    And I should see "user.cannot.select.a.future.date" errormessage
    And I should see "save" button is disabled

    When I select "past.year" in "year" field
    And I tap on "done" button
    Then I should see "past.date" in "blood.sugar.date" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.date" field
    And I select CurrentYear in "year" List
    And I tap on "done" button
    Then I should see CurrentDate in "blood.sugar.date" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.time" field
    Then I should see "done" button
    When I tap on "done" button
    And I tap on "blood.sugar.time" field
    And I select "future.time" in "hour" field
    And I tap on "done" button
    Then I should see "user.cannot.select.a.future.time" text
    And I should see "save" button is disabled

    When I tap on "blood.sugar.time" field
    And I select "past.time" in "hour" field
    And I tap on "done" button
    Then I should see "past.time" in "blood.sugar.time" field
    And I should see "save" button is enabled

    When I tap on "cancel" button
    Then I should see "logbook.screen"
    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option

    When I clear "blood.sugar.mg.dl" field
    And I enter "250" into "blood.sugar.mg.dl" field
    Then I should see "250" in "blood.sugar.mg.dl" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.time" field
    And I select "past.time" in "hour" field
    And I tap on "done" button
    Then I should see "past.time" in "blood.sugar.time" field
    And I should see "save" button is enabled

    When I tap on "save" button
    Then I should see "logbook.screen"
    And I should see "250" in "mg.dl.logbook.screen" field
    And I should see "blood.sugar"
    And I should see "logbook.screen"
    And I should see "blood.sugar" text
    And I should see "manual.entry" text

    When I tap on "latest.blood.sugar.entry"
    Then I should see "blood.sugar"
    And I should see "back" button is enabled
    And I should see "save" button is disabled
    And I should see "source.manual.entry" text
    And I should see "250" in "blood.sugar.mg.dl" field
    And I should see CurrentDate in "blood.sugar.date" field
    And I should see "past.time" in "blood.sugar.time" field
    And I should see "delete.manual.entry" button

    When I tap on "back" button
    Then I should see "logbook.screen"
    And I should see "blood.sugar"
    And I should see "250" in "mg.dl.logbook.screen" field
    And I should see "manual.entry" text
    And I should see "time.logbook.screen" field

    When I tap on "latest.blood.sugar.entry"
    Then I should see "blood.sugar"
    And I should see CurrentDate in "blood.sugar.date" field
    And I should see "past.time" in "blood.sugar.time" field

    When I tap on "blood.sugar.mg.dl" field
    And I enter "2000" into "blood.sugar.mg.dl" field
    Then I should see "cannot.pick.a.mg.dl.above.1999" errormessage
    And I should see "save" button is disabled

    When I clear "blood.sugar.mg.dl" field
    And I enter "450" into "blood.sugar.mg.dl" field
    Then I should see "450" in "blood.sugar.mg.dl" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.date" field
    Then I should see "date.picker.logbook"
    And I should see CurrentDate in "blood.sugar.date" field
    And I should see "done" button

    When I select "future.year" in "year" field
    Then I should see "date.picker.logbook"
    And I should see "user.cannot.select.a.future.date" errormessage
    And I should see "save" button is disabled

    When I select "past.year" in "year" field
    And I tap on "done" button
    Then I should see "past.date" in "blood.sugar.date" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.date" field
    And I select CurrentYear in "year" List
    And I tap on "done" button
    Then I should see CurrentDate in "blood.sugar.date" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.time" field
    Then I should see "done" button
    When I tap on "done" button
    And I tap on "blood.sugar.time" field
    And I select "future.time" in "hour" field
    And I tap on "done" button
    Then I should see "user.cannot.select.a.future.time" text
    And I should see "save" button is disabled

    When I tap on "blood.sugar.time" field
    And I select "past.time" in "hour" field
    And I tap on "done" button
    Then I should see "past.time" in "blood.sugar.time" field
    And I should see "save" button is enabled

    When I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "450" in "confirm.blood.sugar.units" field
    And I should see "confirm.blood.sugar.date" field
    And I should see "confirm.blood.sugar.time" field
    And I should see "yes.its.correct" button
    And I should see "no.keep.editing" button

    When I tap on "no.keep.editing" button
    Then I should see "blood.sugar" screen

    When I tap on "back" button
    Then I should see "discard.changes" pop-up
    And I should see "are.you.sure.you.want.to.discard" text
    And I should see "cancel.popup" button
    And I should see "discard" button
    When I tap on "cancel.popup" button
    Then I should see "blood.sugar" screen
    And I should see "back" button is enabled

    When I tap on "back" button
    And I tap on "discard" button
    Then I should see "logbook.screen"

    When I tap on "latest.blood.sugar.entry"
    Then I should see "blood.sugar"
    When I clear "blood.sugar.mg.dl" field
    And I enter "400" into "blood.sugar.mg.dl" field
    Then I should see "400" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "yes.its.correct" button
    And I should see "no.keep.editing" button
    When I tap on "yes.its.correct" button
    Then I should see "logbook.screen"
    #When I tap on "calander.icon"
    #And I select given date of entry
    And I should see "400" in "mg.dl.logbook.screen" field
    And I should see "manual.entry" text
    And I should see "you.have.reached.the.end" text
    
  @BloodsugarAddLNE24hr
  Scenario: MAD10-TC-57: LOGBOOK NEW ENTRY BLOOD SUGAR ADD, VIEW, EDIT 24 HOUR FORMAT IOS
    # PRE-CONDITIONS:
    # Ensure that this protocol should execute in sequence only.
    # Ensure that the record is created as per section 7.1.
    # Make sure that the device is connected to the internet.
    # Make sure that in the device settings, the date and time is the current one in 24-hours’ format.
    
    When I tap on "logbook" option
    And I set deviceformat to 24 hour
    And I enable set automatically in device settings
    And I tap on "new.entry" option
    When I tap on "enter.blood.sugar.new.entry" option

    When I clear "blood.sugar.mg.dl" field
    And I enter "2000" into "blood.sugar.mg.dl" field
    Then I should see "cannot.pick.a.mg.dl.above.1999" errormessage
    And I should see "save" button is disabled

    When I clear "blood.sugar.mg.dl" field
    And I enter "1999" into "blood.sugar.mg.dl" field
    Then I should see "1999" in "blood.sugar.mg.dl" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.date" field
    And I select CurrentYear in "year" List
    And I tap on "done" button
    Then I should see CurrentDate in "blood.sugar.date" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.time" field
    Then I should see "done" button
    When I tap on "done" button
    And I tap on "blood.sugar.date" field
    And I select "future.year" in "year" field
    Then I should see "date.picker.logbook"
    And I should see "user.cannot.select.a.future.date" errormessage
    And I should see "save" button is disabled

    When I tap on "blood.sugar.date" field
    And I select CurrentYear in "year" List
    And I tap on "done" button
    Then I should see CurrentDate in "blood.sugar.date" field
    And I should see "save" button is enabled

When I tap on "blood.sugar.time" field
   And I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled
    When I tap on "blood.sugar.time" field
    And I select "past.time.24" in "hour" field
    And I tap on "done" button
    Then I should see "past.time.24" in "blood.sugar.time" field
    And I should see "save" button is enabled

    When I tap on "cancel" button
    And I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option

    When I tap on "blood.sugar.mg.dl" field
    And I clear "blood.sugar.mg.dl" field
    And I enter "1999" into "blood.sugar.mg.dl" field
    Then I should see "1999" in "blood.sugar.mg.dl" field

    When I tap on "blood.sugar.date" field
    And I select CurrentYear in "year" List
    And I tap on "done" button
    Then I should see CurrentDate in "blood.sugar.date" field
    And I should see "save" button is enabled

    When I tap on "blood.sugar.time" field
    And I select "past.time.24" in "hour" field
    And I tap on "done" button
    Then I should see "past.time.24" in "blood.sugar.time" field
    And I should see "save" button is enabled

    When I tap on "save" button
     Then I should see "logbook.screen"
     Then I should see "1999.mg.dl.text"
     
     When I tap on "1999.mg.dl.text"
    Then I should see "blood.sugar"
    And I should see "source.manual.entry" text
    And I should see "1999" in "blood.sugar.mg.dl" field
    And I should see "delete.manual.entry" button
   
    When I tap on "back" button
    And I tap on "1999.mg.dl.text"
    Then I should see "blood.sugar"
    And I should see "1999" in "blood.sugar.mg.dl" field

    When I tap on "blood.sugar.mg.dl" field
    And I clear "blood.sugar.mg.dl" field
    And I enter "0" into "blood.sugar.mg.dl" field
    Then I should see "0" in "blood.sugar.mg.dl" field
    And I should see "save" button is enabled


And I tap on "blood.sugar.date" field
    And I select "future.year" in "year" field
    Then I should see "date.picker.logbook"
    And I should see "user.cannot.select.a.future.date" errormessage
    And I should see "save" button is disabled

    When I tap on "blood.sugar.date" field
    And I select CurrentYear in "year" List
    And I tap on "done" button
    Then I should see CurrentDate in "blood.sugar.date" field
    And I should see "save" button is enabled

  When I tap on "blood.sugar.time" field
   And I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled
    When I tap on "blood.sugar.time" field
    And I select "past.time.24" in "hour" field
    And I tap on "done" button
    Then I should see "past.time.24" in "blood.sugar.time" field
    And I should see "save" button is enabled

    When I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "is.this.information.correct" text
    And I should see "0" in "confirm.blood.sugar.units" field
    And I should see "confirm.blood.sugar.date" field
    And I should see "confirm.blood.sugar.time" field
    And I should see "yes.its.correct" button
    And I should see "no.keep.editing" button
    When I tap "no.keep.editing" button
    Then I should see "blood.sugar" screen
    When I tap on "back" button
    Then I should see "discard.changes" pop-up
    And I should see "are.you.sure.you.want.to.discard" text
    And I should see "cancel.popup" button
    And I should see "discard" button
    When I tap on "discard" button

    Then I should see "logbook.screen"
    Then I should see "1999.mg.dl.text"
     When I tap on "1999.mg.dl.text"
    Then I should see "blood.sugar"

    When I tap on "blood.sugar.mg.dl" field
    And I clear "blood.sugar.mg.dl" field
    And I enter "200" into "blood.sugar.mg.dl" field
    Then I should see "200" in "blood.sugar.mg.dl" field
    And I should see "save" button is enabled

    When I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    When I tap on "yes.its.correct" button
    Then I should see "logbook.screen"
    Then I should see "200.mg.dl.text"

   

  @BloodsugarAddLNE24hr
  Scenario: MAD10-TC-58: LOGBOOK NEW ENTRY BLOOD SUGAR DELETE IOS
    #PRE-CONDITIONS:
    # Ensure that this protocol should execute in sequence only.
    # Ensure user already created two logbook Blood sugar entries as per sections 7.1 and 7.2.
    # Ensure that the Internet Connection is turned ON.
    # When I tap on "logbook.icon"
    # Then I should see "logbook.screen" selected
    When I tap on "latest.blood.sugar.entry"
    Then I should see "blood.sugar"
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up
    And I should see "cancel.popup" button
    And I should see "ok.delete.entry" button
    When I tap on "cancel.popup" button
   And I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up
    When I tap on "ok.delete.entry" button
    Then I should see "logbook.screen"
   

  @BloodsugarAddLNE12hr
  Scenario: MAD10-TC-58: LOGBOOK NEW ENTRY BLOOD SUGAR DELETE IOS
    #PRE-CONDITIONS:
    # Ensure that this protocol should execute in sequence only.
    # Ensure user already created two logbook Blood sugar entries as per sections 7.1 and 7.2.
    # Ensure that the Internet Connection is turned ON.

    # When I tap on "logbook.icon"
    # Then I should see "logbook" screen
    When I tap on "latest.blood.sugar.entry"
  And I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up
    When I tap on "ok.delete.entry" button
    Then I should see "logbook.screen" selected
    

#   @DeleteEntry
    # Scenario: MAD10-TC-58: LOGBOOK NEW ENTRY BLOOD SUGAR ADD,VIEW,EDIT ,DELETE IOS
    # #PRE-CONDITIONS:
    # # Ensure that this protocol should execute in sequence only.
    # # Ensure user already created two logbook Blood sugar entries as per sections 7.1 and 7.2.
    # # Ensure that the Internet Connection is turned ON.

#     When I tap on "new.entry" option
#     Then I should see "new.logbook.entry" screen
#     When I tap on "enter.blood.sugar.new.entry" option
#     Then I should see "blood.sugar" screen
#     And I should see "save" button is disabled
#     And I should see "cancel" button is enabled
#     And I should see "blood.sugar.mg.dl" field
#     And I should see CurrentDate in "blood.sugar.date" field

#     When I tap on "blood.sugar.mg.dl" field
#     Then I should see "blood.sugar.mg.dl"
#     And I should see "enter.blood.sugar.level.hint" text
#     And I should see "number.pad"

#     When I clear "blood.sugar.mg.dl" field
#     And I enter "130" into "blood.sugar.mg.dl" field
#     Then I should see "130" in "blood.sugar.mg.dl" field
#     And I should see "save" button is enabled

#     When I tap on "blood.sugar.date" field
#     And I select CurrentYear in "year" List
#     And I tap on "done" button
#     Then I should see CurrentDate in "blood.sugar.date" field
#     And I should see "save" button is enabled

#     When I tap on "blood.sugar.time" field
#     And I select "past.time.24" in "hour" field
#     And I tap on "done" button
#     Then I should see "past.time.24" in "blood.sugar.time" field
#     And I should see "save" button is enabled

    

#     When I tap on "save" button
#      Then I should see "logbook.screen"
#     And I should see "130" in "mg.dl.logbook.screen" field
 

#     When I tap on "latest.blood.sugar.entry"
#     Then I should see "blood.sugar"
#     And I should see "source.manual.entry" text
#     And I should see "130" in "blood.sugar.mg.dl" field
#     And I should see "delete.manual.entry" button
   
  

#     When I tap on "blood.sugar.mg.dl" field
#     And I clear "blood.sugar.mg.dl" field
#     And I enter "230" into "blood.sugar.mg.dl" field
#     Then I should see "230" in "blood.sugar.mg.dl" field
#     And I should see "save" button is enabled


# And I tap on "blood.sugar.date" field
#     And I select "future.year" in "year" field
#     Then I should see "date.picker.logbook"
#     And I should see "user.cannot.select.a.future.date" errormessage
#     And I should see "save" button is disabled

#     When I tap on "blood.sugar.date" field
#     And I select CurrentYear in "year" List
#     And I tap on "done" button
#     Then I should see CurrentDate in "blood.sugar.date" field
#     And I should see "save" button is enabled

#   When I tap on "blood.sugar.time" field
#    When I select "future.time.24" in "hour" field
#         And I tap on "done" button
#         Then I should see "user.cannot.select.a.future.time" text
#         And I should see "save" button is disabled
#     When I tap on "blood.sugar.time" field
#     And I select "past.time.24" in "hour" field
#     And I tap on "done" button
#     Then I should see "past.time.24" in "blood.sugar.time" field
#     And I should see "save" button is enabled

#     When I tap on "save" button
#     Then I should see "confirm.new.entry" pop-up
#     And I should see "is.this.information.correct" text
#     And I should see "230" in "confirm.blood.sugar.units" field
#     And I should see "confirm.blood.sugar.date" field
#     And I should see "confirm.blood.sugar.time" field
#     And I should see "yes.its.correct" button
#     And I should see "no.keep.editing" button
#     When I tap "no.keep.editing" button
#     Then I should see "blood.sugar" screen
#     When I tap on "back" button
#     Then I should see "discard.changes" pop-up
#     And I should see "are.you.sure.you.want.to.discard" text
#     And I should see "cancel.popup" button
#     And I should see "discard" button
#     When I tap on "discard" button
#     # Then I should see "blood.sugar" screen
#     # When I tap on "back" button
#     Then I should see "logbook.screen"
#     And I should see "130" in "mg.dl.logbook.screen" field

#     When I tap on "latest.blood.sugar.entry"
#     Then I should see "blood.sugar"

#     When I tap on "blood.sugar.mg.dl" field
#     And I clear "blood.sugar.mg.dl" field
#     And I enter "450" into "blood.sugar.mg.dl" field
#     Then I should see "450" in "blood.sugar.mg.dl" field
#     And I should see "save" button is enabled

#     When I tap on "save" button
#     Then I should see "confirm.new.entry" pop-up
#     When I tap on "yes.its.correct" button
#     Then I should see "logbook.screen"
#     And I should see "450" in "mg.dl.logbook.screen" field
#     And I should see "time.logbook.screen" field

  @SmokeTest
  Scenario: Smoke Test for LOGBOOK Blood Sugar New Entry
    When I set deviceformat to 12 hour
    And I enable set automatically in device settings
    And I tap on "logbook" option
    And I tap on "new.entry" option
    Then I should see "new.logbook.entry" screen
    When I tap on "enter.blood.sugar.new.entry" option

    When I tap on "blood.sugar.mg.dl" field
    And I enter "250" into "blood.sugar.mg.dl" field

    And I tap on "blood.sugar.date" field
    And I select CurrentYear in "year" List
    And I tap on "done" button

    And I tap on "blood.sugar.time" field
    And I select "past.time" in "hour" field
    And I tap on "done" button
    And I tap on "save" button
    Then I should see "250" in "mg.dl.logbook.screen" field

    When I tap on "latest.blood.sugar.entry"
    Then I should see "250" in "blood.sugar.mg.dl" field
    And I should see CurrentDate in "blood.sugar.date" field
    And I should see "past.time" in "blood.sugar.time" field
    And I should see "delete.manual.entry" button

    When I tap on "blood.sugar.mg.dl" field
    And I enter "0" into "blood.sugar.mg.dl" field

    And I tap on "blood.sugar.date" field
    And I select "past.year" in "year" field
    And I tap on "done" button

    And I tap on "blood.sugar.time" field
    And I select "past.time" in "hour" field
    And I tap on "done" button
    And I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    When I tap on "yes.its.correct" button
    Then I should see "0" in "mg.dl.logbook.screen" field

    When I set deviceformat to 24 hour
    And I enable set automatically in device settings
    And I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see CurrentTime in 24 hour format in "blood.sugar.time" field
    When I tap on "blood.sugar.mg.dl" field
    And I enter "680" into "blood.sugar.mg.dl" field

    And I tap on "blood.sugar.time" field
    And I select "past.time.24" in "hour" field
    And I tap on "done" button
    Then I should see "past.time.24" in "blood.sugar.time" field

    When I tap on "save" button
    And I tap on "latest.blood.sugar.entry"

    And I tap on "blood.sugar.mg.dl" field
    And I enter "550" into "blood.sugar.mg.dl" field
    And I tap on "blood.sugar.time" field
    And I select "past.time.24" in "hour" field
    And I tap on "done" button
    And I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    When I tap on "yes.its.correct" button
    And I tap on "latest.blood.sugar.entry"
    And I tap on "delete.manual.entry" button
    And I tap on "ok.delete.entry" button
    And I tap on "latest.blood.sugar.entry"
    And I tap on "delete.manual.entry" button
    And I tap on "ok.delete.entry" button
   And I should see "logbook.screen"

  @RegressionTest
  Scenario: Regression Test for LOGBOOK Blood Sugar New Entry
    When I set deviceformat to 12 hour
    And I enable set automatically in device settings
    And I tap on "logbook" option

    When I tap on "new.entry" option
    Then I should see "new.logbook.entry" screen
    When I tap on "enter.blood.sugar.new.entry" option
    Then I should see CurrentTime in "blood.sugar.time" field
    And I should see "blood.sugar" screen
    And I should see CurrentDate in "blood.sugar.date" field

    When I clear "blood.sugar.mg.dl" field
    And I enter "2000" into "blood.sugar.mg.dl" field
    Then I should see "cannot.pick.a.mg.dl.above.1999" errormessage
    And I should see "save" button is disabled

    When I tap on "blood.sugar.mg.dl" field
    And I clear "blood.sugar.mg.dl" field
    And I enter "250" into "blood.sugar.mg.dl" field
    Then I should see "250" in "blood.sugar.mg.dl" field

    When I tap on "blood.sugar.date" field
    And I select "future.year" in "year" field
    Then I should see "date.picker.logbook"
    And I should see "user.cannot.select.a.future.date" errormessage

    When I tap on "blood.sugar.date" field
    And I select CurrentYear in "year" List
    And I tap on "done" button
    Then I should see CurrentDate in "blood.sugar.date" field

    When I tap on "blood.sugar.time" field
    And I select "future.time" in "hour" field
    And I tap on "done" button
    Then I should see "user.cannot.select.a.future.time" text
    And I should see "save" button is disabled

    When I tap on "blood.sugar.time" field
    And I select "past.time" in "hour" field
    And I tap on "done" button
    Then I should see "past.time" in "blood.sugar.time" field

    When I tap on "save" button
    Then I should see "logbook.screen"
    And I should see "250" in "mg.dl.logbook.screen" field

    When I tap on "latest.blood.sugar.entry"
    Then I should see "blood.sugar"
    And I should see "250" in "blood.sugar.mg.dl" field
    And I should see CurrentDate in "blood.sugar.date" field
    And I should see "past.time" in "blood.sugar.time" field
    And I should see "delete.manual.entry" button

    When I tap on "blood.sugar.mg.dl" field
    And I enter "0" into "blood.sugar.mg.dl" field
    Then I should see "0" in "blood.sugar.mg.dl" field

    When I tap on "blood.sugar.date" field
    And I select "past.year" in "year" field
    And I tap on "done" button
    Then I should see "past.date" in "blood.sugar.date" field

    When I tap on "blood.sugar.time" field
    And I select "past.time" in "hour" field
    And I tap on "done" button
    Then I should see "past.time" in "blood.sugar.time" field

    When I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "is.this.information.correct" text
    And I should see "0" in "confirm.blood.sugar.units" field
    And I should see "confirm.blood.sugar.date" field
    And I should see "confirm.blood.sugar.time" field
    And I should see "yes.its.correct" button
    And I should see "no.keep.editing" button

    When I tap on "no.keep.editing" button
    Then I should see "blood.sugar"
    When I tap on "back" button
    Then I should see "discard.changes" pop-up
    And I should see "are.you.sure.you.want.to.discard" text
    And I should see "cancel.popup" button
    And I should see "discard" button
    When I tap on "cancel.popup" button
    Then I should see "blood.sugar" screen
    When I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    When I tap on "yes.its.correct" button
    Then I should see "logbook.screen"
    And I should see "0" in "mg.dl.logbook.screen" field

    When I set deviceformat to 24 hour
    And I enable set automatically in device settings
    And I tap on "new.entry" option
    Then I should see "new.logbook.entry" screen
    When I tap on "enter.blood.sugar.new.entry" option
    Then I should see CurrentTime in 24 hour format in "blood.sugar.time" field
    And I should see CurrentDate in "blood.sugar.date" field

    When I tap on "blood.sugar.mg.dl" field
    And I enter "680" into "blood.sugar.mg.dl" field
    Then I should see "680" in "blood.sugar.mg.dl" field

    When I tap on "blood.sugar.time" field
    And I select "future.time.24" in "hour" field
    And I tap on "done" button
    Then I should see "user.cannot.select.a.future.time" text
    And I should see "save" button is disabled

    When I tap on "blood.sugar.time" field
    And I select "past.time.24" in "hour" field
    And I tap on "done" button
    Then I should see "past.time.24" in "blood.sugar.time" field

    When I tap on "save" button
    Then I should see "logbook.screen"
    And I should see "680" in "mg.dl.logbook.screen" field

    When I tap on "latest.blood.sugar.entry"
    Then I should see "blood.sugar"
    And I should see "680" in "blood.sugar.mg.dl" field
    And I should see CurrentDate in "blood.sugar.date" field
    And I should see "past.time.24" in "blood.sugar.time" field

    When I tap on "blood.sugar.mg.dl" field
    And I clear "blood.sugar.mg.dl" field
    And I enter "550" into "blood.sugar.mg.dl" field
    Then I should see "550" in "blood.sugar.mg.dl" field

    When I tap on "blood.sugar.time" field
    And I select "past.time.24" in "hour" field
    And I tap on "done" button
    Then I should see "past.time.24" in "blood.sugar.time" field

    When I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "is.this.information.correct" text
    And I should see "550" in "confirm.blood.sugar.units" field
    And I should see "confirm.blood.sugar.date" field
    And I should see "confirm.blood.sugar.time" field
    And I should see "yes.its.correct" button
    And I should see "no.keep.editing" button
    
    When I tap on "yes.its.correct" button
    Then I should see "logbook.screen"
    And I should see "550" in "mg.dl.logbook.screen" field
    And I should see "time.logbook.screen" field
    And I should see "mg.dl.logbook.screen1" text
    And I should see "0" in "mg.dl.logbook.screen1" field

    When I tap on "latest.blood.sugar.entry"
    Then I should see "blood.sugar"
    And I should see "550" in "blood.sugar.mg.dl" field
    And I should see CurrentDate in "blood.sugar.date" field
    And I should see "past.time.24" in "blood.sugar.time" field
    And I should see "delete.manual.entry" button

    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up
    When I tap on "ok.delete.entry" button
    Then I should see "logbook.screen"

    When I tap on "latest.blood.sugar.entry"
    Then I should see "blood.sugar"
    And I should see "0" in "blood.sugar.mg.dl" field
    And I should see "past.date" in "blood.sugar.date" field
    And I should see "past.time" in "blood.sugar.time" field
    And I should see "delete.manual.entry" button
    
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up
    When I tap on "ok.delete.entry" button
  And I should see "logbook.screen"
  @Precondition
  Scenario: Logging out of Application
    When I tap on "more" icon
    And I tap on "login.and.security.option"
    And I handle Logout button
    And I relaunch the app again
    And I handle login to your account screen
    Then I should see "login.to.your.account" screen
