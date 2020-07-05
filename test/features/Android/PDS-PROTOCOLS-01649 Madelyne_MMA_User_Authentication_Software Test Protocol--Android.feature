#---------- SRS Covered MAD10-SYS-2532,MAD10-MMA_SRS-50,MAD10-MMA_SRS-52,MAD10-MMA_SRS-54,MAD10-MMA_SRS-78,MAD10-MMA_SRS-79
#---------- MAD10-MMA_SRS-189,MAD10-MMA_SRS-396,MAD10-MMA_SRS-397,MAD10-MMA_SRS-408,MAD10-MMA_SRS-461,MAD10-MMA_SRS-463,MAD10-MMA_SRS-464
Feature: MADELYNE USER AUTHENTICATION – SOFTWARE TEST PROTOCOL
#@Precondition
@CreatingMail
Scenario: Creating Unregistered Mail

Given I launch the Madelyne application
And I should see "welcome.to.tempotm" screen
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen
When I tap on "agree.and.continue" button
Then I should see "create.account" screen
When I enter "newregistered.email" into "emailaddress" field
And I enter "newregistered.password" into "password" field
And I tap on "next" button
And I wait for recording
Then I should see "verify.email" screen
When I terminate the app
And I relaunch the app again
And I handle login to your account screen
Then I should see "login.to.your.account" screen

@LoginToAccount
Scenario: Verfication of Login to your Account Screen

Given I launch the Madelyne application
And I see "welcome.to.tempotm" screen
And I Verify "welcome.to.tempotm" text
When I tap on "i.already.have.an.account" link
Then I should see "login.to.your.account" screen
#And I should see "orange.header"       ############# Not Feasible via Appium Automation Yet#############
And I should see "back" button
And I should see "emailaddress" field
And I should see "password" field
And I should see "eye" icon
# And I handle Remember me toggle button
And I should see remember me toggle button is enabled
And I should see "login" button
And I should see "forgot.password" link
          
##----------Login with unregistered email------#
#--------------Build Issue----------------------#
#---------Tempo Not Available Error Code : 401------------#
      
# @LoginButton
# Scenario Outline: Verfication of Login Button

# When I enter "<emailaddress>" into "emailaddress" field
# And I enter "<password>" into "password" field
# Then I should see "login" button is enabled
# When I tap on "login" button
# Then I should see "incorrect.username" pop-up
# And I should see "wrong.email.or.password" text
# And I should see "okay.button" button
# When I tap on "okay.button" button
# Then I should see "login.to.your.account" screen
# When I clear "emailaddress" field
# And I clear "password" field

# Examples:

# | emailaddress       | password               |
# | unregistered.email | registered.password    |
# | unregistered.email | newregistered.password |
# | registered.email   | newregistered.password |
      
@LogingIn
Scenario: Loging with New Email

When I enter "newregistered.email" into "emailaddress" field
Then I should see "newregistered.email" in "emailaddress" field
#-----Login with unregistered password------
When I clear "password" field
And I enter "newregistered.password" into "password" field
And I tap on "login" button
Then I should see "verify.email" screen
When I should connect to email for registration verification
And I verify email
And I wait for recording
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
And I Verify "partner.sharing.code" text
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

When I tap on "more" option
And I swipe down
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen  

@MultipleLogin
Scenario: Loging in Multiple Times

#------------Multiple times Login---------------#
#--------------Build Issue----------------------#
#---------Tempo Not Available Error Code : 401------------#  

# When I relaunch the app again
# Then I should see "login.to.your.account" screen
# When I enter "unregistered.email" into "emailaddress" field
# And I enter "registered.password" into "password" field
# And I login 15 times
# And I tap on "login" button
# Then I should see "incorrect.username" pop-up
# And I should see "wrong.email.or.password" text
# And I should see "okay.button" button
# When I tap on "okay.button" button
# Then I should see "login.to.your.account" screen
When I enter "newregistered.email" into "emailaddress" field
And I enter "newregistered.password" into "password" field
And I tap on "login" button
And I wait for "30" seconds
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "logbook.icon"
And I tap on "new.entry.icon"
And I tap on "enter.blood.sugar.button" button
Then I should see "blood.sugar" screen
When I enter "blood.sugar.value" into "mg.dl" field
And I tap on "save" button
Then I should see "logbook" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen

@OtherDeviceCredentials
Scenario: Loging in with Other Device Credentials

When I enter "registered.email.other.device" into "emailaddress" field
And I enter "registered.password.other.device" into "password" field
And I tap on "login" button
Then I should see "you.can.use.one.device" pop-up
And I should see "this.is.new.device" text
And I should see "proceed.popup" button
And I should see "cancel.popup.1" button

When I tap on "cancel.popup.1" button
And I enter "registered.email.other.device" into "emailaddress" field
And I enter "registered.password.other.device" into "password" field
And I tap on "login" button
And I tap on "proceed.popup" button
# Then I should see "login.as.different.user" pop-up                       ## present in protocol but not in 2.0.18 build
Then I should see "are.you.sure" pop-up
# And I should see "logging.in.as.different.user.means" text               ## present in protocol but not in 2.0.18 build
And I should see "this.is.different.user.means" text

And I should see "cancel.popup.1" button
# And I should see "proceed.popup" button                                  ## present in protocol but not in 2.0.18 build
And I should see "yes.delete" button

When I tap on "cancel.popup.1" button
And I enter "registered.email.other.device" into "emailaddress" field
And I enter "registered.password.other.device" into "password" field
And I tap on "login" button
# And I tap on "proceed.popup" button                                      ## present in protocol but not in 2.0.18 build
And I tap on "yes.delete" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "logbook.icon"
Then I should see "logbook" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen
When I enter "newregistered.email" into "emailaddress" field
And I enter "newregistered.password" into "password" field
# And I tap on "remember.me.toggle" button
Then I should see remember me toggle button is enabled
When I tap on "login" button
And I wait for "30" seconds
# Then I should see "login.as.different.user" pop-up                       ## present in protocol but not in 2.0.18 build
Then I should see "are.you.sure" pop-up
And I should see "cancel.popup.1" button
# And I should see "proceed.popup" button                                  ## present in protocol but not in 2.0.18 build
And I should see "yes.delete" button
# When I tap on "proceed.popup" button                                      ## present in protocol but not in 2.0.18 build
When I tap on "yes.delete" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen
And I should see "newregistered.email" in "emailaddress" field
And I should see "newregistered.password" masked in "password" field
And I should see remember me toggle button is enabled
When I disable remember me toggle button
And I enter "newregistered.email" into "emailaddress" field
And I enter "newregistered.password" into "password" field
And I tap on "login" button
And I wait for "30" seconds
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen
And I should see "newregistered.email" in "emailaddress" field
And I should see "newregistered.password" masked in "password" field
When I enter "newregistered.email" into "emailaddress" field
And I enter "newregistered.password" into "password" field
And I tap on "login" button
And I wait for "30" seconds
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen


@SmokeTest
Scenario: Smoke Test for User Authentication

Given I launch the Madelyne application
When I tap on "i.already.have.an.account" button
Then I should see "login.to.your.account" screen

#--------------Build Issue----------------------#
#---------Tempo Not Available Error Code : 401------------#  

# When I enter "registered.email" into "emailaddress" field
# Then I should see "login" button is disabled
# When I clear "emailaddress" field
# And I clear "password" field
# And I enter "registered.password" into "password" field
# Then I should see "login" button is disabled
# When I enter "registered.email" into "emailaddress" field
# And I enter "newregistered.password" into "password" field
# And I tap on "login" button
# Then I should see "incorrect.username" pop-up
# And I should see "wrong.email.or.password" text
# And I should see "okay.button" button
# When I tap on "okay.button" button
# Then I should see "login.to.your.account" screen
# When I enter "unregistered.email" into "emailaddress" field
# And I enter "registered.password" into "password" field
# And I login 15 times
# When I tap on "login" button
# Then I should see "incorrect.username" pop-up
# And I should see "wrong.email.or.password" text
# And I should see "okay.button" button
# When I tap on "okay.button" button
# Then I should see "login.to.your.account" screen
When I enter "registered.email.other.device" into "emailaddress" field
And I enter "registered.password.other.device" into "password" field
And I tap on "login" button
Then I should see "you.can.use.one.device" pop-up
And I should see "this.is.new.device" text
And I should see "proceed.popup" button
And I should see "cancel.popup.1" button
When I tap on "proceed.popup" button
#  And I wait for "30" seconds
#  And I tap on "login" button
# Then I should see "login.as.different.user" pop-up                       ## present in protocol but not in 2.0.18 build
Then I should see "are.you.sure" pop-up
And I should see "cancel.popup.1" button
# And I should see "proceed.popup" button                                  ## present in protocol but not in 2.0.18 build
And I should see "yes.delete" button
# When I tap on "proceed.popup" button                                      ## present in protocol but not in 2.0.18 build
When I tap on "yes.delete" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen  

@RegressionTest
Scenario: Regression Test for User Authentication

Given I launch the Madelyne application
And I should see "welcome.to.tempotm" screen
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen
When I tap on "agree.and.continue" button
Then I should see "create.account" screen
When I enter "newregistered.email" into "emailaddress" field
And I enter "newregistered.password" into "password" field
And I tap on "next" button
And I wait for recording
Then I should see "verify.email" screen
When I terminate the app
And I relaunch the app again
And I handle login to your account screen

#--------------Build Issue----------------------#
#---------Tempo Not Available Error Code : 401------------#

# And I enter "registered.email" into "emailaddress" field
# Then I should see "login" button is disabled
# When I clear "emailaddress" field
# And I clear "password" field
# And I enter "registered.password" into "password" field
# Then I should see "login" button is disabled
# When I enter "registered.email" into "emailaddress" field
# And I enter "newregistered.password" into "password" field
# And I tap on "login" button
# Then I should see "incorrect.username" pop-up
# And I should see "wrong.email.or.password" text
# And I should see "okay.button" button
# When I tap on "okay.button" button
Then I should see "login.to.your.account" screen
When I clear "emailaddress" field
And I enter "newregistered.email" into "emailaddress" field
Then I should see "newregistered.email" in "emailaddress" field
When I clear "password" field
And I enter "newregistered.password" into "password" field
And I tap on "login" button
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
When I tap "i.do.not.have.a.partner.sharing.code" button
Then I should see "account.setup" screen
When I tap "continue" button
Then I should see "connect.smart" screen
When I tap "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
And I should see "bgm.skip" button
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
When I tap on "more" option
And I swipe down
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen

#--------------Build Issue----------------------#
#---------Tempo Not Available Error Code : 401------------#

# When I enter "unregistered.email" into "emailaddress" field
# And I enter "registered.password" into "password" field
# And I login 15 times
# And I tap on "login" button
# Then I should see "incorrect.username" pop-up
# And I should see "wrong.email.or.password" text
# And I should see "okay.button" button
# When I tap on "okay.button" button
# Then I should see "login.to.your.account" screen
When I enter "registered.email.other.device" into "emailaddress" field
And I enter "registered.password.other.device" into "password" field
And I tap on "login" button
Then I should see "you.can.use.one.device" pop-up
And I should see "this.is.new.device" text
And I should see "proceed.popup" button
And I should see "cancel.popup.1" button
When I tap on "proceed.popup" button
#  And I wait for "30" seconds
#  And I tap on "login" button
# Then I should see "login.as.different.user" pop-up                       ## present in protocol but not in 2.0.18 build
Then I should see "are.you.sure" pop-up
And I should see "cancel.popup.1" button
# And I should see "proceed.popup" button                                  ## present in protocol but not in 2.0.18 build
And I should see "yes.delete" button
# When I tap on "proceed.popup" button                                      ## present in protocol but not in 2.0.18 build
When I tap on "yes.delete" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "logbook.icon"
And I tap on "new.entry.icon"
And I tap on "enter.blood.sugar.button" button
Then I should see "blood.sugar" screen
When I enter "blood.sugar.value" into "mg.dl" field
And I tap on "save" button
Then I should see "logbook" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
And I enter "newregistered.email" into "emailaddress" field
And I enter "newregistered.password" into "password" field
# And I enable remember me toggle button
Then I should see remember me toggle button is enabled
When I tap on "login" button
And I wait for "30" seconds
Then I should see "are.you.sure" pop-up
And I should see "cancel.popup.1" button
And I should see "yes.delete" button
When I tap on "yes.delete" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen
And I should see "newregistered.email" in "emailaddress" field
And I should see "newregistered.password" in "password" field
And I should see remember me toggle button is enabled
When I disable remember me toggle button
And I enter "newregistered.email" into "emailaddress" field
And I enter "newregistered.password" into "password" field
And I tap on "login" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see terms and privacy screen
When I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
Then I should see "home" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen
