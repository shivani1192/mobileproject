Feature: MADELYNE ONBOARDING – TERMS AND PRIVACY- SOFTWARE TEST PROTOCOL

#INSTRUCTIONS FOR INSTALLING MADELYNE MMA APP
#Download the .apk  file from the repository and install on the device.              
@Precondition
Scenario: ONBOARDING – TERMS AND PRIVACY - ONLINE

#Pre-condtions:
# Make sure the Madelyne MMA App is installed for the first time on the iOS/Android device as per section 6.1.
# Make sure the Android device is connected to the internet.
# Ensure one valid email address is created and working. 

Given I launch the Madelyne application
Then I should see "welcome.to.tempotm" screen
And I Verify "welcome.to.tempotm" text
And I Verify "lets.get.started" text
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen

@SmokeTest
Scenario:Smoke Test for Terms and Privacy

Given I should see "i.have.read.and.agree.instruction" text
And I should see "agree.and.continue" button
And I should see "do.not.agree" button

# When I tap on "terms.of.use" link
# Then I should see "terms.of.use" screen
# And I should see "terms.of.use.text"            ///can't inspect
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# And I should see "privacy.statement.text"             ///can't inspect
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

When I tap on "do.not.agree" link
Then I should see "welcome.to.tempotm" screen
When I tap "lets.get.started" button 
Then I should see "terms.and.privacy" screen

When I tap "agree.and.continue" button
Then I should see "create.account" screen

When I tap on "back" button
Then I should see "terms.and.privacy" screen


@OnboardingTermsandPrivacy
Scenario:ONBOARDING TERMS AND PRIVACY SCREEN
# PRE-CONDITIONS: 

# Make sure that Madelyne MMA App is uninstalled on the iOS/Android device.
# Make sure the Madelyne MMA App is installed on the iOS/Android device as per section 6.1.
# Make sure the iOS/Android device is not connected to the internet.
# Ensure one valid email address is created and working. 

Given I should see "i.have.read.and.agree.instruction" text
And I Verify "i.have.read.and.agree.instruction" text
And I should see "agree.and.continue" button
And I Verify "agree.and.continue" text
And I should see "do.not.agree" button
And I Verify "do.not.agree" text

# When I tap on "terms.of.use" link
# Then I should see "terms.of.use" screen
# And I should see "terms.of.use.text"            ///can't inspect
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# And I should see "privacy.statement.text"             ///can't inspect
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

When I tap on "do.not.agree" link
Then I should see "welcome.to.tempotm" screen
When I tap "lets.get.started" button 
Then I should see "terms.and.privacy" screen
And I Verify "terms.and.privacy" text
When I tap "agree.and.continue" button
Then I should see "create.account" screen

And I should see "create.account" title
And I Verify "create.account" text
And I should see "back" button is enabled
And I should see "next" button is disabled
##And I should see "progress.bar" with "9%" completed   #can't automate image
And I should see "emailaddress" field
And I should see "password" field
##And I should see "eye" icon       #can't automate image
And I should see "password.description" text
And I Verify "password.description" text
And I should see "i.already.have.an.account" link
And I Verify "i.already.have.an.account" text
When I tap on "back" button
Then I should see "terms.and.privacy" screen



@RegressionTest
Scenario:Regression Test for Terms and Privacy
Given I should see "i.have.read.and.agree.instruction" text
And I should see "agree.and.continue" button
And I should see "do.not.agree" button

# When I tap on "terms.of.use" link
# Then I should see "terms.of.use" screen
# And I should see "terms.of.use.text"            ///can't inspect
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# And I should see "privacy.statement.text"             ///can't inspect
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

When I tap on "do.not.agree" link
Then I should see "welcome.to.tempotm" screen
When I tap "lets.get.started" button 
Then I should see "terms.and.privacy" screen

When I tap "agree.and.continue" button
Then I should see "create.account" screen

When I tap on "back" button
Then I should see "terms.and.privacy" screen

When I tap on "do.not.agree" link
Then I should see "welcome.to.tempotm" screen
When I tap "lets.get.started" button 
Then I should see "terms.and.privacy" screen

When I tap "agree.and.continue" button
Then I should see "create.account" screen
And I should see "back" button is enabled
And I should see "next" button is disabled

And I should see "emailaddress" field
And I should see "password" field

And I should see "password.description" text
And I should see "i.already.have.an.account" link

When I tap on "back" button
Then I should see "terms.and.privacy" screen




# Scenario: ONBOARDING – TERMS AND PRIVACY - OFFLINE

# #Precondtions:
# Make sure that Madelyne MMA App is uninstalled on the iOS/Android device.
# Make sure the Madelyne MMA App is installed on the iOS/Android device as per section 6.1.
# Make sure the iOS/Android device is not connected to the internet.
# Ensure one valid email address is created and working. 
 
# Given I launch the Madelyne application
# Then I should see "welcome.to.tempotm" screen

# When I tap "lets.get.started" button 
# Then I should see "terms.and.privacy" screen
# #And I should see "progress.bar" with "7%" completed
# And I should see "i.have.read.and.agree.instruction" text
# And I should see "agree.and.continue" button
# And I should see "do.not.agree" button

# When I tap on "terms.of.use.hyperlink"
# Then I should see "terms.of.use" screen
# And I should see "terms.of.use.text"
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# And I should see "privacy.statement.text"
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

# When I turn on internet
# And I tap on "terms.of.use.hyperlink"
# Then I should see "terms.of.use" screen
# And I should see "terms.of.use.text"
# And I should see "close" button
# When I tap on "close" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# And I should see "privacy.statement.text"
# And I should see "close" button
# When I tap on "close" button
# And I turn off internet
# And I navigate to back application
# And I tap on "done" button
# Then I should see "terms.and.privacy" screen

# When I tap on "terms.of.use.hyperlink"
# Then I should see "terms.of.use" screen
# And I should see "terms.of.use.text"
# When I tap on "done" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# And I should see "privacy.statement.text"
# When I tap on "done" button
# Then I should see "terms.and.privacy" screen


# When I tap "agree.and.continue" button
# Then I should see "create.account" screen
# And I should see "create.account" title
# And I should see "back" button is enabled
# And I should see "next" button is disabled
# #And I should see "progress.bar" with "9%" completed
# And I should see "emailaddress" field
# And I should see "password" field
# #And I should see "eye" icon
# And I should see "password.description" text
# And I should see "i.already.have.an.account" link

# When I enter "emailaddress" into "emailaddress" field
# And I enter "password" into "password" field
# And I tap "next" button
# Then I should see "no.internet.connection" title
# And I should see "please.check.in.settings" text
# And I should see "cancel" button
# And I should see "open.device.settings" button

# When I tap on "cancel" button
# Then I should see "create.account" screen

# When I enter "emailaddress" into "emailaddress" field
# And I enter "password" into "password" field
# And I tap "next" button
# Then I should see "no.internet.connection" title
# And I should see "please.check.in.settings" text
# And I should see "cancel" button
# And I should see "open.device.settings" button

# When I tap on "open.device.settings" button
# Then I should see "device.settings" screen

# When I navigate to back application
# Then I should see "create.account" screen