Feature: MADELYNE HOME SCREEN – MANUAL ENTRY - SOFTWARE TEST PROTOCOL FOR IOS

## PRE-CONDITIONS: 
## Ensure that user has launched Madelyne App as per section 6.1.and registered successfully on MMA App as per section 6.2. 
## Ensure that user is navigated to the Home screen of the Madelyne App as per section 6.3. 
## Ensure that the device follows 12 hours’ time format.
## Ensure that the Bluetooth of the mobile device is disabled.
## Ensure that the mobile device has internet connection.


   
@Precondition
Scenario:Home Screen - Manual Entry- IOS   
################ Steps till Home screen
 Given I launch the Madelyne application
#    And I relaunch the settings app again
# When I set deviceformat to 12 hour
#   And I relaunch the settings app again
# And I enable set automatically in device settings
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
        Then I should see "home" screen
        And I handle Notification pop-up
         And I handle Bluetooth Notification pop-up
          # And I handle ok button
        
@NoRemindersandNoEntries
Scenario:Home Screen - Manual Entry- No Reminders and No Entries

## PRE-CONDITIONS: 
## Ensure that user has launched Madelyne App as per section 6.1.and registered successfully on MMA App as per section 6.2. 
## Ensure that user is navigated to the Home screen of the Madelyne App as per section 6.3. 
## Ensure that the device follows 12 hours’ time format.
## Ensure that the Bluetooth of the mobile device is disabled.
## Ensure that the mobile device has internet connection.
   
################ Steps till Home screen
 
Then I should see "home" screen
 And I wait for "25" seconds
# ## Then I should see "bell.icon"  ## images cannot be automated##
 And I should see "home.date" text
 And I should see "hello.firstname"
 And I should see "get.started.on.your.diabetes.journey" text
  And I should see "manual.up.arrow" button
 And I should see "recent.entries" text
 And I should see "last.4.hours" text

 And I should see "recent.entries" text
## And I should see "this.is.where.you.see.will.activities" text
 And I should see "next.button" button

 When I tap on "next.button" button
 And I wait for "25" seconds
 Then I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
 And I should see "you.can.use.your.connected.devices.to.start.logging.entries" text
 And I should see "no.entries" text

##  And I should see "reminders.icon" 
 And I should see "home.set.reminders" button
##  And I should see "my.reminders" text
# # And I should see "reminders.can.help.keep.you.on.track" text
# # And I should see "not.now.reminders" button
# # And I should see "home.set.reminders" button

# #When I tap on "not.now.reminders" button
And I relaunch the app again
Then I should see "turnon.your.bluetooth" pop-up
 And I should see "you.can.always.add.recent.entries.manually" text
And I should see "not.now.button" button
And I should see "settings" button
When I tap on "settings" button
 And I relaunch the settings app again
# ##-----Verifying Home Screen-----
And I turn ON Bluetooth
 Then I should see "connect.your.devices" pop-up
 And I should see "have.bluetooth.enabled.devices" text
 And I should see "connect.not.now" button
 And I should see "connect" button  
When I tap on "connect.not.now" button
And I handle ok button
And I tap on "more" option
And I tap on "home" option
 Then I should see "home" screen
# ## And I tap on "manual.down.arrow" button
#  ## And I should see "bell.icon"  ## images cannot be automated## 
 And I should see "home.date" text
Then I should see "welcomeback.firstname"
And I should see "you.can.use.your.connected.devices.to.start" text

And I should see "recent.entries" text
 And I should see "last.4.hours" text
  And I tap on "manual.up.arrow" button
  When I tap on "view.more" link
  Then I should see "logbook" screen
   And I relaunch the settings app again
  When I turn OFF Bluetooth
  And I relaunch the app

@ReminderswithNoEntries
Scenario:Home Screen - Manual Entry- Reminders with No Entries

## PRE-CONDITIONS: 
##Execute this test case condition of 7.1 section
##Ensue the device is in 12 hours time format
##Ensure the bluetooth of mobile device is disabled
##Ensure the mobile device has internet connection
# ##make sure user is in home screen

And I relaunch the app
And I handle ok button
Given I should see "home" screen
And I tap on "manual.up.arrow" button
When I tap on "home.set.reminders" button
Then I should see "my.reminders" screen
When I tap on "my.reminders" button
 Then I should see "my.reminders" screen
 When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.blood.sugar" button
And I tap on "reminder.time"
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.mealtime" button
And I tap on "reminder.time"
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.longacting" button
And I tap on "reminder.time"
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.carb.intake" button
And I tap on "reminder.time"
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

And I tap on "back" button
And I wait for "25" seconds
When I relaunch the settings app again
And I disable set automatically in device settings
And I relaunch the settings app again
And I set device time as "6:51 AM"
And I handle time zone popup
# And I wait for "1" minutes
 And I tap on "more" option
 And I tap on "home" option
 Then I should see "home" screen

And I tap on "manual.down.arrow" button
And I should see "home.date" text
# # # And I should see "you.are.all.set.up"
 And I should see "you.can.use.your.connected.devices.to.start" text
  And I should see "manual.up.arrow" button
 And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I tap on "manual.up.arrow" button
 
And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
 And I should see "you.can.use.your.connected.devices.to.start.logging.entries" text
 And I should see "no.entries" text
 #  And I should see "reminders.icon"
#  And I should see "4.upcoming.reminders" button
# When I tap on "4.upcoming.reminders" button
#  When I tap on "back" button
Then I should see "home" screen
 When I relaunch the settings app again
And I set device time as "6:58 AM"
And I wait "2" minutes


Then I should see "7.00am.popup" text
And I should see "this.is.your.reminder.text" text
And I should see "blood.sugar.check.popuptext" text
And I should see "mealtime.insulin.popuptext" text
And I should see "longacting.insulin.popuptext" text
And I should see "enter.carb.intake.popuptext" text
And I should see "ok" button
And I tap on "ok" button
 And I tap on "more" option
 And I tap on "home" option
#  And I should see "reminders.icon"
And I should see "no.upcoming.reminders" text

When I tap on "more" option
 And I tap on "my.reminders" option
And I tap on "my.reminders" button
 Then I should see "my.reminders" screen

 When I tap on "blood.suagr.check.activity.reminders"
 And I tap on "edit.reminder.time"
And I select "08" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "mealtime.activity.reminders"
 And I tap on "edit.reminder.time"
And I select "09" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "longacting.activity.reminders"
 And I tap on "edit.reminder.time"
And I select "09" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "carb.activity.reminders"
 And I tap on "edit.reminder.time"
And I select "09" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
And I tap on "back" button
 And I tap on "home" option
 Then I should see "home" screen
#And I should see "reminders.icon"
 And I should see "4.upcoming.reminders" text

 When I relaunch the settings app again
And I set device time as "7:58 AM"
And I wait "2" minutes


Then I should see "8.00am.popup" text
And I should see "this.is.your.reminder.text" text
And I should see "blood.sugar.check.popuptext" text
And I should see "ok" button

When I tap on "ok" button
When I tap on "more" option
 And I tap on "home" option
 Then I should see "home" screen
 #And I should see "reminders.icon"
 And I should see "3.upcoming.reminders" text

When I tap on "more" option
 And I tap on "my.reminders" option
And I tap on "my.reminders" button
 Then I should see "my.reminders" screen
When I tap on "carb.activity.reminders"
 And I tap on "delete.manual.entry" button
And I tap on "home.delete.reminder" button
And I tap on "back" button

 And I tap on "home" option
 Then I should see "home" screen
#And I should see "reminders.icon"
 And I should see "2.upcoming.reminders" text

 When I relaunch the settings app again
And I set device time as "8:58 PM"
And I wait "2" minutes


Then I should see "9.00pm.popup" text
And I should see "this.is.your.reminder.text" text
And I should see "mealtime.insulin.popuptext" text
And I should see "longacting.insulin.popuptext" text
And I should see "ok" button
And I tap on "ok" button

 When I tap on "more" option
  And I tap on "home" option
  Then I should see "home" screen
   And I should see "no.upcoming.reminders" text

@EntriesWithNoReminders
Scenario:Home Screen - Manual Entry- Entries with NoReminders

## PRE-CONDITIONS: 
##Execute this test case condition of 7.2 section
##Ensue the device is in 12 hours time format
##Ensure the bluetooth of mobile device is disabled
##Ensure the mobile device has internet connection
##make sure user is in home screen
And I relaunch the app
And I handle ok button
When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
When I tap on "save" button
 And I tap on "home" option
 Then I should see "home" screen
#  And I tap on "manual.down.arrow" button
  And I tap on "manual.up.arrow" button

 And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "home.enter.blood.sugar.250" text
#  And I should see "reminders.icon"
 And I should see "no.upcoming.reminders.text" button

 When I tap on "new.entry" option
And I tap on "enter.mealtime.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "novolog" option
And I tap on "back" button
When I tap on "mealtime.units" field
And I enter "151" into "mealtime.units" field
Then I should see "151" in "mealtime.units" field
When I tap on "save" button
 And I tap on "home" option
 Then I should see "home" screen

   And I tap on "manual.down.arrow" button
  And I tap on "manual.up.arrow" button

 And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
And I should see "home.enter.blood.sugar.250" 
And I should see "home.enter.mealtime.insulin.novolog.151"
 #And I should see "reminders.icon"
 And I should see "no.upcoming.reminders.text" button

When I tap on "new.entry" option
And I tap on "enter.long.acting.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "tresiba.u.200" option
And I tap on "back" button
When I tap on "longacting.units" field
And I enter "115" into "longacting.units" field
Then I should see "115" in "longacting.units" field
When I tap on "save" button
 And I tap on "home" option
 Then I should see "home" screen

 And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
And I should see "home.enter.blood.sugar.250" 
And I should see "home.enter.mealtime.insulin.novolog.151"
And I should see "home.long-acting.insulin.tresiba.u.200.115units"
 #And I should see "reminders.icon"
 And I should see "no.upcoming.reminders.text" button

 When I tap on "new.entry" option
And I tap "enter.carb.intake.new.entry" option
And I tap "carb.intake.grams" field
And I enter "100" into "carb.intake.grams" field
Then I should see "100" in "carb.intake.grams" field
When I tap on "save" button
 And I tap on "home" option
 Then I should see "home" screen

 And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
 And I should see "home.enter.carbs.100"
 And I should see "home.long-acting.insulin.tresiba.u.200.115units"
 And I should see "home.enter.mealtime.insulin.novolog.151"
And I should see "home.enter.blood.sugar.250" 
 #And I should see "reminders.icon"
 And I should see "no.upcoming.reminders.text" button

 When I tap on "new.entry" option
And I tap on "enter.health.factors.new.entry" option
And I tap on "stress.checkbox"
And I should see "stress.checkbox" selected
When I tap on "save" button

 And I tap on "home" option
 Then I should see "home" screen
 And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
 And I should see "home.health.factors.stress"
 And I should see "home.enter.carbs.100"
 And I should see "home.long-acting.insulin.tresiba.u.200.115units"
 And I should see "home.enter.mealtime.insulin.novolog.151"
And I should see "home.enter.blood.sugar.250" 
#  And I should see "reminders.icon"
 And I should see "no.upcoming.reminders.text" button

When I tap on "view.more" link
 Then I should see "logbook" screen

And I should see "health.factors.text"
And I should see "stress.text"
And I should see "health.factors.manual.entry.text"
And I should see "health.factors.time.logbook.screen"
##----verifying "carb intake" details 1st entry--------------##

And I should see "carb.intake.text"
And I should see "100.grams.text"
And I should see "carb.intake.manual.entry.text"
And I should see "carb.intake.time.logbook.screen"
       
##----verifying "long acting" details 2nd entry--------------##

And I should see "tresiba.u.200.text"
And I should see "115.units.text"
And I should see "long-acting.manual.entry.text"
And I should see "long-acting.time.logbook.screen"

##----verifying "meal time" details 3rd entry--------------##

And I should see "novolog.text"
And I should see "151.units.text"
And I should see "mealtime.manual.entry.text"
And I should see "mealtime.time.logbook.screen"

##----verifying "blood sugar" details 4th entry--------------##

And I should see "blood.sugar.text"
And I should see "250.mg.dl.text"
And I should see "blood.sugar.time.logbook.screen"
And I should see "blood.sugar.manual.entry.text"
 And I should see "you.have.reached.the.end" text
########
When I tap on "home" option
 Then I should see "home" screen
 When I tap on "home.enter.blood.sugar.250"
 And I clear "blood.sugar.mg.dl" field
And I enter "2000" into "blood.sugar.mg.dl" field
Then I should see "2000" in "blood.sugar.mg.dl" field
And I should see "cannot.pick.a.mg.dl.above.1999" errormessage
And I should see "save" button is disabled

When I clear "blood.sugar.mg.dl" field
And I enter "1999" into "blood.sugar.mg.dl" field
Then I should see "1999" in "blood.sugar.mg.dl" field

When I tap on "blood.sugar.date" field
And I select "future.year" in "year" field
And I tap on "done" button
And I should see "user.cannot.select.a.future.date" errormessage
And I should see "save" button is disabled

When I tap on "blood.sugar.date" field
And I select CurrentYear in "year" List
And I tap on "done" button

When I tap on "blood.sugar.time" field
And I select "device.future.time" in "hour" field
And I tap on "done" button
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

When I tap on "blood.sugar.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
Then I should see "device.current.time" in "blood.sugar.time" field

When I tap on "save" button
And I tap on "yes.its.correct" button

Then I should see "home" screen
 And I should see "home.enter.blood.sugar.1999"

When I tap on "home.enter.mealtime.insulin.novolog.151"
  When I clear "mealtime.units" field
And I enter "501" into "mealtime.units" field
Then I should see "501" in "mealtime.units" field
And I should see "cannot.pick.above.500" errormessage
And I should see "save" button is disabled

When I clear "mealtime.units" field
And I enter "500" into "mealtime.units" field
Then I should see "500" in "mealtime.units" field

When I tap on "mealtime.date" field
And I select "future.year" in "year" field
And I tap on "done" button
Then I should see "user.cannot.select.a.future.date" errormessage
And I should see "save" button is disabled

When I tap on "mealtime.date" field
And I select CurrentYear in "year" List
And I tap on "done" button

When I tap on "mealtime.time" field
And I should see "done" button
When I select "device.future.time" in "hour" field
And I tap on "done" button
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

When I tap on "mealtime.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
Then I should see "device.current.time" in "mealtime.time" field

And I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen
And I should see "home.enter.mealtime.insulin.novolog.500"

When I tap on "home.long-acting.insulin.tresiba.u.200.115units"
  And I clear "longacting.units" field
 And I enter "501" into "longacting.units" field
Then I should see "501" in "longacting.units" field
And I should see "cannot.pick.above.500" errormessage
And I should see "save" button is disabled

And I clear "longacting.units" field
And I enter "500" into "longacting.units" field
Then I should see "500" in "longacting.units" field

When I tap on "longacting.date" field
And I select "future.year" in "year" field
And I tap on "done" button
Then I should see "user.cannot.select.a.future.date" errormessage
And I should see "save" button is disabled

When I tap on "longacting.date" field
And I select CurrentYear in "year" List
And I tap on "done" button

When I tap on "longacting.time" field
And I select "device.future.time" in "hour" field
And I tap on "done" button 
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

When I tap on "longacting.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
Then I should see "device.current.time" in "longacting.time" field
        
And I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen
And I should see "home.long-acting.insulin.tresiba.u.200.500units"

When I tap on "home.enter.carbs.100"
  When I clear "carb.intake.grams" field
And I enter "501" into "carb.intake.grams" field
Then I should see "501" in "carb.intake.grams" field
And I should see "carb.intake.cannot.pick.above.500" errormessage 
And I should see "save" button is disabled

When I clear "carb.intake.grams" field
And I enter "500" into "carb.intake.grams" field
Then I should see "500" in "carb.intake.grams" field

When I tap on "carb.intake.date" field
And I select "future.year" in "year" field
And I tap on "done" button
Then I should see "user.cannot.select.a.future.date" errormessage
And I should see "save" button is disabled

When I tap on "carb.intake.date" field
And I select CurrentYear in "year" List
And I tap on "done" button

When I tap on "carb.intake.time" field
And I should see "done" button
When I select "device.future.time" in "hour" field
And I tap on "done" button
Then I should see "user.cannot.select.a.future.time" errormessage

When I tap on "carb.intake.time" field
And I select "device.past.3hours" in "hour" field
And I tap on "done" button
When I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen
And I should see "home.enter.carbs.500"

When I tap on "home.health.factors.stress"
And I tap on "stress.checkbox"
And I should see "stress.checkbox" Deselected
And I tap on "illness.checkbox"
Then I should see "illness.checkbox" selected
When I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen
And I should see "home.health.factors.illness"

And I relaunch the settings app again
And I set device time as "2:00 AM"
Then I should see "home" screen

When I tap on "new.entry.icon"
  And I tap on "enter.blood.sugar.newentry" option
When I tap on "blood.sugar.mg.dl" field
And I clear "blood.sugar.mg.dl" field
And I enter "121" into "blood.sugar.mg.dl" field
Then I should see "121" in "blood.sugar.mg.dl" field

When I tap on "blood.sugar.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
Then I should see "device.current.time" in "blood.sugar.time" field
When I tap on "save" button
Then I should see "home" screen

When I tap on "new.entry" option
And I tap on "enter.mealtime.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "novolog" option
And I tap on "back" button

When I tap on "mealtime.units" field
And I clear "mealtime.units" field
And I enter "131" into "mealtime.units" field
Then I should see "131" in "mealtime.units" field

When I tap on "mealtime.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
And I tap on "save" button
Then I should see "home" screen

# When I tap on "new.entry" option
# And I tap "enter.carb.intake.new.entry" option
# And I tap "carb.intake.grams" field
# And I clear "carb.intake.grams" field
# And I enter "101" into "carb.intake.grams" field
# Then I should see "101" in "carb.intake.grams" field
# When I tap on "carb.intake.time" field
# And I select "device.past.5hours" in "hour" field
# Andnd I tap on "done" button
# And I tap on "save" button

Then I should see "home" screen
And I should see "home.enter.blood.sugar.121"
And I should see "home.enter.mealtime.insulin.novolog.131"

# When I tap on "more" icon
# And I tap on "login.and.security.option"
# And I handle Logout button
# And I relaunch the app again
# And I handle login to your account screen
# Then I should see "login.to.your.account" screen

@ReminderswithEntries      
Scenario: Home Screen - Manual Entry - Reminders with Entries

## PRE-CONDITIONS: 
##uninstall the madelyne app
## Ensure that user has launched Madelyne App as per section 6.1.and registered successfully on MMA App as per section 6.2. 
## Ensure that user is navigated to the Home screen of the Madelyne App as per section 6.3. 
## Ensure that the device follows 12 hours’ time format.
## Ensure that the Bluetooth of the mobile device is disabled.
## Ensure that the mobile device has internet connection.

##----------Verifying Home Screen--------------

# When I set deviceformat to 12 hour
# And I enable set automatically in device settings
#  And I tap on "back" button
# And I should see "welcome.to.tempotm" screen
#         When I tap "lets.get.started" button
#         And I tap "agree.and.continue" button
#         Then I should see "create.account" screen
#         When I enter "emailaddress" into "emailaddress" field
#         And I enter "password" into "password" field
#         And I tap "next" button
#         And I wait for "25" seconds
#         Then I should see "verify.email" screen
#         When I should connect to email for registration verification
#         Then I verify email
#         And I should see "personal.information" screen
#         When I enter "first.name" into "first.name" field
#         And I enter "last.name" into "last.name" field
#         And I tap "date.of.birth" field
#         And I select "month"
#         And I select "year"
#         And I select "date"
#         And I wait for recording
#         And I tap "done" button
#         And I tap "next" button
#         Then I should see "my.insulin" screen
#         When I tap on "mealtime.insulin.toggle" button
#         And I tap on "long.acting.insulin.toggle" button
#         And I tap on "next" button
#         Then I should see "confirm.insulin.type" pop-up
#         When I tap on "ok.popup" button
#         Then I should see "partner.sharing.code" screen
#         When I tap "i.do.not.have.a.partner.sharing.code" button
#         Then I should see "account.setup" screen
#         When I tap "continue" button
#         Then I should see "tempo.smart" screen
#         When I tap "squire.skip" button
#         Then I should see "connect.blood.sugar.meter" screen
#         When I tap "bgm.skip" button
#         Then I should see "home" screen
When I tap on "next.button" button
# And I should see "my.reminders" text
# And I tap on "home.set.reminders" button
# Then I should see "my.reminders" screen
# When I tap on "back" button
And I relaunch the app again
Then I should see "turnon.your.bluetooth" pop-up
And I tap on "not.now.button" button
#
When I relaunch the settings app again
And I set device time as "6:00 AM"
And I relaunch the app
And I handle ok button

And I tap on "manual.up.arrow" button

When I tap on "home.set.reminders" button
Then I should see "my.reminders" screen
When I tap on "my.reminders" button
 Then I should see "my.reminders" screen
 When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.blood.sugar" button
And I tap on "reminder.time"
And I select "08" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.mealtime" button
And I tap on "reminder.time"
And I select "12" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.longacting" button
And I tap on "reminder.time"
And I select "05" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.carb.intake" button
And I tap on "reminder.time"
And I select "11" in "hour" field
And I select "59" in "minutes" field
And I select "pm" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
And I tap on "back" button

And I tap on "home" option
 Then I should see "home" screen
When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "150" into "blood.sugar.mg.dl" field
Then I should see "150" in "blood.sugar.mg.dl" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.mealtime.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "humalog.u-100" option
And I tap on "back" button
When I tap on "mealtime.units" field
And I enter "100" into "mealtime.units" field
Then I should see "100" in "mealtime.units" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.long.acting.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "basaglar" option
And I tap on "back" button
When I tap on "longacting.units" field
And I enter "70" into "longacting.units" field
Then I should see "70" in "longacting.units" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.long.acting.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "levemir" option
And I tap on "back" button
When I tap on "longacting.units" field
And I enter "160" into "longacting.units" field
Then I should see "160" in "longacting.units" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap "enter.carb.intake.new.entry" option
And I tap "carb.intake.grams" field
And I enter "120" into "carb.intake.grams" field
Then I should see "120" in "carb.intake.grams" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap "enter.carb.intake.new.entry" option
And I tap "carb.intake.grams" field
And I enter "90" into "carb.intake.grams" field
Then I should see "90" in "carb.intake.grams" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.health.factors.new.entry" option
And I tap on "stress.checkbox"
When I tap on "save" button

 And I tap on "home" option
 Then I should see "home" screen
And I should see "home.health.factors.stress"
 And I should see "home.enter.carbs.90"
  And I should see "home.enter.carbs.120"
And I should see "home.long-acting.insulin.levemir.160units"
And I should see "home.long-acting.insulin.basalgar.70units"
And I should see "home.enter.mealtime.insulin.humalog.u.100.100units"
And I should see "home.enter.blood.sugar.150"
And I should see "home.enter.blood.sugar.250"
#  And I should see "4.upcoming.reminders.text" button

 When I tap on "home.enter.blood.sugar.150"
 And I tap on "delete.manual.entry" button
And I tap on "ok.delete.entry" button
Then I should see "home" screen

 When I tap on "home.enter.mealtime.insulin.humalog.u.100.100units"
  And I tap on "delete.manual.entry" button
And I tap on "ok.delete.entry" button
Then I should see "home" screen

 When I tap on "home.long-acting.insulin.basalgar.70units"
  And I tap on "delete.manual.entry" button
And I tap on "ok.delete.entry" button
Then I should see "home" screen

When I tap on "home.enter.carbs.120"
  And I tap on "delete.manual.entry" button
And I tap on "ok.delete.entry" button
Then I should see "home" screen

When I tap on "home.long-acting.insulin.levemir.160units"
When I tap on "mark.as.prime.toggle" button
And I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen

Then I should see "home" screen
 And I should see "home.health.factors.stress"
 And I should see "home.enter.carbs.90"
  And I should see "home.long-acting.insulin.levemir.160units.prime"
And I should see "home.enter.blood.sugar.250"

And I relaunch the settings app again
# And I set device time as "07:59" in 24hr format
 And I set device time in 24 hour format as "07:58"
And I wait "2" minutes

Then I should see "8.00!.popup"
And I should see "this.is.your.reminder.text"
And I should see "blood.sugar.check.popuptext"
And I should see "ok" button
When I tap on "ok" button
Then I should see "home" screen

And I relaunch the settings app again
# And I set device time as "11:59" in 24hr format
 And I set device time in 24 hour format as "11:58"
And I wait "2" minutes

And I should see "12.00!.popup"
And I should see "this.is.your.reminder.text"
And I should see "mealtime.insulin.popuptext"
And I should see "ok" button
When I tap on "ok" button

And I relaunch the settings app again
# And I set device time as "16:59" in 24hr format
 And I set device time in 24 hour format as "16:58"
And I wait "2" minutes

And I should see "17.00!.popup"
And I should see "this.is.your.reminder.text"
And I should see "longacting.insulin.popuptext"
And I should see "ok" button

When I tap on "ok" button
#  And I tap on "manual.up.arrow" button
When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "150" into "blood.sugar.mg.dl" field
Then I should see "150" in "blood.sugar.mg.dl" field
When I tap on "save" button

And I tap on "home" option
 Then I should see "home" screen
And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
 And I should see "home.enter.blood.sugar.150" text
#And I should see "reminders.icon"
 And I should see "1.upcoming.reminders.text" button

#  And I tap on "manual.down.arrow" button
#
 And I relaunch the settings app again
#  And I set device time as "23:58" in 24hr format
 And I set device time in 24 hour format as "23:57"
And I wait "2" minutes

Then I should see "23.59!.popup"
And I should see "this.is.your.reminder.text"
And I should see "enter.carb.intake.popuptext"
And I should see "ok" button

When I tap on "ok" button
# When I tap on "more" option
#  And I tap on "my.reminders" option
# And I tap on "my.reminders" button
#  Then I should see "my.reminders" screen
# When I tap on "home.add.new.reminders" button
#   And I tap on "activity" button
#    And I tap "reminders.enter.mealtime" button
#  And I tap on "reminder.time"
# And I select "00" in "hour" field
# And I select "00" in "minutes" field
# And I tap on "done" button
# And I tap on "save" button
# And I tap on "back" button

# And I tap on "home" option
#  Then I should see "home" screen
#  And I relaunch the settings app again
#   And I set device time in 24 hour format as "23:59"
#  And I handle time zone popup
# And I wait "1" minutes
#   # And I wait for "25" seconds
#   # And I wait for "10" seconds
# When I tap on "ok" button

When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "130" into "blood.sugar.mg.dl" field
Then I should see "130" in "blood.sugar.mg.dl" field
When I tap on "save" button
#  And I relaunch the settings app again
# And I set device time in 24 hour format as "23:59"
# And I handle time zone popup
# And I wait "1" minutes
# And I wait for "25" seconds
#   And I wait for "25" seconds
  # And I wait for "10" seconds

# When I tap on "ok" button
And I tap on "more" option
And I tap on "home" option 
# And I tap on "manual.up.arrow" button 
And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
#  And I should see "home.enter.blood.sugar.130" text
#And I should see "reminders.icon"
#  And I should see "no.upcoming.reminders.text" button

 And I wait for "5" minutes
  And I relaunch the app
  And I handle ok button
  And I tap on "manual.up.arrow" button
 And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
  And I should see "home.enter.blood.sugar.130" text
# #And I should see "reminders.icon"
  And I should see "no.upcoming.reminders.text" button

   And I terminate the app
      And I relaunch the app again
      And I tap on "not.now.button" button
      And I handle ok button
      And I tap on "manual.up.arrow" button
      And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
  And I should see "home.enter.blood.sugar.130" text
# #And I should see "reminders.icon"
  And I should see "no.upcoming.reminders.text" button

And I tap on "no.upcoming.reminders.text" button

When I tap on "mealtime.activity.reminders"
 And I tap on "delete.manual.entry" button
And I tap on "home.delete.reminder" button

When I tap on "blood.suagr.check.activity.reminders"
 And I tap on "delete.manual.entry" button
And I tap on "home.delete.reminder" button

When I tap on "longacting.activity.reminders"
 And I tap on "delete.manual.entry" button
And I tap on "home.delete.reminder" button

When I tap on "carb.activity.reminders"
 And I tap on "delete.manual.entry" button
And I tap on "home.delete.reminder" button
And I tap on "back" button

And I tap on "home" option
 Then I should see "home" screen
  And I should see "home.set.reminders.text" button
# And I should see "home.set.reminders" button

##Offline##############################################
##turn of ineternet indevice settings
# When I tap on "new.entry" option
# And I tap on "enter.blood.sugar.new.entry" option
# When I tap on "blood.sugar.mg.dl" field
# And I enter "550" into "blood.sugar.mg.dl" field
# Then I should see "550" in "blood.sugar.mg.dl" field
# When I tap on "save" button
# Then I should see "home" screen
  # And I should see "home.enter.blood.sugar.130" text
#   When I tap on "new.entry" option
# And I tap on "enter.mealtime.insulin.new.entry" option
# And I tap on "insulin" field
# And I tap on "novolog" option
# And I tap on "back" button
# When I tap on "mealtime.units" field
# And I enter "190" into "mealtime.units" field
# Then I should see "190" in "mealtime.units" field
# When I tap on "save" button

# When I tap on "new.entry" option
# And I tap on "enter.long.acting.insulin.new.entry" option
# And I tap on "insulin" field
# And I tap on "tresaba" option
# And I tap on "back" button
# When I tap on "longacting.units" field
# And I enter "105" into "longacting.units" field
# Then I should see "105" in "longacting.units" field
# When I tap on "save" button


# When I tap on "new.entry" option
# And I tap "enter.carb.intake.new.entry" option
# And I tap "carb.intake.grams" field
# And I enter "50" into "carb.intake.grams" field
# Then I should see "50" in "carb.intake.grams" field
# When I tap on "save" button

# When I tap on "new.entry" option
# And I tap on "enter.health.factors.new.entry" option
# And I tap on "stress.checkbox"
# When I tap on "save" button

#  And I tap on "home" option
#  Then I should see "home" screen
# And I should see "home.health.factors.stress"
#  And I should see "home.enter.carbs.90"
#   And I should see "home.enter.carbs.120"
# And I should see "home.long-acting.insulin.levemir.160units"
# And I should see "home.long-acting.insulin.basalgar.70units"
# And I should see "home.enter.mealtime.insulin.humalog.u.100.100units"
# And I should see "home.enter.blood.sugar.150"
# And I should see "home.enter.blood.sugar.250"
# #  And I should see "4.upcoming.reminders.text" button
# When I tap on "view.more" link
#  Then I should see "logbook" screen

# And I should see "health.factors.text"
# And I should see "stress.text"
# And I should see "health.factors.manual.entry.text"
# And I should see "health.factors.time.logbook.screen"
# ##----verifying "carb intake" details 1st entry--------------##

# And I should see "carb.intake.text"
# And I should see "100.grams.text"
# And I should see "carb.intake.manual.entry.text"
# And I should see "carb.intake.time.logbook.screen"
       
# ##----verifying "long acting" details 2nd entry--------------##

# And I should see "tresiba.u.200.text"
# And I should see "115.units.text"
# And I should see "long-acting.manual.entry.text"
# And I should see "long-acting.time.logbook.screen"

# ##----verifying "meal time" details 3rd entry--------------##

# And I should see "novolog.text"
# And I should see "151.units.text"
# And I should see "mealtime.manual.entry.text"
# And I should see "mealtime.time.logbook.screen"

# ##----verifying "blood sugar" details 4th entry--------------##

# And I should see "blood.sugar.text"
# And I should see "250.mg.dl.text"
# And I should see "blood.sugar.time.logbook.screen"
# And I should see "blood.sugar.manual.entry.text"
#  And I should see "you.have.reached.the.end" text
# ########
# When I tap on "home" option
#  Then I should see "home" screen
#  When I tap on "home.enter.blood.sugar.250"
#  And I clear "blood.sugar.mg.dl" field
# And I enter "2000" into "blood.sugar.mg.dl" field
# Then I should see "2000" in "blood.sugar.mg.dl" field
# And I should see "cannot.pick.a.mg.dl.above.1999" errormessage
# And I should see "save" button is disabled

# When I clear "blood.sugar.mg.dl" field
# And I enter "1999" into "blood.sugar.mg.dl" field
# Then I should see "1999" in "blood.sugar.mg.dl" field

# When I tap on "blood.sugar.date" field
# And I select "future.year" in "year" field
# And I tap on "done" button
# And I should see "user.cannot.select.a.future.date" errormessage
# And I should see "save" button is disabled

# When I tap on "blood.sugar.date" field
# And I select CurrentYear in "year" List
# And I tap on "done" button

# When I tap on "blood.sugar.time" field
# And I select "device.future.time" in "hour" field
# And I tap on "done" button
# Then I should see "user.cannot.select.a.future.time" errormessage
# And I should see "save" button is disabled

# When I tap on "blood.sugar.time" field
# And I select "device.current.time" in "hour" field
# And I tap on "done" button
# Then I should see "device.current.time" in "blood.sugar.time" field

# When I tap on "save" button
# And I tap on "yes.its.correct" button

# Then I should see "home" screen
#  And I should see "home.enter.blood.sugar.1999"

# When I tap on "home.enter.mealtime.insulin.novolog.151"
#   When I clear "mealtime.units" field
# And I enter "501" into "mealtime.units" field
# Then I should see "501" in "mealtime.units" field
# And I should see "cannot.pick.above.500" errormessage
# And I should see "save" button is disabled

# When I clear "mealtime.units" field
# And I enter "500" into "mealtime.units" field
# Then I should see "500" in "mealtime.units" field

# When I tap on "mealtime.date" field
# And I select "future.year" in "year" field
# And I tap on "done" button
# Then I should see "user.cannot.select.a.future.date" errormessage
# And I should see "save" button is disabled

# When I tap on "mealtime.date" field
# And I select CurrentYear in "year" List
# And I tap on "done" button

# When I tap on "mealtime.time" field
# And I should see "done" button
# When I select "device.future.time" in "hour" field
# And I tap on "done" button
# Then I should see "user.cannot.select.a.future.time" errormessage
# And I should see "save" button is disabled

# When I tap on "mealtime.time" field
# And I select "device.current.time" in "hour" field
# And I tap on "done" button
# Then I should see "device.current.time" in "mealtime.time" field

# And I tap on "save" button
# And I tap on "yes.its.correct" button
# Then I should see "home" screen
# And I should see "home.enter.mealtime.insulin.novolog.500"

# When I tap on "home.long-acting.insulin.tresiba.u.200.115units"
#   And I clear "longacting.units" field
#  And I enter "501" into "longacting.units" field
# Then I should see "501" in "longacting.units" field
# And I should see "cannot.pick.above.500" errormessage
# And I should see "save" button is disabled

# And I clear "longacting.units" field
# And I enter "500" into "longacting.units" field
# Then I should see "500" in "longacting.units" field

# When I tap on "longacting.date" field
# And I select "future.year" in "year" field
# And I tap on "done" button
# Then I should see "user.cannot.select.a.future.date" errormessage
# And I should see "save" button is disabled

# When I tap on "longacting.date" field
# And I select CurrentYear in "year" List
# And I tap on "done" button

# When I tap on "longacting.time" field
# And I select "device.future.time" in "hour" field
# And I tap on "done" button 
# Then I should see "user.cannot.select.a.future.time" errormessage
# And I should see "save" button is disabled

# When I tap on "longacting.time" field
# And I select "device.current.time" in "hour" field
# And I tap on "done" button
# Then I should see "device.current.time" in "longacting.time" field
        
# And I tap on "save" button
# And I tap on "yes.its.correct" button
# Then I should see "home" screen
# And I should see "home.long-acting.insulin.tresiba.u.200.500units"

# When I tap on "home.enter.carbs.100"
#   When I clear "carb.intake.grams" field
# And I enter "501" into "carb.intake.grams" field
# Then I should see "501" in "carb.intake.grams" field
# And I should see "carb.intake.cannot.pick.above.500" errormessage 
# And I should see "save" button is disabled

# When I clear "carb.intake.grams" field
# And I enter "500" into "carb.intake.grams" field
# Then I should see "500" in "carb.intake.grams" field

# When I tap on "carb.intake.date" field
# And I select "future.year" in "year" field
# And I tap on "done" button
# Then I should see "user.cannot.select.a.future.date" errormessage
# And I should see "save" button is disabled

# When I tap on "carb.intake.date" field
# And I select CurrentYear in "year" List
# And I tap on "done" button

# When I tap on "carb.intake.time" field
# And I should see "done" button
# When I select "device.future.time" in "hour" field
# And I tap on "done" button
# Then I should see "user.cannot.select.a.future.time" errormessage

# When I tap on "carb.intake.time" field
# And I select "device.past.3hours" in "hour" field
# And I tap on "done" button
# When I tap on "save" button
# And I tap on "yes.its.correct" button
# Then I should see "home" screen
# And I should see "home.enter.carbs.500"

# When I tap on "home.health.factors.stress"
# And I tap on "stress.checkbox"
# And I should see "stress.checkbox" Deselected
# And I tap on "illness.checkbox"
# Then I should see "illness.checkbox" selected
# When I tap on "save" button
# And I tap on "yes.its.correct" button
# Then I should see "home" screen
# And I should see "home.health.factors.illness"

#  When I tap on "home.enter.blood.sugar.150"
#  And I tap on "delete.manual.entry" button
# And I tap on "ok.delete.entry" button
# Then I should see "home" screen

#  When I tap on "home.enter.mealtime.insulin.humalog.u.100.100units"
#   And I tap on "delete.manual.entry" button
# And I tap on "ok.delete.entry" button
# Then I should see "home" screen

#  When I tap on "home.long-acting.insulin.basalgar.70units"
#   And I tap on "delete.manual.entry" button
# And I tap on "ok.delete.entry" button
# Then I should see "home" screen

# When I tap on "home.enter.carbs.120"
#   And I tap on "delete.manual.entry" button
# And I tap on "ok.delete.entry" button
# Then I should see "home" screen
#####################


@SmokeTest
Scenario:Smoke Test for Manual Entry
# When I set deviceformat to 12 hour
# And I enable set automatically in device settings
  Then I should see "home" screen
And I should see "next.button" button
 And I wait for "25" seconds

  When I tap on "next.button" button
  And I relaunch the app again
#  When I tap on "not.now.reminders" button
Then I should see "turnon.your.bluetooth" pop-up
When I tap on "settings" button
And I relaunch the settings app again
And I turn ON Bluetooth 
 Then I should see "connect.your.devices" pop-up
 When I tap on "connect.not.now" button
  And I handle ok button
And I tap on "more" option
And I tap on "home" option
 Then I should see "home" screen

Then I should see "home" screen
And I tap on "manual.up.arrow" button
When I tap on "view.more" link
Then I should see "logbook" screen
And I relaunch the settings app again
 When I turn OFF Bluetooth
  And I relaunch the app
   And I handle ok button
 And I tap on "home" option
 Then I should see "home" screen
And I tap on "manual.up.arrow" button
 
When I tap on "home.set.reminders" button
Then I should see "my.reminders" screen
When I tap on "my.reminders" button
 Then I should see "my.reminders" screen
 When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.blood.sugar" button
And I tap on "reminder.time"
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
And I tap on "back" button
And I tap on "home" option
Then I should see "home" screen

When I relaunch the settings app again
And I set device time as "6:59 AM"
And I wait "1" minutes

And I should see "7.00am.popup"
And I should see "this.is.your.reminder.text"
And I should see "ok" button
When I tap on "ok" button
#  Then I should see "reminders.icon"
 And I should see "no.upcoming.reminders" button

When I tap on "more" option
 And I tap on "my.reminders" option
And I tap on "my.reminders" button
 Then I should see "my.reminders" screen

 When I tap on "blood.suagr.check.activity.reminders"
 And I tap on "edit.reminder.time"
And I select "08" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
When I tap on "back" button

And I tap on "home" option
 Then I should see "home" screen
#And I should see "reminders.icon"
 And I should see "1.upcoming.reminders" button

 When I relaunch the settings app again
And I set device time as "7:59 AM"
And I wait "1" minutes

And I should see "8.00am.popup"
And I should see "this.is.your.reminder.text"
And I should see "ok" button
When I tap on "ok" button
 #And I should see "reminders.icon"
 And I should see "no.upcoming.reminders" button

 When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
When I tap on "save" button
 And I tap on "home" option
 Then I should see "home" screen

 When I tap on "new.entry" option
And I tap on "enter.long.acting.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "tresiba.u.200" option
And I tap on "back" button
When I tap on "longacting.units" field
And I enter "115" into "longacting.units" field
Then I should see "115" in "longacting.units" field
When I tap on "save" button
 Then I should see "home" screen

 And I tap on "manual.down.arrow" button
 And I tap on "manual.up.arrow" button
 And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
And I should see "home.enter.blood.sugar.250" 
And I should see "home.long-acting.insulin.tresiba.u.200.115units"
 #And I should see "reminders.icon"
 And I should see "no.upcoming.reminders.text" button

 When I tap on "view.more" link
 Then I should see "logbook" screen
And I should see "tresiba.u.200.text"
And I should see "115.units.text"
And I should see "blood.sugar.text"
And I should see "250.mg.dl.text"

And I should see "you.have.reached.the.end" text
When I tap on "home" option
 Then I should see "home" screen

 When I tap on "home.enter.blood.sugar.250"
 When I clear "blood.sugar.mg.dl" field
And I enter "1999" into "blood.sugar.mg.dl" field
Then I should see "1999" in "blood.sugar.mg.dl" field

When I tap on "blood.sugar.date" field
And I select CurrentYear in "year" List
And I tap on "done" button
Then I should see CurrentDate in "blood.sugar.date" field

When I tap on "blood.sugar.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
Then I should see "device.current.time" in "blood.sugar.time" field

When I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen
 And I should see "home.enter.blood.sugar.1999"

Then I should see "home" screen
When I tap on "home.long-acting.insulin.tresiba.u.200.115units"
  And I clear "longacting.units" field
And I enter "500" into "longacting.units" field
Then I should see "500" in "longacting.units" field

When I tap on "longacting.date" field
And I select CurrentYear in "year" List
And I tap on "done" button
Then I should see CurrentDate in "longacting.date" field

When I tap on "longacting.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
Then I should see "device.current.time" in "longacting.time" field
        
And I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen
And I should see "home.long-acting.insulin.tresiba.u.200.500units"
Then I should see "home" screen

When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "150" into "blood.sugar.mg.dl" field
Then I should see "150" in "blood.sugar.mg.dl" field
When I tap on "save" button

And I tap on "home" option
 Then I should see "home" screen
 And I should see "home.enter.blood.sugar.150"
And I should see "home.enter.blood.sugar.250"

When I tap on "home.enter.blood.sugar.250"
 And I tap on "delete.manual.entry" button
And I tap on "ok.delete.entry" button
Then I should see "home" screen

And I relaunch the settings app again
And I set device time in 24 hour format as "07:59"
# And I handle time zone popup
And I wait "1" minutes

And I should see "8.00!.popup"
And I should see "this.is.your.reminder.text"
And I should see "mealtime.insulin.popuptext"
And I should see "ok" button

And I tap on "ok" option
 Then I should see "home" screen
   And I terminate the app
      And I relaunch the app again
      And I tap on "not.now.button" button
      And I handle ok button
         And I tap on "manual.up.arrow" button
#  And I should see "no.upcoming.reminders" button
  And I should see "no.upcoming.reminders.text" button

When I tap on "no.upcoming.reminders.text" button
# When I tap on "no.upcoming.reminders" button
When I tap on "blood.suagr.check.activity.reminders"
 And I tap on "delete.manual.entry" button
And I tap on "home.delete.reminder" button

And I tap on "back" button
And I tap on "home" option
 Then I should see "home" screen
  And I should see "home.set.reminders.text" button
  # And I should see "home.set.reminders" button


@RegressionTest
Scenario:Regression Test for Manual Entry
# When I set deviceformat to 12 hour
# And I enable set automatically in device settings
Then I should see "home" screen
And I should see "next.button" button
 And I wait for "5" seconds
   When I tap on "next.button" button
#  When I tap on "not.now.reminders" button
And I relaunch the app again
Then I should see "turnon.your.bluetooth" pop-up
When I tap on "settings" button
And I relaunch the settings app again
And I turn ON Bluetooth 
 Then I should see "connect.your.devices" pop-up
 When I tap on "connect.not.now" button
  And I handle ok button
And I tap on "more" option
And I tap on "home" option
 Then I should see "home" screen

 And I tap on "manual.up.arrow" button
When I tap on "view.more" link
Then I should see "logbook" screen
And I relaunch the settings app again
 When I turn OFF Bluetooth
 And I relaunch the app
  And I handle ok button
 And I tap on "home" option
 Then I should see "home" screen
 And I tap on "manual.up.arrow" button
When I tap on "home.set.reminders" button
Then I should see "my.reminders" screen
When I tap on "my.reminders" button
 Then I should see "my.reminders" screen
 When I tap on "home.add.new.reminders" button
  And I tap on "activity" button
 And I tap "reminders.enter.blood.sugar" button
And I tap on "reminder.time"
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
And I tap on "back" button
And I tap on "home" option
Then I should see "home" screen

# When I relaunch the settings app again
# And I disable set automatically in device settings
# And I relaunch the settings app again
# And I set device time as "6:51 AM"
# And I handle time zone popup

# # And I tap on "manual.up.arrow" button

# And I should see "recent.entries" text
#  And I should see "last.4.hours" text
#  And I should see "view.more" link
#  And I should see "you.can.use.your.connected.devices.to.start.logging.entries" text
#  And I should see "no.entries" text
# And I should see "1.upcoming.reminders" button

When I relaunch the settings app again
And I set device time as "6:59 AM"
And I handle time zone popup
And I wait "1" minutes

And I should see "7.00am.popup"
And I should see "this.is.your.reminder.text"
And I should see "ok" button
When I tap on "ok" button
#  Then I should see "reminders.icon"
 And I should see "no.upcoming.reminders" button

When I tap on "more" option
 And I tap on "my.reminders" option
And I tap on "my.reminders" button
 Then I should see "my.reminders" screen

 When I tap on "blood.suagr.check.activity.reminders"
 And I tap on "edit.reminder.time"
And I select "08" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button

When I tap on "back" button
Then I should see "home" screen
And I tap on "home" option
And I should see "1.upcoming.reminders" button

When I relaunch the settings app again
And I set device time as "7:59 AM"
And I wait "1" minutes

And I should see "8.00am.popup"
And I should see "this.is.your.reminder.text"
And I should see "ok" button
When I tap on "ok" button
And I should see "1.upcoming.reminders" button

When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
When I tap on "save" button
 And I tap on "home" option
 Then I should see "home" screen

 When I tap on "new.entry" option
And I tap on "enter.long.acting.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "tresiba.u.200" option
And I tap on "back" button
When I tap on "longacting.units" field
And I enter "115" into "longacting.units" field
Then I should see "115" in "longacting.units" field
When I tap on "save" button
 Then I should see "home" screen

 And I tap on "manual.down.arrow" button
 And I tap on "manual.up.arrow" button
And I should see "recent.entries" text
 And I should see "last.4.hours" text
 And I should see "view.more" link
And I should see "home.enter.blood.sugar.250" 
And I should see "home.long-acting.insulin.tresiba.u.200.115units"
 #And I should see "reminders.icon"
 And I should see "no.upcoming.reminders.text" button

When I tap on "view.more" link
 Then I should see "logbook" screen
And I should see "tresiba.u.200.text"
And I should see "115.units.text"
And I should see "blood.sugar.text"
And I should see "250.mg.dl.text"
And I should see "you.have.reached.the.end" text
When I tap on "home" option
 Then I should see "home" screen

 When I tap on "home.enter.blood.sugar.250"
 And I clear "blood.sugar.mg.dl" field
And I enter "2000" into "blood.sugar.mg.dl" field
Then I should see "2000" in "blood.sugar.mg.dl" field
And I should see "cannot.pick.a.mg.dl.above.1999" errormessage
And I should see "save" button is disabled

When I clear "blood.sugar.mg.dl" field
And I enter "1999" into "blood.sugar.mg.dl" field
Then I should see "1999" in "blood.sugar.mg.dl" field

When I tap on "blood.sugar.date" field
And I select "future.year" in "year" field
And I tap on "done" button
Then I should see "blood.sugar.date" text
And I should see "user.cannot.select.a.future.date" errormessage
And I should see "save" button is disabled

When I tap on "blood.sugar.date" field
And I select CurrentYear in "year" List
And I tap on "done" button

When I tap on "blood.sugar.time" field
And I select "device.future.time" in "hour" field
And I tap on "done" button
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

When I tap on "blood.sugar.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
Then I should see "device.current.time" in "blood.sugar.time" field

When I tap on "save" button
And I tap on "yes.its.correct" button

Then I should see "home" screen
 And I should see "home.enter.blood.sugar.1999"

When I tap on "home.long-acting.insulin.tresiba.u.200.115units"
  And I clear "longacting.units" field
 And I enter "501" into "longacting.units" field
Then I should see "501" in "longacting.units" field
And I should see "cannot.pick.above.500" errormessage
And I should see "save" button is disabled

And I clear "longacting.units" field
And I enter "500" into "longacting.units" field
Then I should see "500" in "longacting.units" field

When I tap on "longacting.date" field
And I select "future.year" in "year" field
And I tap on "done" button
Then I should see "user.cannot.select.a.future.date" errormessage
And I should see "save" button is disabled

When I tap on "longacting.date" field
And I select CurrentYear in "year" List
And I tap on "done" button
Then I should see CurrentDate in "longacting.date" field

When I tap on "longacting.time" field
And I select "device.future.time" in "hour" field
And I tap on "done" button 
Then I should see "user.cannot.select.a.future.time" errormessage
And I should see "save" button is disabled

When I tap on "longacting.time" field
And I select "device.current.time" in "hour" field
And I tap on "done" button
Then I should see "device.current.time" in "longacting.time" field
        
And I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen
And I should see "home.long-acting.insulin.tresiba.u.200.500units"

When I relaunch the settings app again
And I set device time as "6:00 AM"


When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "150" into "blood.sugar.mg.dl" field
Then I should see "150" in "blood.sugar.mg.dl" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.blood.sugar.new.entry" option
When I tap on "blood.sugar.mg.dl" field
And I enter "250" into "blood.sugar.mg.dl" field
Then I should see "250" in "blood.sugar.mg.dl" field
When I tap on "save" button

 When I tap on "new.entry" option
And I tap on "enter.mealtime.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "humalog.u-100" option
And I tap on "back" button
When I tap on "mealtime.units" field
And I enter "100" into "mealtime.units" field
Then I should see "100" in "mealtime.units" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.long.acting.insulin.new.entry" option
And I tap on "insulin" field
And I tap on "levemir" option
And I tap on "back" button
When I tap on "longacting.units" field
And I enter "160" into "longacting.units" field
Then I should see "160" in "longacting.units" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap "enter.carb.intake.new.entry" option
And I tap "carb.intake.grams" field
And I enter "90" into "carb.intake.grams" field
Then I should see "90" in "carb.intake.grams" field
When I tap on "save" button

When I tap on "new.entry" option
And I tap on "enter.health.factors.new.entry" option
And I tap on "stress.checkbox"
When I tap on "save" button

And I tap on "home" option
 Then I should see "home" screen
 And I should see "home.health.factors.stress"
 And I should see "home.enter.carbs.90"
  And I should see "home.long-acting.insulin.levemir.160units"
And I should see "home.enter.mealtime.insulin.humalog.u.100.100units"
And I should see "home.enter.blood.sugar.150"
And I should see "home.enter.blood.sugar.250"

When I tap on "home.enter.blood.sugar.150"
 And I tap on "delete.manual.entry" button
And I tap on "ok.delete.entry" button
Then I should see "home" screen

When I tap on "home.long-acting.insulin.levemir.160units"
When I tap on "mark.as.prime.toggle" button
And I tap on "save" button
And I tap on "yes.its.correct" button
Then I should see "home" screen

 And I should see "home.health.factors.stress"
 And I should see "home.enter.carbs.90"
 And I should see "home.enter.mealtime.insulin.humalog.u.100.100units"
  And I should see "home.long-acting.insulin.levemir.160units.prime"
  And I should see "home.enter.blood.sugar.250"

And I relaunch the settings app again
And I set device time in 24 hour format as "07:59"
 And I wait "1" minutes

Then I should see "8.00!.popup"
And I should see "this.is.your.reminder.text"
And I should see "blood.sugar.check.popuptext"
And I should see "ok" button
When I tap on "ok" button

   And I terminate the app
      And I relaunch the app again
      And I tap on "not.now.button" button
       And I handle ok button
         And I tap on "manual.up.arrow" button
 And I should see "no.upcoming.reminders.text" button
When I tap on "no.upcoming.reminders.text" button

When I tap on "blood.suagr.check.activity.reminders"
 And I tap on "delete.manual.entry" button
And I tap on "home.delete.reminder" button

And I tap on "back" button
And I tap on "home" option
 Then I should see "home" screen
  And I should see "home.set.reminders.text" button


@Precondition
Scenario:Logging out of Application    
When I tap on "more" icon
And I tap on "login.and.security.option"
And I handle Logout button
And I relaunch the app again
And I handle login to your account screen
Then I should see "login.to.your.account" screen


