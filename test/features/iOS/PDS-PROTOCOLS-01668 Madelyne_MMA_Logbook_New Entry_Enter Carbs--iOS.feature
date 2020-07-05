Feature: MADELYNE LOGBOOK- NEW ENTRY – ENTER CARBS - SOFTWARE TEST PROTOCOL FOR IOS


@Precondition
Scenario: LOGBOOK - NEW ENTRY- ENTER CARBS -  ADD, VIEW, EDIT - 12 HOUR - IOS
#  PRe-cONDITIONS:

# •	 ensure that this protocol should execute in sequence only.
# •	 ensure that user has launched Madelyne App as per section 6.1. 
# •	ensure that user is registered successfully on MMA App as per section 6.2 
# •	ensure that user is navigated to the Home screen of the Madelyne App as per section 6.3.
# •	ensure that the Internet connection is turned ON.  
#•	Make sure that in the device settings, the date and time is the current one in 12-hour format HH:MM <AM/PM>.

Given I launch the Madelyne application
# When I set deviceformat to 12 hour
#   And I enable set automatically in device settings
 
        And I should see "welcome.to.tempotm" screen
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
        And I wait for "25" seconds
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
         And I relaunch the app
         And I handle Notification pop-up
         And I handle Bluetooth Notification pop-up
         And I handle ok button
       Then I should see "home" screen
       


@SmokeTest
Scenario:SMOKE TEST FOR ENTER CARBS -  ADD, VIEW, EDIT
        When I set deviceformat to 12 hour
		And I enable set automatically in device settings
        When I tap on "logbook" option
        And I tap on "new.entry" option
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry" option
        Then I should see "carb.intake" screen
        When I tap "carb.intake.grams" field
        And I enter "200" into "carb.intake.grams" field
        Then I should see "200" in "carb.intake.grams" field
        When I tap "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        And I tap on "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        When I tap on "save" button
        Then I should see "logbook.screen"
        And I should see "200" in "grams.logbook.screen" field

        When I tap on "latest.carb.intake.entry"
        Then I should see "200" in "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field
        And I should see "past.time" in "carb.intake.time" field
        When I tap on "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "225" into "carb.intake.grams" field
        Then I should see "225" in "carb.intake.grams" field
        When I tap "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled
        When I tap on "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "yes.its.correct" button
       
        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "225" in "grams.logbook.screen" field
        And I set deviceformat to 24 hour
	    And I enable set automatically in device settings
        When I tap on "logbook.icon"
        And I tap on "new.entry" option
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry" option

        When I tap "carb.intake.grams" field
        And I enter "100" into "carb.intake.grams" field 
        Then I should see "100" in "carb.intake.grams" field
        When I tap "carb.intake.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "logbook.screen"
        When I tap on "latest.carb.intake.entry1"
        And I tap on "delete.manual.entry" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "ok.delete.entry" button
        When I tap "ok.delete.entry" button
        Then I should see "logbook.screen"


 @CarbsAddLNE12hr
    Scenario: LOGBOOK - NEW ENTRY- CARBS -  ADD, VIEW, EDIT - 12 hour - IOS
        When I set deviceformat to 12 hour
        And I enable set automatically in device settings
        And I tap "new.entry" option 
        Then I should see "new.logbook.entry" screen
    
    #     #####Verifying carb intake screen###

        When I tap on "enter.carb.intake.new.entry" option
        Then I should see "carb.intake" screen
        When I tap "cancel" button
        And I tap "new.entry" option
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry" option
        Then I should see "carb.intake" screen

        When I tap "carb.intake.grams" field
        Then I should see "enter.gram.of.carbs"
        And I should see "number.pad"
        When I enter "501" into "carb.intake.grams" field
        Then I should see "501" in "carb.intake.grams" field
        And I should see "cannot.pick.a.grams.above.500" errormessage
        And I should see "save" button is disabled

    @CarbsAddLNE12hr 
	Scenario Outline: Carbs entry

        When I clear "carb.intake.grams" field
        And I enter "<Carbs>" into "carb.intake.grams" field
        Then I should see "<Carbs>" in "carb.intake.grams" field
        And I should see "save" button is enabled
        Examples:
            | Carbs |
            | 0     |
            | 500   |
            | 225   |

#----verifying date field---
    @CarbsAddLNE12hr
	Scenario: Carbs entry
        When I tap "carb.intake.date" field
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "done" button
        When I tap "done" button
        Then I should see "carb.intake.date" in MM-DD-YYYY format
        When I tap "carb.intake.date" field
        And I select "future.year" in "year" field
        And I tap "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled

   #---verifying time Field----

       When I tap "carb.intake.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled
    
        When I tap on "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "cancel" button
        Then I should see "home" screen

        When I tap "new.entry.icon" button
        And I tap "enter.carb.intake.new.entry" option
        And I tap "carb.intake.grams" field

        ##enter the  value between 200

        When I clear "carb.intake.grams" field
        And I enter "200" into "carb.intake.grams" field
        Then I should see "200" in "carb.intake.grams" field
        And I should see "save" button is enabled

        When I tap "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled

    #Select any valid time 
        When I tap "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "logbook.icon"
        Then I should see "logbook.screen"
        And I should see "200" in "grams.logbook.screen" field
        And I should see "carb.intake"
        And I should see "manual.entry" text
        
         When I tap on "latest.carb.intake.entry"
        Then I should see "carb.intake" screen
        And I should see "back" button is enabled
        
        And I should see "200" in "carb.intake.grams" field
        And I should see "source.manual.entry" text
        And I should see CurrentDate in "carb.intake.date" field
        And I should see "carb.intake.time" field 
        And I should see "delete.manual.entry" button

        When I tap on "back" button
        Then I should see "logbook.screen"
        When I tap on "latest.carb.intake.entry"
        Then I should see "carb.intake" screen
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "200" in "carb.intake.grams" field
       
        When I clear "carb.intake.grams" field
        And I enter "225" into "carb.intake.grams" field
        Then I should see "225" in "carb.intake.grams" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I select "future.year" in "year" field
        And I tap "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "carb.intake.date" field 
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "225" in "confirm.carb.intake.grams" field
        And I should see "confirm.carb.intake.date" field
        And I should see "confirm.carb.intake.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "carb.intake" screen
        And I should see "225" in "carb.intake.grams" field
        And I should see "past.date" in "carb.intake.date" field
        And I should see "past.time" in "carb.intake.time" field

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        Then I should see "carb.intake" screen
        And I should see "225" in "carb.intake.grams" field
        And I should see "past.date" in "carb.intake.date" field
        And I should see "past.time" in "carb.intake.time" field

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook.screen"
        And I should see "200" in "grams.logbook.screen" field
        When I tap on "latest.carb.intake.entry"
        Then I should see "carb.intake" screen
        
        When I clear "carb.intake.grams" field
        And I enter "225" into "carb.intake.grams" field
        Then I should see "225" in "carb.intake.grams" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"

        And I should see "225" in "grams.logbook.screen" field
        And I should see "manual.entry" text
        # When I tap on "calandr.iocon"
        #And I select given date
      
    @CarbsAddLNE24hr
     Scenario:LOGBOOK - NEW ENTRY- ENTER CARBS -  ADD, VIEW, EDIT - 24 HOUR - IOS

    # # # PRe-cONDITIONS:
    # # # •	ensure that this protocol should execute in sequence only. 
    # # # •	ensure that the record is created as per section 7.1.
    # # # •	Make sure that the device is connected to the internet.
    # # # •	Make sure that in the device settings, the date and time is the current one in 24-hour format.
    # # # •	ensure that user is navigated to the Home screen.
 
        Given I should see "home" screen
        When I set deviceformat to 24 hour
        And I enable set automatically in device settings
        And I tap on "new.entry" option
        And I tap on "enter.carb.intake.new.entry" option
        Then I should see "carb.intake" screen

        When I tap "carb.intake.grams" field
        #enter value b/w 0 to 500
        And I enter "350" into "carb.intake.grams" field 
        And I tap "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see "350" in "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field

        When I tap "carb.intake.time" field
        Then I should see "done" button
        When I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        When I tap "carb.intake.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "cancel" button
        Then I should see "home" screen

        When I tap on "new.entry" option
       And I tap "enter.carb.intake.new.entry" option
        Then I should see "carb.intake" screen
        
    # #select value 100
        When I tap "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "100" into "carb.intake.grams" field
        Then I should see "100" in "carb.intake.grams" field
        And I should see "save" button is enabled

        When I tap "carb.intake.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "carb.intake.date" field
        And I should see "save" button is enabled

