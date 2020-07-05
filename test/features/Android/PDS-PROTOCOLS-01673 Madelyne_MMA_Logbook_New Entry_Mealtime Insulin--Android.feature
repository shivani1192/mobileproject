Feature:LOGBOOK - NEW ENTRY- MEALTIME INSULIN- SOFTWARE TEST PROTOCOL FOR ANDROID

# PRE-CONDITIONS:

# ensure that this protocol should execute in sequence only.
# ensure that user has launched madelyne app  
# ensure that user is registered successfully on mma app
# ensure that user is navigated to the home screen of the madelyne app
# ensure that the Internet connection is turned on.  
# make sure that the in the device settings, the date And time is the current. time in 12-hour format hh:mm <am/pm>.
# ensure that in the more menu - schedule And reminders deselect all the check boxes in all the time blocks.

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


@MealtimeInsulin12hr
Scenario: LOGBOOK- NEW ENTRY- MEALTIME INSULIN- ADD, VIEW, EDIT-12 HOUR-ANDROID

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings

#---------tap on "logbook" option--------------
#---------tap on "new.entry" option--------------

And I tap on "logbook.icon" option
Then I should see "logbook" screen
When I tap "new.entry" button
And I tap on "enter.mealtime.insulin.new.entry" option
Then I should see "mealtime.insulin" screen
And I should see CurrentTime in "mealtime.time" field
And I should see CurrentDate in "mealtime.date" field in MM-DD-YYYY format
And I should see "save" button is disabled
And I should see "back" button is enabled
And I should see "other.mealtime.insulin" in "mealtime.insulin.field" field
And I should see "mealtime.units" field

#----------tap on "mealtime.insulin.field"------------------

When I tap on "mealtime.insulin.field" field
Then I should see "mealtime.insulin.text" text
And I should see "back" button is enabled
And I should see "other.mealtime.insulin.tick.mark" text

#----List of available mealtime insulins-------------#

And I should see "admelog"
And I should see "admelog.100.units.ml.u.100"
And I should see "admelog.insulin.lispro.injection"

And I should see "apidra"
And I should see "apidra.100.units.ml.u.100"
And I should see "apidra.insulin.glulisine.injection"

And I should see "humalog.u.100"
And I should see "humalog.u.100.100.units.ml.u.100"
And I should see "humalog.u.100.insulin.lispro.injection"

And I should see "humalog.u.200"
And I should see "humalog.u.200.200.units.ml.u.200"
And I should see "humalog.u.200.insulin.lispro.injection"

And I should see "insulin.lispro.injection"
And I should see "insulin.lispro.injection.100.units.ml.u.100"
And I should see "insulin.lispro.injection.insulin.lispro.injection"

And I should see "novolog"
And I should see "novolog.100.units.ml.u.100"
And I should see "novolog.insulin.aspart.injection"

#--------tap on apidra brand from the list-------------------

When I tap on "apidra"
Then I should see "mealtime.insulin" screen
And I should see "mealtime.insulin.field" text

#----tap on "units" field------#

When I tap on "mealtime.units" field
And I enter "501" into "mealtime.units" field
Then I should see "501" in "mealtime.units" field
And I should see "cannot.pick.a.unit.above.500.mealtime" errormessage
And I should see "save" button is disabled

@MealtimeInsulin12hr
Scenario Outline: Entering Mealtime Insulin Units

When I clear "mealtime.units" field
And I enter "<MealtimeInsulin>" into "mealtime.units" field
Then I should see "<MealtimeInsulin>" in "mealtime.units" field
And I should see "save" button is enabled
Examples:
| MealtimeInsulin |
| 0               |
| 500             |
| 151             |

@MealtimeInsulin12hr
Scenario: Verification of Mealtime Insulin Entry

#-----tap on "mealtime.date"---------

When I tap on "mealtime.date" field
Then I should see "ok.button"
And I should see "cancel.calander" button

#-----tap on "cancel.button2" button----------------

When I tap on "cancel.calander" button
Then I should see "mealtime.insulin" screen
And I should see CurrentDate in "mealtime.date" field

#-----selecting future date--------------

# When I tap on "mealtime.date"
#And I tap on "year" button
#And I select "future.day" in "date" List ### this step cannot be done as future date is locked And hence cannot be selected
# Then I should be unable to pick future date

#----selecting current date-----------------

When I tap on "mealtime.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "mealtime.date" field
And I should see "save" button is enabled

#----tap on "mealtime.time"--------------

When I tap on "mealtime.time" field
Then I should see "hour.clock"
And I should see "cancel.button2" button
And I should see "ok.button" button

#-----tap on "cancel.button2" button----------------

When I tap on "cancel.button2" button
Then I should see "mealtime.insulin" screen

#------entering future time in time field-------#

When I tap on "mealtime.time" field
And I select "future.time" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

#----------entering past time in time.field.1---------------

When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
Then I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "ok.button"
Then I should see "past.time" in "mealtime.time" field
And I should see "save" button is enabled

#----------entering past date in date.field.1---------------

When I tap on "mealtime.date"
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "mealtime.date" field
And I should see "save" button is enabled

#----------tap on "save" button-------------

When I tap on "save" button
Then I should see "logbook" screen

#----verifying "mealtime" details--------------

And I should see "mealtime.entry.1"
And I should see "apidra.text" text              
And I should see "151.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text

#----------tap on mealtime insulin details-----------

When I tap on "mealtime.entry.1"
Then I should see "mealtime.insulin" screen
And I should see "back" button is enabled
And I should see "source.manual.entry" text
And I should see "mealtime.insulin" text
And I should see "151" in "mealtime.units" field
And I should see "mark.as.prime.air.shot" text
And I should see "information.icon.mealtime" icon
And I should see "toggle.button.mealtime" button 
And I should see "past.time" in "mealtime.time" field
And I should see "past.date" in "mealtime.date" field
And I should see "delete.mealtime" button

#------tap on back button--------------------------
#----tap on "mealtime insulin" entry which is recently added-------------
#-------tap on more information icon in mark as prime field--------------------------

When I tap on "back" button
And I tap on "mealtime.entry.1"
And I tap on "information.icon.mealtime" icon
Then I should see "prime.air.shot.screen" screen
And I should see "done" button

#----tap on "done" button------

When I tap on "done" button
And I tap on "toggle.button.mealtime" button 
Then I should see "toggle.button.mealtime" button is enabled
And I should see "151.prime.air.shot" in "mealtime.units" field


#------tap on insulin.field.3------------
#--------tap on humalog.u.100-------------------

When I tap on "mealtime.insulin.field" field
And I tap on "humalog.u.100"
Then I should see "mealtime.insulin" screen
And I should see "mealtime.insulin.field" text

#----tap on "units" field------#

When I tap on "mealtime.units" field
And I enter "95" into "mealtime.units" field
Then I should see "95" in "mealtime.units" field

#-----tap on "save" button------------

When I tap on "save" button
Then I should see "confirm.new.entry" screen
And I should see "is.this.information.correct" text
And I should see "prime.air.shot.95" in "logbook.mealtime.units" field
And I should see "past.date" in "logbook.mealtime.date" field
And I should see "past.time" in "logbook.mealtime.time" field
And I should see "yes.its.correct" button 
And I should see "no.keep.editing" button

When I tap on "no.keep.editing" button
Then I should see "mealtime.insulin" screen

When I tap on "back" button 
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "mealtime.insulin" screen

When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen

#----tap on "mealtime.insulin" details in logbook----------#
#-----tap on units field------------#
#-----clear and enter 250 units-----------------#
#-----tap on toggle button-----------#

When I tap on "mealtime.entry.1"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "250" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button
Then I should see "toggle.button.mealtime" button is enabled
And I should see "250.prime.air.shot" in "mealtime.units" field


#-----selecting future date--------------

# When I tap on "mealtime.date"
#And I tap on "year" button
# And I select "future.date" in "date" field ### this step cannot be done as future date is locked And hence cannot be selected
# Then I should be unable to pick future date

#----selecting current date-----------------

When I tap on "mealtime.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "mealtime.date" field
And I should see "save" button is enabled

#----tap on "mealtime.time"--------------

When I tap on "mealtime.time" field
Then I should see "hour.clock"
And I should see "cancel.button2" button
And I should see "ok.button" button

#-----tap on "cancel.button2" button----------------

When I tap on "cancel.button2" button
Then I should see "mealtime.insulin" screen

#------entering future time in time field-------#

When I tap on "mealtime.time" field
And I select "future.time" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

#----------entering past time in time.field.1---------------

When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
Then I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "ok.button"
Then I should see "past.time" in "mealtime.time" field
And I should see "save" button is enabled

When I tap on "save" button

Then I should see "confirm.new.entry" screen
And I should see "is.this.information.correct" text
And I should see "prime.air.shot.250" in "logbook.mealtime.units" field
And I should see "past.date" in "logbook.mealtime.date" field
And I should see "past.time" in "logbook.mealtime.time" field
And I should see "yes.its.correct" button 
And I should see "no.keep.editing" button


And I tap on "no.keep.editing" button
Then I should see "mealtime.insulin" screen

When I tap on "back" button 
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
And I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen


#----tap on "mealtime.insulin" details in logbook----------#
#----select any insulin value----------#
#-----enter valid value in units field------------#
#-----tap on save button-----------------#
#-----tap on yes it's correct button-----------#

When I tap on "mealtime.entry.1"
And I tap on "mealtime.insulin.field" field
And I tap on "humalog.u.100"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "2" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button

And I tap on "save" button 
And I tap on "yes.its.correct" button 
Then I should see "logbook" screen

# #----verifying "mealtime" details--------------

And I should see "mealtime.entry.1"
And I should see "humalog.u.100.text" text
And I should see "prime.air.shot.2.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text

@MealtimeInsulin24hr
Scenario: LOGBOOK-NEW ENTRY-MEALTIME INSULIN-ADD,VIEW,EDIT-24 HOURS-ANDROID

# PRE-CONDITIONS:

# ensure that this protocol should execute in sequence only.
# ensure that the record is created as per section 7.1.
# make sure that the device is connected to the internet.
# make sure that the in the device settings, the date And time is the current one in 24-hour format

Given I should see "logbook" screen
When I set deviceformat to 24 hour

#---------tap on "new.entry" option--------------
#-----tap on "enter mealtime insulin" option in "new.logbook.entry" screen---------------------
#-----tap on "mealtime.insulin.field"------------------

And I tap "new.entry" button
And I tap on "enter.mealtime.insulin.new.entry" option

Then I should see "mealtime.insulin" screen
And I should see CurrentTime in 24 hour format in "mealtime.time" field
And I should see "save" button is disabled
And I should see "back" button is enabled
And I should see "other.mealtime.insulin" in "mealtime.insulin.field" field
And I should see "mealtime.units" field
And I should see CurrentDate in "mealtime.date" field in MM-DD-YYYY format

#--------tap on humalog.u.200-------------------
#---------tap on "mealtime.units"-------------------
#-------enter value 100 in "mealtime.units"------------

When I tap on "mealtime.insulin.field" field
And I tap on "humalog.u.200"
And I tap on "mealtime.units" field
And I enter "100" into "mealtime.units" field
Then I should see "100" in "mealtime.units" field
And I should see "save" button is enabled

#----tap on "mealtime.date"---------------------
#----tap on ok button---------

When I tap on "mealtime.date" field
And I tap on "ok.button" button
Then I should see CurrentDate in "mealtime.date" field
And I should see "save" button is enabled

#----tap on "mealtime.time"---------------------

When I tap on "mealtime.time" field
Then I should see "hour.clock"
And I should see "cancel.button2" button
And I should see "ok.button" button

#----tap on cancel option-----#

When I tap on "cancel.button2" button
Then I should see "mealtime.insulin" screen

#----tap on "mealtime.time"---------------------#
#----tap on ok button--------#

When I tap on "mealtime.time" field
And I tap on "ok.button" button
Then I should see "mealtime.time" text
And I should see "save" button is enabled

#---Selecting future time--------#

When I tap on "mealtime.time" field
And I select "future.time.24" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

#--- tap on "mealtime.time"------------------------------

When I tap on "mealtime.time" field
And I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "mealtime.time" field
And I should see "save" button is enabled

#-----tap on save button-------------------

When I tap on "save" button
Then I should see "logbook" screen

# #----verifying "mealtime" details--------------

And I should see "mealtime.entry.1"
And I should see "humalog.u.200.text" text
And I should see "100.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text

#----------tap on mealtime insulin details-----------

When I tap on "mealtime.entry.1"
Then I should see "mealtime.insulin" screen
And I should see "back" button is enabled
And I should see "save" button is disabled
And I should see "source.manual.entry" text
And I should see "mealtime.insulin" text
And I should see "100" in "mealtime.units" field
And I should see "mark.as.prime.air.shot" text
And I should see "information.icon.mealtime" icon
And I should see "toggle.button.mealtime" button 
And I should see "past.time.24" in "mealtime.time" field
And I should see "past.date" in "mealtime.date" field
And I should see "delete.mealtime" button

#------tap on back button--------------------------
#----tap on "mealtime insulin" entry which is recently added-------------
#------tap on insulin.field.3------------
#--------tap on novolog-------------------

When I tap on "back" button
And I tap on "mealtime.entry.1"
And I tap on "mealtime.insulin.field" field
And I tap on "novolog"
Then I should see "mealtime.insulin" screen
And I should see "mealtime.insulin.field" text

#-----tap on "mealtime.units"------------

When I tap on "mealtime.units" field
And I clear "mealtime.units" field

#-------entering value 250 in "mealtime.units"------------

And I enter "250" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button
Then I should see "toggle.button.mealtime" button is enabled
And I should see "250.prime.air.shot" in "mealtime.units" field
And I should see "save" button is enabled

#---tap on date field------#
#----------entering past date in date.field.3---------------#
#-----tap on "ok" button--------------#

When I tap on "mealtime.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "mealtime.date" field
And I should see "save" button is enabled

#-----------tap on time field--------#
#----------entering required time in time.field.3-------------

When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
Then I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "ok.button"
Then I should see "past.time.24" in "mealtime.time" field
And I should see "save" button is enabled

#-----tap on "save" button------------

When I tap on "save" button
Then I should see "confirm.new.entry" screen
And I should see "is.this.information.correct" text
And I should see "prime.air.shot.250" in "logbook.mealtime.units" field
And I should see "past.date" in "logbook.mealtime.date" field
And I should see "past.time.24" in "logbook.mealtime.time" field
And I should see "yes.its.correct" button 
And I should see "no.keep.editing" button

When I tap on "no.keep.editing" button
Then I should see "mealtime.insulin" screen

When I tap on "back" button 
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "mealtime.insulin" screen

When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen

#----tap on "mealtime.insulin" details in logbook----------#
#----select any insulin value----------#
#-----enter valid value in units field------------#
#-----enable prime toggle------------#
#-----tap on save button-----------------#
#-----tap on yes it's correct button-----------#

When I tap on "mealtime.entry.1"
And I tap on "mealtime.insulin.field" field
And I tap on "apidra"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "55" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button
And I tap on "save" button 
And I tap on "yes.its.correct" button 
Then I should see "logbook" screen
When I tap on "mealtime.entry.1"
And I tap on "back" button
Then I should see "logbook" screen

# #----verifying "mealtime" details--------------

And I should see "mealtime.entry.1"
And I should see "apidra.text" text 
And I should see "prime.air.shot.55.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text

When I tap on "home" option
Then I should see "home" screen

@MealtimeInsulin24hr
Scenario: LOGBOOK-NEW ENTRY-MEAL-TIME-INSULIN-DELETE-ANDROID

# PRE-CONDITIONS:

# ensure that this protocol should execute in sequence only.
# ensure user already created two logbook entries as per sections 7.1 And 7.2.
# ensure that the Internet connection is turned on.

Given I should see "home" screen
When I tap on "logbook.icon" option
Then I should see "logbook" screen

#-----Deleting mealtime entry created in 24 hour format (2nd Scenario)----#

When I tap on "mealtime.entry.1"
Then I should see "mealtime.insulin" screen
When I tap on "delete.mealtime" button
Then I should see "confirm.delete.entry" pop-up
And I should see "mealtime.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button
When I tap on "cancel.popup.1" button
And I tap on "delete.mealtime" button
Then I should see "confirm.delete.entry" pop-up
When I tap on "ok.popup" button
Then I should see "logbook" screen

When I tap on "home" option
Then I should see "home" screen

@SmokeTest
Scenario: Smoke Test for Logbook - New Entry - Mealtime Insulin

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "logbook.icon"
And I tap on "new.entry.icon"
Then I should see "new.logbook.entry" screen
When I tap on "enter.mealtime.insulin.new.entry" option
Then I should see "mealtime.insulin" screen
And I should see CurrentTime in "mealtime.time" field
And I should see CurrentDate in "mealtime.date" field
When I tap on "mealtime.insulin.field" field
Then I should see "mealtime.insulin.text" text
When I tap on "apidra"
Then I should see "mealtime.insulin" screen
When I tap on "mealtime.units" field
And I enter "151" into "mealtime.units" field
Then I should see "151" in "mealtime.units" field
And I should see "save" button is enabled
When I tap on "mealtime.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "mealtime.date" field
And I should see "save" button is enabled
When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
Then I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "ok.button"
Then I should see "past.time" in "mealtime.time" field
And I should see "save" button is enabled
When I tap on "save" button
Then I should see "logbook" screen
When I tap on "mealtime.entry.1"
Then I should see "mealtime.insulin" screen
When I tap on "information.icon.mealtime" icon
Then I should see "prime.air.shot.screen" screen
And I should see "done" button
When I tap on "done" button
And I tap on "mealtime.insulin.field" field
And I tap on "humalog.u.100"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "15" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button
Then I should see "toggle.button.mealtime" button is enabled  
And I should see "15.prime.air.shot" in "mealtime.units" field
When I tap on "mealtime.date"
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "mealtime.date" field
And I should see "save" button is enabled
When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "mealtime.time" field
And I should see "save" button is enabled
When I tap on "save" button
Then I should see "confirm.new.entry" screen
And I should see "is.this.information.correct" text
And I should see "prime.air.shot.15" in "logbook.mealtime.units" field
And I should see "past.date" in "logbook.mealtime.date" field
And I should see "past.time" in "logbook.mealtime.time" field
And I should see "yes.its.correct" button 
And I should see "no.keep.editing" button
When I tap on "no.keep.editing" button
Then I should see "mealtime.insulin" screen
When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "mealtime.insulin" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen
When I tap on "mealtime.entry.1"
And I tap on "mealtime.insulin.field" field
And I tap on "humalog.u.100"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "15" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button
And I tap on "save" button 
And I tap on "yes.its.correct" button 
Then I should see "logbook" screen
And I should see "mealtime.entry.1"
And I should see "humalog.u.100.text" text
And I should see "prime.air.shot.15.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text
When I set deviceformat to 24 hour
And I enable set automatically in device settings
And I tap "new.entry" button
And I tap on "enter.mealtime.insulin.new.entry" option
Then I should see "mealtime.insulin" screen
And I should see CurrentTime in 24 hour format in "mealtime.time" field
And I should see CurrentDate in "mealtime.date" field
When I tap on "mealtime.insulin.field" field
And I tap on "humalog.u.200"
And I tap on "mealtime.units" field
And I enter "100" into "mealtime.units" field
Then I should see "100" in "mealtime.units" field
And I should see "save" button is enabled
When I tap on "mealtime.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "mealtime.date" field
And I should see "save" button is enabled
When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
Then I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "ok.button"
Then I should see "past.time.24" in "mealtime.time" field
And I should see "save" button is enabled
When I tap on "save" button
Then I should see "logbook" screen
And I should see "mealtime.entry.1"
And I should see "humalog.u.200.text" text
And I should see "mealtime.100.units.entry" text
When I tap on "mealtime.100.units.entry" option
Then I should see "mealtime.insulin" screen
When I tap on "mealtime.insulin.field" field
And I tap on "novolog"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "250" into "mealtime.units" field
Then I should see "250" in "mealtime.units" field
When I tap on "save" button
Then I should see "confirm.new.entry" screen
When I tap on "no.keep.editing" button
And I tap on "back" button 
Then I should see "discard.changes" pop-up
When I tap on "cancel" button
Then I should see "mealtime.insulin" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen
When I tap on "mealtime.100.units.entry" option
And I tap on "mealtime.insulin.field" field
And I tap on "novolog"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "250" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button
And I tap on "save" button 
And I tap on "yes.its.correct" button 
Then I should see "logbook" screen
When I tap on "mealtime.entry.1"
And I tap on "back" button
Then I should see "logbook" screen
And I should see "mealtime.entry.1"
And I should see "novolog.text" text
And I should see "prime.air.shot.250.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text
When I tap on "prime.air.shot.250.units.mealtime" option
Then I should see "mealtime.insulin" screen
When I tap on "delete.mealtime" button
Then I should see "confirm.delete.entry" pop-up
And I should see "mealtime.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button
When I tap on "cancel.popup.1" button
Then I should see "mealtime.insulin" screen
When I tap on "delete.mealtime" button
And I tap on "ok.popup" button
Then I should see "logbook" screen


@RegressionTest
Scenario: Regression Test for Logbook - New Entry - Mealtime Insulin

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "logbook" option
And I tap on "new.entry" option
Then I should see "new.logbook.entry" screen
When I tap on "enter.mealtime.insulin.new.entry" option
Then I should see "mealtime.insulin" screen
And I should see CurrentTime in "mealtime.time" field
And I should see CurrentDate in "mealtime.date" field
When I tap on "mealtime.insulin.field" field
Then I should see "mealtime.insulin.text" text
When I tap on "apidra"
Then I should see "mealtime.insulin" screen
When I tap on "mealtime.units" field
And I enter "501" into "mealtime.units" field
Then I should see "501" in "mealtime.units" field
And I should see "cannot.pick.a.unit.above.500.mealtime" errormessage
And I should see "save" button is disabled
When I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "151" into "mealtime.units" field
Then I should see "151" in "mealtime.units" field
And I should see "save" button is enabled
When I tap on "mealtime.date" field
And I tap "year" button
And I select "current.year" in "year" field
And I tap on "ok.button"
Then I should see CurrentDate in "mealtime.date" field
And I should see "save" button is enabled
When I tap on "mealtime.time" field
And I select "future.time" in "hour" field
And I tap on "ok.button"
Then I should see "user.cannot.select.a.future.time" errormessage
When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time" in "mealtime.time" field
When I tap on "mealtime.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "mealtime.date" field
When I tap on "save" button
Then I should see "logbook" screen
And I should see "mealtime.entry.1"
And I should see "apidra.text" text
And I should see "151.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text
When I tap on "mealtime.entry.1"
And I tap on "information.icon.mealtime" icon
Then I should see "prime.air.shot.screen" screen
And I should see "done" button
When I tap on "done" button
Then I should see "mealtime.insulin" screen
When I tap on "mealtime.insulin.field" field
And I tap on "humalog.u.100"
Then I should see "mealtime.insulin" screen
When I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "15" into "mealtime.units" field
Then I should see "15" in "mealtime.units" field
And I should see "save" button is enabled
When I tap on "toggle.button.mealtime" button
Then I should see "toggle.button.mealtime" button is enabled  
And I should see "15.prime.air.shot" in "mealtime.units" field
When I tap on "mealtime.date"
And I tap on "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "mealtime.date" field
And I should see "save" button is enabled
When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour" in "hour" field
Then I select "past.minutes" in "minutes" field
When I tap on "ok.button"
Then I should see "past.time" in "mealtime.time" field
And I should see "save" button is enabled
When I tap on "save" button
Then I should see "confirm.new.entry" screen
And I should see "is.this.information.correct" text
And I should see "prime.air.shot.15" in "logbook.mealtime.units" field
And I should see "past.date" in "logbook.mealtime.date" field
And I should see "past.time" in "logbook.mealtime.time" field
And I should see "yes.its.correct" button 
And I should see "no.keep.editing" button
When I tap on "no.keep.editing" button
Then I should see "mealtime.insulin" screen
When I tap on "back" button 
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "mealtime.insulin" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen
When I tap on "mealtime.entry.1"
And I tap on "mealtime.insulin.field" field
And I tap on "humalog.u.100"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "15" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button
And I tap on "save" button 
And I tap on "yes.its.correct" button 
Then I should see "logbook" screen
And I should see "mealtime.entry.1"
And I should see "humalog.u.100.text" text
And I should see "prime.air.shot.15.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text
When I set deviceformat to 24 hour
And I enable set automatically in device settings
And I tap "new.entry" button
Then I should see "new.logbook.entry" screen
When I tap on "enter.mealtime.insulin.new.entry" option
Then I should see "mealtime.insulin" screen
And I should see CurrentTime in 24 hour format in "mealtime.time" field
And I should see CurrentDate in "mealtime.date" field
When I tap on "mealtime.insulin.field" field
Then I should see "mealtime.insulin.text" text
When I tap on "humalog.u.200"
Then I should see "mealtime.insulin" screen
When I tap on "mealtime.units" field
And I enter "501" into "mealtime.units" field
Then I should see "501" in "mealtime.units" field
And I should see "cannot.pick.a.unit.above.500.mealtime" errormessage
And I should see "save" button is disabled
When I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "100" into "mealtime.units" field
Then I should see "100" in "mealtime.units" field
And I should see "save" button is enabled
When I tap on "mealtime.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "mealtime.date" field
And I should see "save" button is enabled
When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
Then I should see "ok.button"
And I should see "cancel.button2" button
When I tap on "ok.button"
Then I should see "past.time.24" in "mealtime.time" field
And I should see "save" button is enabled
When I tap on "save" button
Then I should see "logbook" screen
And I should see "mealtime.entry.1"
And I should see "humalog.u.200.text" text
When I tap on "mealtime.entry.1"
Then I should see "mealtime.insulin" screen
When I tap on "mealtime.insulin.field" field
Then I should see "mealtime.insulin.text" text
When I tap on "novolog"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "250" into "mealtime.units" field
Then I should see "250" in "mealtime.units" field
When I tap on "mealtime.date" field
And I tap "year" button
And I select "past.year" in "year" field
And I tap on "ok.button"
Then I should see "past.date" in "mealtime.date" field
When I tap on "mealtime.time" field
Then I should see "hour.clock"
When I select "past.hour.24" in "hour" field
And I select "past.minutes" in "minutes" field
And I tap on "ok.button"
Then I should see "past.time.24" in "mealtime.time" field
And I should see "save" button is enabled
When I tap on "save" button
Then I should see "confirm.new.entry" screen
When I tap on "no.keep.editing" button
Then I should see "mealtime.insulin" screen
When I tap on "back" button 
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "mealtime.insulin" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "logbook" screen
When I tap on "mealtime.entry.1"
And I tap on "mealtime.insulin.field" field
And I tap on "novolog"
And I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "250" into "mealtime.units" field
And I tap on "toggle.button.mealtime" button
And I tap on "save" button 
And I tap on "yes.its.correct" button 
Then I should see "logbook" screen
When I tap on "mealtime.entry.1"
And I tap on "back" button
Then I should see "logbook" screen
And I should see "mealtime.entry.1"
And I should see "novolog.text" text
And I should see "prime.air.shot.250.units.mealtime" text
And I should see "manual.entry" text
And I should see "time.logbook.screen"
And I should see "you.have.reached.the.end" text
When I tap on "mealtime.entry.1"
Then I should see "mealtime.insulin" screen
When I tap on "delete.mealtime" button
Then I should see "confirm.delete.entry" pop-up
And I should see "mealtime.are.you.sure.delete.entry" text
And I should see "ok.popup" button
And I should see "cancel.popup.1" button
When I tap on "cancel.popup.1" button
Then I should see "mealtime.insulin" screen
When I tap on "delete.mealtime" button
And I tap on "ok.popup" button
Then I should see "logbook" screen

@Precondition
Scenario: Logging out of Application

When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen