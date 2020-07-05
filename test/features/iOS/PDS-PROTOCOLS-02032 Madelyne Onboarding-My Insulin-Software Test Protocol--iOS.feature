Feature: MADELYNE Onboarding – My Insulin - Software Test Protocol

    @SelectBothInsulin
    Scenario: Onboarding – My Insulin – Select both mealtime and long-acting insulins

        # PRE-CONDITIONS:

        # Make sure that the iOS / Android device is connected to the internet.
        # Make sure that the user has launched Madelyne MMA App and agreed on “Terms and Privacy” screen as per section 6.2
        # Make sure that the user has navigated till “Personal Information” screen and filled all the details.

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "1" minutes
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
        And I tap "done" button

        When I tap on "next" button
        Then I should see "my.insulin" screen
        And I Verify "my.insulin" text
        
        When I tap on "back" button
        Then I should see "personal.information" screen

        When I tap on "next" button
        Then I should see "my.insulin" screen

        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "you.have.selected.both.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "cancel.popup" button
        Then I should see "my.insulin" screen
        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        And I should see "set.up.smart" button
        And I should see "squire.skip" button
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        And I should see "bgm.skip" button
        When I tap on "bgm.skip" button
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
        
        When I tap on "more" icon
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen

        And I should see "back" button
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen


    @SelectLongActingOnly
    Scenario: Onboarding – My Insulin - Select only Long-Acting insulin type

        # PRE-CONDITIONS:

        # Make sure that the iOS / Android device is connected to the internet.
        # Make sure that the user has launched Madelyne MMA App and agreed on “Terms and Privacy” screen as per section 6.2
        # Make sure that the user has navigated till “Personal Information” screen and filled all the details.

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        When I enter "emailaddress1" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "1" minutes
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
        And I tap "done" button
        
        When I tap on "next" button
        Then I should see "my.insulin" screen
        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.long.acting.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "cancel.popup" button
        Then I should see "my.insulin" screen
        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        And I should see "set.up.smart" button
        And I should see "squire.skip" button
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        And I should see "bgm.skip" button

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

        When I tap on "more" icon
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen

        And I should see "back" button
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen

    @SelectMealtimeOnly
    Scenario: Onboarding – My Insulin - Select only Mealtime insulin type

        # PRE-CONDITIONS:

        # Make sure that the iOS / Android device is connected to the internet.
        # Make sure that the user has launched Madelyne MMA App and agreed on “Terms and Privacy” screen as per section 6.2
        # Make sure that the user has navigated till “Personal Information” screen and filled all the details.

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        When I enter "emailaddress2" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "1" minutes
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
        And I tap "done" button

        When I tap on "next" button
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.mealtime.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "cancel.popup" button
        Then I should see "my.insulin" screen
        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        And I should see "set.up.smart" button
        And I should see "squire.skip" button
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        And I should see "bgm.skip" button
        When I tap on "bgm.skip" button
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
        When I tap on "more" icon
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen

        And I should see "back" button
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen

    @DontSelect
    Scenario: Onboarding – My Insulin - Insulin Type Not Selected

        # PRE-CONDITIONS:

        # Make sure that the iOS / Android device is connected to the internet.
        # Make sure that the user has launched Madelyne MMA App and agreed on “Terms and Privacy” screen as per section 6.2
        # Make sure that the user has navigated till “Personal Information” screen and filled all the details.

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        When I enter "emailaddress3" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "1" minutes
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
        And I tap "done" button

        When I tap on "next" button
        Then I should see "my.insulin" screen

        When I tap on "next" button
        Then I should see "insulin.selection" pop-up
        And I should see "must.select.atleast.one.insulin.to.continue" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen

        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled

        When I tap on "next" button
        And I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        And I should see "set.up.smart" button
        And I should see "squire.skip" button
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        And I should see "bgm.skip" button
        When I tap on "bgm.skip" button
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
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen


    @SmokeTest
    Scenario: Smoke Test for More Menu-My Insulin

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "1" minutes
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
        And I tap "done" button

        When I tap on "next" button
        Then I should see "my.insulin" screen

        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "you.have.selected.both.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "back" button
        Then I should see "my.insulin" screen

        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is disabled

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.long.acting.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "back" button
        Then I should see "my.insulin" screen

        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is disabled

        When I tap on "next" button
        Then I should see "insulin.selection" pop-up
        And I should see "must.select.atleast.one.insulin.to.continue" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen

        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled

        When I tap on "next" button
        And I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        And I should see "set.up.smart" button
        And I should see "squire.skip" button
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        And I should see "bgm.skip" button
        When I tap on "bgm.skip" button
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
        When I tap on "more" icon
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen

        And I should see "back" button
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is disabled
        And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen

    @RegressionTest
    Scenario: Regression Test for More Menu-My Insulin

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "1" minutes
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
        And I tap "done" button

        When I tap on "next" button
        Then I should see "my.insulin" screen

        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "you.have.selected.both.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "cancel.popup" button
        Then I should see "my.insulin" screen

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "you.have.selected.both.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "back" button
        Then I should see "my.insulin" screen

        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is disabled

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.mealtime.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "back" button
        Then I should see "my.insulin" screen

        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is disabled

        When I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.long.acting.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "back" button
        Then I should see "my.insulin" screen

        When I tap on "long.acting.insulin.toggle" button
        # Then I should see "long.acting.insulin.toggle" button is disabled

        When I tap on "next" button
        Then I should see "insulin.selection" pop-up
        And I should see "must.select.atleast.one.insulin.to.continue" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen

        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled

        When I tap on "next" button
        And I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        And I should see "set.up.smart" button
        And I should see "squire.skip" button
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        And I should see "bgm.skip" button
        When I tap on "bgm.skip" button
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

        When I tap on "more" icon
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen

        And I should see "back" button
        And I should see "mealtime.insulin.toggle" button is enabled
        # And I should see "long.acting.insulin.toggle" button is disabled
        And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen






