# ##Any valid time
        When I tap on "carb.intake.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "logbook" option
          # When I tap on "calandr.iocon"
        #And I select given date
        And I should see "100" in "grams.logbook.screen1" field
        And I should see "carb.intake"
        And I should see "manual.entry" text
       When I tap on "latest.carb.intake.entry1"
        Then I should see "carb.intake" screen
        And I should see "back" button is enabled
        And I should see "100" in "carb.intake.grams" field
        And I should see "source.manual.entry" text
        And I should see "past.date" in "carb.intake.date" field
        And I should see "past.time.24" in "carb.intake.time" field
        And I should see "delete.manual.entry" button
           
        When I tap on "back" button
        Then I should see "logbook.screen"
        When I tap on "latest.carb.intake.entry1"
        Then I should see "carb.intake" screen
        And I should see "100" in "carb.intake.grams" field
        And I should see "save" button is disabled
       
        When I tap on "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "120" into "carb.intake.grams" field
        Then I should see "120" in "carb.intake.grams" field
        And I should see "save" button is enabled
   
        When I tap on "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.time" field
        Then I should see "done" button
        And I select "future.time.24" in "hour" field
        And I tap on "done" button
        And I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        When I tap "carb.intake.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "120" in "confirm.carb.intake.grams" field
        And I should see CurrentDate in "confirm.carb.intake.date" field
        And I should see "past.time.24" in "confirm.carb.intake.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "carb.intake" screen
        And I should see "120" in "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field
        And I should see "past.time.24" in "carb.intake.time" field

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        Then I should see "carb.intake" screen
        And I should see "120" in "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field
        And I should see "past.time.24" in "carb.intake.time" field

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook.screen"
        When I tap on "latest.carb.intake.entry1"
        Then I should see "carb.intake" screen
        And I should see "100" in "carb.intake.grams" field

        When I clear "carb.intake.grams" field
        And I enter "150" into "carb.intake.grams" field
        Then I should see "150" in "carb.intake.grams" field
        And I should see "save" button is enabled 

        When I tap on "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "carb.intake" text
        And I should see "manual.entry" text
        And I should see "150.grams.logbook" text
          # When I tap on "calandr.iocon"
        #And I select given date
      
  @DeleteCarbsEntry   
 Scenario: LOGBOOK - NEW ENTRY- ENTER CARBS -  DELETE - IOS
# #  PRe-cONDITIONS:
# # •	Make sure the device is connected to internet.
# # •	On the device, the date and time shall be the current one.
# # •	Make sure that records are added to the Logbook as per section 7.1 and 7.2.
        Given I should see "home" screen
        When I tap on "new.entry" option
        And I tap on "enter.carb.intake.new.entry" option
        Then I should see "carb.intake" screen

        When I tap "carb.intake.grams" field
        And I enter "250" into "carb.intake.grams" field 
        Then I should see "250" in "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field
        And I tap on "save" button

        When I tap on "logbook.icon"
        Then I should see "logbook.screen"
        And I should see "latest.carb.intake.entry1"

        When I tap on "latest.carb.intake.entry1"
        And I tap on "delete.manual.entry" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "ok.delete.entry" button
        And I should see "cancel.popup" button
        When I tap "cancel.popup" button
        Then I should see "carb.intake" screen

        When I tap on "delete.manual.entry" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "ok.delete.entry" button
        And I should see "cancel.popup" button
        When I tap "ok.delete.entry" button
        Then I should see "logbook.screen"


#  @DeleteCarbsEntry   
#  Scenario: LOGBOOK - NEW ENTRY- ENTER CARBS -  ADD,VIEW,EDIT,DELETE - IOS OFFLINE
# # #  PRe-cONDITIONS:
# # # •	Make sure the device is not connected to internet.
# # # •	On the device, the date and time shall be the current one.
# # # •	Make sure that records are added to the Logbook as per section 7.1 and 7.2.
#         Given I should see "home" screen
#         When I tap on "new.entry" option
#         Then I should see "new.logbook.entry" screen
#         When I tap on "enter.carb.intake.new.entry" option
#         Then I should see "carb.intake" screen

#         When I tap "carb.intake.grams" field
#         And I enter "200" into "carb.intake.grams" field 
#         Then I should see "200" in "carb.intake.grams" field
#         And I should see CurrentDate in "carb.intake.date" field
#         And I tap on "save" button

#         When I tap on "logbook.icon"
#         Then I should see "logbook.screen"
# When I tap on "calandr.iocon"
        #And I select given date
#         And I should see "latest.carb.intake.entry1"

        # When I tap on "latest.carb.intake.entry1"
        # Then I should see "carb.intake" screen
        # And I should see "200" in "carb.intake.grams" field
        # And I should see "save" button is disabled
       
        # When I tap on "carb.intake.grams" field
        # And I clear "carb.intake.grams" field
        # And I enter "210" into "carb.intake.grams" field
        # Then I should see "210" in "carb.intake.grams" field
        # And I should see "save" button is enabled
   
        # When I tap on "carb.intake.date" field
        # And I select CurrentYear in "year" List
        # And I tap on "done" button
        # Then I should see CurrentDate in "carb.intake.date" field
        # And I should see "save" button is enabled

        # When I tap on "carb.intake.time" field
        # Then I should see "done" button
        # And I select "future.time.24" in "hour" field
        # And I tap on "done" button
        # And I should see "user.cannot.select.a.future.time" text
        # And I should see "save" button is disabled

        # When I tap "carb.intake.time" field
        # And I select "past.time.24" in "hour" field
        # And I tap on "done" button
        # Then I should see "past.time.24" in "carb.intake.time" field
        # And I should see "save" button is enabled

        # When I tap on "save" button
        # Then I should see "confirm.new.entry" pop-up
        # And I should see "is.this.information.correct" text
        # And I should see "210" in "confirm.carb.intake.grams" field
        # And I should see CurrentDate in "confirm.carb.intake.date" field
        # And I should see "past.time.24" in "confirm.carb.intake.time" field
        # And I should see "yes.its.correct" button
        # And I should see "no.keep.editing" button

        # When I tap on "no.keep.editing" button
        # Then I should see "carb.intake" screen
        # And I should see "210" in "carb.intake.grams" field
        # And I should see CurrentDate in "carb.intake.date" field
        # And I should see "past.time.24" in "carb.intake.time" field

        # When I tap on "back" button
        # Then I should see "discard.changes" pop-up
        # And I should see "are.you.sure.you.want.to.discard" text
        # And I should see "cancel.popup" button
        # And I should see "discard" button

        # When I tap on "cancel.popup" button
        # Then I should see "carb.intake" screen
        # And I should see "210" in "carb.intake.grams" field
        # And I should see CurrentDate in "carb.intake.date" field
        # And I should see "past.time.24" in "carb.intake.time" field

        # When I tap on "back" button
        # And I tap on "discard" button
        # Then I should see "logbook.screen"
        # When I tap on "latest.carb.intake.entry1"
        # Then I should see "carb.intake" screen
        # And I should see "200" in "carb.intake.grams" field


#         When I tap on "latest.carb.intake.entry1"
# When I tap on "carb.intake.date" field
        # And I select CurrentYear in "year" List
        # And I tap on "done" button
        # Then I should see CurrentDate in "carb.intake.date" field
        # And I should see "save" button is enabled
#         
  # When I tap "carb.intake.time" field
        # And I select "past.time.24" in "hour" field
        # And I tap on "done" button
        # Then I should see "past.time.24" in "carb.intake.time" field
        # And I should see "save" button is enabled
#  When I tap on "save" button
        # Then I should see "confirm.new.entry" pop-up
        # When I tap on "yes.its.correct" button
        # Then I should see "logbook.screen"
        # And I should see "carb.intake" text
        # And I should see "manual.entry" text
        # And I should see "200.grams.logbook" text



@RegressionTest
	Scenario: Regression Test for LOGBOOK Enter Carbs New Entry

        When I set deviceformat to 12 hour
		And I enable set automatically in device settings
        And I tap on "logbook.icon"
        And I tap on "new.entry" option
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry" option
        Then I should see "carb.intake" screen
    
        When I tap "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
        Then I should see "501" in "carb.intake.grams" field
        And I should see "cannot.pick.a.grams.above.500" errormessage
        And I should see "save" button is disabled
        
        When I clear "carb.intake.grams" field
        And I enter "200" into "carb.intake.grams" field
        Then I should see "200" in "carb.intake.grams" field
        And I should see "save" button is enabled
        When I tap "carb.intake.date" field
        Then I select CurrentYear in "year" List
        When I tap "done" button
        And I tap on "carb.intake.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        When I tap "carb.intake.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "logbook.screen"
        And I should see "200" in "grams.logbook.screen" field

        When I tap on "latest.carb.intake.entry"
        Then I should see "200" in "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field
        And I should see "carb.intake.time" field
        When I tap on "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "225" into "carb.intake.grams" field
        Then I should see "225" in "carb.intake.grams" field
        When I tap "carb.intake.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "225" in "confirm.carb.intake.grams" field
        And I should see "confirm.carb.intake.date" field
        And I should see "confirm.carb.intake.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button
        When I tap on "no.keep.editing" button
        And I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button
        When I tap on "cancel.popup" button
        And I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "carb.intake"
        And I should see "manual.entry" text
        And I should see "latest.carb.intake.entry"

        And I set deviceformat to 24 hour
        And I enable set automatically in device settings
        When I tap on "logbook.icon"
        And I tap on "new.entry" option
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry" option
        
        And I tap "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
        Then I should see "501" in "carb.intake.grams" field
        And I should see "cannot.pick.a.grams.above.500" errormessage
        And I should see "save" button is disabled

        When I clear "carb.intake.grams" field
        And I enter "100" into "carb.intake.grams" field
        Then I should see "100" in "carb.intake.grams" field
        And I should see "save" button is enabled

        When I tap "carb.intake.date" field
        And I select "future.year" in "year" field
        And I tap "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap "carb.intake.date" field
        When I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "logbook.screen"
        When I tap on "latest.carb.intake.entry1"
        And I tap on "delete.manual.entry" button
        And I tap "ok.delete.entry" button
        Then I should see "logbook.screen"

    @Precondition
	Scenario: Logging out of Application
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        And I relaunch the app again
        And I handle login to your account screen
        Then I should see "login.to.your.account" screen







#      Scenario:LOGBOOK - - NEW ENTRY- ENTER CARBS – OFFLINE - VIEW, EDIT, DELETE - IOS

