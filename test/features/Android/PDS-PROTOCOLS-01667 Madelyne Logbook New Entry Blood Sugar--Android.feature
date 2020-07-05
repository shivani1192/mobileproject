Feature: MADELYNE LOGBOOK-NEW ENTRY-BLOOD SUGAR - SOFTWARE TEST PROTOCOL FOR ANDROID

# Preconditions:
# ensure that this protocol should execute in sequence only.
# make sure that the “madelyne mmA” App is installed on Android device as per section 6.1.
# make sure that the user is registered successfully on mmA App as per section 6.2
# make sure that the device is connected to the internet.
# make sure that the in the device settings, the date and time is the current one in 12-hour format hh:mm <Am/pm>.
# make sure that the user reached the home screen of mmA App as per section 6.3
# ensure that in the more menu - schedule and reminders deselect all the check boxes in all the time blocks.
# keypad icon will be displayed in clock based on the specific oem.

@Precondition
Scenario: Navigating to Home Screen
	
Given I launch the Madelyne application
And I set deviceformat to 12 hour
And I enable set automatically in device settings
And I turn OFF Bluetooth
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen
And I should see "agree.and.continue" button
When I tap "agree.and.continue" button
Then I should see "create.account" screen
And I should see "emailaddress" field
And I should see "password" field
When I enter "emailaddress" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
When I should connect to email for registration verification
And I verify email
Then I should see "personal.information" screen
And I should see "first.name" field
And I should see "last.name" field
And I should see "date.of.birth" field
When I enter "first.name" into "first.name" field
And I enter "last.name" into "last.name" field
And I tap "date.of.birth" field
Then I should see "date.picker"
When I select the "year" in "date.picker.year" field
And I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I tap "set.popup" button
And I tap "next" button
Then I should see "my.insulin" screen
When I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "next" button
Then I should see "confirm.insulin.type" pop-up
When I tap on "ok.popup" button
Then I should see "partner.sharing.code" screen
When I tap on "i.do.not.have.a.partner.sharing.code" button
Then I should see "account.setup" screen
And I Verify "account.setup" text
And I should see "continue" button
And I Verify "continue" text
When I tap on "continue" button
Then I should see "connect.smart" screen
And I Verify "connect.smart" text
When I tap on "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
And I Verify "connect.blood.sugar.meter" text
And I should see "bgm.skip" button
And I Verify "bgm.skip" text
When I tap on "bgm.skip" button
Then I should see "home" screen
And I should see "home.recent.entries" pop-up
And I should see "home.this.is.where.you.will.see" text
And I should see "home.next" button
When I tap on "home.next" button
And I tap on "home.reminders.not.now" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "downward.arrow" mark
Then I should see "home" screen

@BloodsugarAddLNE12hr
Scenario: LOGBOOK - NEW ENTRY-BLOOD SUGAR-ADD, VIEW, EDIT-12 HOURS-ANDROID

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings
Then I should see "home" screen
When I tap "new.entry" button
And I tap on "enter.blood.sugar.new.entry" option
Then I should see "blood.sugar" screen
When I tap on "back" button
And I tap on "new.entry.icon"
And I tap on "enter.blood.sugar.new.entry" option
And I tap on "blood.sugar.mg.dl" field
And I clear "blood.sugar.mg.dl" field
And I enter "2000" into "blood.sugar.mg.dl" field
Then I should see "2000" in "blood.sugar.mg.dl" field
And I should see "cannot.pick.a.mg.dl.above.1999" text
And I should see "save" button is disabled

@BloodsugarAddLNE12hr
Scenario Outline: Entering Blood Sugar Units

When I clear "blood.sugar.mg.dl" field
And I enter "<BloodSugar>" into "blood.sugar.mg.dl" field
Then I should see "<BloodSugar>" in "blood.sugar.mg.dl" field
And I should see "save" button is enabled
Examples:

| BloodSugar |
| 0          |
| 500        |
| 1999       |
| 250        |

@BloodsugarAddLNE12hr
Scenario: Verification of Blood Sugar Entries

Given I should see CurrentDate in "blood.sugar.date" field in MM-DD-YYYY format
When I tap "blood.sugar.date" field
Then I should see "ok.button"
And I should see "cancel.calander" button
When I tap on "cancel.calander" button
Then I should see "blood.sugar" screen

# #------select future date---------
# When I tap "blood.sugar.date" field
# #When I tap on "year" button
# #And I select "future.year" in "year" List  ####cannot be automated
# #Then I should be unable to select "future.date"   ####cannot be automated
# #------select the current date----------------
# #------tap on "ok.button" button--------------------

When I tap "blood.sugar.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "blood.sugar.date" field
And I should see "save" button is enabled

When I tap on "blood.sugar.time" field
Then I should see "ok.button"
And I should see "cancel.calander" button

When I tap on "cancel.calander" button
And I tap on "blood.sugar.time" field
Then I should see "hour.clock"
When I select "future.time" in "hour" field
Then I should see "ok.button"
And I should see "cancel.calander" button
When I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage

When I tap on "blood.sugar.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "blood.sugar.time" field
And I should see "save" button is enabled
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "blood.sugar.date" field
When I tap on "blood.sugar.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "blood.sugar.time" field

When I tap on "back" button
And I tap on "new.entry.icon"
And I tap on "enter.blood.sugar.new.entry" option
And I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
And I tap on "blood.sugar.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap "save" button
And I tap on "logbook.icon" option

Then I should see "blood.sugar.entry.1"
And I should see "blood.sugar.text"
And I should see "250" in "mg.dl.logbook.screen" field
And I should see "manual.entry" text
And I should see "time.logbook.screen"

When I tap on "blood.sugar.entry.1" option
Then I should see "blood.sugar" screen
And I should see "source.manual.entry" text
And I should see "back" button is enabled
And I should see "250" in "blood.sugar.mg.dl" field
And I should see "past.time" in "blood.sugar.time" field
And I should see CurrentDate in "blood.sugar.date" field
And I should see "delete.entry" button

When I tap on "back" button
And I tap on "blood.sugar.entry.1" option
And I tap on "blood.sugar.mg.dl" field

Then I should see "250" in "blood.sugar.mg.dl" field
And I should see "save" button is disabled
And I should see "number.pad"
When I clear "blood.sugar.mg.dl" field
And I enter "2000" into "blood.sugar.mg.dl" field
Then I should see "2000" in "blood.sugar.mg.dl" field
And I should see "cannot.pick.a.mg.dl.above.1999" text
And I should see "save" button is disabled

@BloodsugarAddLNE12hr
Scenario Outline: Entering Blood Sugar Units

When I clear "blood.sugar.mg.dl" field
And I enter "<BloodSugar>" into "blood.sugar.mg.dl" field
Then I should see "<BloodSugar>" in "blood.sugar.mg.dl" field
And I should see "save" button is enabled

Examples:
	
| BloodSugar |
| 0          |
| 1999       |


@BloodsugarAddLNE12hr
Scenario: Verification of Blood Sugar Entries

When I tap on "blood.sugar.date" field
Then I should see "ok.button"
And I should see "cancel.calander" button

# #------select future date---------
# #When I tap on "year" button
# #And I select "future.year" in "year" List  ####cannot be automated
# #Then I should be unable to select "future.date"   ####cannot be automated
# #------select the current date----------------
# #------tap on "ok.button" button--------------------

When I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "blood.sugar.date" field
And I should see "save" button is enabled
When I tap on "blood.sugar.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button

When I select "future.time" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled
 
When I tap on "blood.sugar.time" field
And I tap on "cancel.button2" button
Then I should see "user.cannot.select.a.future.time" errormessage
  
When I tap on "blood.sugar.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "blood.sugar.time" field
And I should see "save" button is enabled

When I tap on "blood.sugar.date" field
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "blood.sugar.date" field
When I tap on "save" button
Then I should see "confirm.new.entry" pop-up
And I should see "is.this.information.correct" text
And I should see "1999" in "blood.sugar.popup.mg.dl" field
And I should see "past.date" in "blood.sugar.popup.date" field
And I should see "past.time" in "blood.sugar.popup.time" field
And I should see "yes.its.correct" button
And I should see "no.keep.editing" button
When I tap "no.keep.editing" button
Then I should see "blood.sugar" screen

When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel.popup.1" button
And I should see "discard" button

When I tap on "cancel.popup.1" button
Then I should see "blood.sugar" screen

When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen

When I tap on "blood.sugar.entry.1" option
Then I should see "blood.sugar" screen
When I tap on "blood.sugar.mg.dl" field
And I clear "blood.sugar.mg.dl" field
And I enter "450" into "blood.sugar.mg.dl" field
Then I should see "450" in "blood.sugar.mg.dl" field
And I should see "save" button is enabled
When I tap on "blood.sugar.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "blood.sugar.date" field
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
And I tap on "save" button
Then I should see "confirm.new.entry" pop-up
When I tap "yes.its.correct" button
Then I should see "logbook" screen

When I tap on "home" option 
And I tap on "logbook.icon" option

Then I should see "450" in "mg.dl.logbook.screen" field
When I tap on "home" option
Then I should see "home" screen

@BloodsugarAddLNE24hr
Scenario: LOGBOOK NEW ENTRY BLOOD SUGAR ADD, VIEW, EDIT 24 HOUR FORMAT ANDROID

#  Preconditions:
# ensure that this protocol should execute in sequence only.
# make sure that the device is connected to the internet.
# make sure that the in the device settings, the date and time is the current one in 24-hour format hh:mm <Am/pm>.
# make sure that the user reached the home screen by executing section 7.1.
# keypad icon will be displayed in clock based on the specific oem.

Given I should see "home" screen
When I set deviceformat to 24 hour
And I enable set automatically in device settings
Then I should see "home" screen
When I tap "new.entry" button
And I tap on "enter.blood.sugar.new.entry" option
And I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
And I should see "save" button is enabled

When I tap "blood.sugar.date" field

# #------select future date---------
# #When I tap on "year" button
# #And I select "future.year" in "year" List  ####cannot be automated
# #Then I should be unable to select "future.date"   ####cannot be automated

# #------select the current date----------------
# #------tap on "ok.button" button--------------------

And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "blood.sugar.date" field

When I tap on "blood.sugar.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.calander" button

When I tap on "cancel.calander" button
And I tap on "blood.sugar.time" field
And I select "future.time.24" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

When I tap on "blood.sugar.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "blood.sugar.time" field

When I tap on "back" button
And I tap on "new.entry.icon"
And I tap on "enter.blood.sugar.new.entry" option
And I tap on "blood.sugar.mg.dl" field
And I enter "850" into "blood.sugar.mg.dl" field
Then I should see "850" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "blood.sugar.time" field
And I should see "save" button is enabled

When I tap "save" button
And I tap on "logbook.icon" option
Then I should see "logbook" screen

When I tap on "home" option 
And I tap on "logbook.icon" option

Then I should see "blood.sugar.entry.1"
And I should see "blood.sugar.text"
And I should see "850" in "mg.dl.logbook.screen" field
And I should see "manual.entry" text
And I should see "time.logbook.screen"

When I tap on "blood.sugar.entry.1" option
Then I should see "blood.sugar" screen
And I should see "source.manual.entry" text
And I should see "back" button is enabled
And I should see "850" in "blood.sugar.mg.dl" field
And I should see "past.time.24" in "blood.sugar.time" field
And I should see CurrentDate in "blood.sugar.date" field
And I should see "delete.entry" button
When I tap on "back" button
And I tap on "blood.sugar.entry.1" option
And I tap on "blood.sugar.mg.dl" field
And I clear "blood.sugar.mg.dl" field
And I enter "2000" into "blood.sugar.mg.dl" field
Then I should see "2000" in "blood.sugar.mg.dl" field
And I should see "cannot.pick.a.mg.dl.above.1999" text
And I should see "save" button is disabled

@BloodsugarAddLNE24hr
Scenario Outline: Entering Blood Sugar Units

When I clear "blood.sugar.mg.dl" field
And I enter "<BloodSugar>" into "blood.sugar.mg.dl" field
Then I should see "<BloodSugar>" in "blood.sugar.mg.dl" field
And I should see "save" button is enabled
Examples:

| BloodSugar |
| 0          |
| 1999       |
| 990        |

@BloodsugarAddLNE24hr
Scenario: Entering Blood Sugar Units

When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "blood.sugar.date" field

When I tap on "blood.sugar.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "cancel.button2" button
And I tap on "blood.sugar.time" field
And I select "future.time.24" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled
When I tap on "blood.sugar.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "blood.sugar.time" field
When I tap on "save" button

Then I should see "confirm.new.entry" pop-up
And I should see "is.this.information.correct" text
And I should see "990" in "blood.sugar.popup.mg.dl" field
And I should see CurrentDate in "blood.sugar.popup.date" field
And I should see "past.time.24" in "blood.sugar.popup.time" field
And I should see "yes.its.correct" button
And I should see "no.keep.editing" button

When I tap "no.keep.editing" button
Then I should see "blood.sugar" screen

When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel.popup.1" button
And I should see "discard" button

When I tap on "cancel.popup.1" button
Then I should see "blood.sugar" screen

When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen

When I tap on "blood.sugar.entry.1" option
And I tap on "blood.sugar.mg.dl" field
And I clear "blood.sugar.mg.dl" field
And I enter "200" into "blood.sugar.mg.dl" field

And I tap on "blood.sugar.date" field
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"

And I tap on "blood.sugar.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "save" button
Then I should see "confirm.new.entry" pop-up

And I should see "is.this.information.correct" text
And I should see "200" in "blood.sugar.popup.mg.dl" field
And I should see "past.date" in "blood.sugar.popup.date" field
And I should see "past.time.24" in "blood.sugar.popup.time" field
And I should see "yes.its.correct" button
And I should see "no.keep.editing" button

When I tap "yes.its.correct" button
Then I should see "logbook" screen

When I tap on "home" option 
And I tap on "logbook.icon" option

Then I should see "200" in "mg.dl.logbook.screen" field
And I should see "450" in "mg.dl.logbook.screen1" field

@BloodsugarDeleteLNE
Scenario: LOGBOOK - NEW ENTRY-BLOOD SUGAR- DELETE-ANDROID

# #  Preconditions:
# # ensure that this protocol should execute in sequence only.
# # make sure that the device is connected to the internet.
# # ensure user already created two logbook blood sugar entries as per sections 7.1 and 7.2.

Given I should see "logbook" screen
When I tap on "logbook.icon" option
Then I should see "logbook" screen
And I should see "200" in "mg.dl.logbook.screen" field
And I should see "450" in "mg.dl.logbook.screen1" field
When I tap on "blood.sugar.450.entry" option
Then I should see "blood.sugar" screen
And I should see "source.manual.entry" text
And I should see "450" in "blood.sugar.mg.dl" field
And I should see "blood.sugar.time" text
And I should see "past.date" in "blood.sugar.date" field
And I should see "delete.entry" button

When I tap "delete.entry" button
Then I should see "confirm.delete.entry" pop-up
And I should see "blood.sugar.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button
When I tap on "cancel.popup.1" button
Then I should see "blood.sugar" screen
When I tap "delete.entry" button
And I tap on "ok.popup" button
Then I should see "logbook" screen
And I should see "blood.sugar.entry.1"

