Feature: MADELYNE ONBOARDING – TERMS AND PRIVACY- SOFTWARE TEST PROTOCOL IOS

    #INSTRUCTIONS FOR INSTALLING MADELYNE MMA APP
    #Download the .apk  file from the repository and install on the device.
    @Precondition
    Scenario: ONBOARDING – TERMS AND PRIVACY - ONLINE

        #Precondtions:
        # Make sure the Madelyne MMA App is installed for the first time on the iOS/Android device as per section 6.1.
        # Make sure the iOS device is connected to the internet.
        # Ensure one valid email address is created and working.

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen
        When I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen


    @SmokeTest
    Scenario: Smoke Test for Terms and Privacy screen
        Given I should see "i.have.read.and.agree.instruction" text
        Then I should see "agree.and.continue" button
        And I should see "do.not.agree" button

        When I tap on "terms.of.use.link"
        Then I should see "terms.of.use" screen
        And I should see "terms.of.use.text"
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "privacy.statement.hyperlink"
        Then I should see "privacy.statement" screen
        And I should see "privacy.statement.text"
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        Then I should see "terms.and.privacy" screen

        When I tap "agree.and.continue" button
        Then I should see "create.account" screen
        When I tap on "back" button
        Then I should see "terms.and.privacy" screen

    @OnboardingTermsAndPrivacy
    Scenario:ONBOARDING TERMS AND PRIVACY SCREEN
        Given I should see "i.have.read.and.agree.instruction" text
        When I tap on "terms.of.use.link"
        Then I should see "terms.of.use" screen
        And I should see "terms.of.use.text"
        And I should see "done" button
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "privacy.statement.hyperlink"
        Then I should see "privacy.statement" screen
        And I should see "privacy.statement.text"
        And I should see "done" button
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "do.not.agree" link
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        Then I should see "terms.and.privacy" screen

        When I tap "agree.and.continue" button
        Then I should see "create.account" screen
        When I tap on "back" button
        Then I should see "terms.and.privacy" screen

    @RegressionTest
    Scenario:Regression Test for Terms and Privacy screen
        And I should see "i.have.read.and.agree.instruction" text
        And I should see "agree.and.continue" button
        And I should see "do.not.agree" button

        When I tap on "terms.of.use.link"
        Then I should see "terms.of.use" screen
        And I should see "terms.of.use.text"
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "privacy.statement.hyperlink"
        Then I should see "privacy.statement" screen
        And I should see "privacy.statement.text"
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "do.not.agree" link
        Then I should see "welcome.to.tempotm" screen

        When I tap "lets.get.started" button
        Then I should see "terms.and.privacy" screen

        When I tap "agree.and.continue" button
        Then I should see "create.account" screen
        When I tap on "back" button
        Then I should see "terms.and.privacy" screen

# Scenario: ONBOARDING – TERMS AND PRIVACY - OFFLINE

# #Precondtions:
# # Make sure the Madelyne MMA App is installed on the iOS device
# # Make sure the iOS device is not connected to the internet.
# # Ensure one valid email address is created and working.


# Given I launch the Madelyne application
# Then I should see "login.to.your.account" screen
# And I Verify "login.to.your.account" text
# When I tap on "back" button
# Then I should see "welcome.to.tempotm" screen

# When I tap "lets.get.started" button
# Then I should see "terms.and.privacy" screen
# And I should see "i.have.read.and.agree.instruction" text
# And I should see "agree.and.continue" button
# And I should see "do.not.agree" button

# When I tap on "terms.of.use.hyperlink"
# Then I should see "terms.of.use" screen
# #The below text is unexpected as no information should load without internet
# And I should see "terms.of.use.text"
# When I tap on "done" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# #The below text is unexpected as no information should load without internet
# And I should see "privacy.statement.text"
# When I tap on "done" button
# Then I should see "terms.and.privacy" screen

# # Step definition is not written for the below line
# When I turn on internet
# And I navigate to back application
# And I tap on "terms.of.use.hyperlink"
# Then I should see "terms.of.use" screen
# And I should see "terms.of.use.text"
# When I tap on "done" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# And I should see "privacy.statement.text"
# When I tap on "done" button

# # Step definition is not written for the below line
# And I turn off internet
# And I navigate to back application
# And I tap on "done" button
# Then I should see "terms.and.privacy" screen

# When I tap on "terms.of.use.hyperlink"
# Then I should see "terms.of.use" screen
# #The below text is unexpected as no information should load without internet
# And I should see "terms.of.use.text"
# When I tap on "done" button
# Then I should see "terms.and.privacy" screen

# When I tap on "privacy.statement.hyperlink"
# Then I should see "privacy.statement" screen
# #The below text is unexpected as no information should load without internet
# And I should see "privacy.statement.text"
# When I tap on "done" button
# Then I should see "terms.and.privacy" screen

# When I tap "agree.and.continue" button
# Then I should see "create.account" screen

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