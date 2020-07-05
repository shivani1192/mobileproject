#---------- SRS Covered MAD10-SYS-2225,MAD10-MMA_SRS-209,MAD10-MMA_SRS-211,MAD10-MMA_SRS-212,MAD10-MMA_SRS-380
#---------- MAD10-MMA_SRS-381,MAD10-MMA_SRS-216,MAD10-MMA_SRS-217,MAD10-MMA_SRS-219
#---------- Version 1
Feature: Verfication of MORE MENU – PRIME, BLOOD SUGAR TARGET RANGE, ABOUT DIABETES AND NOTIFICATION SETTINGS - SOFTWARE TEST PROTOCOL

#Preconditions:
#  Make sure the Madelyne MMA App is installed on the device as per section 6.1.
#  Make sure the user is registered successfully on MMA App as per section 6.2.
#  Ensure the device is connected to Internet.
#  Ensure MMA is at the “Home” screen.
#  Make sure to use latest Registered credentials of your Lilly account
#  Make sure that notifications is turned ON for Madelyne MMA App in device settings
    
@Precondition
Scenario: MORE MENU – PRIME, BLOOD SUGAR TARGET RANGE, ABOUT DIABETES AND NOTIFICATION SETTINGS - SOFTWARE TEST PROTOCOL

Given I launch the Madelyne application
#  And I relaunch the settings app again
# When I set deviceformat to 12 hour
#  And I relaunch the settings app again
#   And I enable set automatically in device settings
 
       Then I should see "welcome.to.tempotm" screen
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
          Then I should see "home" screen
         And I handle Notification pop-up
         And I handle Bluetooth Notification pop-up
          And I relaunch the app
               And I handle ok button
       

    @PrimeAirShot
Scenario: Verification of Prime Air Shot screen
 Given I should see "home" screen
  When I tap on "more" option
  Then I should see "prime.air.shot"
  When I tap on "prime.air.shot" option
    Then I should see "prime.air.shot.title" screen
Then I should see "priming.your.pen.title"
Then I should see "priming.your.pen.text"
When I tap on "back" button
Then I should see "more.menu" screen
       
@BloodSugarTargetRange
Scenario: Verification of Blood Sugar Target Range screen

 Given I should see "home" screen
  When I tap on "more" option
And I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title" screen
And I Verify "blood.sugar.target.range.title" text
And I should see "back" button
And I should see "save" button
And I should see "set.your.target.range" text
And I should see "below.range" field
And I should see "default.below.range" in "below.range" field
###not able to inspect 
# And I should see "mg.dl.below.range" text                                                 
# And I should see "mg.dl.above.range" text                                           
And I should see "above.range" field
And I should see "default.above.range" in "above.range" field
##### Colours/images/icons cannot be verified #####
# And I should see "blood.sugar.target.range.colour.bars"                                    
# And I should see "red.bar"                                                                  
# And I should see "green.bar.with.value.80"                                                  
# And I should see "yellow.bar.with.value.180" 
##### Colours/images/icons cannot be verified #####
And I should see "hypo" text
And I should see "default.value.text" text
And I should see "reset.to.default" link
When I tap on "below.range.button" field
#Then I should see "barrel.picker"                                                   ##### Colours/images/icons cannot be verified #####
Then I should see "default.below.range" in "below.range" field
And I should see "done" option
And I select "71" in "below.range.scroll" field
And I tap "done" button
Then I should see "71" in "below.range" field
# And I should see Color bar is updated with green color                                              ##### Colours/images/icons cannot be verified #####
When I tap "above.range.button" field
#Then I should see "barrel.picker"                                                                  ##### Colours/images/icons cannot be verified #####
Then I should see "above.range.scroll"
And I should see "done" option
And I should see "default.above.range" in "above.range" field
And I select "499" in "above.range.scroll" field
And I tap "done" button
Then I should see "499" in "above.range" field
When I tap on "back" button
##
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel.popup" button
And I should see "discard" button
When I tap on "cancel.popup" button
Then I should see "blood.sugar.target.range.title" screen

When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen
######################################
When I tap on "blood.sugar.target.range" option
And I tap on "below.range.button" field
And I select "71" in "below.range.scroll" field
And I tap "done" button
And I tap "above.range.button" field
And I select "499" in "above.range.scroll" field
And I tap "done" button
#And I should see Color bar is updated with green color                                             ##### Colours/images/icons cannot be verified #####
And I tap on "save" button
And I tap on "blood.sugar.target.range" option
Then I should see "71" in "below.range" field
And I should see "499" in "above.range" field

When I tap on "below.range.button" field
And I select "71" in "below.range.scroll" field
And I tap "done" button
And I tap "above.range.button" field
And I select "72" in "above.range.scroll" field
And I tap "done" button
Then I should see "71" in "below.range" field
And I should see "72" in "above.range" field
#And I should see Color bar is updated with green color                                             ##### Colours/images/icons cannot be verified #####
When I tap on "reset.to.default" option
Then I should see "default.below.range" in "below.range" field
And I should see "default.above.range" in "above.range" field
When I tap on "save" button
 Then I should see "more.menu" screen
When I tap on "home" option
Then I should see "home" screen

@AboutDiabetes
Scenario: Verfication of About Diabetes Screen

# # # PRE-CONDITIONS:
# # # 	Make sure the Madelyne MMA App is installed on the device as per section 6.1
# # # 	Make sure the user is registered successfully on MMA App as per section 6.2
# # # 	Ensure the device is connected to Internet
# # # 	Ensure MMA is at the “Home” screen
        
Given I should see "home" screen
When I tap on "more" option
 Then I should see "more.menu" screen
And I should see "about.diabetes" option
When I tap on "about.diabetes" option
#  And I wait for "5" seconds
Then I should see "about.diabetes.web.view"
And I should see "close" button
# And I should see "refresh" icon
# When I tap on "refresh" icon
And I wait for "15" seconds
# Then I should see website will be refreshed                           ##cannot be automated
And I tap on "close" button
And I relaunch the app
And I tap on "more" option
 Then I should see "more.menu" screen
When I tap on "home" option
Then I should see "home" screen
        
@NotificationSettings
Scenario: Verification of Notification Settings screen
        
#  PRE-CONDITIONS:
# Ensure the Madelyne MMA App is installed on the device as per section 6.1
# Ensure the user is registered successfully on MMA App as per section 6.2
# Ensure the device is connected to Internet.
# Ensure MMA is at the “Home” screen.
# Ensure the device time is 6:00am.
        
When I relaunch the settings app again
And I disable set automatically in device settings
And I relaunch the settings app again
And I relaunch the app again
And I set device time as "6:00 AM"
And I handle time zone popup
And I handle Notification pop-up
And I handle turn on bluetooth pop-up
# And I tap on "x" button
And I tap on "more" option
 Then I should see "more.menu" screen
When I tap on "notification.settings" option
Then I should see "notification.settings.title" text
And I should see "connected.device.notifications.on" button
And I should see "you.be.notified.every.time" text
And I should see "back" button

When I tap on "back" button
 Then I should see "more.menu" screen

  @MyReminders
Scenario: Verifying MYReminders screen 
        
 Given I should see "more.menu" screen
When I tap on "my.reminders" option
 Then I should see "my.reminders.text" screen
When I tap on "home.add.new.reminders" button
 And I tap on "activity" button
 And I tap "reminders.enter.blood.sugar" button
And I tap on "reminder.time"

#select 7.00am
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field

And I tap on "done" button
And I tap on "save" button
And I tap on "back" button
 Then I should see "more.menu" screen
##OFFState## 
# When I tap "home" button
# And I disable set automatically in device settings
# And I set device time as "6:59 AM"
# And I wait for "1" minutes
# #And I should not see "notification" on mobile lock screen                 #######cannot be automated##########
# And I handle time zone popup
# Then I should see "home" screen
# When I tap on "bell.icon.in.home" icon
# And I wait for "10" seconds
# Then I should not see "notification"
# When I tap on "back" button
# And I tap on "more" option
# Then I should see "more.menu" screen


@LoginAndSecurity
Scenario: Verifying Login and Security screen

Given I should see "more.menu" screen
When I tap on "login.and.security.option"
Then I should see "login.and.security.title"
And I should see "email.address.field"
And I should see "password.field"
# ##l#
# # And I should see "enable.touch.id" button
And I should see "auto.logout" button
And I should see "logout" button

When I handle Logout button
And I relaunch the app again
And I handle login to your account screen
Then I should see "login.to.your.account" screen
 And I relaunch the settings app again
When I set deviceformat to 12 hour
 And I relaunch the settings app again
 And I enable set automatically in device settings
 And I handle time zone popup
###cannot be automated
# When I tap on "back" button
# Then I should see "more.menu" screen
# When I uninstall and install app and navigate upto home screen
# When I uninstall app
# And I reinstall app
## navigating till home screen with new account 

And I tap on "back" button
Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "create.account" screen
        When I enter "emailaddress2" into "emailaddress" field
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
         Then I should see "home" screen
       And I handle Notification pop-up
         And I handle Bluetooth Notification pop-up
          And I relaunch the app
              # When I tap "ok" button
      Then I should see "home" screen
  
When I tap on "bell.icon.in.home" icon
And I wait for "10" seconds
Then I should see "notifications" screen
# And I should see notifications with empty screen                ##cannot automate##
When I tap on "back" button
 And I tap on "more" option


@MyReminders
Scenario: Verifying MYReminders screen
When I tap on "my.reminders" option
 Then I should see "my.reminders.text" screen
When I tap on "home.add.new.reminders" button
And I tap on "activity" button
And I tap "reminders.enter.carb.intake" button
And I tap on "reminder.time"
#select 11.00am
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
And I tap on "back" button
 Then I should see "more.menu" screen

When I tap "home" button
And I relaunch the settings app again
And I disable set automatically in device settings
 When I relaunch the settings app again
And I relaunch the app again
And I set device time as "10:59 AM"
And I handle turn on bluetooth pop-up
And I wait for "1" minutes
# #And I should not see "notification" on mobile lock screen                          #######cannot be automated##########
And I handle time zone popup

 And I relaunch the app
 
Then I should see "home" screen
When I tap on "bell.icon.in.home" icon
And I wait for "20" seconds
Then I should see "notifications" screen
# And I should see "notification1" 
When I tap on "back" button
Then I should see "home" screen
When I tap on "more" icon

And I tap on "notification.settings" option
Then I should see "notification.settings.title" text
And I should see "back" button
And I should see "you.be.notified.every.time" text
And I should see "connected.device.notifications.on" button
##off state##
# When I tap on "back" button
# And I tap on "notification.settings" option
# And I tap on "connected.device.notifications.on" button
# And I should see "connected.device.notifications.off" button
# When I tap on "back" button
#  Then I should see "more.menu" screen
# When I tap on "back" button
# And I tap on "home" option  
# When I relaunch the settings app again 
# And I relaunch the app again    
# And I set device time as "6:59 AM" 
# And I wait for "1" minutes
# #And I should not see "notification" on mobile lock screen               #######cannot be automated##########
# And I handle time zone popup
# And I relaunch the app
# And I tap on "bell.icon.in.home" icon
# And I wait for "30" seconds
# Then I should see "notification1"
 When I tap on "back" button
 Then I should see "home" screen
When I tap on "more" option
 Then I should see "more.menu" screen

@SmokeTest
Scenario:Smoketest-Verfication of  prime air shot,blood sugar target range,about diabetes and notification settings

When I tap on "more" option
  Then I should see "prime.air.shot" link
  When I tap on "prime.air.shot" option
    Then I should see "prime.air.shot.title" screen
When I tap on "back" button
Then I should see "more.menu" screen
       
When I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title"
And I should see "default.below.range" in "below.range" field
And I should see "default.above.range" in "above.range" field
When I tap on "below.range.button" field
And I select "71" in "below.range.scroll" field
And I tap "done" button
Then I should see "71" in "below.range" field

When I tap "above.range.button" field
And I select "499" in "above.range.scroll" field
And I tap "done" button
Then I should see "499" in "above.range" field

When I tap "above.range.button" field
And I select "72" in "above.range.scroll" field
And I tap "done" button
Then I should see "72" in "above.range" field
# ## 
When I tap on "back" button
 Then I should see "discard.changes" pop-up
 And I should see "are.you.sure.you.want.to.discard.changes" text
 And I should see "cancel.popup" button
 And I should see "discard" button
 When I tap on "cancel.popup" button
 Then I should see "blood.sugar.target.range.title" screen
 When I tap on "back" button
 And I tap on "discard" button
Then I should see "more.menu" screen

When I tap on "blood.sugar.target.range" option
And I tap on "below.range.button" field
And I select "71" in "below.range.scroll" field
And I tap "done" button
And I tap "above.range.button" field
And I select "499" in "above.range.scroll" field
And I tap "done" button
#And I should see Color bar is updated with green color                                             ##### Colours/images/icons cannot be verified #####
And I tap on "save" button
And I tap on "blood.sugar.target.range" option
Then I should see "71" in "below.range" field
And I should see "499" in "above.range" field

When I tap on "blood.sugar.target.range" option
And I tap on "reset.to.default" option
Then I should see "default.below.range" in "below.range" field
And I should see "default.above.range" in "above.range" field
When I tap on "save" button
Then I should see "more.menu" screen

When I tap on "about.diabetes" option
 Then I should see "about.diabetes.web.view"
 And I wait for "25" seconds
# And I relaunch the app again
##
# And I should see "refresh" icon
# When I tap on "refresh" icon
# And I wait for "25" seconds
# Then I should see website will be refreshed                               ##cannot be automated
 And I tap on "close" button
  When I relaunch the app 
  
And I tap on "more" option
Then I should see "more.menu" screen
When I relaunch the settings app again
And I disable set automatically in device settings
And I relaunch the settings app again
And I set device time as "6:00 AM"
And I relaunch the app 
And I handle time zone popup
And I relaunch the app 
And I tap on "more" option
Then I should see "more.menu" screen
And I tap on "notification.settings" option
Then I should see "notification.settings.title" text
And I should see "connected.device.notifications.on" button
##c#
When I tap on "back" button
Then I should see "more.menu" screen
When I tap on "my.reminders" option
And I tap on "home.add.new.reminders" button
And I tap on "activity" button
And I tap "reminders.enter.blood.sugar" button
And I tap on "reminder.time"

#select 7.00am
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
When I tap on "back" button
 Then I should see "more.menu" screen

When I tap on "login.and.security.option"
Then I should see "login.and.security.title"
When I tap on "back" button
Then I should see "more.menu" screen

When I tap on "my.reminders" option
 Then I should see "my.reminders.text" screen
When I tap on "home.add.new.reminders" button
And I tap on "activity" button
And I tap "reminders.enter.carb.intake" button
And I tap on "reminder.time"
#select 11.00am
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
When I tap on "back" button
 Then I should see "more.menu" screen

When I tap "home" button
And I relaunch the settings app again
And I set device time as "10:59 AM"

# #And I should see "notification" on mobile lock screen                                  #######cannot be automated##########
And I handle time zone popup
And I handle turn on bluetooth pop-up
And I wait for "1" minutes
 And I relaunch the app 
#  And I tap on "ok" button
Then I should see "home" screen

When I tap on "bell.icon.in.home" icon
And I wait for "20" seconds
Then I should see "notifications" screen
#  And I should see "notification1"
When I tap on "back" button
Then I should see "home" screen
When I tap on "more" icon
Then I should see "more.menu" screen

@RegressionTest
Scenario:Regression test-Verfication of blood sugar target range,about diabetes and notification settings
        
# Given I set deviceformat to 12 hour
# When I enable set automatically in device settings

When I tap on "more" option
  Then I should see "prime.air.shot" link
  When I tap on "prime.air.shot" option
    Then I should see "prime.air.shot.title" screen
Then I should see "priming.your.pen.title"
Then I should see "priming.your.pen.text"
When I tap on "back" button
Then I should see "more.menu" screen
       
When I tap on "blood.sugar.target.range" option
Then I should see "blood.sugar.target.range.title"
And I should see "back" button
And I should see "set.your.target.range" text
And I should see "below.range" field
And I should see "default.below.range" in "below.range" field

And I should see "above.range" field
And I should see "default.above.range" in "above.range" field

And I should see "hypo" text
And I should see "default.value.text" text
And I should see "reset.to.default" link
When I tap on "below.range.button" field
Then I should see "default.below.range" in "below.range" field
And I should see "done" option
When I tap "done" button
And I tap on "below.range.button" field
And I select "71" in "below.range.scroll" field
And I tap "done" button
Then I should see "71" in "below.range" field
When I tap "above.range.button" field
And I select "499" in "above.range.scroll" field
And I tap "done" button
Then I should see "499" in "above.range" field                                        
When I tap on "back" button
Then I should see "discard.changes" pop-up
And I should see "are.you.sure.you.want.to.discard.changes" text
And I should see "cancel.popup" button
And I should see "discard" button
When I tap on "cancel.popup" button
Then I should see "blood.sugar.target.range.title" screen
When I tap on "back" button
And I tap on "discard" button
Then I should see "more.menu" screen

When I tap on "blood.sugar.target.range" option
And I tap on "below.range.button" field
And I select "71" in "below.range.scroll" field
And I tap "done" button
And I tap "above.range.button" field
And I select "499" in "above.range.scroll" field
And I tap "done" button
#And I should see Color bar is updated with green color                                             ##### Colours/images/icons cannot be verified #####
And I tap on "save" button
And I tap on "blood.sugar.target.range" option
Then I should see "71" in "below.range" field
And I should see "499" in "above.range" field

When I tap on "blood.sugar.target.range" option
And I tap on "below.range.button" field
And I select "71" in "below.range.scroll" field
And I tap "done" button
And I tap "above.range.button" field
And I select "72" in "above.range.scroll" field
And I tap "done" button
Then I should see "71" in "below.range" field
And I should see "72" in "above.range" field

When I tap on "reset.to.default" option
Then I should see "default.below.range" in "below.range" field
And I should see "default.above.range" in "above.range" field
When I tap on "save" button
Then I should see "more.menu" screen

When I tap on "about.diabetes" option
Then I should see "about.diabetes.web.view"
# When I tap on "refresh" icon
And I wait for "25" seconds
# Then I should see website will be refreshed                                ## this step cannot be automated
And I tap on "close" button 
 When I relaunch the app 

And I tap on "more" option
Then I should see "more.menu" screen
When I relaunch the settings app again
And I disable set automatically in device settings
And I relaunch the settings app again
And I relaunch the app again
And I set device time as "6:00 AM"
And I relaunch the app again
And I handle time zone popup
And I handle turn on bluetooth pop-up
And I tap on "more" option
Then I should see "more.menu" screen

And I tap on "notification.settings" option
Then I should see "notification.settings.title" text
And I should see "connected.device.notifications.on" button
And I should see "you.be.notified.every.time" text
And I should see "back" button
When I tap on "back" button

Then I should see "more.menu" screen
When I tap on "my.reminders" option
And I tap on "home.add.new.reminders" button
And I tap on "activity" button
And I tap "reminders.enter.blood.sugar" button
And I tap on "reminder.time"

#select 7.00am
And I select "07" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
When I tap on "back" button
 Then I should see "more.menu" screen

When I tap on "login.and.security.option"
Then I should see "login.and.security.title"
And I should see "email.address.field"
And I should see "password.field"
And I should see "back" button
And I should see "auto.logout" button
And I should see "logout" button
When I tap on "back" button
Then I should see "more.menu" screen

When I tap on "my.reminders" option
 Then I should see "my.reminders.text" screen
When I tap on "home.add.new.reminders" button
And I tap on "activity" button
And I tap "reminders.enter.carb.intake" button
And I tap on "reminder.time"
#select 11.00am
And I select "11" in "hour" field
And I select "00" in "minutes" field
And I select "am" in "am.pm" field
And I tap on "done" button
And I tap on "save" button
When I tap on "back" button
 Then I should see "more.menu" screen

When I tap "home" button
And I relaunch the settings app again
And I set device time as "10:59 AM"
And I wait for "1" minutes

# #And I should see "notification" on mobile lock screen                                  #######cannot be automated##########
And I handle time zone popup
And I handle turn on bluetooth pop-up
And I relaunch the app
Then I should see "home" screen

When I tap on "bell.icon.in.home" icon
And I wait for "20" seconds
Then I should see "notifications" screen
# And I should see "notification1"
When I tap on "back" button
Then I should see "home" screen
When I tap on "more" icon
Then I should see "more.menu" screen


@Precondition
Scenario: Logging out of the application
Given I should see "more.menu" screen
When I tap on "login.and.security.option"
And I handle Logout button
And I relaunch the app again
And I handle login to your account screen
Then I should see "login.to.your.account" screen