# # # PRe-cONDITIONS:
# # # •	“Madelyne MMA” App should be installed on iOS device as per section 6.1.
# # # •	Make sure that user is registered successfully on MMA App as per section 6.2.
# # # •	Make sure the device is not connected to internet.
# # # •	Make sure that in the device settings, the date and time is the current one.
# # # •	Make sure that time format of the Device is 24-hour time format.
# # # •	Make sure that user is navigated till Home screen of MMA App as per section 6.3

    # When I set deviceformat to 24 hour
    # And I turn on Airplane mode
    # And I tap on "logbook.icon"
    # Then I should see "logbook.screen"

    # When I tap "new.entry.icon" button
    # Then I should see "new.logbook.entry" screen
    
    # When I tap "enter.carb.intake.new.entry" option
    # Then I should see "carb.intake" screen
    # When I tap "carb.intake.grams" field
    # And I clear "carb.intake.grams" field
    # And I enter "200" into "carb.intake.grams" field
    # And I tap "carb.intake.time" field
    # And I select "past.time.24" in "hour" field
    # And I tap on "done" button
    # Then I should see "past.time.24" in "carb.intake.time" field 
    # When I tap "carb.intake.date" field
    # And I select "past.year" in "year" field
    # And I tap "done" button
    # Then I should see "200" in "carb.intake.grams" field
    # And I should see "save" button is enabled
    # When I tap on "save" button
    # And I tap on "logbook.icon"
    # Then I should see "logbook.screen"
    # And I should see "200" in "grams.logbook.screen1" field
    # And I should see "carb.intake"
    # And I should see "manual.entry" text

    # When I tap on "latest.carb.intake.entry1"
    # Then I should see "back" button is enabled
    # 
    # And I should see "200" in "carb.intake.grams" field
    # And I should see "source.manual.entry" text
    # And I should see "past.time.24" in "carb.intake.time" field
    # And I should see "past.date" in "carb.intake.date" field
    # And I should see "delete.manual.entry" button

    # And I should see "cancel" button is enabled
    # And I should see "save" button is disabled
    # And I should see "200" in "carb.intake.grams" field
    # And I should see "past.time.24" in "carb.intake.time" field
    # And I should see "past.date" in "carb.intake.date" field

    # When I tap on "carb.intake.grams" field
    # Then I should see "carb.intake.grams" field is enabled
    # And I should see "number.pad"
    # When I clear "carb.intake.grams" field
    # And I enter "210" into "carb.intake.grams" field
    # Then I should see "210" in "carb.intake.grams" field
    # And I should see "save" button is enabled

    # When I tap "carb.intake.date" field
    # And I select "future.year" in "year" field
    # And I tap "done" button
    # Then I should see "user.cannot.select.a.future.date" errormessage
    # And I should see "save" button is disabled

    # When I tap on "carb.intake.time" field
    # And I select "future.time" in "hour" field
    # And I tap on "done" button
    # Then I should see "user.cannot.select.a.future.time" text
    # And I should see "save" button is disabled

    # When I tap "carb.intake.date" field
    # And I select CurrentYear in "year" List
    # And I tap on "done" button
    # Then I should see CurrentDate in "carb.intake.date" field
    # And I should see "save" button is enabled

    # When I tap on "save" button
    # Then I should see "confirm.new.entry" pop-up
    # And I should see "is.this.information.correct" text
    # And I should see "120" in "carb.intake.grams" field
    # And I should see CurrentDate in "carb.intake.date" field
    # And I should see "past.time.24" in "carb.intake.time" field
    # And I should see "yes.its.correct" button
    # And I should see "no.keep.editing" button

    # When I tap on "no.keep.editing" button
    # Then I should see "carb.intake" screen
    # And I should see "120" in "carb.intake.grams" field
    # And I should see "past.date" in "carb.intake.date" field
    # And I should see "past.time" in "carb.intake.time" field

    # When I tap on "back" button
    # Then I should see "discard.changes" pop-up
    # And I should see "are.you.sure.you.want.to.discard" text
    # And I should see "cancel" button
    # And I should see "discard" button

    # When I tap on "cancel" button
    # Then I should see "carb.intake" screen
    # And I should see "120" in "carb.intake.grams" field
    # And I should see "past.date" in "carb.intake.date" field
    # And I should see "past.time" in "carb.intake.time" field

    # When I tap on "back" button
    # And I tap on "discard" button
    # Then I should see "carb.intake" screen
    # And I should see "210" in "carb.intake.grams" field

    # When I tap on "carb.intake.date" field
    # And I select "past.date" in "date" field
    # And I tap "done" button
    # And I tap on "carb.intake.time" field
    # And I select "past.time" in "hour" field
    # And I tap on "done" button
    # And I tap on "save" button
    # Then I should see "confirm.new.entry" pop-up
    # When I tap on "yes.its.correct" button
    # Then I should see "carb.intake" screen
    # And I should see "back" button is enabled
    # And I should see "210" in "carb.intake.grams" field
    # And I should see "source.manual.entry" text 
    # And I should see "delete.manual.entry" button 
    # And I turn off Airplane mode


   













