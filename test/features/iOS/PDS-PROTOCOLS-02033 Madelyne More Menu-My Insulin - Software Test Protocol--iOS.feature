Feature: MADELYNE More Menu – My Insulin - Software Test Protocol

    @Precondition
    Scenario: Steps till Personal Information

        Given I launch the Madelyne application
        And I set deviceformat to 12 hour
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "30" seconds
        Then I should see "verify.email" screen
        And I Verify "verify.email" text
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen
        And I Verify "personal.information" text
        When I enter "first.name" into "first.name" field
        And I enter "last.name" into "last.name" field
        And I tap "date.of.birth" field
        And I tap on "year" button
        And I select "year"
        And I select "month"
        And I select "date"
        And I tap "done" button
        And I tap "next" button
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
        And I relaunch the app
        Then I should see "home" selected

    @InsulinSelections
    Scenario: More Menu –My Insulin – Insulin Selections

        # PRE-CONDITIONS:
        # Ensure that iOS or Android device is connected to the internet.
        # Ensure that user has launched Madelyne MMA App as per section 6.1.
        # Ensure that user is registered with valid credentials on MMA as per section 6.2
        # Ensure that user is navigated till “Home” screen of MMA App as per section 6.3.


        Given I should see "home" screen
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

        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen

        When I tap on "long.acting.insulin.toggle" button
        # Then I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "save" button is enabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "back" button
        And I tap on "discard" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "long.acting.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.mealtime.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "cancel.popup" button
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        # Then I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium

        When I tap on "save" button
        And I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        And I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button

        When I tap on "back" button
        And I tap on "back" button
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "save" button is disabled
        And I should see "mealtime.insulin.toggle" button is enabled
        # Then I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium

        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        # Then I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is enabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "back" button
        And I tap on "discard" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        # And I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium

        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        # Then I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.long.acting.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "cancel.popup" button
        Then I should see "my.insulin" screen
        # Then I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "save" button
        And I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        And I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button

        When I tap on "back" button
        And I tap on "back" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin" text
        # And I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin" text
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled

        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is enabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "back" button
        And I tap on "discard" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        # And I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "mealtime.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "you.have.selected.both.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "cancel.popup" button
        And I tap on "save" button
        And I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        And I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button

        When I tap on "back" button
        And I tap on "back" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin" text
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin" text
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is enabled

        When I tap on "back" button
        Then I should see "more.menu" screen

    @AdjustReminders
    Scenario: More Menu –My Insulin – Adjust Reminders

        Given I should see "home" screen
        When I tap on "more" icon
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen

        And I should see "back" button
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled

        When I tap on "long.acting.insulin.toggle" button
        # Then I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.mealtime.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        And I should see "back" button
        And I should see "adjust.reminders" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        And I should see "back" button
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "set.reminders" text
        And I should see "reminders.can.help" text
        And I should see "add.new" button
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        And I should see "blood.sugar.check" option
        And I should see "mealtime.insulin.dose" option
        And I should see "enter.carb.intake" option
        And I should see "cancel" button
        When I tap on "cancel" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "mealtime.insulin.dose" option
        Then I should see "mealtime.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "11.00am" in "time.of.daily.reminder" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "my.reminders" screen
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        # And I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "save" button is disabled
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        # Then I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.long.acting.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        And I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        And I should see "back" button
        # And I should see "orange.header.bullet"       ###can't automate
        And I should not see "mealtime.insulin.dose" text
        And I should see "set.reminders" text
        And I should see "add.new" button
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        And I should see "blood.sugar.check" option
        And I should see "long.acting.insulin.dose" option
        And I should see "enter.carb.intake" option
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field
        When I tap on "time.of.daily.reminder" field
        And I select "4" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "4.00pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "my.reminders" screen
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        # And I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        And I should see "back" button
        # And I should see "orange.header.bullet"       ###can't automate
        And I should not see "mealtime.insulin.dose.reminder" text
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time1" text
        And I should see "set.reminders" text
        And I should see "add.new" button
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        And I should see "cancel" button
        And I should see "save" button is disabled
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "edit.reminder" text
        And I should see "long.acting.insulin.dose" in "activity.text.edit.reminder" field
        And I should see "4.00pm" in "edit.time.of.daily.reminder" field
        And I should see "delete" button
        When I tap on "activity.edit.reminder" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "mealtime.insulin.dose" option
        And I tap on "edit.time.of.daily.reminder" field
        And I select "6" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "6.00am" in "edit.time.of.daily.reminder" field
        And I should see "cancel" button
        And I should see "save" button is disabled
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "edit.reminder" text
        And I should see "mealtime.insulin.dose" in "activity.text.edit.reminder" field
        And I should see "6.00am" in "edit.time.of.daily.reminder" field
        And I should see "delete" button
        When I tap on "save" button
        Then I should see "set.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time" text
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        And I should see "blood.sugar.check" option
        And I should see "long.acting.insulin.dose" option
        And I should see "mealtime.insulin.dose" option
        And I should see "enter.carb.intake" option
        And I should see "cancel" button
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "2" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "2.00pm" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen
        When I tap on "back" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled
        When I tap on "mealtime.insulin.toggle" button
        # Then I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        And I should see "back" button
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time2" text
        And I should not see "mealtime.insulin.dose.reminder" text
        And I should see "set.reminders" text
        And I should see "add.new" button
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "2" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "5.30pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button
        When I tap on "ok.popup" button
        And I tap on "cancel" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        # And I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        And I should see "back" button
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time2" text
        And I should see "set.reminders" text
        And I should see "add.new" button
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        And I should see "cancel" button
        And I should see "save" button is disabled
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "edit.reminder" text
        And I should see "long.acting.insulin.dose" in "activity.text.edit.reminder" field
        Then I should see "2.00pm" in "edit.time.of.daily.reminder" field
        And I should see "delete" button
        When I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        Then I should see "my.reminders" screen
        When I tap on "cancel" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "discard" button
        And I should see "cancel.popup" button
        When I tap on "cancel.popup" button
        And I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "my.reminders" screen
        And I should see "back" button
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time2" text
        And I should see "set.reminders" text
        And I should see "add.new" button
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        And I should see "delete" button
        When I tap on "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "delete.reminder.button" button
        And I should see "cancel.popup" button
        When I tap on "cancel.popup" button
        And I tap on "delete" button
        And I tap on "delete.reminder.button" button
        Then I should see "my.reminders" screen
        And I should not see "long.acting.insulin.dose.reminder" text
        When I tap on "back" button
        Then I should see "more.menu" screen

    @SmokeTest
    Scenario: Smoke Test for More Menu-My Insulin

        Given I should see "home" screen
        When I tap on "more" icon
        Then I should see "more" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is disabled
        And I should see "save" button is enabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "discard" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen

        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is disabled
        And I should see "mealtime.insulin.toggle" button is enabled
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.mealtime.insulin.please.confirm" text

        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        And I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button

        When I tap on "back" button
        And I tap on "back" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is enabled
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "save" button is disabled

        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "you.have.selected.both.please.confirm" text
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen

        When I tap on "back" button
        And I tap on "back" button
        And I tap "more" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "long.acting.insulin.toggle" button
        # Then I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        And I should see "set.reminders" screen
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "cancel" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "mealtime.insulin.dose" option
        Then I should see "mealtime.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field
        When I tap on "time.of.daily.reminder" field
        And I select "4" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "long.acting.insulin.dose.reminder" text
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        When I tap on "activity.edit.reminder" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "mealtime.insulin.dose" option
        And I tap on "edit.time.of.daily.reminder" field
        And I select "6" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field
        When I tap on "time.of.daily.reminder" field
         And I select "2" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "my.reminders" screen
        When I tap on "back" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        # Then I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "back" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "5" in "hour" field
        And I select "30" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "5.30pm" in "time.of.daily.reminder" field

        When I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button
        When I tap on "ok.popup" button
        And I tap "cancel" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        When I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        Then I should see "my.reminders" screen
        When I tap on "cancel" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        When I tap on "cancel.popup" button
        And I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "my.reminders" screen
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        And I should see "delete" button
        When I tap on "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "delete.reminder.button" button
        And I should see "cancel.popup" button
        When I tap on "cancel.popup" button
        And I tap on "delete" button
        And I tap on "delete.reminder.button"
        Then I should see "my.reminders" screen
        And I should not see "long.acting.insulin.dose.reminder" text
        When I tap on "back" button
        Then I should see "more.menu" screen

    @RegressionTest
    Scenario: Regression Test for More Menu-My Insulin

        Given I should see "home" screen
        And I relaunch the app
        When I tap on "more" icon
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin" text
        And I should see "fast.acting.insulin" text
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin" text
        And I should see "basal.insulin" text
        And I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "back" button
        Then I should see "more" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "long.acting.insulin.toggle" button
        # Then I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "save" button is enabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "discard" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen

       When I tap on "long.acting.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.mealtime.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button

        When I tap on "cancel.popup" button
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        # Then I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium

        When I tap on "save" button
        And I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        And I should see "back" button
        # And I should see "orange.header.with.text.insulin"          ####can't be automated
        And I should see "insulin.title"
        And I should see "changes.to.your.insulin.selection" text
        And I should see "adjust.reminders" button

        When I tap on "back" button
        And I tap on "back" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "long.acting.insulin.toggle" button
        Then I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is disabled

        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.long.acting.insulin.please.confirm" text
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen

        When I tap on "back" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled

        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "you.have.selected.both.please.confirm" text
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen

        When I tap on "back" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "back" button
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled

        When I tap on "long.acting.insulin.toggle" button
        # Then I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.mealtime.insulin.please.confirm" text
        And I should see "cancel.popup" button
        And I should see "ok.popup" button
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        And I should see "back" button
        And I should see "adjust.reminders" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        And I should see "back" button
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "set.reminders" text
        And I should see "add.new" button
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "cancel" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "mealtime.insulin.dose" option
        Then I should see "mealtime.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "11.00am" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        # And I should see "long.acting.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "save" button is disabled
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        # Then I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        And I should see "selected.long.acting.insulin.please.confirm" text
        When I tap on "ok.popup" button
        Then I should see "my.insulin" screen
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field
        When I tap on "time.of.daily.reminder" field
        And I select "4" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "4.00pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "my.reminders" screen
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        # And I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "back" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        And I should see "cancel" button
        And I should see "save" button is disabled
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "edit.reminder" text
        And I should see "long.acting.insulin.dose" in "activity.text.edit.reminder" field
        And I should see "4.00pm" in "edit.time.of.daily.reminder" field
        And I should see "delete" button
        When I tap on "activity.edit.reminder" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "mealtime.insulin.dose" option
        And I tap on "edit.time.of.daily.reminder" field
        And I select "6" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "6.00am" in "edit.time.of.daily.reminder" field
        And I should see "cancel" button
        And I should see "save" button is disabled
        And I should see "my.reminders" screen
        And I should see "cancel" button
        And I should see "save" button is disabled
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "edit.reminder" text
        And I should see "mealtime.insulin.dose" in "activity.text.edit.reminder" field
        And I should see "delete" button
        When I tap on "save" button
        Then I should see "set.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time" text
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        And I should see "blood.sugar.check" option
        And I should see "long.acting.insulin.dose" option
        And I should see "mealtime.insulin.dose" option
        And I should see "enter.carb.intake" option
        And I should see "cancel" button
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field

         When I tap on "time.of.daily.reminder" field
        And I select "2" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "2.00pm" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen
        When I tap on "back" button
        And I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        And I should see "save" button is disabled
        When I tap on "mealtime.insulin.toggle" button
        # Then I should see "mealtime.insulin.toggle" button is disabled      ## enabled attribute issue in appium
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "back" button
        When I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
         And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time2" text
    
        When I tap on "add.new" button
        And I tap on "activity" field
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "5" in "hour" field
        And I select "30" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "5.30pm" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button
        When I tap on "ok.popup" button
        And I tap on "cancel" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin" screen
        When I tap on "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long.acting.insulin.toggle" button is enabled
        When I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        And I should see "cancel" button
        And I should see "save" button is disabled
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "edit.reminder" text
        And I should see "long.acting.insulin.dose" in "activity.text.edit.reminder" field
        Then I should see "2.00pm" in "edit.time.of.daily.reminder" field
        And I should see "delete" button
        When I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        Then I should see "my.reminders" screen
        When I tap on "cancel" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "discard" button
        And I should see "cancel.popup" button
        When I tap on "cancel.popup" button
        And I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "my.reminders" screen
        And I should see "back" button
        # And I should see "orange.header.bullet"       ###can't automate
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time2" text
        And I should see "set.reminders" text
        And I should see "add.new" button
        When I tap on "long.acting.insulin.dose.reminder" option
        Then I should see "edit.reminder" screen
        And I should see "delete" button
        When I tap "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "delete.reminder.button" button
        And I should see "cancel.popup" button
        When I tap on "cancel.popup" button
        And I tap on "delete" button
        And I tap on "delete.reminder.button" button
        Then I should see "my.reminders" screen
        And I should not see "long.acting.insulin.dose" text
        When I tap on "back" button
        Then I should see "more.menu" screen

    @Precondition
    Scenario: Logging out of the application

        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen