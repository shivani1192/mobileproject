Feature: MADELYNE More Menu – My Insulin - Software Test Protocol

# PRE-CONDITIONS: 

# Ensure that iOS or Android device is connected to the internet.
# Ensure that user has launched Madelyne MMA App as per section 6.1.
# Ensure that user is registered with valid credentials on MMA as per section 6.2
# Ensure that user is navigated till “Home” screen of MMA App as per section 6.3.

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

@InsulinSelections
Scenario: Verification of More Menu - My Insulin - Insulin Selections

Given I should see "home" screen
When I tap on "more" option
And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "meal.time.insulin.text" text
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled
And I should see "my.insulin.save" button is disabled 

When I tap "back" button
Then I should see "more.menu" screen

When I tap on "more.menu.my.insulin" option
And I tap on "long-acting.insulin.toggle" button
# Then I should see "long-acting.insulin.toggle" button is disabled                 ## enabled attribute issue in appium
Then I should see "my.insulin.save" button is enabled

When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
And I tap on "back" button
And I tap on "discard" button

And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "long-acting.insulin.toggle" button is enabled

When I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "confirm.insulin.type" title
And I should see "you.have.selected.mealtime" text
And I should see "cancel" button
And I should see "ok.popup" button

When I tap "cancel" button
Then I should see "my.insulin" screen
# And I should see "long-acting.insulin.toggle" button is disabled                    ## enabled attribute issue in appium

When I tap on "my.insulin.save" button
And I tap "ok.popup" button


Then I should see "my.insulin" screen
And I should see "back" button
# And I should see "orange.header" ## cannot be automated 
And I should see "my.insulin.insulin" text
And I should see "changes.to.your.insulin.selection" text
And I should see "adjust.reminders" button

When I tap on "back" button
And I tap on "discard" button
And I tap on "back" button

Then I should see "more.menu" screen

When I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "meal.time.insulin.text" text
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.text" text
# And I should see "long-acting.insulin.toggle" button is disabled                      ## enabled attribute issue in appium
And I should see "my.insulin.save" button is disabled 

When I tap "mealtime.insulin.toggle" button
And I tap "long-acting.insulin.toggle" button
# Then I should see "mealtime.insulin.toggle" button is disabled                        ## enabled attribute issue in appium
Then I should see "long-acting.insulin.toggle" button is enabled
And I should see "my.insulin.save" button is enabled

When I tap on "back" button

Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
And I tap on "back" button
And I tap on "discard" button

And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "mealtime.insulin.toggle" button is enabled
# And I should see "long-acting.insulin.toggle" button is disabled                      ## enabled attribute issue in appium

When I tap "mealtime.insulin.toggle" button
And I tap "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "confirm.insulin.type" title
And I should see "you.have.selected.longacting" text
And I should see "cancel" button
And I should see "ok.popup" button

When I tap "cancel" button
Then I should see "my.insulin" screen
# And I should see "mealtime.insulin.toggle" button is disabled                         ## enabled attribute issue in appium
And I should see "long-acting.insulin.toggle" button is enabled

When I tap on "my.insulin.save" button
And I tap "ok.popup" button

Then I should see "my.insulin" screen
And I should see "back" button
# And I should see "orange.header" ## cannot be automated 
And I should see "my.insulin.insulin" text
And I should see "changes.to.your.insulin.selection" text
And I should see "adjust.reminders" button

When I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "meal.time.insulin.text" text
# And I should see "mealtime.insulin.toggle" button is disabled                         ## enabled attribute issue in appium
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled
And I should see "my.insulin.save" button is disabled 

When I tap "mealtime.insulin.toggle" button
Then I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.toggle" button is enabled
And I should see "my.insulin.save" button is enabled

When I tap on "back" button

Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
And I tap on "back" button
And I tap on "discard" button

And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
# And I should see "mealtime.insulin.toggle" button is disabled                         ## enabled attribute issue in appium
And I should see "long-acting.insulin.toggle" button is enabled

When I tap "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "confirm.insulin.type" title
And I should see "you.have.selected.both" text
And I should see "cancel" button
And I should see "ok.popup" button

