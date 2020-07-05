#---------- SRS Covered MAD10-MMA-SRS-2,MAD10-MMA-SRS-3,MAD10-MMA-SRS-4,MAD10-MMA-SRS-5,MAD10-MMA-SRS-8,MAD10-MMA-SRS-9,MAD10-MMA-SRS-39
#---------- Version 1
Feature: MADELYNE- ONBOARDING– PERSONAL INFORMATION- SOFTWARE TEST PROTOCOL

    # PRE-CONDITIONS:
    # Make sure that the iOS and Android device is connected to the internet.
    # Make sure that the user has launched Madelyne MMA App and agreed on Terms and Privacy screen as per section 6.1.
    # Make sure that the MMA displays “Create Account” screen.
    # Make sure to use New "emailaddress" and New "password" for new account creation

    @Precondition
    Scenario: MADELYNE- ONBOARDING– PERSONAL INFORMATION - Navigating to Create Account screen

        Given I launch the Madelyne application
        And I should see "welcome.to.tempotm" screen
        When I tap on "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        # When I relaunch application

    @PersonalInformation
    Scenario: Verification of Personal Information screen

        Given I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "15" seconds
        Then I should see "verify.email" screen
        And I Verify "verify.email" text
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen
        And I Verify "personal.information" text
        #And I should see "progress.bar" with "27%" completed   ##images cannot be automated#####
        And I should see "first.name" field
        And I Verify "first.name" text
        And I should see "last.name" field
        And I Verify "last.name" text
        And I should see "date.of.birth" field
        And I Verify "date.of.birth" text
        And I should see "next" button is disabled

    @PersonalInformation
    Scenario Outline: Entering Data in First Name field

        When I enter "<FirstName>" into "first.name" field
        Then I should see "<FirstName>" in "first.name" field
        And I should see "next" button is disabled

        Examples:
            | FirstName                    |
            | 100.characters               |
            | 101.characters               |
            | text.with.special.characters |
            | numerical.characters         |
            | international.characters     |
            | alphabets                    |

    @PersonalInformation
    Scenario Outline: Entering Data in Last Name field

        When I enter "<LastName>" into "last.name" field
        Then I should see "<LastName>" in "last.name" field
        And I should see "next" button is disabled

        Examples:
            | LastName                     |
            | 100.characters               |
            | 101.characters               |
            | text.with.special.characters |
            | numerical.characters         |
            | international.characters     |
            | alphabets                    |


    @PersonalInformation
    Scenario: Verifying Date of Birth field

        When I tap "date.of.birth" field
        Then I should see "date.picker"
        # And I should see CurrentDate highlighted       ##highlited things cannot be automated#####
        And I should see "done" button
        When I tap "done" button
        Then I should see CurrentDate in "date.of.birth" field
        And I should see "must.be.18.years.or.older" errormessage

    @PersonalInformation
    Scenario: Verifying Date of Birth field with Age less than 18 years

        When I tap "date.of.birth" field
        And I select "month" in "month" List
        And I select "date" in "date" List
        And I select "less.than.18.years" in "year" List
        And I tap "done" button
        Then I should see "less.than.18.years.date.of.birth" in "date.of.birth" field
        And I should see "less.than.18.years.date.of.birth" in "date.of.birth" field in MM-DD-YYYY format
        And I should see "must.be.18.years.or.older" errormessage
        And I should see "next" button is disabled

        When I tap "date.of.birth" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "must.be.18.years.or.older" errormessage

    @PersonalInformation
    Scenario Outline: Verifying Date of Birth field with positive cases

        When I tap "date.of.birth" field
        And I select "<year>" in "year" List
        And I tap "done" button
        Then I should see "<VerifyYear>" in "date.of.birth" field
        And I should see "<VerifyYear>" in "date.of.birth" field in MM-DD-YYYY format
        And I should see "next" button is enabled

        Examples:
            | year                  | VerifyYear                          |
            | equal.to.18.years     | equal.to.18.years.date.of.birth     |
            | greater.than.18.years | greater.than.18.years.date.of.birth |

    @PersonalInformation
    Scenario: Verification of Empty First Name field

        When I clear "first.name" field
        Then I should see "next" button is disabled

    @PersonalInformation
    Scenario Outline: Entering Data in First Name field

        When I enter "<FirstName>" into "first.name" field
        Then I should see "<FirstName>" in "first.name" field
        And I should see "next" button is enabled

        Examples:
            | FirstName               |
            | alphanumeric.characters |
            | special.characters      |

    @PersonalInformation
    Scenario: Verification of Empty Last Name field

        When I clear "last.name" field
        Then I should see "next" button is disabled

    @PersonalInformation
    Scenario Outline: Entering Data in Last Name field

        When I enter "<LastName>" into "last.name" field
        Then I should see "<LastName>" in "last.name" field
        And I should see "next" button is enabled

        Examples:
            | LastName                |
            | alphanumeric.characters |
            | special.characters      |

    ##space issue##
    # @PersonalInformation
    # Scenario: Entering space in First Name field

    # When I clear "first.name" field
    # And I enter "space" into "first.name" field
    # And I enter "alphabets" into "last.name" field
    # Then I should see "space" in "first.name" field
    # And I should see "next" button is disabled

    ##space issue##
    # @PersonalInformation
    # Scenario: Entering space in last Name field

    # When I clear "last.name" field
    # And I enter "space" into "first.name" field
    # Then I should see "space" in "last.name" field
    # And I should see "next" button is disabled
    ######################

    @PersonalInformation
    Scenario: Entering Data in Last Name field

        When I clear "last.name" field
        And I enter "alphabets" into "last.name" field
        Then I should see "alphabets" in "last.name" field

    @PersonalInformation
    Scenario: Proceed Further

        When I tap on "next" button
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
        Then I should see "welcome.to.mytempo.title" text
        And I should see "start" button
        # When I relaunch application
        Then I should see "welcome.to.mytempo" text
        When I tap on "start" button
        Then I should see "home.and.recent.entries.title" text
        And I should see "next" button
        # When I wait for "2" minutes
        # Then I should see "animation.related.to.homepage.and.recent.entries"
        # When I relaunch application
        Then I should see "home.and.recent.entries" text
        When I tap on "next" button
        Then I should see "auto.logged.entries.title" text
        And I should see "next" button
        # When I wait for "2" minutes
        # Then I should see "animation.related.to.auto.logged.entries"
        # When I relaunch application
        Then I should see "auto.logged.entries" text
        When I tap on "next" button
        Then I should see "mark.entry.as.prime.title" text
        And I should see "learn.more" option
        And I should see "next" button
        # When I wait for "2" minutes
        # Then I should see "animation.related.to.mark.entry.as.prime"
        When I tap on "learn.more" option
        Then I should see "prime.air.shot" screen
        And I should see "done" button
        When I tap on "done" button
        Then I should see "mark.entry.as.prime" screen
        # When I relaunch application
        Then I should see "mark.entry.as.prime" screen
        When I tap on "next" button
        Then I should see "set.reminders.title"
        And I should see "next" button
        # When I wait for "2" minutes
        # Then I should see "animation.related.to.set.reminders"
        # When I relaunch application
        Then I should see "set.reminders" screen
        When I tap on "next" button
        Then I should see "you.are.ready" text
        And I should see "go.to.home" button
        When I tap on "go.to.home" button
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        Then I should see "turnon.your.bluetooth" pop-up
        When I tap on "not.now.button"
        Then I should see "home" selected

        ###########################################################################################
        ######################## Internet Related ############################################
        ###########################################################################################

        # When I tap on "back" button
        # Then I should see "welcome.to.tempotm" screen
        # When I tap on "lets.get.started" button
        # And I tap "agree.and.continue" button
        # Then I should see "create.account" screen
        # When I enter "emailaddress1" into "emailaddress" field
        # And I enter "password" into "password" field
        # And I tap "next" button
        # And I wait for "15" seconds
        # Then I should see "verify.email" screen
        # And I Verify "verify.email" text
        # When I should connect to email for registration verification
        # Then I verify email
        # And I should see "personal.information" screen
        # When I enter "first.name" into "first.name" field
        # And I enter "last.name" into "last.name" field
        # And I tap "date.of.birth" field
        # And I select "month"
        # And I select "year"
        # And I select "date"
        # And I wait for "1" minutes
        # And I tap "done" button
        # And I tap "next" button
        # Then I should see "my.insulin" screen
        # When I tap on "long.acting.insulin.toggle" button
        # And I tap on "next" button
        # Then I should see "confirm.insulin.type" pop-up
        # When I tap on "ok.popup" button
        # Then I should see "partner.sharing.code" screen
        # When I tap "i.do.not.have.a.partner.sharing.code" button
        # Then I should see "account.setup" screen
        # When I tap "continue" button
        # Then I should see "tempo.smart" screen
        # When I tap "squire.skip" button
        # Then I should see "connect.blood.sugar.meter" screen
        # When I launch settings
        # And I turn off internet
        # And I relaunch the app
        # And I tap "bgm.skip" button
        # Then I should see "welcome.to.tempo" screen
        # When I tap on "start" button
        # Then I should see "home.and.recent.entries" screen
        # When I tap on "next" button
        # Then I should see "auto.logged.entries" screen
        # When I tap on "next" button
        # Then I should see "mark.entry.as.prime" screen
        # When I tap on "learn.more" option
        # Then I should see "prime.air.shot" screen
        # When I tap on "done" button
        # Then I should see "mark.entry.as.prime" screen
        # When I tap on "next" option
        # Then I should see "set.reminders.onboarding" screen
        # When I tap on "next" option
        # And I tap on "go.to.home" screen
        # Then I should see "home" screen


    @SmokeTest
    Scenario: Smoke Test For Personal Information

        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        Then I should see "verify.email" screen
        And I Verify "verify.email" text
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen
        When I enter "alphanumeric.special.characters" into "first.name" field
        And I enter "alphanumeric.special.characters" into "last.name" field
        And I tap "date.of.birth" field
        Then I should see "date.picker"
        And I should see "done" button
        When I select "month" in "month" List
        And I select "date" in "date" List
        And I select "greater.than.18.years" in "year" List
        And I tap "done" button
        Then I should see "alphanumeric.special.characters" in "first.name" field
        And I should see "alphanumeric.special.characters" in "last.name" field
        And I should see "greater.than.18.years.date.of.birth" in "date.of.birth" field
        And I should see "greater.than.18.years.date.of.birth" in "date.of.birth" field in MM-DD-YYYY format
        And I should see "next" button is enabled
        
        When I tap "next" button
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen
        And I Verify "partner.sharing.code" text
        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap "bgm.skip" button
        Then I should see "welcome.to.mytempo" screen
        When I tap on "start" button
        Then I should see "home.and.recent.entries" screen
        When I tap on "next" button
        Then I should see "auto.logged.entries" screen
        When I tap on "next" button
        Then I should see "mark.entry.as.prime" screen
        When I tap on "next" button
        Then I should see "set.reminders.onboarding" screen
        When I tap on "next" button
        Then I should see "you.are.ready" screen
        When I tap on "go.to.home" button
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        Then I should see "turnon.your.bluetooth" pop-up
        When I tap on "not.now.button"
        Then I should see "home" selected


    @RegressionTest
    Scenario: Regression Test For Personal Information

        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        Then I should see "verify.email" screen
        And I Verify "verify.email" text
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen
        When I enter "international.characters" into "first.name" field
        And I enter "alphanumeric.special.characters" into "last.name" field
        Then I should see "international.characters" in "first.name" field
        And I should see "alphanumeric.special.characters" in "last.name" field
        And I should see "next" button is disabled
        When I enter "international.characters" into "last.name" field
        And I enter "alphanumeric.special.characters" into "last.name" field
        And I tap "date.of.birth" field
        Then I should see "date.picker"
        And I should see "done" button
        When I tap on "done" button
        Then I should see "personal.information" screen
        And I should see CurrentDate in "date.of.birth" field
        And I should see "must.be.18.years.or.older" errormessage
        When I tap "date.of.birth" field
        And I select "month" in "month" List
        And I select "date" in "date" List
        And I select "less.than.18.years" in "year" List
        And I tap "done" button
        Then I should see "less.than.18.years.date.of.birth" in "date.of.birth" field
        And I should see "less.than.18.years.date.of.birth" in "date.of.birth" field in MM-DD-YYYY format
        And I should see "must.be.18.years.or.older" errormessage
        And I should see "next" button is disabled
        When I tap "date.of.birth" field
        And I select "greater.than.18.years" in "year" List
        And I tap "done" button
        Then I should see "greater.than.18.years.date.of.birth" in "date.of.birth" field
        And I should see "greater.than.18.years.date.of.birth" in "date.of.birth" field in MM-DD-YYYY format
        And I should see "next" button is enabled

        When I tap "next" button
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen
        And I Verify "partner.sharing.code" text
        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap "bgm.skip" button
        Then I should see "welcome.to.mytempo" screen
        When I tap on "start" button
        Then I should see "home.and.recent.entries" screen
        When I tap on "next" button
        Then I should see "auto.logged.entries" screen
        When I tap on "next" button
        Then I should see "mark.entry.as.prime" screen
        When I tap on "next" button
        Then I should see "set.reminders.onboarding" screen
        When I tap on "next" button
        Then I should see "you.are.ready" screen
        When I tap on "go.to.home" button
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        Then I should see "turnon.your.bluetooth" pop-up
        When I tap on "not.now.button"
        Then I should see "home" selected

    @Precondition
    Scenario: Logging out of the application

        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen