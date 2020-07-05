Feature: Madelyne-MMA Android Quick Share – Progress -  Software Test Protocol

# PRE-CONDITIONS: 

# Make sure that the iOS/Android device is connected to the Wi-Fi.
# Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
# Make sure that the user is registered successfully on MMA App as per section 6.2.
# Make sure that the user has navigated till home screen as per section 6.4.
# Make sure that user having entries of Blood Sugar, Mealtime Insulin, Long Acting Insulin, Carbs and Health Factors.
# Make sure that user has an activated HCP code in Data Sharing screen.

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
When I tap "new.entry" button
And I tap on "enter.blood.sugar.new.entry" option
Then I should see "blood.sugar" screen
When I tap on "blood.sugar.mg.dl" field
And I enter "200" into "blood.sugar.mg.dl" field
Then I should see "200" in "blood.sugar.mg.dl" field
When I tap on "save" button
And I tap on "new.entry" button
And I tap on "enter.mealtime.insulin.new.entry" option
Then I should see "mealtime.insulin" screen
When I tap on "mealtime.units" field
And I enter "16" into "mealtime.units" field
Then I should see "16" in "mealtime.units" field
When I tap on "save" button
And I tap on "new.entry" button
And I tap on "enter.long.acting.insulin.new.entry" option
Then I should see "long-acting.insulin" screen
When I tap on "longacting.units" field
And I enter "15" into "longacting.units" field
Then I should see "15" in "longacting.units" field
When I tap on "save" button
And I tap "new.entry" button
And I tap "enter.carb.intake.new.entry"
Then I should see "carb.intake" screen
When I tap on "carb.intake.grams" field
And I enter "200" into "carb.intake.grams" field
Then I should see "200" in "carb.intake.grams" field
When I tap on "save" button
And I tap on "new.entry" option
Then I should see "new.logbook.entry" screen
When I tap on "enter.health.factors.new.entry" option
And I tap on "activity.checkbox"
Then I should see "activity.checkbox" selected
When I tap "save" button
Then I should see "home" screen

@QuickShareProgress
Scenario: Verification of Quick Share from Progress Screen

#-------Tap on Progress icon-----#
#-------Tap on Share my data button-----#

Given I should see "home" screen   
When I tap on "progress.icon"
And I Swipe Down "share.my.data" 
And I tap on "share.my.data" button
Then I should see "action.sheet" pop-up
And I should see "quick.share.my.tempo.data" button
And I should see "create.my.tempo.report" button

#------- Tap on Back button of device-----#
#------Tap on “Share myTempo Data” button----#
#-------- “Quick Share my data” button-----#

# When I tap on "back" button
When I tap outside "action.sheet" pop-up
And I tap on "share.my.data" button
And I tap on "quick.share.my.tempo.data" button
Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field                       ### spinner disables fast  
# And I should see "generate.new.code" button is disabled                   #### spinner disables fast 

#---Wait until code is generated--------#

And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

#------Tap on “Generate New Code” button----#

When I tap on "generate.new.code" button 
# Then I should see "activity.spinner" in "code" field                      ### spinner disables fast  
# And I should see "generate.new.code" button is disabled                   ### spinner disables fast 

#---Wait until code is generated--------#

And I wait for "7" seconds 
Then I should see "quick.share.screen" screen
# And I should see "code.field.is.activated"
And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

#------- Tap on back button of device-----#
#------Tap on “Share myTempo Data” button----#
#-------- “Quick Share myTempo Data” button-----#

When I tap on "quick.share.cancel" button
Then I should see "progress" screen
When I Swipe Down "share.my.data"
And I tap on "share.my.data" button
And I tap on "quick.share.my.tempo.data" button
Then I should see "quick.share.screen" screen
When I wait for "2" seconds
Then I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

#------Tap on “Generate New Code” button----#

When I tap on "generate.new.code" button 
Then I should see "quick.share.screen" screen
When I wait for "7" seconds
Then I should see "code.field.quick.share.screen" text

When I tap on "quick.share.cancel" button
Then I should see "progress" screen

########----Following cannot be automated---------------########


#---Put the app background and change the device time to 9 hours 50 minutes ahead of code generation time-------#
#---Launch the App again and verify Quick Share Screen-----------#

# When I set device time to 9 hours 50 minutes ahead 
# And I relaunch the app again
# Then I should see "quick.share.screen" screen
# And I should see "code.field.quick.share.screen" text
# # And I should see "generate.new.code" button is enabled 

#---Put the app background and change the device time to 10 hours ahead of code generation time-------#
#---Launch the App again and verify Quick Share Screen-----------#

# When I set device time to 10 hours ahead 
# And I relaunch the app again
# Then I should see "quick.share.screen" screen
# And I should see "code.field.quick.share.screen" text
# # And I should see "generate.new.code" button is enabled 


# Scenario: Verification of Quick Share – Progress – Network Error - Android

# # PRE-CONDITIONS:

# Make sure that the Android device is connected to the Wi-Fi.
# Make sure that the Madelyne MMA is installed on the Android device as per section 6.1.
# Make sure that the user is registered successfully on MMA App as per section 6.2.
# Make sure that the user has navigated till home screen as per section 6.4.
# Make sure that user having entries of Blood Sugar, Mealtime Insulin, Long Acting Insulin, Carbs and Health Factors.
# Make sure that user has an activated HCP code in Data Sharing screen.

# #----------------Make sure Device Data is turned off---------------##
# #-----------------Tap on the “Progress” option in the home screen----------------------#
# #-----------------Tap on “Share myTempo Data” button----------------------#
# #-----------------“Quick Share myTempo Data” button----------------------#
# #-----------------Enable the Wi-Fi and go away from Wifi where signal is not present----------------------#
# #-----------------Tap on “Generate New Code” button----------------------#

# When I tap on "progress.icon"
# And I tap on "share.my.data" button
# And I tap on "quick.share.my.tempo.data" button
# And I enable wifi
# And I go away from wifi
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field
# And I should see "generate.new.code" button is disabled
# And I should see "no.network.connection" pop-up
# And I should see "please.check.your.settings.and.try.again" text
# And I should see "cancel.in.popup" button
# And I should see "open.device.settings.in.popup" button

# #-------------Tap on "cancel" button in popup-------------#

# When I tap on "cancel.in.popup" button
# Then I should see "quick.share.screen" screen
# And I should see "code.field.is.deactivated"
# And I should see "dashes" in "code" field
# And I should see "generate.new.code" button

# #-------Make sure wifi is present------#
# #-------Tap on “generate new code” button------#

# When I turn on wifi
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field
# And I should see "generate.new.code" button is disabled
# And I wait for "5" seconds
# And I should see "generated.new.temporary.code" in "code" field

#---Disable the mobile data in device settings---------#
#---Disable the wifi in device settings-------------#
#----Tap on “generate new code” button------#

# When I disable the mobile data in device settings
# And I disable the wifi in device settings
# And I tap on "generate.new.code" button
# And I should see "no.network.connection" pop-up


# #-------------Tap on "cancel" button in popup-------------#
# #-------------Make sure mobile data signal is present------#
# #-------Tap on “generate new code” button------#


# When I tap on "cancel.in.popup" button
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field
# And I should see "generate.new.code" button is disabled 


@SmokeTest
Scenario: Smoke Test for Quick Share from Progress Screen

Given I should see "home" screen
When I tap on "progress.icon"
Then I should see "progress" screen
When I Swipe Down "share.my.data"
And I tap on "share.my.data" button
Then I should see "action.sheet" pop-up
And I should see "quick.share.my.tempo.data" button
And I should see "create.my.tempo.report" button

When I tap outside "action.sheet" pop-up
And I tap on "share.my.data" button
And I tap on "quick.share.my.tempo.data" button
Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field                       ### spinner disables fast 
# And I should see "generate.new.code" button is disabled                   ### spinner disables fast 
And I should see "code.field.quick.share.screen" text

When I tap on "generate.new.code" button 
And I wait for "7" seconds 
Then I should see "quick.share.screen" screen
And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 
When I tap on "quick.share.cancel" button
Then I should see "progress" screen


@RegressionTest
Scenario: Regression Test for Quick Share from Progress Screen

Given I should see "home" screen
When I tap on "progress.icon"
And I Swipe Down "share.my.data"
And I tap on "share.my.data" button
Then I should see "action.sheet" pop-up
And I should see "quick.share.my.tempo.data" button
And I should see "create.my.tempo.report" button

When I tap outside "action.sheet" pop-up
And I tap on "share.my.data" button
And I tap on "quick.share.my.tempo.data" button
Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field                         ### spinner disables fast 
# And I should see "generate.new.code" button is disabled                     ### spinner disables fast 

And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

When I tap on "generate.new.code" button 
And I wait for "7" seconds 
Then I should see "quick.share.screen" screen
# And I should see "code.field.is.activated"
And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

When I tap on "quick.share.cancel" button
And I Swipe Down "share.my.data"
And I tap on "share.my.data" button
And I tap on "quick.share.my.tempo.data" button
Then I should see "quick.share.screen" screen
When I wait for "2" seconds
Then I should see "code.field.quick.share.screen" text

When I tap on "generate.new.code" button
And I wait for "7" seconds
Then I should see "code.field.quick.share.screen" text

When I tap on "quick.share.cancel" button
Then I should see "progress" screen

@Precondition
Scenario: Loging out of Application

When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen


