When I tap "cancel" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button

Then I should see "my.insulin" screen
And I should see "back" button
# And I should see "orange.header"                                                      ## cannot be automated 
And I should see "my.insulin.insulin" text
And I should see "changes.to.your.insulin.selection" text
And I should see "adjust.reminders" button

When I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "meal.time.insulin.text" text
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled

When I tap "back" button
Then I should see "more.menu" screen

When I tap on "home" option
Then I should see "home" screen

@AdjustReminders
Scenario: Verification of More Menu - My Insulin - Adjust Reminders

Given I should see "home" screen
When I tap on "more" option
And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "meal.time.insulin.text" text
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled
And I should see "my.insulin.save" button is disabled 

When I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button

Then I should see "my.insulin" screen
And I should see "back" button
# And I should see "orange.header"                                                      ## cannot be automated 
And I should see "my.insulin.insulin" text
And I should see "adjust.reminders" button

When I tap on "adjust.reminders" button
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                     ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.add.new" button
# And I should see "plus" icon                                                        # icon cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button

When I tap on "reminders.cancel" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
Then I should see "reminders.mealtime.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
Then I should see "11.00.am" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled
When I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button 
Then I should see "more.menu" screen

When I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "meal.time.insulin.text" text
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.text" text
# And I should see "long-acting.insulin.toggle" button is disabled                     ## enabled attribute issue in appium
And I should see "my.insulin.save" button is disabled 

When I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button

Then I should see "my.insulin" screen
And I should see "back" button
# And I should see "orange.header"                                                      ## cannot be automated 
And I should see "my.insulin.insulin" text
And I should see "adjust.reminders" button

When I tap on "adjust.reminders" button
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                     ## cannot be automated 
# And I should see previously saved mealtime insulin reminder is deleted 
And I should see "set.reminders.1" text
And I should see "reminders.add.new" button
# And I should see "plus" icon                                                        # icon cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button

When I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 

When I tap on "time.of.daily.reminder" field 
And I select "4" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "4.00.pm" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled
When I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button 
Then I should see "more.menu" screen

When I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "meal.time.insulin.text" text
# And I should see "mealtime.insulin.toggle" button is disabled                        ## enabled attribute issue in appium
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled 
And I should see "my.insulin.save" button is disabled 

When I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button

Then I should see "my.insulin" screen
And I should see "back" button
# And I should see "orange.header"                                                      ## cannot be automated 
And I should see "my.insulin.insulin" text
And I should see "changes.to.your.insulin.selection" text
And I should see "adjust.reminders" button

When I tap on "adjust.reminders" button
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                      ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.long-acting.insulin.dose" option
And I should see "4.00.pm"
And I should see "reminders.add.new" button
# And I should see "plus" icon                                                         # icon cannot be automated

When I tap on "reminders.long-acting.insulin.dose" option
Then I should see "my.reminders" screen
And I should see "reminder.cancel" button
# And I should see "orange.header"                                                      ## cannot be automated 
And I should see "edit.reminder" text
And I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 
And I should see "4.00.pm" in "time.of.daily.reminder" field
And I should see "save" button is disabled
And I should see "edit.reminder.delete" button

When I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "6" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button

Then I should see "my.reminders" screen
And I should see "reminder.cancel" button
# And I should see "orange.header"                                                       ## cannot be automated 
And I should see "edit.reminder" text
And I should see "reminders.mealtime.insulin.dose" in "reminders.activity" field 
And I should see "6.00.am" in "time.of.daily.reminder" field
And I should see "save" button is enabled
And I should see "edit.reminder.delete" button

When I tap on "save" button
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                       ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "6.00.am"
And I should see "reminders.add.new" button
# And I should see "plus" icon                                                          # icon cannot be automated

When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button


When I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "2" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "2.00.pm" in "time.of.daily.reminder" field
When I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button 
Then I should see "more.menu" screen

When I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "meal.time.insulin.text" text
And I should see "mealtime.insulin.toggle" button is enabled       
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled 
And I should see "my.insulin.save" button is disabled 

When I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button

Then I should see "my.insulin" screen
And I should see "back" button
# And I should see "orange.header" ## cannot be automated
And I should see "my.insulin.insulin" text
And I should see "adjust.reminders" button

When I tap on "adjust.reminders" button
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                               ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.long-acting.insulin.dose" option
And I should see "2.00.pm"
# And I should see previously saved mealtime insulin reminder is deleted  
And I should see "reminders.add.new" button
# And I should see "plus" icon                                                 # icon cannot be automated


When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "2" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "long-acting.insulin.reminder.error" pop-up
And I should see "you.have.already.set.a.reminder" text
And I should see "ok.popup" button

When I tap on "ok.popup" button 
And I tap on "reminder.cancel" button
And I tap on "discard" button        
And I tap on "back" button
Then I should see "more.menu" screen

When I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "meal.time.insulin.text" text
# And I should see "mealtime.insulin.toggle" button is disabled                     ## enabled attribute issue in appium      
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled 
And I should see "my.insulin.save" button is disabled 

When I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button

Then I should see "my.insulin" screen
And I should see "back" button
# And I should see "orange.header"                                                  ## cannot be automated 
And I should see "my.insulin.insulin" text
And I should see "adjust.reminders" button

When I tap on "adjust.reminders" button
Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                  ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.long-acting.insulin.dose" option
And I should see "2.00.pm"
And I should see "reminders.add.new" button
# And I should see "plus" icon                                                      # icon cannot be automated

When I tap on "reminders.long-acting.insulin.dose" option
Then I should see "edit.reminder" screen

When I tap on "reminders.activity" field 
And I tap on "reminders.blood.sugar.check" option
And I tap on "reminder.cancel" button

Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
And I tap on "reminder.cancel" button
And I tap on "discard" button

Then I should see "my.reminders" screen
And I should see "back" button
# And I should see "orange.header"                                                  ## cannot be automated 
And I should see "set.reminders.1" text
And I should see "reminders.long-acting.insulin.dose" option
And I should see "2.00.pm"
And I should see "reminders.add.new" button
# And I should see "plus" icon                                                      # icon cannot be automated

When I tap on "reminders.long-acting.insulin.dose" option
Then I should see "edit.reminder" screen
When I tap on "edit.reminder.delete" button

Then I should see "delete.reminder" pop-up
And I should see "delete.this.reminder" text 
And I should see "cancel" button
And I should see "reminder.delete" button
When I tap on "cancel" button
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
Then I should see "my.reminders" screen

When I tap on "back" button
Then I should see "more.menu" screen

@SmokeTest
Scenario: Smoke Test for More Menu – My Insulin - Software Test Protocol

Given I should see "home" screen
When I tap on "more" option
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "meal.time.insulin.text" text
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled
And I should see "my.insulin.save" button is disabled 
When I tap on "long-acting.insulin.toggle" button
# Then I should see "long-acting.insulin.toggle" button is disabled                     ## enabled attribute issue in appium
Then I should see "my.insulin.save" button is enabled
When I tap on "back" button
Then I should see "discard.changes" pop-up
When I tap on "cancel" button
And I tap on "back" button
And I tap on "discard" button
And I tap on "more.menu.my.insulin" option
Then I should see "long-acting.insulin.toggle" button is enabled
When I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "you.have.selected.mealtime" text
When I tap "cancel" button
Then I should see "my.insulin" screen
When I tap on "my.insulin.save" button
And I tap "ok.popup" button
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "my.insulin.insulin" text
And I should see "changes.to.your.insulin.selection" text
And I should see "adjust.reminders" button
When I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "more.menu.my.insulin" option
Then I should see "mealtime.insulin.toggle" button is enabled
# And I should see "long-acting.insulin.toggle" button is disabled                      ## enabled attribute issue in appium
When I tap "mealtime.insulin.toggle" button
And I tap "long-acting.insulin.toggle" button
# Then I should see "mealtime.insulin.toggle" button is disabled                        ## enabled attribute issue in appium
Then I should see "long-acting.insulin.toggle" button is enabled
When I tap on "back" button
And I tap on "discard" button
And I tap on "more.menu.my.insulin" option
And I tap "mealtime.insulin.toggle" button
And I tap "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "you.have.selected.longacting" text
When I tap "cancel" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "more.menu.my.insulin" option
And I tap "mealtime.insulin.toggle" button
And I tap on "back" button
And I tap on "discard" button
And I tap on "more.menu.my.insulin" option
And I tap "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "you.have.selected.both" text
When I tap "cancel" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
Then I should see "my.insulin" screen
When I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.toggle" button is enabled
When I tap "back" button
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
And I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "adjust.reminders" button
Then I should see "my.reminders" screen
And I should see "back" button
And I should see "set.reminders.1" text
And I should see "reminders.add.new" button
When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
Then I should see "reminders.mealtime.insulin.dose" in "reminders.activity" field 
When I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
Then I should see "11.00.am" in "time.of.daily.reminder" field
When I tap on "reminders.save" button
And I tap on "back" button 
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "adjust.reminders" button
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field  
When I tap on "time.of.daily.reminder" field 
And I select "4" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button 
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "adjust.reminders" button
Then I should see "reminders.long-acting.insulin.dose" option
And I should see "4.00.pm"
When I tap on "reminders.long-acting.insulin.dose" option
Then I should see "my.reminders" screen
And I should see "reminder.cancel" button
And I should see "edit.reminder" text
When I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "6" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "save" button
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "2" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button 
And I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "adjust.reminders" button
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "edit.reminder" screen
When I tap on "edit.reminder.delete" button
Then I should see "delete.reminder" pop-up
And I should see "delete.this.reminder" text 
And I should see "cancel" button
And I should see "reminder.delete" button
When I tap on "reminder.delete" button
Then I should see "my.reminders" screen
When I tap on "back" button
Then I should see "more.menu" screen


@RegressionTest
Scenario: Regression Test for More Menu – My Insulin - Software Test Protocol

Given I should see "home" screen
When I tap on "more" option
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "meal.time.insulin.text" text
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.text" text
And I should see "long-acting.insulin.toggle" button is enabled
And I should see "my.insulin.save" button is disabled 
When I tap on "long-acting.insulin.toggle" button
# Then I should see "long-acting.insulin.toggle" button is disabled                             ## enabled attribute issue in appium
Then I should see "my.insulin.save" button is enabled
When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
And I tap on "back" button
And I tap on "discard" button
And I tap on "more.menu.my.insulin" option
Then I should see "long-acting.insulin.toggle" button is enabled
When I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "confirm.insulin.type" title
And I should see "you.have.selected.mealtime" text
And I should see "cancel" button
And I should see "ok.popup" button
When I tap "cancel" button
Then I should see "my.insulin" screen
# And I should see "long-acting.insulin.toggle" button is disabled                              ## enabled attribute issue in appium
When I tap on "my.insulin.save" button
And I tap "ok.popup" button
Then I should see "my.insulin" screen
And I should see "back" button
And I should see "my.insulin.insulin" text
And I should see "changes.to.your.insulin.selection" text
And I should see "adjust.reminders" button
When I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "more.menu.my.insulin" option
Then I should see "mealtime.insulin.toggle" button is enabled
# And I should see "long-acting.insulin.toggle" button is disabled                              ## enabled attribute issue in appium
And I should see "my.insulin.save" button is disabled 
When I tap "mealtime.insulin.toggle" button
And I tap "long-acting.insulin.toggle" button
# Then I should see "mealtime.insulin.toggle" button is disabled                                ## enabled attribute issue in appium
Then I should see "long-acting.insulin.toggle" button is enabled
And I should see "my.insulin.save" button is enabled
When I tap on "back" button
Then I should see "discard.changes" pop-up
When I tap on "discard" button
And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
When I tap "mealtime.insulin.toggle" button
And I tap "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "confirm.insulin.type" title
And I should see "you.have.selected.longacting" text
And I should see "cancel" button
And I should see "ok.popup" button
When I tap "cancel" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
Then I should see "my.insulin" screen
When I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "more.menu.my.insulin" option
And I tap "mealtime.insulin.toggle" button
And I tap on "back" button
Then I should see "discard.changes" pop-up
When I tap on "discard" button
And I tap on "more.menu.my.insulin" option
And I tap "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
Then I should see "confirm.insulin.type" pop-up
And I should see "confirm.insulin.type" title
And I should see "you.have.selected.both" text
And I should see "cancel" button
And I should see "ok.popup" button
When I tap "cancel" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
Then I should see "my.insulin" screen
When I tap on "back" button
And I tap on "discard" button
And I tap on "back" button
And I tap on "more.menu.my.insulin" option
Then I should see "my.insulin" screen
And I should see "mealtime.insulin.toggle" button is enabled
And I should see "long-acting.insulin.toggle" button is enabled
When I tap "back" button
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
And I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
Then I should see "my.insulin" screen
When I tap on "adjust.reminders" button
Then I should see "my.reminders" screen
And I should see "back" button
And I should see "set.reminders.1" text
And I should see "reminders.add.new" button
When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.mealtime.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button
When I tap on "reminders.cancel" button
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
Then I should see "reminders.mealtime.insulin.dose" in "reminders.activity" field 
When I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
Then I should see "11.00.am" in "time.of.daily.reminder" field
And I should see "reminders.save" button is enabled
When I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button 
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "adjust.reminders" button
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
Then I should see "reminders.long-acting.insulin.dose" in "reminders.activity" field 
When I tap on "time.of.daily.reminder" field 
And I select "4" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "4.00.pm" in "time.of.daily.reminder" field
When I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button 
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "adjust.reminders" button
Then I should see "reminders.long-acting.insulin.dose" option
And I should see "4.00.pm"
When I tap on "reminders.long-acting.insulin.dose" option
And I tap on "reminders.activity" field 
And I tap on "reminders.mealtime.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "6" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "save" button
Then I should see "my.reminders" screen
And I should see "back" button
And I should see "set.reminders.1" text
And I should see "reminders.mealtime.insulin.dose" option
And I should see "6.00.am"
And I should see "reminders.add.new" button
When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
Then I should see "select.an.activity.overlay"
And I should see "reminders.blood.sugar.check" option
And I should see "reminders.long-acting.insulin.dose" option
And I should see "reminders.enter.carb.intake" option
And I should see "reminders.cancel" button
When I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "2" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
Then I should see "2.00.pm" in "time.of.daily.reminder" field
When I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button 
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "adjust.reminders" button
Then I should see "reminders.long-acting.insulin.dose" option
And I should see "2.00.pm"
When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field 
And I tap on "reminders.long-acting.insulin.dose" option
And I tap on "time.of.daily.reminder" field 
And I select "2" in "hour" field
And I select "00" in "minutes" field
And I select "pm" in "pm" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "long-acting.insulin.reminder.error" pop-up
When I tap on "ok.popup" button 
And I tap on "reminder.cancel" button
And I tap on "discard" button   
And I tap on "back" button
Then I should see "more.menu" screen
When I tap on "more.menu.my.insulin" option
And I tap on "mealtime.insulin.toggle" button
And I tap on "my.insulin.save" button
And I tap "ok.popup" button
And I tap on "adjust.reminders" button
Then I should see "my.reminders" screen
When I tap on "reminders.long-acting.insulin.dose" option
Then I should see "edit.reminder" screen
When I tap on "reminders.activity" field 
And I tap on "reminders.blood.sugar.check" option
And I tap on "reminder.cancel" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
And I tap on "reminder.cancel" button
And I tap on "discard" button
Then I should see "my.reminders" screen
When I tap on "reminders.long-acting.insulin.dose" option
And I tap on "edit.reminder.delete" button
Then I should see "delete.reminder" pop-up
And I should see "delete.this.reminder" text 
And I should see "cancel" button
And I should see "reminder.delete" button
When I tap on "cancel" button
And I tap on "edit.reminder.delete" button
And I tap on "reminder.delete" button
Then I should see "my.reminders" screen
When I tap on "back" button
Then I should see "more.menu" screen

@Precondition
Scenario: Loging out of Application
        
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen