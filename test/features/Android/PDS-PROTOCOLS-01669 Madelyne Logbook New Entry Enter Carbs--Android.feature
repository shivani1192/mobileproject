Feature:MADELYNE LOGBOOK- NEW ENTRY – ENTER CARBS - SOFTWARE TEST PROTOCOL FOR ANDROID

 @Precondition
Scenario: LOGBOOK - NEW ENTRY- CARBS -  ADD, VIEW, EDIT - ANDROID
   # pre-conditions:
   #    Ensure that this protocol should execute in sequence only.
   #	Ensure that user has installed Madelyne App as per section 6.1.
   #	Ensure that user is registered successfully on MMA App as per section 6.2
   #    Ensure that user is navigated to the home screen of the madelyne mmA App as per section 6.3.
   # 	Ensure that the internet connection is turned on.
   # 	Make sure that in the device settings, the date and time is the current one in 12-hour format (Time format is specific to OS).

        Given I launch the Madelyne application
        When I turn ON Bluetooth
		And I set deviceformat to 12 hour
        And I enable set automatically in device settings
        Then I should see "welcome.to.tempotm" screen
		When I tap on "lets.get.started" button
		Then I should see "terms.and.privacy" screen
		And I Verify "terms.and.privacy" text
		And I should see "agree.and.continue" button
		And I Verify "agree.and.continue" text
		When I tap "agree.and.continue" button 
		Then I should see "create.account" screen
		And I Verify "create.account" text
		And I should see "emailaddress" field
		And I Verify "emailaddress" text
		And I should see "password" field
		And I Verify "password" text
		When I enter "emailaddress" into "emailaddress" field
		And I enter "password" into "password" field
		And I tap "next" button
        And I wait for "40" seconds
		Then I should see "verify.email" screen
		And I Verify "verify.email" text
		When I should connect to email for registration verification
        And I wait for "10" seconds
		Then I verify email
		And I should see "personal.information" screen
		And I Verify "personal.information" text
		And I should see "first.name" field
		And I Verify "first.name" text
		And I should see "last.name" field
		And I Verify "last.name" text
		And I should see "date.of.birth" field
		And I Verify "date.of.birth" text
		When I enter "first.name" into "first.name" field
		And I enter "last.name" into "last.name" field
		And I tap "date.of.birth" field
		Then I should see "date.picker"
		When I select the "year" in "date.picker.year" field
		And I select the "month" in "date.picker.month" field
		And I select the "date" in "date.picker.date" field
		And I tap "set.popup" button
		And I tap "next" button
		Then I should see "my.insulin1" screen
		When I tap on "mealtime.insulin.toggle" button
		And I tap on "long-acting.insulin.toggle" button
		And I tap on "next" button
		Then I should see "confirm.insulin.type" pop-up
		When I tap on "ok.popup" button
		Then I should see "partner.sharing.code" screen
		When I tap on "i.do.not.have.a.partner.sharing.code" button
		Then I should see "account.setup" screen
		And I should see "continue" button
		When I tap on "continue" button
		Then I should see "connect.smart" screen
		When I tap on "squire.skip" button
		Then I should see "connect.blood.sugar.meter" screen
		And I should see "bgm.skip" button
		When I tap on "bgm.skip" button
		Then I should see "home" screen
		# When I tap on "home.close" button
		# Then I should see "turn.on.your.bluetooth" pop-up
		# When I tap on "not.now" button
		# Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen

        When I tap on "downward.arrow" icon
        Then I should see "home" screen

		
    @CarbsAddLNE12hr
    Scenario: LOGBOOK - NEW ENTRY- CARBS -  ADD, VIEW, EDIT - 12 hour - ANDROID
        When I set deviceformat to 12 hour
        And I enable set automatically in device settings
        And I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        And I should see CurrentTime in "carb.intake.time" field
        And I should see "save" button is disabled
        And I should see "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field
        When I tap on "back" button
        Then I should see "home" screen

        When I tap on "new.entry.icon" 
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        Then I should see "save" button is disabled
        When I clear "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
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

   @CarbsAddLNE12hr
   Scenario: Carbs entry

        And I should see CurrentDate in "carb.intake.date" field
        When I tap "carb.intake.date" field
        Then I should see "cancel.calander" button
        And I should see "ok.button" button
        When I tap on "cancel.calander" button
        Then I should see "carb.intake" screen

        ## When I tap on "carb.intake.date" field           ##future dates are not visible 
        ## And I tap "year" button
        ## And I select "future.year" in "year" field
        ## And I tap on "ok.button"
        ## Then I should see "user.cannot.select.future.date" text

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        And I should see "ok.button"
        And I should see "cancel.time" button
        When I tap on "cancel.time" button
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.time" field
        And I select "future.time" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        
        When I tap on "carb.intake.time" field
        And I select "past.hour" in "hour" field
        And I select "past.minutes" in "minutes" field
        Then I should see "ok.button"
        And I should see "cancel.button2" button
        When I tap on "ok.button"
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "back" button
        Then I should see "home" screen

        When I tap on "new.entry.icon" 
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        Then I should see "save" button is disabled
        When I clear "carb.intake.grams" field
        And I enter "200" into "carb.intake.grams" field
        Then I should see "200" in "carb.intake.grams" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        When I select "past.hour" in "hour" field
        And I select "past.minutes" in "minutes" field
        Then I should see "ok.button"
        And I should see "cancel.button2" button
        When I tap on "ok.button"
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap "save" button
        Then I should see "home" screen

        When I tap on "logbook.icon" option
        Then I should see "logbook" screen
        And I should see "carb.intake.text" text
        ##And I should see "carb.intake.icon"
        And I should see "carb.intake.entry.text" text
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        And I should see "source.manual.entry" text
        And I should see "back" button is enabled
        And I should see "200" in "carb.intake.grams" field
        And I should see "past.time" in "carb.intake.time" field 
        And I should see "past.date" in "carb.intake.date" field
        And I should see "delete.entry" button
        And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen

        When I tap on "carb.intake.grams" field
        Then I should see "200" in "carb.intake.grams" field
        And I should see "save" button is disabled
        When I clear "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
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

   @CarbsAddLNE12hr
   Scenario: Carbs entry

        When I tap "carb.intake.date" field
        Then I should see "ok.button"
        And I should see "cancel.calander" button
        When I tap on "cancel.calander" button
        Then I should see "carb.intake" screen

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        And I should see "ok.button"
        And I should see "cancel.button2" button
        When I select "future.time" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        When I tap on "cancel.calander" button
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.time" field
        And I select "past.hour" in "hour" field
        And I select "past.minutes" in "minutes" field
        And I tap on "ok.button"
        Then I should see "past.time" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "225" in "carb.intake.popup.grams" field
        And I should see "past.date" in "carb.intake.popup.date" field
        And I should see "past.time" in "carb.intake.popup.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "carb.intake" screen
        And I should see "225" in "carb.intake.grams" field
        And I should see "past.date" in "carb.intake.date" field
        
        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel" button
        And I should see "discard" button

        When I tap on "cancel" button
        Then I should see "carb.intake" screen
        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        And I should see "200" in "carb.intake.grams" field

        When I tap on "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "150" into "carb.intake.grams" field
        Then I should see "150" in "carb.intake.grams" field
        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "carb.intake.entry.text" text
        And I should see "entry.time" text
        And I should see "carb.intake.text" text
        And I should see "manual.entry" text


@CarbsAddLNE24hr
Scenario:LOGBOOK - NEW ENTRY- ENTER CARBS -  ADD, VIEW, EDIT - 24 hour - ANDROID

#   PRE-CONDITIONS:
# •	ensure that this protocol should execute in sequence only. 
# •	ensure that the record is created as per section 7.1.
# •	make sure that the device is connected to the internet.
# •	make sure that the in the device settings, the date and time is the current one in 24-hour format.

        When I set deviceformat to 24 hour
        And I enable set automatically in device settings
        When I tap on "logbook.icon" option
        And I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        Then I should see "save" button is disabled
        When I clear "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
        Then I should see "501" in "carb.intake.grams" field
        And I should see "cannot.pick.a.grams.above.500" errormessage
        And I should see "save" button is disabled

@CarbsAddLNE24hr   
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

@CarbsAddLNE24hr 
Scenario: Carbs entry

        When I tap "carb.intake.date" field
        Then I should see "ok.button"
        And I should see "cancel.calander" button

        #select current date
        When I tap "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        And I should see "ok.button"
        And I should see "cancel.calander" button
        When I select "future.time.24" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        When I select "past.hour.24" in "hour" field
        And I select "past.minutes" in "minutes" field
        Then I should see "ok.button"
        And I should see "cancel.button2" button
        When I tap on "ok.button"
        Then I should see "past.time.24" in "carb.intake.time" field
        
        When I tap on "back" button
        And I tap on "new.entry.icon" 
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen

        When I clear "carb.intake.grams" field
        And I enter "350" into "carb.intake.grams" field
        Then I should see "350" in "carb.intake.grams" field
        And I should see "save" button is enabled
        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        When I select "past.hour.24" in "hour" field
        And I select "past.minutes" in "minutes" field
        And I tap on "ok.button"
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
		Then I should see "logbook" screen

        And I should see "carb.intake.text" text
        And I should see "carb.intake.entry.text" text
        And I should see "manual.entry" text

        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        And I should see "source.manual.entry" text
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "350" in "carb.intake.grams" field
        And I should see "past.time.24" in "carb.intake.time" field
        And I should see CurrentDate in "carb.intake.date" field
        And I should see "delete.entry" button

        When I tap on "back" button
        Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen

        When I tap on "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "250" into "carb.intake.grams" field
        Then I should see "250" in "carb.intake.grams" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        And I select "future.time.24" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap on "carb.intake.time" field
        And I select "past.hour.24" in "hour" field
        And I select "past.minutes" in "minutes" field
        And I tap on "ok.button"
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "250" in "carb.intake.popup.grams" field
        And I should see CurrentDate in "carb.intake.popup.date" field
        And I should see "past.time.24" in "carb.intake.popup.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "carb.intake" screen
        And I should see "250" in "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field
        
        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel" button
        And I should see "discard" button

        When I tap on "cancel" button
        Then I should see "carb.intake" screen

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        And I should see "350" in "carb.intake.grams" field
        And I should see "past.time.24" in "carb.intake.time" field
        And I should see CurrentDate in "carb.intake.date" field
        When I tap on "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "250" into "carb.intake.grams" field
        Then I should see "250" in "carb.intake.grams" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "carb.intake.entry.text" text
        And I should see "manual.entry" text
        And I should see "carb.intake.text" text
        And I should see "manual.entry" text
 


@CarbsAddLNE24hr
Scenario:LOGBOOK - NEW ENTRY-Carbs- DELETE-ANDROID
		# #  pre-condITIons:
		# # •	ensure that this protocol should execute in sequence only.
		# # •	make sure that the device is connected to the internet.
		# # •	Make sure that records are added to the Logbook as per section 7.1 and 7.2.

		
		When I tap on "logbook.icon" option
		Then I should see "logbook" screen
		And I should see "250" in "grams.logbook.screen" field
		And I should see "150" in "grams.logbook.screen1" field
		When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
		And I should see "source.manual.entry" text
		And I should see "back" button is enabled
		And I should see "250" in "carb.intake.grams" field
		And I should see "past.time.24" in "carb.intake.time" field
		And I should see "past.date" in "carb.intake.date" field
		And I should see "delete.entry" button
		When I tap "delete.entry" button
		Then I should see "confirm.delete.entry" pop-up
		And I should see "are.you.sure.delete.entry" text
        And I should see "ok.popup" button
		And I should see "cancel.popup.1" button
		When I tap on "cancel.popup.1" button
		Then I should see "carb.intake" screen
		When I tap "delete.entry" button
		Then I should see "confirm.delete.entry" pop-up
		And I should see "are.you.sure.delete.entry" text
        When I tap on "ok.popup" button
		Then I should see "logbook" screen


    @SmokeTest
	Scenario: Smoke Test for LOGBOOK Enter Carbs New Entry

        When I set deviceformat to 12 hour
		And I enable set automatically in device settings
		And I tap on "new.entry" option
		Then I should see "new.logbook.entry" screen

        When I tap "enter.carb.intake.new.entry"
        Then I should see CurrentTime in "carb.intake.time" field
        And I should see CurrentDate in "carb.intake.date" field
        When I tap on "carb.intake.grams" field
        And I enter "62" into "carb.intake.grams" field
        Then I should see "62" in "carb.intake.grams" field

        When I tap on "carb.intake.date" field
        And I tap "year" button
		And I select "current.year" in "year" field
		And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
		When I select "past.hour" in "hour" field
		And I select "past.minutes" in "minutes" field
		And I tap on "ok.button"
		Then I should see "past.time" in "carb.intake.time" field

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field
        When I tap on "save" button
        And I tap on "logbook.icon" option
        Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        And I should see "62" in "carb.intake.grams" field
        And I should see "past.time" in "carb.intake.time" field
        And I should see "past.date" in "carb.intake.date" field
        And I should see "delete.entry" button

        When I tap on "carb.intake.grams" field
        And I enter "250" into "carb.intake.grams" field
        Then I should see "250" in "carb.intake.grams" field
        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field
        When I tap on "carb.intake.time" field
		And I select "past.hour" in "hour" field
		And I select "past.minutes" in "minutes" field
		And I tap on "ok.button"
        And I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button
        When I tap on "no.keep.editing" button
        Then I should see "carb.intake" screen
        And I should see "250" in "carb.intake.grams" field

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel" button
        And I should see "discard" button
        When I tap on "cancel" button
        Then I should see "carb.intake" screen
        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "150" into "carb.intake.grams" field
        Then I should see "150" in "carb.intake.grams" field
        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "carb.intake.entry.text" text

        When I set deviceformat to 24 hour
        And I enable set automatically in device settings
        And I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        And I enter "350" into "carb.intake.grams" field
        Then I should see "350" in "carb.intake.grams" field
        And I should see "save" button is enabled
        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        When I select "past.hour.24" in "hour" field
        And I select "past.minutes" in "minutes" field
        And I tap on "ok.button"
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
		Then I should see "home" screen

        When I tap on "logbook.icon" option
		Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        When I tap "delete.entry" button
		Then I should see "confirm.delete.entry" pop-up
		And I should see "are.you.sure.delete.entry" text
        And I should see "ok.popup" button
		And I should see "cancel.popup.1" button
        When I tap on "ok.popup" button
		Then I should see "logbook" screen
	
	@RegressionTest
	Scenario: Regression Test for LOGBOOK Enter Carbs New Entry

        When I set deviceformat to 12 hour
		And I enable set automatically in device settings
        And I tap on "logbook.icon" option
		Then I should see "logbook" screen
		When I tap on "new.entry" option
		Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        And I should see CurrentTime in "carb.intake.time" field
        And I should see "save" button is disabled
        And I should see "carb.intake.grams" field
        And I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
        Then I should see "501" in "carb.intake.grams" field
        And I should see "cannot.pick.a.grams.above.500" errormessage
        And I should see "save" button is disabled
        When I clear "carb.intake.grams" field
        And I enter "62" into "carb.intake.grams" field
        Then I should see "62" in "carb.intake.grams" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I tap "year" button
		And I select "current.year" in "year" field
		And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        And I select "future.time" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        When I select "past.hour" in "hour" field
        And I select "past.minutes" in "minutes" field
        And I tap on "ok.button"
        Then I should see "past.time" in "carb.intake.time" field

        When I tap on "save" button
        Then I should see "62" in "grams.logbook.screen" field

        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        And I should see "62" in "carb.intake.grams" field
        And I should see "past.time" in "carb.intake.time" field
        And I should see "delete.entry" button

        When I tap on "carb.intake.grams" field
        And I enter "150" into "carb.intake.grams" field
        Then I should see "150" in "carb.intake.grams" field
        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field

        When I tap on "carb.intake.time" field
		And I select "past.hour" in "hour" field
		And I select "past.minutes" in "minutes" field
		And I tap on "ok.button"
        And I tap on "save" button
		Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "carb.intake" screen
        And I should see "150" in "carb.intake.grams" field
        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel" button
        And I should see "discard" button
        When I tap on "cancel" button
        Then I should see "carb.intake" screen
        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        And I clear "carb.intake.grams" field
        And I enter "150" into "carb.intake.grams" field
        Then I should see "150" in "carb.intake.grams" field
        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "carb.intake.entry.text" text

        When I set deviceformat to 24 hour
        And I enable set automatically in device settings
        And I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
        Then I should see "501" in "carb.intake.grams" field
        And I should see "cannot.pick.a.grams.above.500" errormessage
    
        When I clear "carb.intake.grams" field
        And I enter "350" into "carb.intake.grams" field
        Then I should see "350" in "carb.intake.grams" field
        And I should see "save" button is enabled
        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
        And I select "future.time.24" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage

        When I tap on "carb.intake.time" field
        Then I should see "hour.clock"
        When I select "past.hour.24" in "hour" field
        And I select "past.minutes" in "minutes" field
        And I tap on "ok.button"
        Then I should see "past.time.24" in "carb.intake.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
		Then I should see "home" screen

        When I tap on "logbook.icon" option
		Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        And I should see "350" in "carb.intake.grams" field
        And I should see "past.time.24" in "carb.intake.time" field
        And I should see CurrentDate in "carb.intake.date" field

        When I clear "carb.intake.grams" field
        And I enter "250" into "carb.intake.grams" field
        Then I should see "250" in "carb.intake.grams" field

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen

        When I tap on "logbook.icon" option
		Then I should see "logbook" screen
        When I tap on "carb.intake.entry.1" option
        Then I should see "carb.intake" screen
        When I tap "delete.entry" button
		Then I should see "confirm.delete.entry" pop-up
		And I should see "are.you.sure.delete.entry" text
        And I should see "ok.popup" button
		And I should see "cancel.popup.1" button
        When I tap on "ok.popup" button
		Then I should see "logbook" screen

	@Precondition
	Scenario: Logging out of Application
		When I tap on "more" option
		And I tap on "login.and.security.option"
		And I tap on "logout" button
		Then I should see "login.to.your.account" screen
        

# Scenario:Logbook - New Entry- Enter Carbs –Offline - View, Edit, Delete - Android

# 		# #  pre-condITIons:
# 		# # •	ensure that this protocol should execute in sequence only.
# 		# # •	make sure that the device is connected to the internet.
# 		# # •	ensure user already created two logbook blood sugar entries as per sections 7.1 and 7.2.
			
#         When I tap on "new.entry.icon" 
#         Then I should see "new.logbook.entry" screen
#         When I tap "enter.carb.intake.new.entry"
#         Then I should see "carb.intake" screen
#         When I tap on "carb.intake.grams" field
#         And I enter "0" into "carb.intake.grams" field
#         Then I should see "0" in "carb.intake.grams" field
#         And I should see "save" button is enabled
#         When I tap "save" button
#         Then I should see "logbook" screen
#         When I tap on "logbook.icon" option
#         Then I should see "logbook" screen
#         And I should see "carb.intake.text" text
#         And I should see "0" in "grams.logbook.screen" field

#         #updating 0 entry
#         When I tap on "carb.intake.entry.1" option
#         Then I should see "carb.intake" screen
#         When I clear "carb.intake.grams" field
#         And I enter "500" into "carb.intake.grams" field
#         Then I should see "500" in "carb.intake.grams" field
#         When I tap "save" button
#         Then I should see "confirm.new.entry" screen
#         And I should see "is.this.information.correct" text
#         And I should see "500" in "carb.intake.popup.grams" field
#         And I should see CurrentDate in "carb.intake.popup.date" field
#         And I should see "yes.its.correct" button
#         And I should see "no.keep.editing" button
#         When I tap on "yes.its.correct" button
#         Then I should see "logbook" screen

#         #deleting 500 entry
#         When I tap on "carb.intake.entry.1" option
#         Then I should see "carb.intake" screen
#         When I tap "delete.entry" button
# 		Then I should see "confirm.delete.entry" pop-up
#         When I tap on "ok.popup" button
# 		Then I should see "logbook" screen



 