When I tap on "home" option
Then I should see "home" screen

@SmokeTest
Scenario: Smoke Test for Logbook - New Entry - Blood Sugar 

When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "logbook" option
And I tap on "new.entry" option
Then I should see "new.logbook.entry" screen
When I tap on "enter.blood.sugar.new.entry" option
Then I should see CurrentTime in "blood.sugar.time" field
And I should see CurrentDate in "blood.sugar.date" field
When I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
And I tap on "blood.sugar.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "blood.sugar.time" field
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "blood.sugar.date" field
When I tap on "save" button
Then I should see "250" in "mg.dl.logbook.screen" field
When I tap on "blood.sugar.entry.1"
Then I should see "blood.sugar"
And I should see "250" in "blood.sugar.mg.dl" field
And I should see "past.time" in "blood.sugar.time" field
And I should see "delete.entry" button
When I tap on "blood.sugar.mg.dl" field
And I enter "0" into "blood.sugar.mg.dl" field
Then I should see "0" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
And I tap on "blood.sugar.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "save" button
Then I should see "confirm.new.entry" pop-up
When I tap on "yes.its.correct" button
And I tap on "blood.sugar.entry.1"
Then I should see "0" in "blood.sugar.mg.dl" field
When I tap on "back" button
And I tap on "home" option
And I tap on "logbook" option
Then I should see "0" in "mg.dl.logbook.screen" field
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
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "blood.sugar.time" field
When I tap on "save" button
Then I should see "logbook" screen
When I tap on "blood.sugar.entry.1"
And I tap on "blood.sugar.mg.dl" field
And I enter "550" into "blood.sugar.mg.dl" field
Then I should see "550" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "blood.sugar.time" field
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "blood.sugar.date" field
When I tap on "save" button
Then I should see "confirm.new.entry" pop-up
When I tap on "yes.its.correct" button
And I tap on "home" option 
And I tap on "logbook.icon" option
Then I should see "550" in "mg.dl.logbook.screen" field
When I tap on "blood.sugar.entry.1"
And I tap on "delete.entry" button
And I tap on "ok.popup" button
And I tap on "blood.sugar.entry.1"
And I tap on "delete.entry" button
And I tap on "ok.popup" button
Then I should see "logbook" screen
And I should see "welcome.to.your.logbook" text


@RegressionTest
Scenario: Regression Test for Logbook - New Entry - Blood Sugar 

When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "logbook" option
And I tap on "new.entry" option
Then I should see "new.logbook.entry" screen
When I tap on "enter.blood.sugar.new.entry" option
Then I should see CurrentTime in "blood.sugar.time" field
And I should see "blood.sugar" screen
And I should see "blood.sugar.mg.dl" field
And I should see "save" button is disabled
And I should see CurrentDate in "blood.sugar.date" field
When I clear "blood.sugar.mg.dl" field
And I enter "2000" into "blood.sugar.mg.dl" field
Then I should see "2000" in "blood.sugar.mg.dl" field
And I should see "cannot.pick.a.mg.dl.above.1999" text
And I should see "save" button is disabled
When I tap on "blood.sugar.mg.dl" field
And I enter "500" into "blood.sugar.mg.dl" field
Then I should see "500" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
And I tap on "blood.sugar.time" field
And I select "future.time" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
When I tap on "blood.sugar.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "blood.sugar.time" field
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "blood.sugar.date" field
When I tap on "save" button
Then I should see "250" in "mg.dl.logbook.screen" field
When I tap on "blood.sugar.entry.1"
Then I should see "blood.sugar"
And I should see "250" in "blood.sugar.mg.dl" field
And I should see "past.time" in "blood.sugar.time" field
And I should see "delete.entry" button
When I tap on "blood.sugar.mg.dl" field
And I enter "0" into "blood.sugar.mg.dl" field
Then I should see "0" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
And I tap on "blood.sugar.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "save" button
Then I should see "confirm.new.entry" pop-up
And I should see "is.this.information.correct" text
And I should see "0" in "blood.sugar.popup.mg.dl" field
And I should see "past.date" in "blood.sugar.popup.date" field
And I should see "past.time" in "blood.sugar.popup.time" field
And I should see "yes.its.correct" button
And I should see "no.keep.editing" button
When I tap "no.keep.editing" button
Then I should see "blood.sugar" screen
When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel.popup.1" button
And I should see "discard" button
When I tap on "cancel.popup.1" button
Then I should see "blood.sugar" screen
When I tap on "save" button
Then I should see "confirm.new.entry" pop-up
When I tap on "yes.its.correct" button
And I tap on "blood.sugar.entry.1"
Then I should see "0" in "blood.sugar.mg.dl" field
When I tap on "back" button
And I tap on "home" option
And I tap on "logbook" option
Then I should see "0" in "mg.dl.logbook.screen" field
When I set deviceformat to 24 hour
And I enable set automatically in device settings
And I tap on "new.entry" option
Then I should see "new.logbook.entry" screen
When I tap on "enter.blood.sugar.new.entry" option
Then I should see CurrentTime in 24 hour format in "blood.sugar.time" field
And I should see CurrentDate in "blood.sugar.date" field
When I tap on "blood.sugar.mg.dl" field
And I enter "0" into "blood.sugar.mg.dl" field
Then I should see "0" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.mg.dl" field
And I enter "680" into "blood.sugar.mg.dl" field
Then I should see "680" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.time" field
And I select "future.time.24" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
When I tap on "blood.sugar.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "blood.sugar.time" field
When I tap on "save" button
Then I should see "logbook" screen
When I tap on "blood.sugar.entry.1"
And I tap on "blood.sugar.mg.dl" field
Then I should see "back" button is enabled
And I should see "save" button is disabled
And I should see "680" in "blood.sugar.mg.dl" field
And I should see "past.time.24" in "blood.sugar.time" field
And I should see CurrentDate in "blood.sugar.date" field
When I tap on "blood.sugar.mg.dl" field
And I enter "550" into "blood.sugar.mg.dl" field
Then I should see "550" in "blood.sugar.mg.dl" field
When I tap on "blood.sugar.time" field
And I select "future.time.24" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
When I tap on "blood.sugar.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "blood.sugar.time" field
When I tap on "blood.sugar.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "blood.sugar.date" field
When I tap on "save" button
Then I should see "confirm.new.entry" pop-up
And I should see "is.this.information.correct" text
And I should see "550" in "blood.sugar.popup.mg.dl" field
And I should see CurrentDate in "blood.sugar.popup.date" field
And I should see "past.time.24" in "blood.sugar.popup.time" field
And I should see "yes.its.correct" button
And I should see "no.keep.editing" button
When I tap "no.keep.editing" button
Then I should see "blood.sugar" screen
When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel.popup.1" button
And I should see "discard" button
When I tap on "cancel.popup.1" button
Then I should see "blood.sugar" screen
When I tap on "save" button
Then I should see "confirm.new.entry" pop-up
When I tap on "yes.its.correct" button

And I tap on "home" option 
And I tap on "logbook.icon" option

Then I should see "550" in "mg.dl.logbook.screen" field
When I tap on "blood.sugar.entry.1"
And I tap on "delete.entry" button
Then I should see "confirm.delete.entry" pop-up
And I should see "blood.sugar.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button
When I tap on "ok.popup" button
And I tap on "blood.sugar.entry.1"
And I tap on "delete.entry" button
And I tap on "ok.popup" button
Then I should see "logbook" screen
And I should see "welcome.to.your.logbook" text

@Precondition
Scenario: Loging out of Application

When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen

