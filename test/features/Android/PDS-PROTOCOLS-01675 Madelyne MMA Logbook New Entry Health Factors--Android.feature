Feature: LOGBOOK - NEW ENTRY- HEALTH FACTORS - SOFTWARE TEST PROTOCOL-ANDROID

# PRE-CONDITIONS:
# make sure that madelyne mma is installed on the Android device
# make sure that device’s time is set to current date And time.
# current date: ________________ 2. current time: _______________.
# make sure that device is connected to internet.
# make sure that user navigated till home page
       
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

    
@HealthFactors12hr
Scenario: LOGBOOK NEW ENTRY HEALTH FACTORS ADD, VIEW, EDIT 12 HOUR - ANDROID

Given I should see "home" screen
And I set deviceformat to 12 hour
And I enable set automatically in device settings
When I tap on "logbook.icon" option
And I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
Then I should see "health.factors" screen
When I tap on "back" button

# #---------tap on "new entry" option------------------
# #---------tap on "enter.health.factors" option------------------
# #---------select "activity" checkbox from the List in "health factors"-------------

And I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
Then I should see CurrentTime in "health.factors.time" field
When I tap on "activity.checkbox"
Then I should see "activity.checkbox" selected
And I should see "save" button is enabled

# #----select "illness" and "stress" checkbox from the List in "health factors"----------------

When I tap on "illness.checkbox"
And I tap on "stress.checkbox"
Then I should see "illness.checkbox" selected
And I should see "stress.checkbox" selected
And I should see "save" button is enabled

# #----Deselect "illness" and "stress" checkbox from the List in "health factors"----------------
# #----Verify date field----------

When I tap on "illness.checkbox"
And I tap on "stress.checkbox"
Then I should see "illness.checkbox" Deselected
And I should see "stress.checkbox" Deselected
And I should see CurrentDate in "health.factors.date" field in MM-DD-YYYY format
And I should see "save" button is enabled

# #------tap on "date.field.1"----------------------

When I tap on "health.factors.date" field
Then I should see "ok.button"
And I should see "cancel.calander" button
##And I should see "current.date" is encircled And highlighted     ####cannot be automated


# #-----tap on "cancel.button2" button-----------
# #------tap on "date.field.1"----------------------

When I tap on "cancel.calander" button
And I tap on "health.factors.date" field

# #------select future date---------
# #When I tap on "year" button
# #And I select "future.year" in "year" List  ####cannot be automated
# #Then I should be unable to select "future.date"   ####cannot be automated
# #------select the current date----------------
# #------tap on "ok.button" button--------------------

And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "health.factors.date" field
And I should see "save" button is enabled

# #----tap on time field--------------


When I tap on "health.factors.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button

# #----tap on "cancel.button2" button-----

When I tap on "cancel.button2" button

####------Selecting future time----######

And I tap on "health.factors.time" field
# And I wait for "1" minutes
And I select "future.time" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

####------Selecting past time----######

When I tap on "health.factors.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "health.factors.time" field
And I should see "save" button is enabled

# #---tap on "date" field----------------------------
# #----select the date which is before the current date-------------------
# #-----tap on "ok.button" button---------------

When I tap on "health.factors.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "health.factors.date" field
And I should see "save" button is enabled

####------Selecting past time----######

When I tap on "health.factors.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "health.factors.time" field
And I should see "save" button is enabled

# #-------tap on "save" button----------------------

When I tap "save" button
Then I should see "logbook.icon"

# #----verifying "health factors" details--------------

When I tap on "logbook.icon" option
Then I should see "health.factors.entry.1"
And I should see "health.factors.text"
And I should see "activity.text.1"
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text

# #----tap on saved "health factors" details in the logbook-----------

When I tap on "health.factors.entry.1" option
Then I should see "health.factors" screen
And I should see "back" button
And I should see "activity.checkbox" selected
And I should see "past.time" in "health.factors.time" field
And I should see "past.date" in "health.factors.date" field
And I should see "delete.health.factors" button
And I should see "save" button is disabled

# #---tap on "back" button--------------
# #------tap on saved "health factors" details in the logbook---------
# #------tap on "illness" checkbox------------

When I tap on "back" button
And I tap on "health.factors.entry.1" option
And I tap on "illness.checkbox"
Then I should see "health.factors" screen
And I should see "back" button
And I should see "save" button
And I should see "activity.text"
And I should see "activity.checkbox" selected
And I should see "illness.text"
And I should see "illness.checkbox" selected
And I should see "stress.text"
And I should see "stress.checkbox" Deselected
And I should see "past.time" in "health.factors.time" field
And I should see "past.date" in "health.factors.date" field
And I should see "delete.health.factors" button

# #---deselect all the activities under "health factors" filed-------------

When I tap on "activity.checkbox"
And I tap on "illness.checkbox"
Then I should see "activity.checkbox" Deselected
And I should see "illness.checkbox" Deselected
And I should see "stress.checkbox" Deselected

# #------select "illness" checkbox from the List in "health factors"--------------

When I tap on "illness.checkbox"
Then I should see "illness.checkbox" selected
And I should see "save" button is enabled

# #-----tap on "date" field-------------

When I tap on "health.factors.date" field

# #-----select future date------------
# #------tap on "ok.button" button----------
# #When I tap on "year" button
# #And I select "future.year" in "year" List ####cannot be automated
# #And I tap on "ok.button" button ####cannot be automated
# #Then I should be unable to select "future.date"   ####cannot be automated
# #-----select current date------------
# #------tap on "ok.button" button----------

And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "health.factors.date" field
And I should see "save" button is enabled

# #-----tap on "time" field-------------

When I tap on "health.factors.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button

####------Selecting future time----######

When I select "future.time" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

# #----------entering time less than current time in time.field.1---------------

When I tap on "health.factors.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "save" button is enabled

# #----------entering past date in date.field.1---------------

When I tap on "health.factors.date" field
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "health.factors.date" field
And I should see "save" button is enabled

# #----------entering valid time less than current time in time.field.1---------------

When I tap on "health.factors.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "save" button is enabled
When I tap on "save" button
       
Then I should see "confirm.new.entry" screen
And I should see "health.factor.is.this.information.correct" text
And I should see "illness" in "logbook.health.factors" field
And I should see "past.time" in "logbook.health.factors.time" field
And I should see "past.date" in "logbook.health.factors.date" field
And I should see "yes.its.correct" button
And I should see "no.keep.editing" button
When I tap on "no.keep.editing" button
Then I should see "health.factors" screen
And I should see "back" button
And I should see "save" button
And I should see "illness.checkbox" selected
And I should see "past.time" in "health.factors.time" field
And I should see "past.date" in "health.factors.date" field
And I should see "delete.health.factors" button
When I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "logbook" screen

# #----verifying "health factors" details--------------

When I tap on "logbook.icon" option
Then I should see "health.factors.entry.1"
And I should see "health.factors.text"
And I should see "illness.text.1"
And I should see "manual.entry" text
And I should see "time.logbook.screen"

#----tap on saved health factors details in logbook-------
#-----deselect all activites-----------
#-----select activity checkbox----------------
#----tap on back-----

When I tap on "health.factors.entry.1" option
And I tap on "illness.checkbox"
And I tap on "activity.checkbox"
And I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button

#----tap on cancel-------

When I tap on "cancel" button
Then I should see "health.factors" screen

#-----tap on back-----------
#-----tap on discard------

When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen

# #----verifying "health factors" details--------------

When I tap on "logbook.icon" option
Then I should see "health.factors.entry.1"
And I should see "health.factors.text"
And I should see "illness.text.1"
And I should see "manual.entry" text
And I should see "time.logbook.screen"

When I tap on "home" option
Then I should see "home" screen


@HealthFactors24hr
Scenario: LOGBOOK- NEW ENTRY- HEALTH FACTORS- ADD, VIEW, EDIT, DELETE- 24 HOUR- ANDROID

# # PRE-CONDITIONS:
# # make sure that madelyne mma is installed on the Android device
# # make sure that tester needs to execute the previous test case (7.1) before executing this test case (7.2) And make sure that all the test cases executed in the same device.
# # make sure that device time is set to 24 hour format.
# # make sure that device’s time is set to current date And time.
# # 1.current date: ________________ 2. current time: _______________.
# # make sure that device is connected to internet.
# # make sure that user navigated till home page

Given I should see "home" screen
When I set deviceformat to 24 hour
And I enable set automatically in device settings
And I tap on "logbook.icon"
And I tap on "health.factors.entry.1" option
And I tap on "health.factors.date" field
And I tap on "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "cancel.button2" button
And I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "health.factors" screen
And I should see CurrentDate in "health.factors.date" field in MM-DD-YYYY format
When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "health.factors.date" field
And I tap on "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
And I select "future.time.24" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

# #------tap on "time" field------------------
# #------select the time which is less than the current time which is recorded in pre-condition-------------
# #-----tap on "ok.button" button---------------
#-------tap on save-----------
#------tap on yes its correct--------

When I tap on "health.factors.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button
When I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "logbook" screen
And I should see "health.factors.text"
And I should see "illness.text.1"
And I should see "manual.entry" text
And I should see "time.logbook.screen"
When I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
Then I should see "confirm.delete.entry" pop-up
And I should see "health.factors.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button

#-----tap on cancel-------
#----tap on delete--------
#----tap on ok------------

When I tap on "cancel.popup.1" button
Then I should see "health.factors" screen
When I tap on "delete.health.factors" button
Then I should see "confirm.delete.entry" pop-up
When I tap on "ok.popup" button
Then I should see "logbook" screen

# #----verify the "health factors" entry is deleted in the "home" screen---------------

And I should see "welcome.to.your.logbook" text
When I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
Then I should see "health.factors" screen
And I should see CurrentTime in 24 hour format in "health.factors.time" field
When I tap on "illness.checkbox"
Then I should see "illness.checkbox" selected
And I should see "save" button is enabled
When I tap on "save" button
Then I should see "logbook" screen
And I should see "health.factors.entry.1"

# #---tap on saved "health factors" details in logbook----------

When I tap on "health.factors.entry.1" option
Then I should see "health.factors" screen
And I should see "back" button is enabled
And I should see "illness.checkbox" selected
And I should see CurrentDate in "health.factors.date" field in MM-DD-YYYY format
And I should see "health.factors.time" field
And I should see "delete.health.factors" button
And I should see "save" button is disabled

# #-----tap on "stress" checkbox from the List in "health factors"-------

When I tap on "stress.checkbox"
And I tap on "save" button
And I tap on "yes.its.correct" button
And I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
And I tap on "ok.popup" button
Then I should see "logbook" screen

# #-----verify the "health factors" entry is deleted in "logbook" screen-----------

And I should see "welcome.to.your.logbook" text

# #-----tap on "new entry" option--------------

When I tap "new.entry" button

# #-----tap on "enter health factors" option------------------------

And I tap on "enter.health.factors.new.entry" option
And I tap on "activity.checkbox"
And I tap on "illness.checkbox"
And I tap on "save" button
Then I should see "logbook" screen

# #-----tap on saved "health factors" details in the logbook---------------

When I tap on "health.factors.entry.1" option

# #---select "stress" checkbox from the List in "health factors"----------------

And I tap on "stress.checkbox"
And I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "logbook" screen
And I should see "health.factors.entry.1"
And I should see "health.factors.text"
And I should see "activity.illness.stress.text"
And I should see "manual.entry" text
And I should see "time.logbook.screen"
When I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
Then I should see "confirm.delete.entry" pop-up
And I should see "health.factors.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button
When I tap on "ok.popup" button
Then I should see "logbook" screen

# #-----verify the "health factors" entry is deleted in "logbook" screen-----------

And I should see "welcome.to.your.logbook" text

# #------tap on "new entry" option------------

When I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
And I tap on "activity.checkbox"
And I tap on "save" button
Then I should see "logbook" screen

# #----verifying "health factors" details--------------

And I should see "health.factors.entry.1"

# #----tap on saved "health factors" details in the logbook-----------

When I tap on "health.factors.entry.1" option
And I tap on "activity.checkbox"
And I tap on "stress.checkbox"
And I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "health.factors" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen
And I should see "health.factors.entry.1"
When I tap on "health.factors.entry.1" option
Then I should see "health.factors" screen
And I should see "back" button
And I should see "source.manual.entry" text
And I should see "activity.checkbox" selected
And I should see CurrentDate in "health.factors.date" field in MM-DD-YYYY format
And I should see "health.factors.time" field
And I should see "delete.health.factors" button
And I should see "save" button

# #-----tap on "delete" button---------------

When I tap on "delete.health.factors" button
And I tap on "ok.popup" button
Then I should see "logbook" screen

# #----verify the "health factors" entry is deleted in "logbook" screen------------

And I should see "welcome.to.your.logbook" text
When I tap on "home" option
Then I should see "home" screen

@SmokeTest
Scenario: Smoke Test for Logbook - New Entry - Health Factors

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "logbook" option
And I tap on "new.entry" option
Then I should see "new.logbook.entry" screen
When I tap on "enter.health.factors.new.entry" option
Then I should see "health.factors" screen
And I should see CurrentTime in "health.factors.time" field
And I should see CurrentDate in "health.factors.date" field
When I tap on "activity.checkbox"
Then I should see "activity.checkbox" selected
And I should see "save" button is enabled
When I tap on "illness.checkbox"
And I tap on "stress.checkbox"
And I tap on "health.factors.date" field
Then I should see "ok.button"
And I should see "cancel.calander" button
When I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "health.factors.date" field
When I tap on "health.factors.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "health.factors.time" field
When I tap "save" button
Then I should see "logbook.icon"
And I should see "health.factors.entry.1"
And I should see "health.factors.text"
And I should see "activity.illness.stress.text"
And I should see "manual.entry" text
And I should see "time.logbook.screen"
When I tap on "health.factors.entry.1" option
Then I should see "health.factors" screen
And I should see "back" button is enabled
And I should see "source.manual.entry" text
And I should see "activity.checkbox" selected
And I should see "illness.checkbox" selected
And I should see "stress.checkbox" selected
And I should see "past.time" in "health.factors.time" field
And I should see "past.date" in "health.factors.date" field
And I should see "delete.health.factors" button
When I tap on "back" button
And I tap on "health.factors.entry.1" option
And I tap on "activity.checkbox"
And I tap on "illness.checkbox"
And I tap on "stress.checkbox"
Then I should see "activity.checkbox" Deselected
And I should see "illness.checkbox" Deselected
And I should see "stress.checkbox" Deselected
When I tap on "illness.checkbox"
And I tap on "health.factors.date" field
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "save" button
Then I should see "confirm.new.entry" screen
And I should see "health.factor.is.this.information.correct" text
And I should see "illness" in "logbook.health.factors" field
And I should see "past.time" in "logbook.health.factors.time" field
And I should see "past.date" in "logbook.health.factors.date" field
And I should see "yes.its.correct" button
And I should see "no.keep.editing" button
When I tap on "no.keep.editing" button
Then I should see "health.factors" screen
When I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "logbook" screen
When I set deviceformat to 24 hour
And I enable set automatically in device settings
And I tap on "logbook.icon"
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "health.factors.date" field
And I tap on "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
And I tap on "cancel.button2" button
And I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "health.factors" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
Then I should see "confirm.delete.entry" pop-up
And I should see "health.factors.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button
When I tap on "cancel.popup.1" button
Then I should see "health.factors" screen
When I tap on "delete.health.factors" button
Then I should see "confirm.delete.entry" pop-up
When I tap on "ok.popup" button
Then I should see "logbook" screen
When I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
And I tap on "illness.checkbox"
And I tap on "health.factors.date" field
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "save" button
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "stress.checkbox"
And I tap on "save" button
And I tap on "yes.its.correct" button
And I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
And I tap on "ok.popup" button
Then I should see "logbook" screen
And I should see "welcome.to.your.logbook" text
And I should see "home.icon"
When I tap on "home" option
Then I should see "home" screen
    
@RegressionTest
Scenario: Regression Test for Logbook - New Entry - Health Factors

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "logbook" option
And I tap on "new.entry" option
Then I should see "new.logbook.entry" screen
When I tap on "enter.health.factors.new.entry" option
Then I should see "health.factors" screen
And I should see CurrentTime in "health.factors.time" field
And I should see "save" button is disabled
And I should see "back" button is enabled
And I should see "activity.text"
And I should see "activity.checkbox" Deselected
And I should see "illness.text"
And I should see "illness.checkbox" Deselected
And I should see "stress.text"
And I should see "stress.checkbox" Deselected
And I should see CurrentDate in "health.factors.date" field
When I tap on "back" button
And I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
Then I should see CurrentTime in "health.factors.time" field
When I tap on "activity.checkbox"
Then I should see "activity.checkbox" selected
And I should see "save" button is enabled
When I tap on "illness.checkbox"
And I tap on "stress.checkbox"
Then I should see "illness.checkbox" selected
And I should see "stress.checkbox" selected
And I should see "save" button is enabled
When I tap on "health.factors.date" field
Then I should see "ok.button"
And I should see "cancel.calander" button
When I tap on "cancel.calander" button
Then I should see "health.factors" screen
When I tap on "health.factors.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "health.factors.date" field
And I should see "save" button is enabled
When I tap on "health.factors.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button
When I select "future.time" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled
When I tap on "health.factors.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "health.factors.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "health.factors.date" field
When I tap "save" button
Then I should see "logbook.icon"
When I tap on "logbook.icon" option
Then I should see "health.factors.entry.1"
And I should see "health.factors.text"
And I should see "activity.illness.stress.text"
And I should see "manual.entry" text
And I should see "time.logbook.screen"
When I tap on "health.factors.entry.1" option
Then I should see "health.factors" screen
And I should see "back" button is enabled
And I should see "source.manual.entry" text
And I should see "activity.checkbox" selected
And I should see "illness.checkbox" selected
And I should see "stress.checkbox" selected
And I should see "past.time" in "health.factors.time" field
And I should see "past.date" in "health.factors.date" field
And I should see "delete.health.factors" button
When I tap on "activity.checkbox"
And I tap on "illness.checkbox"
And I tap on "stress.checkbox"
Then I should see "activity.checkbox" Deselected
And I should see "illness.checkbox" Deselected
And I should see "stress.checkbox" Deselected
When I tap on "illness.checkbox"
Then I should see "illness.checkbox" selected
When I tap on "health.factors.date" field
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
And I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "save" button
Then I should see "confirm.new.entry" screen
And I should see "health.factor.is.this.information.correct" text
And I should see "illness" in "logbook.health.factors" field
And I should see "past.time" in "logbook.health.factors.time" field
And I should see "past.date" in "logbook.health.factors.date" field
And I should see "yes.its.correct" button
And I should see "no.keep.editing" button
When I tap on "no.keep.editing" button
Then I should see "health.factors" screen
And I should see "back" button
And I should see "illness.checkbox" selected
And I should see "past.time" in "health.factors.time" field
And I should see "past.date" in "health.factors.date" field
And I should see "delete.health.factors" button
When I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "logbook" screen
When I set deviceformat to 24 hour
And I enable set automatically in device settings
And I tap on "logbook.icon"
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "health.factors.date" field
And I tap on "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "cancel.button2" button
And I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "health.factors" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "health.factors.date" field
And I tap on "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
And I select "future.time.24" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled
When I tap on "health.factors.time" field
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button
When I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "health.factors.time" field
And I should see "save" button is enabled
When I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "logbook" screen
And I should see "health.factors.text"
And I should see "illness.text.1"
And I should see "manual.entry" text
And I should see "time.logbook.screen"
When I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
Then I should see "confirm.delete.entry" pop-up
And I should see "health.factors.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button
When I tap on "cancel.popup.1" button
Then I should see "health.factors" screen
When I tap on "delete.health.factors" button
Then I should see "confirm.delete.entry" pop-up
When I tap on "ok.popup" button
Then I should see "logbook" screen
And I should see "welcome.to.your.logbook" text
And I should see "home.icon"
When I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
And I tap on "illness.checkbox"
And I tap on "health.factors.date" field
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
And I tap on "health.factors.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
And I tap on "save" button
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "stress.checkbox"
And I tap on "save" button
And I tap on "yes.its.correct" button
And I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
And I tap on "ok.popup" button
Then I should see "logbook" screen
When I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
And I tap on "activity.checkbox"
And I tap on "illness.checkbox"
And I tap on "save" button
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "stress.checkbox"
And I tap on "save" button
And I tap on "yes.its.correct" button
And I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
And I tap on "ok.popup" button
Then I should see "logbook" screen
When I tap "new.entry" button
And I tap on "enter.health.factors.new.entry" option
And I tap on "activity.checkbox"
And I tap on "save" button
Then I should see "logbook" screen
When I tap on "health.factors.entry.1" option
And I tap on "delete.health.factors" button
And I tap on "ok.popup" button
Then I should see "logbook" screen
And I should see "welcome.to.your.logbook" text
And I should see "home.icon"
When I tap on "home" option
Then I should see "home" screen
    
@Precondition
Scenario: Loging out of Application

When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen
