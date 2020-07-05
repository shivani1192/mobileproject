Feature: MADELYNE More menu – My Reminders - Software Test Protocol for ios

    @Precondition
    Scenario: Steps till home screen
        Given I launch the Madelyne application
        And I set deviceformat to 12 hour
        And I enable set automatically in device settings
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
        And I tap on "not.now.button"
        And I relaunch the app
        Then I should see "home" selected

    @SmokeTest
    Scenario: Smoke Test for More Menu My Reminders

        When I tap on "more" icon
        And I tap on "my.reminders" option
        Then I should see "my.reminders" screen
        And I should see "back" button
        And I should see "set.reminders" text
        And I should see "reminders.can.help" text
        And I should see "add.new" button
        When I tap on "add.new" button
        Then I should see "my.reminders" screen
        And I should see "cancel" button
        And I should see "add.new.reminders" text
        And I should see "select.the.activity.and.time" text
        And I should see "activity" field
        And I should see "time.of.daily.reminder" field
        And I should see "save" button is disabled

        When I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        And I should see "blood.sugar.check" option
        And I should see "mealtime.insulin.dose" option
        And I should see "long.acting.insulin.dose" option
        And I should see "enter.carb.intake" option
        When I tap "cancel" button
        When I tap on "time.of.daily.reminder" field
        Then I should see "time.picker"
        When I tap on "done" button
        And I tap on "cancel" button
        Then I should see "my.reminders" screen

        When I tap on "back" button
        And I tap on "home" icon
        Then I should see "home" screen


    @RegressionTest
    Scenario:Regression Test for Mealtime Insulin toggle

        Given I should see "home" screen
        And I set device time as "9:00 AM"
        When I tap on "more" icon
        And I tap on "my.insulin" option
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "back" button
        When I tap on "more" icon

        And I tap on "my.reminders" option
        Then I should see "my.reminders" screen
        And I should see "back" button
        And I should see "set.reminders" text
        And I should see "reminders.can.help" text
        And I should see "add.new" button
        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "cancel" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "blood.sugar.check" option
        Then I should see "blood.sugar.check" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        Then I should see "time.picker"
        When I tap on "done" button
        And I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        ##10:00am
        Then I should see "10.00am" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder" text
        And I should see "selected.blood.sugar.check.time1" text
        And I should see "add.new" button

        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "mealtime.insulin.dose" option
        Then I should see "mealtime.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "1" in "hour" field
        And I select "30" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "1.30pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder" text
        And I should see "selected.blood.sugar.check.time1" text
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time1" text
        And I should see "add.new" button

        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "enter.carb.intake" option
        Then I should see "enter.carb.intake" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "10.00pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder" text
        And I should see "selected.blood.sugar.check.time1" text
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time1" text
        And I should see "enter.carb.intake.reminder" text
        And I should see "selected.enter.carb.intake.time" text
        And I should see "add.new" button

        When I tap on "blood.sugar.check.reminder"
        Then I should see "my.reminders" screen
        And I should see "save" button is disabled
        And I should see "edit.reminder" text
        And I should see "blood.sugar.check" in "activity.text.edit.reminder" field
        And I should see "selected.blood.sugar.check.time" in "edit.time.of.daily.reminder" field
        And I should see "delete" button

        When I tap on "edit.time.of.daily.reminder" field
        And I select "6" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "6.00pm" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "updated.blood.sugar.check.time" text

        When I tap on "mealtime.insulin.dose.reminder"
        And I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        Then I should see "blood.sugar.check" in "activity.text.edit.reminder" field
        And I should see "save" button is enabled

        When I tap on "cancel" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button
        When I tap on "cancel.popup" button
        Then I should see "edit.reminder" screen
        And I should see "blood.sugar.check" in "activity.text.edit.reminder" field

        When I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "set.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time1" text

        When I tap on "mealtime.insulin.dose.reminder"
        Then I should see "edit.reminder" screen
        When I tap on "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "cancel.popup" button
        And I should see "delete.reminder.button"
        When I tap on "cancel.popup" button
        Then I should see "edit.reminder" screen
        When I tap on "delete" button
        And I tap on "delete.reminder.button"
        Then I should see "set.reminders" screen
        When I tap "back" button
        Then I should see "more.menu" screen

        And I tap on "home" icon
        Then I should see "home" screen

        When I tap on "more" icon
        And I tap on "my.insulin" option
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "mealtime.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.reminders" option
        Then I should see "my.reminders" screen
        And I should see "add.new" button

        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "12.00am" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time" text
        And I should see "add.new" button

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
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "activity" field
        And I tap on "enter.carb.intake" option
        And I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "10.00am" in "time.of.daily.reminder" field
        And I should see "save" button is enabled
        And I tap on "save" button
        Then I should see "duplicate.reminder" pop-up
        And I should see "already.set.a.reminder.for.this.activity.&.time" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "cancel" button
        Then I should see "set.reminders" screen
        When I tap on "enter.carb.intake.reminder"
        Then I should see "my.reminders" screen
        And I should see "cancel" button
        And I should see "save" button is disabled
        And I should see "edit.reminder" text
        And I should see "enter.carb.intake" in "activity.text.edit.reminder" field
        And I should see "selected.enter.carb.intake.time" in "edit.time.of.daily.reminder" field
        And I should see "delete" button

        When I tap on "activity.edit.reminder" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "long.acting.insulin.dose" option
        And I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        And I tap on "edit.time.of.daily.reminder" field
        And I select "6" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "6.00am" in "edit.time.of.daily.reminder" field
        And I tap on "save" button
        Then I should see "set.reminders" screen
        And I should see "selected.blood.sugar.check.time" text

        When I tap on "long.acting.insulin.dose.reminder"
        Then I should see "edit.reminder" screen
        When I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        And I tap on "cancel" button
        Then I should see "discard.changes" pop-up

        When I tap on "cancel.popup" button
        And I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "set.reminders" screen
        And I should see "long.acting.insulin.dose.reminder"

        And I tap on "long.acting.insulin.dose.reminder"
        Then I should see "edit.reminder" screen
        When I tap on "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "cancel.popup" button
        And I should see "delete.reminder.button"

        When I tap on "cancel.popup" button
        Then I should see "edit.reminder" screen
        When I tap on "delete" button
        And I tap on "delete.reminder.button"
        Then I should see "set.reminders" screen
        And I should see "blood.sugar.check.reminder"

        When I tap on "blood.sugar.check.reminder"
        And I tap on "delete" button
        And I tap on "delete.reminder.button"
        Then I should see "set.reminders" screen
        And I should see "add.new" button

        When I tap on "back" button
        And I tap on "home" icon
        Then I should see "home" screen

        When I tap on "more" icon
        And I tap on "my.insulin" option
        And I tap on "mealtime.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "back" button
        And I set deviceformat to 24 hour
        And I tap on "more" icon
        And I tap on "my.reminders" option
        And I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen

        When I tap on "mealtime.insulin.dose" option
        Then I should see "mealtime.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "30" in "minutes" field
        And I tap on "done" button
        Then I should see "11.30" in "time.of.daily.reminder" field

        When I tap on "save" button
        Then I should see "set.reminders" screen
        And I should see "my.reminders" text
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time.24hr" text
        And I should see "add.new" button
        # And I should see "plus" symbol                           ###image can't be automated

        When I tap on "add.new" button
        Then I should see "add.new.reminder.title"

        When I tap on "activity" field
        And I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field
        When I tap on "time.of.daily.reminder" field
        And I select "13" in "hour" field
        And I select "30" in "minutes" field
        And I tap on "done" button
        Then I should see "13.30" in "time.of.daily.reminder" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "set.reminders" screen
        And I should see "my.reminders" text
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time.24hr" text
        And I should see "add.new" button
        Then I should see "set.reminders" screen

        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "blood.sugar.check.reminder" text
        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "mealtime.insulin.dose" option
        And I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "30" in "minutes" field
        And I tap on "done" button
        Then I should see "11.30" in "time.of.daily.reminder" field
        And I tap on "save" button
        Then I should see "duplicate.reminder" pop-up
        # And I should see "already.set.a.reminder.for.this.reminder.type.&.time" text
        And I should see "already.set.a.reminder.for.this.activity.&.time" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "cancel" button
        Then I should see "set.reminders" screen

        When I tap on "mealtime.insulin.dose.reminder"
        And I tap on "activity.edit.reminder" field
        And I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.edit.reminder" field
        When I tap on "edit.time.of.daily.reminder" field
        And I select "13" in "hour" field
        And I select "30" in "minutes" field
        And I tap on "done" button
        Then I should see "13.30" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "activity.edit.reminder" field
        And I tap on "mealtime.insulin.dose" option
        When I tap on "cancel" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "set.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time.24hr" text
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time.24hr" text
        When I tap on "mealtime.insulin.dose.reminder"
        And I tap on "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "cancel.popup" button
        And I should see "delete.reminder.button"

        When I tap on "cancel.popup" button
        And I tap on "delete" button
        And I tap on "delete.reminder.button"
        Then I should see "set.reminders" screen

        When I tap on "back" button
        And I tap on "home" icon
        Then I should see "home" screen


    @MealtimeInsulin12hr
    Scenario: More Menu – My Reminders - Mealtime Insulin-12 hours
        #     # PRE-CONDITIONS:

        #     # Make sure that the iOS device is connected to the internet.
        #     # Ensure that user has installed Madelyne App as per section 6.1.
        #     # Ensure that user is registered successfully on MMA App as per section 6.2
        #     # Ensure that user is navigated to the Home screen of the Madelyne MMA App as per section 6.3 and closed the tool tips in the Home screen.
        #     # Make sure that User has tapped "Not now" in all the pop-up's in “Home” Screen.
        #     # Make sure that only Mealtime Insulin is selected in More Menu, My Insulin.
        #     # Make sure that in the device settings, the date and time is the current one in 12-hour format (Time format is specific to OS).
        #     # Make Sure that Device time is set to 09:00 am.


        Given I should see "home" screen
        And I set deviceformat to 12 hour
        When I tap on "more" icon
        And I tap on "my.insulin" option
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "back" button
        When I tap on "more" icon
        And I tap on "my.reminders" option
        Then I should see "my.reminders" screen
        And I should see "back" button
        And I should see "set.reminders" text
        And I should see "reminders.can.help" text
        And I should see "add.new" button

        When I tap on "back" button
        And I tap on "my.reminders" option
        And I tap on "add.new" button
        Then I should see "my.reminders" screen
        And I should see "cancel" button
        And I should see "add.new.reminders" text
        And I should see "select.the.activity.and.time" text
        And I should see "activity" field
        And I should see "time.of.daily.reminder" field
        And I should see "select.reminder.time" text
        And I should see "save" button is disabled

        When I tap on "cancel" button
        And I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        And I should see "blood.sugar.check" option
        And I should see "mealtime.insulin.dose" option
        And I should see "enter.carb.intake" option
        And I should see "cancel" button

        When I tap on "cancel" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "blood.sugar.check" option
        Then I should see "blood.sugar.check" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        Then I should see "time.picker"
        When I tap on "done" button
        And I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "10.00am" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen        
        And I should see "blood.sugar.check.reminder" text
        # And I should see "blood.sugar.check.icon"            ###image can't be automated
        And I should see "selected.blood.sugar.check.time1" text
        And I should see "add.new" button
        # And I should see "plus" symbol               ###image can't be automated

        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "mealtime.insulin.dose" option
        Then I should see "mealtime.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "1" in "hour" field
        And I select "30" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "1.30pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder" text
        And I should see "mealtime.insulin.dose.reminder" text
        # And I should see "mealtime.insulin.dose.icon"            ###image can't be automated
        And I should see "selected.mealtime.insulin.dose.time1" text
        And I should see "add.new" button
        # And I should see "plus" symbol               ###image can't be automated

        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "enter.carb.intake" option
        Then I should see "enter.carb.intake" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "5" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "5.00pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder" text
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "enter.carb.intake.reminder" text
        # And I should see "enter.carb.intake.icon"            ###image can't be automated
        And I should see "selected.enter.carb.intake.time1" text
        And I should see "add.new" button
        # And I should see "plus" symbol               ###image can't be automated

        When I tap "back" button
        And I tap on "home" icon
        When I set device time as "9:59 AM"
        And I wait for "1" minutes
        Then I should see "its.10:00am" text
        And I should see "this.is.your.blood.sugar.check.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "logbook" icon
        And I set device time as "1:29 PM"
        And I wait for "1" minutes
        Then I should see "its.1:30pm" text
        And I should see "this.is.your.mealtime.insulin.dose.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "more" icon
        And I set device time as "4:59 PM"
        And I wait for "1" minutes
        Then I should see "its.5:00pm" text
        And I should see "this.is.your.enter.carb.intake.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "my.reminders" option
        Then I should see "my.reminders" screen

        When I tap on "blood.sugar.check.reminder"
        Then I should see "my.reminders" screen
        And I should see "save" button is disabled
        And I should see "edit.reminder" text
        And I should see "blood.sugar.check" in "activity.text.edit.reminder" field
        And I should see "selected.blood.sugar.check.time1" in "edit.time.of.daily.reminder" field
        And I should see "delete" button

        When I tap on "edit.time.of.daily.reminder" field
        And I select "6" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "6.00pm" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "updated.blood.sugar.check.time" text

        When I tap on "enter.carb.intake.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "6" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "6.00pm" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "updated.enter.carb.intake.time" text

        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "edit" button
        Then I should see "edit.profile" screen
        When I set device time as "5:59 PM"
        And I wait for "1" minutes
        Then I should see "its.6:00pm" text
        And I should see "reminder.for.blood.sugar.and.carb.intake" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "my.reminders" option
        Then I should see "my.reminders" screen

        When I tap on "mealtime.insulin.dose.reminder"
        And I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        Then I should see "blood.sugar.check" in "activity.text.edit.reminder" field
        And I should see "save" button is enabled

        When I tap on "cancel" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        Then I should see "edit.reminder" screen
        And I should see "blood.sugar.check" in "activity.text.edit.reminder" field

        When I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "set.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time1" text

        When I tap on "mealtime.insulin.dose.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "9" in "hour" field
        And I select "45" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "9.45pm" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "updated.mealtime.insulin.dose.time" text

        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.devices" option
        And I set device time as "9:44 PM"

        And I wait for "1" minutes
        Then I should see "its.9:45pm" text
        And I should see "this.is.your.mealtime.insulin.dose.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "my.reminders" option
        And I tap on "mealtime.insulin.dose.reminder"
        Then I should see "edit.reminder" screen
        When I tap on "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "cancel.popup" button
        And I should see "delete.reminder.button"

        When I tap on "cancel.popup" button
        Then I should see "edit.reminder" screen
        When I tap on "delete" button
        And I tap on "delete.reminder.button"
        Then I should see "set.reminders" screen
        And I should see "blood.sugar.check.reminder"
        And I should see "enter.carb.intake.reminder"

        ##Adding 2 entries each
        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "blood.sugar.check" option
        And I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "10.00am" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "blood.sugar.check" option
        And I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "30" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "10.30am" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "mealtime.insulin.dose" option
        And I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "11.00am" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "mealtime.insulin.dose" option
        And I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "30" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "11.30am" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "enter.carb.intake" option
        And I tap on "time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "30" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "12.30pm" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "enter.carb.intake" option
        And I tap on "time.of.daily.reminder" field
        And I select "01" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "01.00pm" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "add.new" button

        When I tap on "back" button
        And I tap on "home" icon
        Then I should see "home" screen

    @LongActingInsulin12hr
    Scenario: More Menu – My Reminders - Long-Acting Insulin-12 hour

        # PRE-CONDITIONS:

        # Ensure that user has installed Madelyne App as per section 6.1.
        # Ensure that user is registered successfully on MMA App as per section 6.2
        # Ensure that user is navigated to the Home screen of the Madelyne MMA App as per section 6.3.
        # Make sure that the iOS device is connected to the internet.
        # Make sure that Long-Acting Insulin is selected in More Menu, My Insulin.
        # Make sure that in the device settings, the date and time is the current one in 12-hour format (Time format is specific to OS).

        Given I should see "home" screen
        And I set deviceformat to 12 hour
        When I tap on "more" icon
        And I tap on "my.insulin" option
        And I tap on "mealtime.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.reminders" option
        Then I should see "my.reminders" screen
        And I should see "back" button
        And I should see "set.reminders" text
        And I should see "reminders.can.help" text
        And I should see "add.new" button

        When I tap on "add.new" button
        Then I should see "my.reminders" screen
        And I should see "cancel" button
        And I should see "add.new.reminders" text
        And I should see "select.the.activity.and.time" text
        And I should see "activity" field
        And I should see "time.of.daily.reminder" field
        And I should see "save" button is disabled

        When I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        And I should see "blood.sugar.check" option
        And I should see "long.acting.insulin.dose" option
        And I should see "enter.carb.intake" option

        When I tap on "enter.carb.intake" option
        Then I should see "enter.carb.intake" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        Then I should see "time.picker"
        And I should see "done" button

        When I tap on "done" button
        And I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        ##10:00am
        Then I should see "10.00am" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "enter.carb.intake.reminder" text
        And I should see "selected.enter.carb.intake.time" text
        And I should see "add.new" button

        When I tap on "add.new" button
        And I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        ##12:00am
        Then I should see "12.00pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "enter.carb.intake.reminder" text
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "selected.long.acting.insulin.dose.time" text
        And I should see "add.new" button

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
        ##05:30pm
        Then I should see "5.30pm" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "activity" field
        And I tap on "enter.carb.intake" option
        And I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        ##10:00am
        And I tap on "save" button
        Then I should see "duplicate.reminder" pop-up
        And I should see "already.set.a.reminder.for.this.activity.&.time" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "cancel" button
        Then I should see "set.reminders" screen

        When I tap on "enter.carb.intake.reminder"
        Then I should see "my.reminders" screen
        # And I should see "my.edit.reminders.title"
        And I should see "cancel" button
        And I should see "save" button is disabled
        And I should see "edit.reminder" text
        And I should see "enter.carb.intake" in "activity.text.edit.reminder" field
        And I should see "10.00am" in "edit.time.of.daily.reminder" field
        And I should see "delete" button

        When I tap on "activity.edit.reminder" field
        Then I should see "select.an.activity.overlay" screen
        When I tap on "long.acting.insulin.dose" option
        And I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        And I tap on "edit.time.of.daily.reminder" field
        And I select "6" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        ##06:00am
        And I tap on "save" button
        Then I should see "set.reminders" screen
        And I should see "selected.blood.sugar.check.time" text

        When I tap on "long.acting.insulin.dose.reminder"
        Then I should see "edit.reminder" screen
        When I tap on "activity.edit.reminder" field
        And I tap on "blood.sugar.check" option
        And I tap on "cancel" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "set.reminders" screen
        And I should see "long.acting.insulin.dose.reminder"

        When I tap on "long.acting.insulin.dose.reminder"
        Then I should see "edit.reminder" screen
        When I tap on "edit.time.of.daily.reminder" field
        And I select "9" in "hour" field
        And I select "45" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        ##09:45pm
        And I tap on "save" button
        Then I should see "updated.long.acting.insulin.dose.time" text

        When I tap "back" button
        And I tap on "home" icon
        When I set device time as "9:44 PM"

        And I wait for "1" minutes
        Then I should see "its.9:45pm" text
        And I should see "this.is.your.long.acting.insulin.dose.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "more" icon
        And I tap on "my.reminders" option
        And I tap on "long.acting.insulin.dose.reminder"
        Then I should see "edit.reminder" screen
        When I tap on "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "cancel.popup" button
        And I should see "delete.reminder.button"

        When I tap on "cancel.popup" button
        Then I should see "edit.reminder" screen
        When I tap on "delete" button
        And I tap on "delete.reminder.button"
        Then I should see "set.reminders" screen
        And I should see "blood.sugar.check.reminder"

        When I tap on "blood.sugar.check.reminder"
        And I tap on "delete" button
        And I tap on "delete.reminder.button"
        Then I should see "my.reminders" screen
        And I should see "add.new" button
        When I tap on "back" button
        And I tap on "home" icon
        Then I should see "home" screen

    @MealtimeAndLongActing24hr
    Scenario: More Menu – My Reminders- Both types of insulin selected - 24 Hour

        #     # PRE-CONDITIONS:

        #     # Make sure that the iOS device is connected to the internet.
        #     # Make sure user installed the myTempo application as per section 6.1.
        #     # Make sure user registered with myTempo application as per section 6.2.
        #     # Make sure user has navigated to Home screen as per section 6.3.
        #     # Make sure that the user has selected both Mealtime Insulin and Long-Acting Insulin in My Insulin section.
        #     # Make sure that the device time format is in 24-hour format.
        #     # Ensure More Menu screen is displayed.

        Given I should see "home" screen
        And I set deviceformat to 24 hour
        And I tap on "more" icon
        And I tap on "my.reminders" option
        And I tap on "add.new" button
        And I should see "add.new.reminders" text
        And I should see "activity" field
        And I should see "time.of.daily.reminder" field
        And I should see "save" button is disabled

        When I tap on "activity" field
        Then I should see "select.an.activity.overlay" screen
        And I should see "blood.sugar.check" option
        And I should see "mealtime.insulin.dose" option
        And I should see "long.acting.insulin.dose" option
        And I should see "enter.carb.intake" option
        And I should see "cancel" button

        When I tap on "mealtime.insulin.dose" option
        Then I should see "mealtime.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "30" in "minutes" field
        And I tap on "done" button
        ##11:30
        Then I should see "11.30" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "set.reminders" screen
        And I should see "my.reminders" text
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time.24hr" text
        And I should see "add.new" button

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "13" in "hour" field
        And I select "30" in "minutes" field
        And I tap on "done" button
        ##13:30
        Then I should see "13.30" in "time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "long.acting.insulin.dose.reminder" text
        When I swipe down
        Then I should see "selected.long.acting.insulin.dose.time.24hr" text
        And I should see "add.new" button

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "blood.sugar.check" option
        And I tap on "time.of.daily.reminder" field
        And I select "17" in "hour" field
        And I select "30" in "minutes" field
        And I tap on "done" button
        ##17:30
        Then I should see "17.30" in "time.of.daily.reminder" field
        And I tap on "save" button
        Then I should see "my.reminders"
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "blood.sugar.check.reminder" text
        When I swipe down
        Then I should see "selected.blood.sugar.check.time.24hr" text
        And I should see "add.new" button

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "enter.carb.intake" option
        And I tap on "time.of.daily.reminder" field
        And I select "19" in "hour" field
        And I select "30" in "minutes" field
        And I tap on "done" button
        ##19:30
        Then I should see "19.30" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "mealtime.insulin.dose.reminder" text
        And I should see "long.acting.insulin.dose.reminder" text
        And I should see "blood.sugar.check.reminder" text
        And I should see "enter.carb.intake.reminder" text
        When I swipe down
        Then I should see "selected.enter.carb.intake.time.24hr" text
        And I should see "add.new" button

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "mealtime.insulin.dose" option
        And I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "30" in "minutes" field
        ##11:30
        And I tap on "done" button
        Then I should see "11.30" in "time.of.daily.reminder" field
        And I tap on "save" button
        Then I should see "duplicate.reminder" pop-up
        # And I should see "already.set.a.reminder.for.this.reminder.type.&.time" text
        And I should see "already.set.a.reminder.for.this.activity.&.time" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "cancel" button
        Then I should see "set.reminders" screen

        When I tap on "mealtime.insulin.dose.reminder"
        And I tap on "activity.edit.reminder" field
        And I tap on "long.acting.insulin.dose" option
        Then I should see "long.acting.insulin.dose" in "activity.text.edit.reminder" field
        When I tap on "edit.time.of.daily.reminder" field
        And I select "13" in "hour" field
        And I select "30" in "minutes" field
        ##13:30
        And I tap on "done" button
        Then I should see "13.30" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "long.acting.insulin" pop-up
        And I should see "you.have.already.set.a.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "cancel" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard.reminder" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "cancel" button
        And I tap on "discard" button
        Then I should see "my.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "selected.mealtime.insulin.dose.time.24hr" text
        And I should see "long.acting.insulin.dose.reminder" text
        When I swipe down
        Then I should see "selected.long.acting.insulin.dose.time.24hr" text
        And I should see "blood.sugar.check.reminder" text
        And I should see "selected.blood.sugar.check.time.24hr" text
        And I should see "enter.carb.intake.reminder" text
        When I swipe down
        Then I should see "selected.enter.carb.intake.time.24hr" text
        And I should see "add.new" button
        # And I should see "plus" symbol                           ###image can't be automated

        When I tap on "mealtime.insulin.dose.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        ##12:00
        And I tap on "done" button
        Then I should see "12.00" in "edit.time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "updated.mealtime.insulin.dose.time.24hr" text

        When I tap on "long.acting.insulin.dose.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "14" in "hour" field
        And I select "00" in "minutes" field
        ##14:00
        And I tap on "done" button
        Then I should see "14.00" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "updated.long.acting.insulin.dose.time.24hr" text

        When I tap on "blood.sugar.check.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        ##12:00
        And I tap on "done" button
        Then I should see "12.00" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "updated.blood.sugar.check.time.24hr" text

        When I tap on "enter.carb.intake.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "14" in "hour" field
        And I select "00" in "minutes" field
        ##14:00
        And I tap on "done" button
        Then I should see "14.00" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "delete" button
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.you.want.to.delete.reminder" text
        And I should see "cancel.popup" button
        And I should see "delete.reminder.button"

        When I tap on "cancel.popup" button
        And I tap on "delete" button
        And I tap on "delete.reminder.button"
        And I should scroll up
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder"
        And I should see "mealtime.insulin.dose.reminder"
        And I should see "long.acting.insulin.dose.reminder"

        When I tap on "back" button
        And I tap on "home" icon
        And I set device time as "11:59" in 24hr format
        And I wait for "1" minutes
        Then I should see "its.12:00" text
        And I should see "this.is.reminder.for.mealtime.and.blood.sugar" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "logbook" icon
        And I set device time as "13:59" in 24hr format
        And I wait for "1" minutes
        Then I should see "its.14:00" text
        And I should see "this.is.your.long.acting.dose.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        Then I should see "logbook" screen
        When I tap on "home" icon
        Then I should see "home" screen

    @Precondition
    Scenario: Loging out of Application

        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen

    @MyReminderNotifications
    Scenario: More Menu – My Reminders- Notifications

        # # PRE-CONDITIONS:

        # # Ensure that user has installed Madelyne App as per section 6.1.
        # # Ensure that user is registered successfully on MMA App as per section 6.2
        # # Ensure that user is navigated to the Home screen of the Madelyne MMA App as per section 6.3.
        # # Make sure that all the reminders are deleted if available.
        # # Make sure that only “Long-Acting Insulin” is enabled in More Menu “My Insulin” section.
        # # Ensure that “Recent Entries” popup is displayed with “Set Reminders” button.
        # # Make sure that the iOS device is connected to the internet.
        # # Make sure that in the device settings, the date and time is the current one in 12-hour format (Time format is specific to OS).

        Given I launch the Madelyne application
        And I enable set automatically in device settings
        And I set deviceformat to 12 hour
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
        When I tap on "long.acting.insulin.toggle" button
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
        

        ###############---not able to inspect ---####################
        # # Then I should see "recent.entries" popup
        # # When I tap on "set.reminders" button
        # # Then I should see "my.reminders" popup
        # # And I should see "reminders.can.help.keep.you.track" text
        # # And I should see "not.now" button
        # # And I should see "set.reminders" button
        #############################################################

        
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        And I tap on "not.now.button"
        And I relaunch the app
        Then I should see "home" selected

        When I swipe down
        Then I should see "set.you.schedule.home.screen" button
        When I tap on "set.you.schedule.home.screen" button
        Then I should see "my.reminders" screen
        When I tap "add.new" button
        And I tap "activity" button
        When I tap on "blood.sugar.check" option
        Then I should see "blood.sugar.check" in "activity.text.field" field
        When I tap on "time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        And I tap "save" button
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder" text

        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.insulin" option
        And I tap on "mealtime.insulin.toggle" button
        And I tap on "save" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        And I tap on "adjust.reminders" button
        Then I should see "my.reminders" screen
        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "mealtime.insulin.dose" option
        Then I should see "mealtime.insulin.dose" in "activity.text.field" field

        When I tap on "time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "12.00pm" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder" text
        And I should see "mealtime.insulin.dose.reminder" text

        When I tap on "back" button
        And I tap on "my.reminders" option
        And I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "enter.carb.intake" option
        And I tap on "time.of.daily.reminder" field
        And I select "5" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        And I tap on "save" button

        And I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "long.acting.insulin.dose" option
        And I tap on "time.of.daily.reminder" field
        And I select "2" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "blood.sugar.check.reminder" text
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "enter.carb.intake.reminder" text
        And I should see "long.acting.insulin.dose.reminder" text
        
        When I tap "back" button
        Then I should see "more.menu" screen

        When I tap on "progress.icon"
        Then I should see "progress" screen
        When I set device time as "9:59 AM"
        And I wait for "1" minutes
        And I should see "its.10:00am" text
        And I should see "this.is.your.blood.sugar.check.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "home" icon
        And I should scroll up
        And I tap on "bell.icon.in.home"
        Then I should see "its.10:00am"
        And I should see "this.is.your.blood.sugar.check.reminder.notification" text

        When I tap on "back" button
        And I tap on "more" option
        And I set device time as "11:59 AM"
        And I wait for "1" minutes
        And I should see "its.12:00pm" text
        And I should see "this.is.your.mealtime.insulin.dose.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.12:00pm"
        And I should see "this.is.your.mealtime.insulin.dose.reminder.notification" text

        When I tap on "back" button
        And I tap on "home" icon
        And I set device time as "1:59 PM"
        And I wait for "1" minutes
        And I should see "its.2:00pm" text
        And I should see "this.is.your.long.acting.insulin.dose.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.2:00pm"
        And I should see "this.is.your.long.acting.insulin.dose.reminder.notification" text

        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.insulin" option
        And I set device time as "4:59 PM"
        And I wait for "1" minutes
        And I should see "its.5:00pm" text
        And I should see "this.is.your.enter.carb.intake.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.5:00pm"
        And I should see "this.is.your.enter.carb.intake.reminder.notification" text

        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.reminders" option
        When I tap on "long.acting.insulin.dose.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "10" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "10.00am" in "edit.time.of.daily.reminder" field

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "updated.long.acting.insulin.dose.time1" text

        When I tap on "enter.carb.intake.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "12.00pm" in "edit.time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "updated.enter.carb.intake.time1" text

        When I set device time as "11:59 AM"
        And I wait for "1" minutes
        And I should see "its.12:00pm" text
        And I should see "this.is.your.mealtime.and.carb.intake.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap "back" button
        And I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.12:00pm"
        And I should see "this.is.your.mealtime.and.carb.intake.reminder.notification" text

        When I tap "back" button
        And I tap on "more" icon
        And I tap on "edit" button
        Then I should see "edit.profile" screen
        When I set device time as "9:59 AM"
        And I wait for "1" minutes
        And I should see "its.10:00am" text
        And I should see "this.is.your.long.acting.and.blood.sugar.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.10:00am"
        And I should see "this.is.your.long.acting.and.blood.sugar.reminder.notification" text

        When I tap "back" button
        And I tap on "more" icon
        And I tap on "my.reminders" option
        And I tap on "enter.carb.intake.reminder"
        And I tap on "delete" button
        And I tap "delete.reminder.button"
        Then I should see "set.reminders" screen
        And I should see "blood.sugar.check.reminder"
        And I should see "mealtime.insulin.dose.reminder"
        And I should see "long.acting.insulin.dose.reminder"

        When I set device time as "11:59 AM"
        And I wait for "1" minutes
        And I should see "its.12:00pm" text
        And I should see "this.is.your.mealtime.insulin.dose.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.12:00pm"
        And I should see "this.is.your.mealtime.insulin.dose.reminder.notification" text

        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.devices" option
        And I set device time as "9:59 AM"
        And I wait for "1" minutes
        ##############--cannot automate screen lock --##############
        # # And I lock device
        # # And I wait for 1 minutes
        # # Then I should see tempo icon
        # # And I should see "its.10:00am" text
        # # And I should see "you.have.a.new.reminder" text
        # # Then I should see "reminder" pop-up
        ############################################################
        And I should see "its.10:00am" text
        And I should see "this.is.your.long.acting.and.blood.sugar.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap "back" button
        And I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.10:00am" text
        And I should see "this.is.your.long.acting.and.blood.sugar.reminder.notification" text

        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.reminders" option

        When I tap on "mealtime.insulin.dose.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "59" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "11.59pm" in "edit.time.of.daily.reminder" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "my.reminders" screen
        And I should see "mealtime.insulin.dose.reminder" text
        And I should see "updated.mealtime.insulin.dose.time1" text

        When I tap on "add.new" button
        And I tap on "activity" field
        And I tap on "enter.carb.intake" option
        And I tap on "time.of.daily.reminder" field
        And I select "11" in "hour" field
        And I select "59" in "minutes" field
        And I select "pm" in "am.pm" field
        And I tap on "done" button
        Then I should see "11.59pm" in "time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "my.reminders" screen

        When I set device time as "11:58 PM"
        And I wait for "1" minutes
        And I should see "its.11:59pm" text
        And I should see "this.is.your.mealtime.and.carb.intake.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap "back" button
        And I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.11:59pm" text
        And I should see "this.is.your.mealtime.and.carb.intake.reminder.notification" text

        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "my.reminders" option
        And I tap on "mealtime.insulin.dose.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "12.00am" in "edit.time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "updated.mealtime.insulin.dose.time2" text

        When I tap on "long.acting.insulin.dose.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "12.00am" in "edit.time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "updated.long.acting.insulin.dose.time2" text

        When I tap on "blood.sugar.check.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "12.00am" in "edit.time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "updated.blood.sugar.check.time1" text

        When I tap on "enter.carb.intake.reminder"
        And I tap on "edit.time.of.daily.reminder" field
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am.pm" field
        And I tap on "done" button
        Then I should see "12.00am" in "edit.time.of.daily.reminder" field
        When I tap on "save" button
        Then I should see "updated.enter.carb.intake.time2" text

        When I set device time as "11:59 PM"
        And I wait for "1" minutes
        And I should see "its.12:00am" text
        And I should see "this.is.your.mealtime.insulin.long.acting.blood.sugar.check.and.carb.intake.reminder" text
        And I should see "ok.popup" button

        When I tap on "ok.popup" button
        And I tap on "back" button
        And I tap on "home" icon
        And I tap on "bell.icon.in.home"
        Then I should see "its.12:00am" text
        And I should see "this.is.your.mealtime.insulin.long.acting.blood.sugar.check.and.carb.intake.reminder.notification" text
        When I tap on "back" button
        And I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen