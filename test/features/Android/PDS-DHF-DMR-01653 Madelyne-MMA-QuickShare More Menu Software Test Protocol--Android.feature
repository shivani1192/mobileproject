Feature: Madelyne-MMA Android Quick Share – More Menu -  Software Test Protocol

# PRE-CONDITIONS:

# Make sure that the iOS/Android device is connected to the internet.
# Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
# Make sure that the user is registered successfully on MMA App as per section 6.2.
# Make sure that the user has navigated till home screen as per section 6.4.

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
And I should see "home.screen.popup" pop-up
And I should see "this.is.where.you.will.see" text
And I should see "home.next" button
And I should see "home.close" button
When I tap on "home.close" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "home" option
Then I should see "home" screen

@QuickShareMoreMenu
Scenario: Verification of Quick Share from More Menu Screen

Given I should see "home" screen      
When I tap on "more" option
And I tap on "quick.share" option
Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field                     ### spinner disables fast  
# And I should see "generate.new.code" button is disabled                 ### spinner disables fast 

#---Wait until code is generated--------#
    
And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

# the following 4 steps cannot be automated 
    
# When I set device time to 10 hours ahead  ##(code generation time+10hrs)
# Then I should see "quick.share.screen" screen
# And I should see "code.field.quick.share.screen" field is disabled with grey color
# And I should see "generate.new.code" button is enabled

When I tap on "generate.new.code" button 
Then I should see "quick.share.screen" screen       
# And I should see "activity.spinner" in "code" field                      ### spinner disables fast 
# And I should see "generate.new.code" button is disabled                  ### spinner disables fast 

#---Wait until code is generated--------#

When I wait for "7" seconds
Then I should see "quick.share.screen" screen    
# And I should see "code" field is activated
And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

When I tap on "quick.share.back" button 
And I tap on "quick.share" option
Then I should see "quick.share.screen" screen
And I should see "code.field.quick.share.screen" text    
And I should see "generate.new.code" button is enabled 

When I tap on "generate.new.code" button 
And I wait for "7" seconds 
Then I should see "quick.share.screen" screen
And I should see "code.field.quick.share.screen" text
  
When I tap on "quick.share.back" button
Then I should see "more.menu" screen




###################################################################################################################
###################--------- Internet Related and System Error Related Scenarios -------###########################
    
# Scenario: Quick Share – More Menu – Network errors - Android
# PRE-CONDITIONS:

# Make sure that the iOS/Android device is connected to the Wi-Fi.
# Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
# Make sure that the user is registered successfully on MMA App as per section 6.2.
# Make sure that the user has navigated till home screen as per section 6.4.

# When I turn off mobile data
# And I tap on "more" option
# Then I should see "more.menu" screen
# When I tap on "quick.share" option
# And I should go away from wifi
# And I should tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field
# And I should see "generate.new.code" button is disabled
# And I should see "no.network.connection" pop-up
# And I should see "please.check.your.settings.and.try.again" text
# And I should see "cancel.in.popup" button
# And I should see "open.device.settings.in.popup" button

# When I tap on "cancel.in.popup" button
# Then I should see "quick.share.screen" screen
# And I should see "code.field.quick.share.screen" field is disabled
# And I should see "triple.hyphen" in "code.field.quick.share.screen" field
# And I should see "generate.new.code" button

# When I turn on wifi in device settings
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field
# And I should see "generate.new.code" button is disabled
# When I wait for "1" minutes
# Then I should see "code.field.quick.share.screen" text

# When I turn of mobile data for mytempo application
# And I turn off wifi in device settings
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field
# And I should see "generate.new.code" button is disabled
# When I wait for "1" minutes
# Then I should see "no.network.connection" pop-up
# And I should see "please.check.your.settings" text
# And I should see "cancel.in.popup" button
# And I should see "open.device.settings.in.popup" button

# When I tap on "cancel.in.popup" button
# And I turn on mobile data for mytempo application
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field
# And I should see "generate.new.code" button is disabled
# When I wait for "1" minutes
# Then I should see "code.field.quick.share.screen" text

# When I tap on "more" option
# Then I should see "more.menu" screen
# When I tap on "quick.share" option
# And I turn off wifi in device settings
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field
# And I should see "code.field.quick.share.screen" text
# When I wait for "1" minutes
# Then I should see "no.network.connection" pop-up
# And I should see "please.check.your.settings" text
# And I should see "cancel.in.popup" button
# And I should see "open.device.settings.in.popup" button

# When I tap on "cancel.in.popup" button
# Then I should see "quick.share.screen" screen
# And I should see "code.field.quick.share.screen" field is disabled
# And I should see "triple.hyphen" in "code.field.quick.share.screen" field
# And I should see "generate.new.code" button

# When I turn on wifi in device settings
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "code.field.quick.share.screen" text
# And I should see "generate.new.code" button is disabled
# When I wait for "1" minutes
# Then I should see "code.field.quick.share.screen" text

################################################################################################################


# Scenario: Quick Share – More Menu – System Error
# PRE-CONDITIONS:

# Make sure that the iOS/Android device is connected to the internet.
# Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
# Make sure that the user is registered successfully on MMA App as per section 6.2.
# Make sure that the user has navigated till home screen as per section 6.4.

# When I tap on "more" option
# And I tap on "quick.share" option
# And I generate system error
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "code.field.quick.share.screen" field is disabled
# And I should see "triple.hyphen" in "code.field.quick.share.screen" field
# And I should see "unable.to.generate.temporary.code" text
# And I should see "generate.new.code" button

# When I clear the system error
# And I tap on "generate.new.code" button
# Then I should see "quick.share.screen" screen
# And I should see "code.field.quick.share.screen" text
# And I should see "generate.new.code" button is disabled
# When I wait for "1" minutes
# Then I should see "temporary.generated.code" in "code.field.quick.share.screen" field
    
##########################################################################################################

@SmokeTest
Scenario: Smoke Test for Quick Share from More Menu Screen

Given I should see "home" screen 
When I tap on "more" option
And I tap on "quick.share" option
Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field                     ### spinner disables fast  
# And I should see "generate.new.code" button is disabled                 ### spinner disables fast 

When I tap on "generate.new.code" button 
And I wait for "7" seconds
Then I should see "quick.share.screen" screen
And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

When I tap on "quick.share.back" button 
And I tap on "quick.share" option
Then I should see "quick.share.screen" screen
When I tap on "generate.new.code" button 
And I wait for "7" seconds
Then I should see "quick.share.screen" screen
And I should see "code.field.quick.share.screen" text

When I tap on "quick.share.back" button
Then I should see "more.menu" screen


@RegressionTest
Scenario: Regression Test for Quick Share from More Menu Screen

Given I should see "home" screen 
When I tap on "more" option
And I tap on "quick.share" option
Then I should see "quick.share.screen" screen
# And I should see "activity.spinner" in "code" field                     ### spinner disables fast  
# And I should see "generate.new.code" button is disabled                 ### spinner disables fast 

And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

When I tap on "generate.new.code" button  
And I wait for "7" seconds
Then I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled  

When I tap on "quick.share.back" button 
And I tap on "quick.share" option
Then I should see "quick.share.screen" screen
And I should see "code.field.quick.share.screen" text
And I should see "generate.new.code" button is enabled 

When I tap on "generate.new.code" button 
And I wait for "7" seconds 
Then I should see "quick.share.screen" screen
And I should see "code.field.quick.share.screen" text

When I tap on "quick.share.back" button
Then I should see "more.menu" screen

@Precondition
Scenario: Loging out of Application

When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen