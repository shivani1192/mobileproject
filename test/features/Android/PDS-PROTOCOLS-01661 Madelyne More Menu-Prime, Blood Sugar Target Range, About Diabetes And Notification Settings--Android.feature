Feature: Verfication of MORE MENU – PRIME, BLOOD SUGAR TARGET RANGE, ABOUT DIABETES AND NOTIFICATION SETTINGS - SOFTWARE TEST PROTOCOL

#Preconditions:
#  Make sure the Madelyne MMA App is installed on the device as per section 6.1.
#  Make sure the user is registered successfully on MMA App as per section 6.2.
#  Ensure the device is connected to Internet.
#  Ensure MMA is at the “Home” screen.
#  Make sure to use latest Registered credentials of your Lilly account
#  Make sure that notifications is turned ON for Madelyne MMA App in device settings

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

@PrimeAirShot
Scenario: Verification of Prime Air Shot Screen

Given I should see "home" screen
When I tap on "more" option
Then I should see "more.menu" screen
And I should see "prime.air.shot" option
When I tap on "prime.air.shot" option
Then I should see "prime.air.shot" screen
And I should see "prime.air.shot.back" button
# And I should see "orange.header"                                          ## colors cannot be automated
And I should see "prime.air.shot" text
And I should see "priming.your.pen.title" text
And I should see "priming.your.pen.text" text
When I tap on "prime.air.shot.back" button
Then I should see "more.menu" screen
When I tap on "home" option
Then I should see "home" screen


@BloodSugarTargetRange
Scenario: Verification of Blood Sugar Target Range Screen 

Given I should see "home" screen
When I tap on "more" option
Then I should see "more.menu" screen
And I should see "blood.sugar.target.range" option
And I Verify "blood.sugar.target.range" text

When I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title" screen
And I Verify "blood.sugar.target.range.title" text
And I should see "back" button
And I should see "save" button
And I should see "below.range.button" field
And I should see "set.your.target.range.using.input.fields" text
And I should see "default.below.range" in "below.range.button" field
And I should see "mg.dl.as.uom"
And I should see "above.range.button" field
And I should see "default.above.range" in "above.range.button" field
And I should see "mg.dl.as.uom"
# blood sugar colour range with maroon,red,green,yellow and orange              ## colors cannot be automated
And I should see "hypo" text
And I should see "default.value.text" text
And I should see "reset.to.default" link

When I tap on "below.range.button" field
# Then I should see "number.pad" # device specific
# And I should see "done" option # device specific
# And I should see T 9 number has backspace key # device specific
# And I should see black needle like pointer indicating "80" in color bar      ## images cannot be automated
And I clear "below.range.button" field
And I enter "69" into "below.range.button" field
Then I should see "69" in "below.range.button" field
And I should see "below.range.value.between" errormessage
# And I should see error message in red under below range text box            ## colors cannot be automated
When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "70" into "below.range.button" field
# Then I should see below range field highlighted in red                      ## colors cannot be automated
Then I should see "70" in "below.range.button" field
And I should see "below.range.value.between" errormessage

When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "180" into "below.range.button" field
Then I should see "180" in "below.range.button" field
# And I should see below range field highlighted in red                       ## colors cannot be automated
And I should see "below.range.value.between" errormessage
# And I should see error message in red under below range text box            ## colors cannot be automated

When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "108" into "below.range.button" field
# And I tap on "done" button

Then I should see "108" in "below.range.button" field
# And I should see black needle like pointer indicating "108" in color bar ## images cannot be automated
#Then I should see color bar is updated with red color      ## colors cannot be automated    
When I tap "above.range.button" field
# Then I should see "number.pad" # device specific
# And I should see "done" option # device specific
# And I should see T 9 number has backspace key # device specific
# And I should see black needle like pointer indicating "180" in color bar ## images cannot be automated
And I clear "above.range.button" field
And I enter "70" into "above.range.button" field
# And I should see above range field highlighted in red ## colors cannot be automated
Then I should see "70" in "above.range.button" field
And I should see "above.range.value.cannot.be.less" errormessage
# And I should see error message in red under above range text box ## colors cannot be automated

When I tap "above.range.button" field
# And I should see above range field highlighted in red ## colors cannot be automated
And I clear "above.range.button" field
And I enter "500" into "above.range.button" field
Then I should see "500" in "above.range.button" field
And I should see "above.range.value.cannot.be.high" errormessage
# And I should see error message in red under above range text box ## colors cannot be automated

When I tap "above.range.button" field
And I clear "above.range.button" field
And I enter "185" into "above.range.button" field
# And I tap on "done" button
Then I should see "185" in "above.range.button" field
# And I should see black needle like pointer indicating "185" in color bar ## images cannot be automated

When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard" text
And I should see "cancel" button
And I should see "discard" button

When I tap on "cancel" button
Then I should see "blood.sugar.target.range.title" screen

When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen

When I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title" screen
And I should see "80" in "below.range.button" field
And I should see "180" in "above.range.button" field

When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "108" into "below.range.button" field
And I tap "above.range.button" field
And I clear "above.range.button" field
And I enter "185" into "above.range.button" field
And I tap on "save" button
And I tap on "blood.sugar.target.range" option
Then I should see "108" in "below.range.button" field
And I should see "185" in "above.range.button" field
# color bar is updated according to values in above range and below range ## colors cannot be automated

When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "55" into "below.range.button" field
And I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "56" into "above.range.button" field
Then I should see "55" in "below.range.button" field
And I should see "below.range.value.between" errormessage
And I should see "56" in "above.range.button" field

When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "blood.sugar.target.range.title" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen

And I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title" screen
And I should see "108" in "below.range.button" field
And I should see "185" in "above.range.button" field
# color bar is updated according to values in above range and below range ## colors cannot be automated

When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "55" into "below.range.button" field
And I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "80" into "above.range.button" field
Then I should see "55" in "below.range.button" field
And I should see "below.range.value.between" errormessage
# And I should see error message in red under below range text box ## colors cannot be automated
And I should see "80" in "above.range.button" field

When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "blood.sugar.target.range.title" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen

And I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title" screen
And I should see "108" in "below.range.button" field
And I should see "185" in "above.range.button" field

When I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "80" into "above.range.button" field
And I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "80" into "below.range.button" field
Then I should see "80" in "above.range.button" field
# And I should see above range highlighted in red ## colors cannot be automated
And I should see "above.range.value.cannot.be.less" errormessage
# And I should see error message in red under above range text box ## colors cannot be automated
And I should see "80" in "below.range.button" field
# And I should see below range highlighted in red ## colors cannot be automated
And I should see "below.range.value.cannot.be.high" errormessage

When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "blood.sugar.target.range.title" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen

And I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title" screen
And I should see "108" in "below.range.button" field
And I should see "185" in "above.range.button" field
# color bar is updated according to values in above range and below range ## colors cannot be automated

When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "75" into "below.range.button" field
And I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "75" into "above.range.button" field
Then I should see "75" in "below.range.button" field
And I should see "75" in "above.range.button" field
# And I should see above range highlighted in red ## colors cannot be automated
And I should see "above.range.value.cannot.be.less" errormessage
# And I should see error message in red under above range text box ## colors cannot be automated

When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "blood.sugar.target.range.title" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen


And I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title" screen
And I should see "108" in "below.range.button" field
# And I should see "75" in "below.range.button" field ## protocol issue
And I should see "185" in "above.range.button" field
# color bar is updated according to values in above range and below range ## colors cannot be automated

When I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "99" into "above.range.button" field
And I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "100" into "below.range.button" field
Then I should see "99" in "above.range.button" field
And I should see "100" in "below.range.button" field
# And I should see below range highlighted in red ## colors cannot be automated
And I should see "below.range.value.cannot.be.high" errormessage
# And I should see error message in red under below range text box ## colors cannot be automated

When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "75" into "below.range.button" field
And I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "80" into "above.range.button" field
Then I should see "75" in "below.range.button" field
And I should see "80" in "above.range.button" field
# color bar is updated according to values in above range and below range ## colors cannot be automated

When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "71" into "below.range.button" field
And I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "72" into "above.range.button" field
Then I should see "71" in "below.range.button" field
And I should see "72" in "above.range.button" field

When I hide device keyboard
And I tap on "reset.to.default" option
Then I should see "default.below.range" in "below.range.button" field
And I should see "default.above.range" in "above.range.button" field

When I tap on "save" button
Then I should see "more.menu" screen

When I tap on "home" option
Then I should see "home" screen
  
@AboutDiabetes
Scenario: Verfication of About Diabetes Screen

 
# PRE-CONDITIONS:
#   Make sure the Madelyne MMA App is installed on the device as per section 6.1
#   Make sure the user is registered successfully on MMA App as per section 6.2
#   Ensure the device is connected to Internet
#   Ensure MMA is at the “Home” screen
    
    
Given I should see "home" screen
When I tap on "more" option
Then I should see "more.menu" screen
And I should see "about.diabetes" option

When I tap on "about.diabetes" option
And I wait for "30" seconds 
# Then I should see "user.redirected.to.external.weblink"  #### cannot be automated
Then I should see "back" button 
When I tap on "back" button
Then I should see "more.menu" screen

When I tap on "home" option
Then I should see "home" screen

########## Cannot be automated completely  #############################

@NotificationSettings
Scenario: Verification of Notification Settings Screen

  
#  PRE-CONDITIONS:
# Ensure the Madelyne MMA App is installed on the device as per section 6.1
# Ensure the user is registered successfully on MMA App as per section 6.2
# Ensure the device is connected to Internet.
# Ensure MMA is at the “Home” screen without tapping on "Allow" button in "myTempo app would like to send you notifications" popup
# Ensure the device time is 6:00am.
     
Given I should see "home" screen
When I disable set automatically in device settings
And I set device time as "6:0 AM"
And I tap on "more" option
Then I should see "more.menu" screen
And I should see "notification.settings" option
When I tap on "notification.settings" option
Then I should see "notification.settings.title" text
And I should see "back" button
And I should see "connected.device.notifications.toggle" button
#And I should see "connected.device.notifications.toggle" button in ON state

When I tap on "back" button
Then I should see "more.menu" screen

@MyReminders
Scenario: Verifying My Reminders Screen 

Given I should see "more.menu" screen
When I tap on "my.reminders" option
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field
And I tap on "reminders.blood.sugar.check" option
And I tap on "time.of.daily.reminder" field 
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen

When I tap on "back" button
Then I should see "more.menu" screen

### Following steps cannot be automated 

# When I disable set automatically in device settings
# And I set device time as "6:59 AM"  ### we cannot set minutes to 59 in android
# And I wait for "1" minutes
# Then I should not see "notification" on mobile lock screen
# When I tap on "bell.icon.in.home" icon
# Then I should not see "notification.message"
# And I should see notification screen is empty
# When I tap on "back" button
# Then I should see "home" screen
# When I tap on "more" option
# Then I should see "more.menu" screen

@LoginAndSecurity
Scenario: Verifying Login and Security Screen
        
Given I should see "more.menu" screen
When I tap on "login.and.security.option"
Then I should see "login.and.security.title"
And I Verify "login.and.security.title" text
And I should see "back" button
And I should see "email.address.field"
And I should see "password.field"
And I should see "enable.fingerprint" button
And I should see "auto.logout" button
And I should see "logout" button
        
When I tap on "logout" button
Then I see "login.to.your.account" screen
And I should see "login.to.your.account" title
And I Verify "login.to.your.account" text

### Following steps cannot be automated

# When I tap on "back" button
# Then I should see "more.menu" screen
# When I uninstall app
# And I reinstall app and navigate upto home screen

When I tap on "back" button
Then I should see "welcome.to.tempotm" screen

When I set deviceformat to 12 hour
And I enable set automatically in device settings
And I turn OFF Bluetooth

And I tap "lets.get.started" button
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
When I tap on "continue" button
Then I should see "connect.smart" screen
When I tap on "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
When I tap on "bgm.skip" button
And I tap on "home.next" button
And I tap on "home.reminders.not.now" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "downward.arrow" mark
Then I should see "home" screen

When I tap on "bell.icon.in.home" icon
Then I should see "notifications" screen
# #empty notification screen
When I tap on "back" button
And I tap on "more" option
And I tap on "my.reminders" option
Then I should see "my.reminders" screen

@MyReminders
Scenario: Verifying My Reminders Screen 

Given I should see "my.reminders" screen
When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field
And I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button
Then I should see "more.menu" screen
When I tap "home" button
# And I disable set automatically in device settings
# And I set device time as "10:59 AM"  ### we cannot set minutes to 59 in android
# And I wait for "1" minutes
#And I should see "notification" on mobile lock screen       #######cannot be automated##########
And I disable set automatically in device settings
And I set device time as "10:55 AM"
And I wait for "6" minutes  
And I tap on "ok.popup" button
Then I should see "home" screen
When I wait for "10" seconds
And I tap on "bell.icon.in.home" icon
And I wait for "10" seconds
Then I should see "notification.message"                                                 
When I tap on "back" button
Then I should see "home" screen
When I tap on "more" option
And I tap on "notification.settings" option
Then I should see "notification.settings.title" text
And I should see "back" button
And I should see "connected.device.notifications.toggle" button
# And I should see "connected.device.notifications.toggle" button in ON state
# When I tap on "connected.device.notifications.toggle" button  
# Then I should see "connected.device.notifications.toggle" button in OFF state

When I tap on "back" button
Then I should see "more.menu" screen

#----------OFF State Notification Scenario----------------#
#-------------Cannot be automated-----------------#

# When I set device time as "6:59 AM"  ### we cannot set minutes to 59 in android
# And I wait for "1" minutes
#And I should see "notification" on mobile lock screen       #######cannot be automated##########        
# When I set device time as "6:55 AM"
# And I wait for "6" minutes                                                        
# And I tap "home" button
# And I wait for "10" seconds
# And I tap on "bell.icon.in.home" icon
# And I wait for "10" seconds                       
# Then I should see "notification.message.1" 
# And I should see "notification.message.2"                               
# When I tap on "back" button
# Then I should see "home" screen
# When I tap on "more" option
# Then I should see "more.menu" screen

@SmokeTest
Scenario: Smoke Test for Prime / Air Shot , Blood Sugar Target Range , About Diabetes and Notification Settings

Given I set deviceformat to 12 hour
When I enable set automatically in device settings
And I tap on "more" option
Then I should see "more.menu" screen
When I tap on "prime.air.shot" option
Then I should see "prime.air.shot" screen
And I should see "priming.your.pen.title" text
And I should see "priming.your.pen.text" text
And I should see "prime.air.shot.back" button
When I tap on "prime.air.shot.back" button
And I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title"
And I should see "default.below.range" in "below.range.button" field
And I should see "default.above.range" in "above.range.button" field
And I should see "default.value.text" text
When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "108" into "below.range.button" field
Then I should see "108" in "below.range.button" field
When I tap "above.range.button" field
And I clear "above.range.button" field
And I enter "185" into "above.range.button" field
Then I should see "185" in "above.range.button" field
When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "blood.sugar.target.range.title" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen
When I tap on "blood.sugar.target.range" option
And I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "108" into "below.range.button" field
And I tap "above.range.button" field
And I clear "above.range.button" field
And I enter "185" into "above.range.button" field
And I tap on "save" button
And I tap on "blood.sugar.target.range" option
And I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "71" into "below.range.button" field
And I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "72" into "above.range.button" field
And I hide device keyboard
And I tap on "reset.to.default" option
Then I should see "default.below.range" in "below.range.button" field
And I should see "default.above.range" in "above.range.button" field
When I tap on "save" button
Then I should see "more.menu" screen
When I tap on "about.diabetes" option
And I wait for "30" seconds
And I tap on "back" button
And I disable set automatically in device settings
And I set device time as "6:0 AM"
Then I should see "more.menu" screen
When I tap on "notification.settings" option
Then I should see "notification.settings.title" text
And I should see "connected.device.notifications.toggle" button
When I tap on "back" button
And I tap on "my.reminders" option
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field
And I tap on "reminders.blood.sugar.check" option
And I tap on "time.of.daily.reminder" field 
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button
Then I should see "more.menu" screen
When I tap on "login.and.security.option"
Then I should see "login.and.security.title"
And I should see "back" button
And I should see "email.address.field"
And I should see "password.field"
And I should see "enable.fingerprint" button
And I should see "auto.logout" button
And I should see "logout" button
When I tap on "back" button
And I tap on "my.reminders" option
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field
And I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button
Then I should see "more.menu" screen
When I disable set automatically in device settings
And I set device time as "10:55 AM"
And I wait for "6" minutes 
And I tap on "ok.popup" button
And I tap "home" button
And I wait for "10" seconds 
And I tap on "bell.icon.in.home" icon
And I wait for "10" seconds                            
Then I should see "notification.message"                              
When I tap on "back" button
Then I should see "home" screen
When I tap on "more" option
Then I should see "more.menu" screen

@RegressionTest
Scenario: Regression Test for Prime / Air Shot , Blood Sugar Target Range , About Diabetes and Notification Settings

Given I set deviceformat to 12 hour
When I enable set automatically in device settings
And I tap on "more" option
Then I should see "more.menu" screen
When I tap on "prime.air.shot" option
Then I should see "prime.air.shot" screen
And I should see "priming.your.pen.title" text
And I should see "priming.your.pen.text" text
And I should see "prime.air.shot.back" button
When I tap on "prime.air.shot.back" button
Then I should see "more.menu" screen
When I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title"
When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "75" into "below.range.button" field
Then I should see "75" in "below.range.button" field
When I tap "above.range.button" field
And I clear "above.range.button" field
And I enter "80" into "above.range.button" field
Then I should see "80" in "above.range.button" field
When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "55" into "below.range.button" field
Then I should see "below.range.value.between" errormessage
When I tap "above.range.button" field
And I enter "75" into "above.range.button" field
And I clear "above.range.button" field
Then I should see "above.range.value.cannot.be.less" errormessage
When I tap "above.range.button" field
And I clear "above.range.button" field
And I enter "500" into "above.range.button" field
Then I should see "above.range.value.cannot.be.high" errormessage
When I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "108" into "below.range.button" field
And I tap "above.range.button" field
And I clear "above.range.button" field
And I enter "185" into "above.range.button" field
And I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard" text
And I should see "cancel" button
And I should see "discard" button
When I tap on "cancel" button
Then I should see "blood.sugar.target.range.title" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen
When I tap on "blood.sugar.target.range" option
And I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "108" into "below.range.button" field
And I tap "above.range.button" field
And I clear "above.range.button" field
And I enter "185" into "above.range.button" field
And I tap on "save" button
And I tap on "blood.sugar.target.range" option
And I tap on "below.range.button" field
And I clear "below.range.button" field
And I enter "71" into "below.range.button" field
And I tap on "above.range.button" field
And I clear "above.range.button" field
And I enter "72" into "above.range.button" field
And I hide device keyboard
And I tap on "reset.to.default" option
Then I should see "default.below.range" in "below.range.button" field
And I should see "default.above.range" in "above.range.button" field
When I tap on "save" button
Then I should see "more.menu" screen
And I should see "about.diabetes" option
When I tap on "about.diabetes" option
And I wait for "30" seconds 
Then I should see "back" button 
When I tap on "back" button
And I disable set automatically in device settings
And I set device time as "6:0 AM"
And I tap on "more" option
Then I should see "more.menu" screen
When I tap on "notification.settings" option
Then I should see "notification.settings.title" text
And I should see "back" button
And I should see "connected.device.notifications.toggle" button
When I tap on "back" button 
And I tap on "my.reminders" option
And I tap on "reminders.add.new" button
And I tap on "reminders.activity" field
And I tap on "reminders.blood.sugar.check" option
And I tap on "time.of.daily.reminder" field 
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button
Then I should see "more.menu" screen
When I tap on "login.and.security.option"
Then I should see "login.and.security.title"
And I should see "back" button
And I should see "email.address.field"
And I should see "password.field"
And I should see "enable.fingerprint" button
And I should see "auto.logout" button
And I should see "logout" button
When I tap on "back" button
Then I should see "more.menu" screen
When I tap on "my.reminders" option
Then I should see "my.reminders" screen
When I tap on "reminders.add.new" button
And I tap on "reminders.activity" field
And I tap on "reminders.enter.carb.intake" option
And I tap on "time.of.daily.reminder" field 
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am" field
And I tap on "ok.button" button
And I tap on "reminders.save" button
Then I should see "my.reminders" screen
When I tap on "back" button
And I should see "more.menu" screen
When I disable set automatically in device settings       
And I set device time as "10:55 AM"
And I wait for "6" minutes 
And I tap on "ok.popup" button
And I tap "home" button
And I wait for "10" seconds
Then I should see "home" screen
When I tap on "bell.icon.in.home" icon
And I wait for "10" seconds
Then I should see "notification.message"                       
When I tap on "back" button
Then I should see "home" screen
When I tap on "more" option
Then I should see "more.menu" screen

@Precondition
Scenario: Loging out of Application
        
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen