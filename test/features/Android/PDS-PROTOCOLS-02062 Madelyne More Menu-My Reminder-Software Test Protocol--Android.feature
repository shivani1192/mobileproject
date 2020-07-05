Feature: MADELYNE MORE MENU - MY REMINDERS - SOFTWARE TEST PROTOCOL - ANDROID

# PRE-CONDITIONS: 

# Ensure that user has installed Madelyne App as per section 6.1.
# Ensure that user is registered successfully on MMA App as per section 6.2
# Ensure that user is navigated to the Home screen of the Madelyne MMA App as per section 6.3.
# Ensure that internet connection is turned ON.
# Make sure that Mealtime Insulin is selected in More Menu, My Insulin.
# Make sure that in the device settings, the date and time is the current one in 12-hour format (Time format is specific to OS).

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
Scenario: Verification of More Menu - My Reminders - Mealtime Insulin - 12 Hours

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "more" option

And I tap on "more.menu.my.insulin" option
And I tap "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap "back" button
And I tap on "discard" button
And I tap "back" button


And I tap on "more.menu.my.reminders" option
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                              ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.can.help.keep.you" text
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                # symbol cannot be automated

When I tap on "back" button
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.add.new" button
Then I should see "my.reminders" screen
And I should see "my.reminders" title 
And I should see "reminder.cancel" button
# And I should see "orange.header"                                                              ## cannot be automated 
And I should see "add.new.reminders" text
And I should see "select.the.activity.and.the.time" text
And I should see "reminders.activity" field 
And I should see "time.of.daily.reminder" field 
And I should see "reminders.save" button is disabled

When I tap on "reminder.cancel" button
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button

When I tap on "reminders.cancel" button
And I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"

When I tap on "reminders.blood.sugar.check" option
Then I should see "reminders.blood.sugar.check" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button

When I tap on "cancel.button2" button
And I tap on "time.of.daily.reminder" field 
And I select "10" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
Then I should see "10.00.am" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "my.reminders.1" text
And I should see "reminders.blood.sugar.check" option
And I should see "10.00.am"
And I should see "reminders.add.new" button

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
Then I should see "reminders.mealtime.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "1" in "hour" field
And I select "30" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "1.30.pm" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "my.reminders.1" text
And I should see "reminders.blood.sugar.check" option
And I should see "10.00.am"
And I should see "reminders.mealtime.insulin.dose" option
And I should see "1.30.pm"
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                        # symbol cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.enter.carb.intake" option
Then I should see "reminders.enter.carb.intake" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "5" in "hour" field
And I select "30" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "5.30.pm" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "my.reminders.1" text
And I should see "reminders.blood.sugar.check" option
And I should see "10.00.am"
And I should see "reminders.mealtime.insulin.dose" option
And I should see "1.30.pm"
And I should see "reminders.enter.carb.intake" option
And I should see "5.30.pm"
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                        # symbol cannot be automated

When I tap on "back" button
And I tap on "home" option
And I disable set automatically in device settings
# And I set device time as "9:59 AM"                                                                    ## 59 cannot be selected in android time picker
And I set device time as "9:55 AM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                           ## icon cannot be automated
And I should see "its.10.00.am" text
And I should see "this.is.your.blood.sugar.check.reminder" text

When I tap on "ok.popup" button
And I tap on "logbook.icon" option
# And I set device time as "1:29 PM"                                                                    ## 29 cannot be selected in android time picker
And I set device time as "1:25 PM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                           ## icon cannot be automated
And I should see "its.01.30.pm" text
And I should see "this.is.your.mealtime.dose.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "more" option
# And I set device time as "5:29 PM"                                                                    ## 29 cannot be selected in android time picker
And I set device time as "5:25 PM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                           ## icon cannot be automated
And I should see "its.05.30.pm" text
And I should see "this.is.your.enter.carb.intake.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "more" option
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.blood.sugar.check" option

Then I should see "my.reminders" screen
And I should see "reminder.cancel" button
# And I should see "orange.header"                                                                      ## cannot be automated 
And I should see "edit.reminder" text
And I should see "reminders.blood.sugar.check" in "reminders.activity" field 
And I should see "10.00.am" in "time.of.daily.reminder" field
And I should see "save" button is disabled
And I should see "edit.reminder.delete" button

When I tap on "time.of.daily.reminder" field 
And I select "6" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "6.00.pm" in "time.of.daily.reminder" field
And I should see "save" button is enabled

When I tap on "save" button
Then I should see "set.reminder.1" text
And I should see "6.00.pm"

When I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "6" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "save" button
Then I should see "set.reminder.1" text
And I should see "6.00.pm"

When I tap on "back" button
And I tap on "more" option
And I tap on "more.menu.edit" button
# And I set device time as "5:59 PM"                                                                   ## 59 cannot be selected in android time picker
And I set device time as "5:55 PM"
And I wait for "5" minutes

Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                          ## icon cannot be automated
And I should see "its.06.00.pm" text
And I should see "this.is.your.reminder.for.blood.sugar.enter.carb" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "back" button
And I tap on "more" option
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "reminders.activity" field 
And I tap on "reminders.blood.sugar.check" option
Then I should see "reminders.blood.sugar.check" in "reminders.activity" field 
And I should see "save" button is enabled

When I tap on "reminder.cancel" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "edit.reminder" screen
When I tap on "reminder.cancel" button
And I tap on "discard" button
Then I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "1.30.pm"

When I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "9" in "hour" field
And I select "45" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "save" button
Then I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "9.45.pm"

When I tap on "back" button
And I tap on "my.devices" option
# And I set device time as "9:44 PM"                                                                       ## 44 cannot be selected in android time picker
And I set device time as "9:40 PM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                               ## icon cannot be automated
And I should see "its.09.45.pm" text
And I should see "this.is.your.mealtime.dose.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "back" button
And I tap on "more" option
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "edit.reminder.delete" button
Then I should see "delete.reminder" pop-up
And I should see "delete.this.reminder" text 
And I should see "cancel" button
And I should see "reminder.delete" button

When I tap on "cancel" button
Then I should see "edit.reminder" screen

When I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
Then I should see "set.reminders.1" text

When I tap on "back" button 
And I tap on "home" option 
Then I should see "home" screen

@LongActingInsulin12hr
Scenario: Verification of More Menu - My Reminders - Long-Acting Insulin - 12 Hours

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "more" option

And I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap "back" button
And I tap on "discard" button
And I tap "back" button

And I tap on "more.menu.my.reminders" option
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                                                  ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.can.help.keep.you" text
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                                   # symbol cannot be automated

When I tap on "reminders.add.new" button
Then I should see "my.reminders" screen
And I should see "my.reminders" title 
And I should see "reminder.cancel" button
# And I should see "orange.header"                                                                                 ## cannot be automated 
And I should see "add.new.reminders" text
And I should see "select.the.activity.and.the.time" text
And I should see "reminders.activity" field 
And I should see "time.of.daily.reminder" field 
And I should see "reminders.save" button is disabled

When I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button

When I tap on "reminders.enter.carb.intake" option
Then I should see "reminders.enter.carb.intake" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button

When I tap on "cancel.button2" button
And I tap on "time.of.daily.reminder" field 
And I select "10" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
Then I should see "10.00.am" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "my.reminders.1" text
And I should see "reminders.enter.carb.intake" option
And I should see "10.00.am"
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                                      # symbol cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "12" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
Then I should see "12.00.am" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "my.reminders.1" text
And I should see "reminders.enter.carb.intake" option
And I should see "10.00.am"
And I should see "reminders.long-acting.insulin.dose" option
And I should see "12.00.am"
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                                        # symbol cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "5" in "hour" field
And I select "30" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "5.30.pm" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled

When I tap on "reminders.save" button
Then I should see "long-acting.insulin.reminder.error" pop-up
And I should see "you.have.already.set.a.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "reminders.activity" field 
And I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "10" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button 
Then I should see "duplicate.reminder" pop-up
And I should see "you.have.already.set.a.reminder.for.this" text
And I should see "ok.popup" button

When I tap on "ok.popup" button 
And I tap on "reminder.cancel" button
And I tap on "reminders.enter.carb.intake" option

Then I should see "my.reminders" screen
And I should see "my.reminders" title
And I should see "reminder.cancel" button
# And I should see "orange.header"                                                                                          ## cannot be automated 
And I should see "edit.reminder" text
And I should see "reminders.enter.carb.intake" in "reminders.activity" field 
And I should see "10.00.am" in "time.of.daily.reminder" field
And I should see "save" button is disabled
And I should see "edit.reminder.delete" button

When I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "save" button

Then I should see "long-acting.insulin.reminder.error" pop-up
And I should see "you.have.already.set.a.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "reminders.activity" field 
And I tap on "reminders.blood.sugar.check" option
And I tap on "time.of.daily.reminder" field 
And I select "6" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "save" button 

Then I should see "set.reminders.1" text
And I should see "reminders.blood.sugar.check" option
And I should see "6.00.am"

When I tap on "reminders.long-acting.insulin.dose" option
And I tap on "reminders.activity" field 
And I tap on "reminders.blood.sugar.check" option
And I tap on "reminder.cancel" button

Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "edit.reminder" screen
And I should see "reminders.blood.sugar.check" in "reminders.activity" field 
When I tap on "reminder.cancel" button
And I tap on "discard" button

Then I should see "set.reminders.1" text
And I should see "reminders.long-acting.insulin.dose" option
And I should see "12.00.am"

When I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "9" in "hour" field
And I select "45" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "save" button

Then I should see "set.reminders.1" text
And I should see "reminders.long-acting.insulin.dose" option
And I should see "9.45.pm"

When I tap on "back" button
And I tap on "home" option
# And I set device time as "9:44 PM"                                                                                       ## 44 cannot be selected in android time picker
And I set device time as "9:40 PM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                               ## icon cannot be automated
And I should see "its.09.45.pm" text
And I should see "this.is.your.long-acting.insulin.dose.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "more" option
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "edit.reminder.delete" button
Then I should see "delete.reminder" pop-up
And I should see "delete.this.reminder" text 
And I should see "cancel" button
And I should see "reminder.delete" button

When I tap on "cancel" button
Then I should see "edit.reminder" screen

When I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
Then I should see "set.reminders.1" text
And I should see "reminders.blood.sugar.check" option
And I should see "6.00.am"

When I tap on "reminders.blood.sugar.check" option
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
Then I should see "set.reminders.1" text

When I tap on "back" button 
Then I should see "more.menu" screen

@MealtimeAndLongActing24hr
Scenario: Verification of More Menu - My Reminders - Mealtime and Long-Acting Insulin - 24 Hours

# PRE-CONDITIONS: 

# Make sure that the Android device is connected to the internet.
# Make sure that the user has selected both Mealtime Insulin and Long-Acting Insulin in My Insulin section.
# Make sure user has navigated to Home screen as per section 6.3.
# Make sure that the device time format is in 24-hour format.
# Ensure More Menu screen is displayed.


Given I should see "home" screen
When I set deviceformat to 24 hour
And I enable set automatically in device settings
And I tap on "more" option
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
Then I should see "reminders.mealtime.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button

When I select "11" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
Then I should see "11.30" in "time.of.daily.reminder" field

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "11.30"
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                                                    # symbol cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "13" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
Then I should see "13.30" in "time.of.daily.reminder" field

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "13.30"
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                                                    # symbol cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.blood.sugar.check" option
Then I should see "reminders.blood.sugar.check" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "17" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
Then I should see "17.30" in "time.of.daily.reminder" field

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.blood.sugar.check" option
And I should see "17.30"
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                                                    # symbol cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.enter.carb.intake" option
Then I should see "reminders.enter.carb.intake" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "19" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
Then I should see "19.30" in "time.of.daily.reminder" field

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.enter.carb.intake" option
And I should see "19.30"
And I should see "reminders.add.new" button
# And I should see "plus" symbol                                                                                                    # symbol cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
And I tap on "reminders.save" button 
Then I should see "duplicate.reminder" pop-up
And I should see "you.have.already.set.a.reminder.for.this" text
And I should see "ok.popup" button

When I tap on "ok.popup" button 
And I tap on "reminder.cancel" button
Then I should see "set.reminders.1" text

When I tap on "reminders.mealtime.insulin.dose" option
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
Then I should see "hour.clock"
When I select "13" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
And I tap on "save" button 
Then I should see "long-acting.insulin.reminder.error" pop-up
And I should see "you.have.already.set.a.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button 
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "reminder.cancel" button

Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button

When I tap on "cancel" button
And I tap on "reminder.cancel" button
And I tap on "discard" button
Then I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "11.30"
And I should see "reminders.long-acting.insulin.dose" option
And I should see "13.30"
And I should see "reminders.blood.sugar.check" option
And I should see "17.30"
And I should see "reminders.enter.carb.intake" option
And I should see "19.30"

When I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "12" in "hour" field
And I select "00" in "minutes" field
And I tap on "ok.button" button
And I tap on "save" button
Then I should see "reminders.mealtime.insulin.dose" option
And I should see "12.00"

When I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "14" in "hour" field
And I select "00" in "minutes" field
And I tap on "ok.button" button
Then I should see "14.00" in "time.of.daily.reminder" field
And I should see "save" button is enabled

When I tap on "save" button
Then I should see "set.reminders.1" text
And I should see "14.00"

When I tap on "reminders.blood.sugar.check" option
And I tap on "time.of.daily.reminder" field 
And I select "12" in "hour" field
And I select "00" in "minutes" field
And I tap on "ok.button" button
Then I should see "12.00" in "time.of.daily.reminder" field
And I should see "save" button is enabled

When I tap on "save" button
Then I should see "set.reminders.1" text
And I should see "12.00"

When I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "14" in "hour" field
And I select "00" in "minutes" field
And I tap on "ok.button" button
Then I should see "14.00" in "time.of.daily.reminder" field
And I should see "save" button is enabled

When I tap on "edit.reminder.delete" button
Then I should see "delete.reminder" pop-up
And I should see "delete.this.reminder" text 
And I should see "cancel" button
And I should see "reminder.delete" button

When I tap on "cancel" button
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
Then I should see "set.reminders.1" text

When I tap on "back" button 
And I tap on "home" option
Then I should see "home" screen
# When I set device time as "11:59"                                                                                                          ## 59 cannot be selected in android time picker
When I set device time in 24 hour format as "11:55"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                               ## icon cannot be automated
And I should see "its.12.00" text
And I should see "this.is.your.reminder.for.mealtime.blood.sugar" text
And I should see "ok.popup" button

When I tap "ok.popup" button
And I tap on "logbook.icon" option
# And I set device time as "13:59"                                                                                                          ## 59 cannot be selected in android time picker
And I set device time in 24 hour format as "13:55"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                               ## icon cannot be automated
And I should see "its.14.00" text
And I should see "this.is.your.long-acting.insulin.dose.reminder" text
And I should see "ok.popup" button

When I tap "ok.popup" button
Then I should see "logbook.icon" screen

When I tap on "home" option
Then I should see "home" screen


@MyReminderNotifications
Scenario: Verification of More Menu - My Reminders - Notifications

# PRE-CONDITIONS: 

# Ensure that user has installed Madelyne App as per section 6.1.
# Ensure that user is registered successfully on MMA App as per section 6.2
# Ensure that user is navigated to the Home screen of the Madelyne MMA App as per section 6.3.
# Make sure that all the reminders are deleted if available.
# Make sure that only “Long-Acting Insulin” is enabled in More Menu “My Insulin” section.
# Ensure that “Recent Entries” popup is displayed with “Set Reminders” button.
# Make sure that the iOS device is connected to the internet.
# Make sure that in the device settings, the date and time is the current one in 12-hour format (Time format is specific to OS).


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
When I enter "emailaddress2" into "emailaddress" field
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
When I tap on "long-acting.insulin.toggle" button
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
Then I should see "home" screen

# Following steps are present in the protocol but not in 2.0.18 build

# When I tap on "home.set.reminders" button
# Then I should see "my.reminders" pop-up
# And I should see "reminders.can.help.keep.you" text
# And I should see "home.reminders.not.now" button
# And I should see "home.set.reminders" button

When I tap on "home.set.reminders" button
Then I should see "my.reminders" screen
And I should see "set.reminders.1" text

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.blood.sugar.check" option
And I tap on "time.of.daily.reminder" field 
And I select "10" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "reminders.blood.sugar.check" option

When I tap on "back" button
And I tap on "more" option
And I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button

And I tap on "my.insulin.save" button
And I tap on "ok.popup" button
And I tap on "adjust.reminders" button
Then I should see "my.reminders" screen

# When I tap on "back" button                     # if we tap on back button it navigates to more menu screen  (flow mismatch)                                             
# And I tap on "adjust.reminders" button
# Then I should see "my.reminders" screen

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "12" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "reminders.mealtime.insulin.dose" option

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "2" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "5" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.enter.carb.intake" option

When I tap on "back" button
And I tap on "progress.icon" option
And I disable set automatically in device settings
# And I set device time as "9:59 AM"                                                                                                    ## 59 cannot be selected in android time picker
And I set device time as "9:55 AM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
And I should see "its.10.00.am" text
And I should see "this.is.your.blood.sugar.check.reminder" text
And I should see "ok.popup" button  

When I tap on "ok.popup" button
And I tap on "home" option
And I tap on "downward.arrow" mark
And I tap on "bell.icon.in.home" icon
# Then I should see "blood.sugar.check.reminder" in "notification" list
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
Then I should see "its.10.00.am" text
And I should see "this.is.your.blood.sugar.check.reminder" text
And I should see "just.now.time" text

When I tap on "back" button
And I tap on "more" option
# And I set device time as "11:59 AM"                                                                                                   ## 59 cannot be selected in android time picker
And I set device time as "11:55 AM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
And I should see "its.12.00.pm" text
And I should see "this.is.your.mealtime.dose.reminder" text
And I should see "ok.popup" button  

When I tap on "ok.popup" button
And I tap on "home" option
And I tap on "bell.icon.in.home" icon
# Then I should see "mealtime.dose.reminder" in "notification" list
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
Then I should see "its.12.00.pm" text
And I should see "this.is.your.mealtime.dose.reminder" text
And I should see "just.now.time" text

When I tap on "back" button
And I tap on "logbook.icon" option
# And I set device time as "1:59 PM"                                                                                                    ## 59 cannot be selected in android time picker
And I set device time as "1:55 PM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
And I should see "its.02.00.pm" text
And I should see "this.is.your.long-acting.insulin.dose.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "home" option
And I tap on "bell.icon.in.home" icon
# Then I should see "long-acting.dose.reminder" in "notification" list
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
Then I should see "its.02.00.pm" text
And I should see "this.is.your.long-acting.insulin.dose.reminder" text
And I should see "just.now.time" text

When I tap on "back" button
And I tap on "home" option
# And I set device time as "4:59 PM"                                                                                                    ## 59 cannot be selected in android time picker
And I set device time as "4:55 PM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
And I should see "its.05.00.pm" text
And I should see "this.is.your.enter.carb.intake.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "bell.icon.in.home" icon
# Then I should see "enter.carb.intake.reminder" in "notification" list
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
Then I should see "its.05.00.pm" text
And I should see "this.is.your.enter.carb.intake.reminder" text
And I should see "just.now.time" text

When I tap on "back" button
And I tap on "more" option
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "10" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "save" button
Then I should see "10.00.am"

When I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "12" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "save" button
Then I should see "12.00.pm"

When I tap on "back" button
Then I should see "more.menu" screen

# When I set device time as "11:59 AM"                                                                                                  ## 59 cannot be selected in android time picker
When I set device time as "11:55 AM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
And I should see "its.12.00.pm" text
And I should see "this.is.your.reminder.for.mealtime.enter.carb" text
And I should see "ok.popup" button  

When I tap on "ok.popup" button
And I tap on "home" option
And I tap on "bell.icon.in.home" icon
# Then I should see "reminders" in "notification" list
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
Then I should see "its.12.00.pm" text
And I should see "reminder.for.mealtime.enter.carb.notification" text
And I should see "just.now.time" text

When I tap on "back" button
And I tap on "more" option
And I tap on "more.menu.edit" button
# And I set device time as "9:59 AM"                                                                                                    ## 59 cannot be selected in android time picker
And I set device time as "9:55 AM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
And I should see "its.10.00.am" text
And I should see "this.is.your.reminder.for.blood.sugar.long-acting" text
And I should see "ok.popup" button  

When I tap on "ok.popup" button
And I tap on "back" button
And I tap on "home" option
And I tap on "bell.icon.in.home" icon
# Then I should see "reminders" in "notification" list
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
Then I should see "its.10.00.am" text
And I should see "reminder.for.blood.sugar.long-acting.notification" text
And I should see "just.now.time" text

When I tap on "back" button
And I tap on "more" option
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.enter.carb.intake" option
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
And I tap on "back" button

# And I set device time as "11:59 AM"                                                                                                   ## 59 cannot be selected in android time picker
And I set device time as "11:55 AM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
And I should see "its.12.00.pm" text
And I should see "this.is.your.mealtime.dose.reminder" text
And I should see "ok.popup" button  

When I tap on "ok.popup" button
And I tap on "home" option
And I tap on "bell.icon.in.home" icon
# Then I should see "mealtime.dose.reminder" in "notification" list
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
Then I should see "its.12.00.pm" text
And I should see "this.is.your.mealtime.dose.reminder" text
And I should see "just.now.time" text

When I tap on "back" button
And I tap on "more" option
And I tap on "my.devices" option
# And I set device time as "9:59 AM"                                                                                                    ## 59 cannot be selected in android time picker
And I set device time as "9:55 AM"
# And I lock the device
And I wait for "5" minutes
# Then I should see notification on the lock screen of device
# And I should see "my.tempo" icon
# And I should see "MYTEMPO" text
# And I should see "time.as.now"
# And I should see "its.10.00.am" text
# And I should see "you.have.reminder.in.your.mytempo.app" text

# When I double tap on notification
# And I unlock the screen

Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
And I should see "its.10.00.am" text
And I should see "this.is.your.reminder.for.blood.sugar.long-acting" text
And I should see "ok.popup" button 

When I tap on "ok.popup" button
And I tap on "back" button
And I tap on "home" option
And I tap on "bell.icon.in.home" icon
# Then I should see "reminders" in "notification" list
# And I should see "reminder.popup.icon" icon                                                                                           ## icon cannot be automated
Then I should see "its.10.00.am" text
And I should see "reminder.for.blood.sugar.long-acting.notification" text
And I should see "just.now.time" text

When I tap on "back" button
And I tap on "more" option
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
# And I select "59" in "minutes" field                                                                                                  ## 59 cannot be selected in android time picker
And I select "55" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "save" button
# Then I should see "11.59.pm"
Then I should see "11.55.pm"

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
# And I select "59" in "minutes" field                                                                                                  ## 59 cannot be selected in android time picker
And I select "55" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
And I tap on "back" button
# And I set device time as "11:58 PM"                                                                                                  ## 58 cannot be selected in android time picker
And I set device time as "11:50 PM"
And I wait for "5" minutes
Then I should see "reminder.related" pop-up
# And I should see "reminder.popup.icon" icon                                                                                         ## icon cannot be automated
# And I should see "its.10.00.am" text
And I should see "its.11.55.pm" text
And I should see "this.is.your.reminder.for.mealtime.enter.carb" text
And I should see "ok.popup" button

When I tap on "ok.popup" button
And I tap on "home" option
Then I should see "home" screen

When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen


@SmokeTest
Scenario: Smoke Test for More Menu – My Reminders - Software Test Protocol


Given I should see "home" screen
When I tap on "more" option
And I tap on "more.menu.my.reminders" option
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                              ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.can.help.keep.you" text
And I should see "reminders.add.new" button

When I tap on "reminders.add.new" button
Then I should see "my.reminders" screen
And I should see "my.reminders" title 
And I should see "reminder.cancel" button
# And I should see "orange.header"                                                                                                      ## cannot be automated 
And I should see "add.new.reminders" text
And I should see "select.the.activity.and.the.time" text
And I should see "reminders.activity" field 
And I should see "time.of.daily.reminder" field 
And I should see "reminders.save" button is disabled

When I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button

When I tap on "reminders.cancel" button
And I tap on "time.of.daily.reminder" field 
And I tap on "ok.button" button
And I tap on "reminder.cancel" button
Then I should see "my.reminders" screen

When I tap on "back" button 
And I tap on "home" option 
Then I should see "home" screen

@RegressionTest
Scenario: Regression Test for More Menu – My Reminders - Software Test Protocol

# Mealtime 12hrs

Given I should see "home" screen
When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I tap on "more" option

And I tap on "more.menu.my.insulin" option
And I tap "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap "back" button
And I tap on "discard" button
And I tap "back" button

And I tap on "more.menu.my.reminders" option
Then I should see "my.reminders" screen
And I should see "back" button
And I should see "set.reminders.1" text
And I should see "reminders.can.help.keep.you" text
And I should see "reminders.add.new" button

When I tap on "back" button
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.add.new" button
Then I should see "my.reminders" screen
And I should see "reminder.cancel" button
And I should see "add.new.reminders" text
And I should see "select.the.activity.and.the.time" text
And I should see "reminders.activity" field 
And I should see "time.of.daily.reminder" field 
And I should see "reminders.save" button is disabled

When I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button

When I tap on "reminders.cancel" button
And I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"

When I tap on "reminders.blood.sugar.check" option
Then I should see "reminders.blood.sugar.check" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
Then I should see "hour.clock"
And I should see "ok.button"
And I should see "cancel.button2" button
When I select "10" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
Then I should see "10.00.am" in "time.of.daily.reminder" field

When I tap on "reminders.save" button
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "1" in "hour" field
And I select "30" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "1.30.pm" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled

When I tap on "reminders.save" button
Then I should see "my.reminders" screen

And I should see "my.reminders.1" text
And I should see "reminders.blood.sugar.check" option
And I should see "10.00.am"
And I should see "reminders.mealtime.insulin.dose" option
And I should see "1.30.pm"
And I should see "reminders.add.new" button

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.enter.carb.intake" option

And I tap on "time.of.daily.reminder" field 
And I select "5" in "hour" field
And I select "30" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button

And I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "my.reminders.1" text
When I tap on "back" button
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.blood.sugar.check" option

Then I should see "my.reminders" screen
And I should see "edit.reminder" text
And I should see "reminders.blood.sugar.check" in "reminders.activity" field 
And I should see "10.00.am" in "time.of.daily.reminder" field
And I should see "save" button is disabled
And I should see "edit.reminder.delete" button

When I tap on "time.of.daily.reminder" field 
And I select "6" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button

And I tap on "save" button
Then I should see "set.reminder.1" text
And I should see "6.00.pm"

When I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "6" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "save" button

And I tap on "back" button
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "reminders.activity" field 
And I tap on "reminders.blood.sugar.check" option
Then I should see "reminders.blood.sugar.check" in "reminders.activity" field 
And I should see "save" button is enabled

When I tap on "reminder.cancel" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "edit.reminder" screen
When I tap on "reminder.cancel" button
And I tap on "discard" button
Then I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "1.30.pm"

When I tap on "back" button
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
Then I should see "set.reminders.1" text

# When I tap on "reminders.blood.sugar.check" option
# And I tap on "edit.reminder.delete" button
# And I tap on "reminder.delete" button
# And I tap on "reminders.enter.carb.intake" option
# And I tap on "edit.reminder.delete" button
# And I tap on "reminder.delete" button
# Then I should see "set.reminders.1" text

# Long-acting 12hrs

When I tap on "back" button 
And I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap "back" button
And I tap on "discard" button
And I tap "back" button

And I tap on "more.menu.my.reminders" option
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field

Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button

When I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "10" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "12" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen

When I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "9" in "hour" field
And I select "45" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "save" button
Then I should see "set.reminders.1" text
And I should see "reminders.long-acting.insulin.dose" option
And I should see "9.45.pm"

When I tap on "back" button 
And I tap on "more.menu.my.reminders" option
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
Then I should see "set.reminders.1" text

When I tap on "back" button 
Then I should see "more.menu" screen

# Mealtime and Long-acting 24hrs

When I set deviceformat to 24 hour
And I enable set automatically in device settings

And I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap "back" button
And I tap on "discard" button
And I tap "back" button

And I tap on "more.menu.my.reminders" option
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field

Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button

When I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 

And I select "11" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
Then I should see "11.30" in "time.of.daily.reminder" field

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "11.30"
And I should see "reminders.add.new" button

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "13" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
Then I should see "13.30" in "time.of.daily.reminder" field

When I tap on "reminders.save" button
Then I should see "my.reminders" screen
And I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "13.30"
And I should see "reminders.add.new" button

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
And I tap on "reminders.save" button 
Then I should see "duplicate.reminder" pop-up
And I should see "you.have.already.set.a.reminder.for.this" text
And I should see "ok.popup" button

When I tap on "ok.popup" button 
And I tap on "reminder.cancel" button
Then I should see "set.reminders.1" text

When I tap on "reminders.mealtime.insulin.dose" option
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
Then I should see "hour.clock"
When I select "13" in "hour" field
And I select "30" in "minutes" field
And I tap on "ok.button" button
And I tap on "save" button 
Then I should see "long-acting.insulin.reminder.error" pop-up
And I should see "you.have.already.set.a.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button 
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "reminder.cancel" button

Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button

When I tap on "cancel" button
And I tap on "reminder.cancel" button
And I tap on "discard" button
Then I should see "set.reminders.1" text

When I tap on "reminders.mealtime.insulin.dose" option
And I tap on "edit.reminder.delete" button

Then I should see "delete.reminder" pop-up
And I should see "delete.this.reminder" text 
And I should see "cancel" button
And I should see "reminder.delete" button

When I tap on "cancel" button
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
And I tap on "reminders.blood.sugar.check" option
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
And I tap on "back" button

And I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap on "ok.popup" button
And I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "home" option
Then I should see "home" screen

@Precondition
Scenario: Loging out of Application
        
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen


