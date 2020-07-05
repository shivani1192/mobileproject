Feature:LOGBOOK- NEW ENTRY – ENTER LONG ACTING INSULIN - SOFTWARE TEST PROTOCOL FOR IOS

    @Precondition
    Scenario:LOGBOOK-NEW ENTRY-LONG-ACTING INSULIN-ADD, VIEW-IOS

        # PRE-CONDITIONS:

        # ensure that this protocol should execute in sequence only.
        # ensure that user has launched madelyne app
        # ensure that user is registered successfully on mma app
        # ensure that user is navigated to the home screen of the madelyne app
        # ensure that the Internet connection is turned on.
        # make sure that the in the device settings, the date And time is the current one in 12-hour format hh:mm <am/pm>

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
        Then I should see "turnon.your.bluetooth" pop-up
        When I tap on "not.now.button"
        Then I should see "home" selected

    @SmokeTest
    Scenario: Smoke Test for Longacting insulin
        Given I should see "home" screen
        And I set deviceformat to 12 hour
        And I relaunch the app again
        And I enable set automatically in device settings
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        And I tap on "logbook.icon"
        And I tap "new.entry" button
        Then I should see "enter.long.acting.insulin.new.entry" option
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        And I should see CurrentDate in "longacting.date" field
        And I should see CurrentTime in "longacting.time" field
        When I tap on "insulin" field
        Then I should see "long.acting.insulin.text"
        When I tap on "basaglar"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen
        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "151" into "longacting.units" field
        Then I should see "151" in "longacting.units" field
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "logbook.icon"
        Then I should see "logbook.screen"
        And I should see "latest.long.action.insulin.entry"
        And I should see "basaglar"
        And I should see "151.units.longacting"
        And I should see "manual.entry" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen

        When I tap on "insulin.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "lantus"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "lantus"
        And I should see "151" in "confirm.long-acting.units" field
        And I should see CurrentDate in "confirm.long-acting.date" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "lantus"
        And I should see "151.units.longacting"
        And I should see "manual.entry" text

        When I set deviceformat to 24 hour
        And I enable set automatically in device settings
        And I tap on "logbook.icon"
        And I tap "new.entry" button
        Then I should see "enter.long.acting.insulin.new.entry" option
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        And I should see CurrentDate in "longacting.date" field

        When I tap on "insulin" field
        Then I should see "long.acting.insulin.text"
        When I tap on "toujeo"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "100" into "longacting.units" field
        Then I should see "100" in "longacting.units" field
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "logbook.icon"
        Then I should see "logbook" screen
        And I should see "toujeo"
        And I should see "100.units.ml.u.100.toujeo"
        And I should see "manual.entry" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        When I tap on "insulin.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "tresiba.u.100"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "tresiba.u.100"
        And I should see "100" in "confirm.long-acting.units" field
        And I should see CurrentDate in "confirm.long-acting.date" field
        And I should see "past.time.24" in "confirm.long-acting.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "100.units.ml.u.100.toujeo"
        And I should see "manual.entry" text
        And I should see "logbook" screen
        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        And I should see "delete.manual.entry" button
        When I tap on "delete.manual.entry" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

    @RegressionTest
    Scenario:Regression Test for Longacting Insulin
        Given I should see "home" screen
        When I set deviceformat to 12 hour
        And I enable set automatically in device settings
        And I tap on "logbook" option
        And I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        And I should see "enter.long.acting.insulin.new.entry" option
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        And I should see CurrentDate in "longacting.date" field
        And I should see CurrentTime in "longacting.time" field

        When I tap on "insulin" field
        Then I should see "long.acting.insulin.text"
        When I tap on "basaglar"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "501" into "longacting.units" field
        Then I should see "501" in "longacting.units" field
        And I should see "entered.value.is.outside.allowable.range" errormessage

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "151" into "longacting.units" field
        Then I should see "151" in "longacting.units" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap "longacting.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "basaglar"
        And I should see "151.units.longacting"
        And I should see "manual.entry" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        When I tap on "insulin.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "lantus"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "lantus"
        And I should see "151" in "confirm.long-acting.units" field
        And I should see "past.date" in "confirm.long-acting.date" field
        And I should see "past.time" in "confirm.long-acting.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "long.acting.insulin" screen
        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "back" button
        And I tap on "discard" button
        And I tap on "logbook" option

        Then I should see "logbook.screen"
        And I should see "latest.long.action.insulin.entry"
        And I should see "basaglar"
        And I should see "151.units.longacting"
        And I should see "manual.entry" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen

        When I tap on "insulin.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "lantus"
        And I tap on "back" button

        And I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "lantus"
        And I should see "151" in "confirm.long-acting.units" field
        And I should see CurrentDate in "confirm.long-acting.date" field
        And I should see "past.time" in "confirm.long-acting.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "lantus"
        And I should see "151.units.longacting"
        And I should see "manual.entry" text

        When I set deviceformat to 24 hour
        And I enable set automatically in device settings
        And I tap on "logbook.icon"
        And I tap "new.entry" button
        Then I should see "enter.long.acting.insulin.new.entry" option
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        And I should see CurrentDate in "longacting.date" field
        And I should see "past.time.24" in "longacting.time" field
        When I tap on "insulin" field
        Then I should see "long.acting.insulin.text"
        When I tap on "toujeo"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "501" into "longacting.units" field
        Then I should see "501" in "longacting.units" field
        And I should see "entered.value.is.outside.allowable.range" errormessage

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "100" into "longacting.units" field
        Then I should see "100" in "longacting.units" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "toujeo"
        And I should see "100.units.ml.u.100.toujeo"
        And I should see "manual.entry" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        When I tap on "insulin.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "tresiba.u.100"
        And I tap on "back" button

        And I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "tresiba.u.100"
        And I should see CurrentDate in "confirm.long-acting.date" field
        And I should see "past.time.24" in "confirm.long-acting.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        And I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook.screen"
        And I should see "latest.long.action.insulin.entry"
        And I should see "toujeo"
        And I should see "100.units.ml.u.100.toujeo"
        And I should see "manual.entry" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen

        When I tap on "insulin.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "tresiba.u.100"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen
        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "tresiba.u.100"
        And I should see "100" in "confirm.long-acting.units" field
        And I should see CurrentDate in "confirm.long-acting.date" field
        And I should see "past.time.24" in "confirm.long-acting.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "tresiba.u.100"
        And I should see "manual.entry" text

        And I should see "logbook" screen
        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        And I should see "delete.manual.entry" button
        When I tap on "delete.manual.entry" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

    @LongactingInsulin12hr
    Scenario: LOGBOOK- NEW ENTRY- LONGACTING INSULIN- ADD, VIEW, EDIT-12 HOUR

        Given I should see "home" screen
        When I set deviceformat to 12 hour
        And I enable set automatically in device settings
        And I tap on "logbook.icon"
        Then I should see "logbook.screen"

        When I tap on "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        When I tap on "insulin" field
        Then I should see "long.acting.insulin.text"
        ## And I should see "other.long.acting.insulin.tick.mark"
        ## And I should see "tick.mark"

        And I should see "basaglar"
        And I should see "100.units.ml.u.100.basaglar"
        And I should see "insulin.glargine.injection.basaglar"

        And I should see "lantus"
        And I should see "100.units.ml.u.100.lantus"
        And I should see "insulin.glargine.injection.lantus"

        And I should see "levemir"
        And I should see "100.units.ml.u.100.levemir"
        And I should see "insulin.detemir.injection.levemir"

        And I should see "toujeo"
        And I should see "300.units.ml.u.300.toujeo"
        And I should see "insulin.glargine.injection.toujeo"

        And I should see "tresiba.u.100"
        And I should see "100.units.ml.tresiba.u.100"
        And I should see "insulin.degludec.injection.tresiba.u.100"

        And I should see "tresiba.u.200"
        And I should see "200.units.ml.tresiba.u.200"
        And I should see "insulin.degludec.injection.tresiba.u.200"

        When I tap on "basaglar"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen
        And I should see "basaglar" in "insulin" field

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "501" into "longacting.units" field
        Then I should see "501" in "longacting.units" field
        And I should see "entered.value.is.outside.allowable.range" errormessage

    @LongactingInsulin12hr
    Scenario Outline: Longacting Insulin Entry

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "<LongactingInsulin>" into "longacting.units" field
        Then I should see "<LongactingInsulin>" in "longacting.units" field
        And I should see "save" button is enabled
        Examples:
            | LongactingInsulin |
            | 0                 |
            | 500               |
            | 115               |

    @LongactingInsulin12hr
    Scenario: Longacting Insulin Entry
        When I tap on "longacting.date" field
        Then I should see "date.picker.logbook"
        And I should see "done" button
        And I should see CurrentDate in "longacting.date" field
        And I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format
        And I should see "save" button is disabled

        When I tap on "longacting.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "longacting.date" field in MM-DD-YYYY format
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "logbook" option
        Then I should see "logbook.screen"
        And I should see "latest.long.action.insulin.entry"
        And I should see "basaglar"
        And I should see "115.units.text"
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

        When I tap on "latest.long.action.insulin.entry"

        Then I should see "mark.as.prime.air.shot.label"
        And I should see "mark.as.prime.air.shot.tooltip"
        And I should see "when.you.remove.air.from.your.needle" text
        And I should see "ok" button
        When I tap on "ok" button

        Then I should see "long.acting.insulin" screen
        And I should see "back" button
        And I should see "source.manual.entry" text
        And I should see "basaglar" in "insulin.longacting" field
        And I should see "115" in "longacting.units" field
        And I should see "prime.air.shots" text
        And I should see "information.icon.longacting"
        And I should see "mark.as.prime.toggle" button is disabled
        And I should see CurrentDate in "longacting.date" field
        And I should see "past.time" in "longacting.time" field
        And I should see "delete" button

        When I tap on "information.icon.longacting"
        Then I should see "prime.air.shot.screen"
        When I tap on "done" button
        Then I should see "long.acting.insulin" screen

        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled
        And I should see "115.prime" in "longacting.units" field

        When I tap on "insulin.longacting" field
        Then I should see "long.acting.insulin.text"

        When I tap on "lantus"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen
        And I should see "lantus" in "insulin.longacting" field

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "501" into "longacting.units" field
        Then I should see "501" in "longacting.units" field
        And I should see "entered.value.is.outside.allowable.range" errormessage
        And I should see "save" button is disabled

    @LongactingInsulin12hr
    Scenario Outline: Longacting Insulin Entry

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "<LongactingInsulin>" into "longacting.units" field
        Then I should see "<LongactingInsulin>" in "longacting.units" field
        And I should see "save" button is enabled
        Examples:
            | LongactingInsulin |
            | 0                 |
            | 500               |
            | 95                |

    @LongactingInsulin12hr
    Scenario:Longacting Insulin Entry
        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "lantus"
        And I should see "95.prime" in "confirm.long-acting.units" field
        And I should see CurrentDate in "longacting.date" field
        And I should see "past.time" in "longacting.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "long.acting.insulin" screen
        And I should see "lantus"
        And I should see "95" in "longacting.units" field
        And I should see "prime.air.shots" text
        And I should see "information.icon.longacting"
        And I should see "mark.as.prime.toggle" button is enabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook.screen"
        And I should see "latest.long.action.insulin.entry"
        And I should see "basaglar"
        And I should see "115.units.text"
        And I should see "manual.entry" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "250" into "longacting.units" field
        Then I should see "250" in "longacting.units" field
        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled
        And I should see "250.prime" in "longacting.units" field

        When I tap on "longacting.date" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "latest.long.action.insulin.entry"
        And I should see "basaglar"
        And I should see "250.units.prime"
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is disabled
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "latest.long.action.insulin.entry"
        And I should see "basaglar"
        And I should see "250.units.longacting"
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

        When I tap on "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "10" into "longacting.units" field
        Then I should see "10" in "longacting.units" field
        When I tap on "insulin"
        Then I should see "long.acting.insulin.text"
        When I tap on "levemir"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen
        And I should see "save" button is enabled
        And I should see "cancel" button

        When I tap on "save" button
        And I tap on "logbook" option
        Then I should see "logbook.screen"
        And I should see "latest.long.action.insulin.entry"
        And I should see "levemir"
        And I should see "10.units.longacting"
        And I should see "manual.entry" text

    ##Calendar
    # When I tap on "calender.icon"
    # And I select "current.year"
    # Then I should see "logbook.screen"
    # And I should see "latest.long.action.insulin.entry"
    # And I should see "levemir"
    # And I should see "10.units.longacting"
    # And I should see "manual.entry" text

    @LongactingInsulin24hr
    Scenario:LOGBOOK-NEW ENTRY-LONG-ACTING INSULIN-ADD, VIEW, EDIT-24 HOURS-IOS

        # PRE-CONDITIONS:
 
        # ensure that this protocol should execute in sequence only.
        # ensure that the record is created as per section 7.1.
        # make sure that the device is connected to the internet.
        # make sure that the in the device settings, the date And time is the current one in 24-hour format

        Given I should see "home" screen
        When I set deviceformat to 24 hour
        And I enable set automatically in device settings
        And I tap on "logbook" option
        And I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        And I should see "other.longacting.insulin" in "insulin" field

        When I tap on "insulin" field
        Then I should see "long.acting.insulin.text" screen
        ## And I should see "other.long.acting.insulin.tick.mark"
        ## And I should see "tick.mark"

        And I should see "basaglar"
        And I should see "100.units.ml.u.100.basaglar"
        And I should see "insulin.glargine.injection.basaglar"

        And I should see "lantus"
        And I should see "100.units.ml.u.100.lantus"
        And I should see "insulin.glargine.injection.lantus"

        And I should see "levemir"
        And I should see "100.units.ml.u.100.levemir"
        And I should see "insulin.detemir.injection.levemir"

        And I should see "toujeo"
        And I should see "300.units.ml.u.300.toujeo"
        And I should see "insulin.glargine.injection.toujeo"

        And I should see "tresiba.u.100"
        And I should see "100.units.ml.tresiba.u.100"
        And I should see "insulin.degludec.injection.tresiba.u.100"

        And I should see "tresiba.u.200"
        And I should see "200.units.ml.tresiba.u.200"
        And I should see "insulin.degludec.injection.tresiba.u.200"

        When I tap on "toujeo"
        And I tap on "back" button
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.units" field
        And I enter "125" into "longacting.units" field
        Then I should see "125" in "longacting.units" field
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field

        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled
        And I tap on "save" button

        When I tap on "logbook.icon"
        Then I should see "logbook.screen"
        And I should see "toujeo"
        And I should see "125.units.longacting"
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

        ##Calendar
        # When I tap on "calender.icon"
        # And I select "current.year"
        # Then I should see "logbook.screen"
        # And I should see "toujeo"
        # And I should see "125.units.longacting"
        # And I should see "manual.entry" text
        # And I should see "you.have.reached.the.end" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen

        When I tap on "insulin.longacting" field
        And I tap on "tresiba.u.100"
        And I tap on "back" button

        And I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "135" into "longacting.units" field
        Then I should see "135" in "longacting.units" field
        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled

        When I tap on "longacting.date" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" pop-up
        And I should see "is.this.information.correct" text
        And I should see "tresiba.u.100"
        And I should see "135.prime" in "confirm.long-acting.units" field
        And I should see CurrentDate in "confirm.long-acting.date" field
        And I should see "past.time.24" in "confirm.long-acting.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "long.acting.insulin" screen
        And I should see "tresiba.u.100"
        And I should see "prime.air.shots" text
        And I should see "information.icon.longacting"
        And I should see "mark.as.prime.toggle" button is enabled
        And I should see CurrentDate in "longacting.date" field
        And I should see "past.time.24" in "longacting.time" field

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        And I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook.screen"
        And I should see "125.units.longacting"
        And I should see "manual.entry" text
        And I should see "toujeo"

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "200" into "longacting.units" field
        Then I should see "200" in "longacting.units" field
        And I should see "save" button is enabled
        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled

        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "longacting.date" field
        And I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "toujeo"
        And I should see "200.units.prime"
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is disabled

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "toujeo"
        And I should see "200.units.longacting"
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

        When I tap on "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        When I tap on "insulin.longacting" field
        And I tap on "tresiba.u.100"
        And I tap on "back" button
        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "0" into "longacting.units" field
        Then I should see "0" in "longacting.units" field
        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button

        When I tap on "save" button
        And I tap on "logbook.icon"
        Then I should see "logbook.screen"

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "500" into "longacting.units" field
        Then I should see "500" in "longacting.units" field

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "tresiba.u.100"
        And I should see "500.units.longacting"
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

        When I tap on "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        When I tap on "insulin.longacting" field
        And I tap on "tresiba.u.100"
        And I tap on "back" button
        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "500" into "longacting.units" field
        Then I should see "500" in "longacting.units" field
        When I tap on "longacting.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        When I tap on "longacting.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button

        When I tap on "save" button
        And I tap on "logbook.icon"
        Then I should see "logbook.screen"

        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "0" into "longacting.units" field
        Then I should see "0" in "longacting.units" field

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "tresiba.u.100"
        And I should see "0.units.longacting"
        And I should see "manual.entry" text
        And I should see "you.have.reached.the.end" text

    @LongactingInsulin24hr
    Scenario:LOGBOOK- NEW ENTRY- LONGACTING INSULIN- DELETE-IOS

        # # PRE-CONDITIONS:

        # # •	Ensure that this protocol should execute in sequence only.
        # # •	Ensure user already created two logbook Mealtime entries as per sections 7.1 and 7.2.
        # # •	Ensure that the Internet Connection is turned ON.

        Given I should see "home" screen
        When I tap on "logbook.icon"
        Then I should see "logbook" screen
        When I tap on "latest.long.action.insulin.entry"
        Then I should see "long.acting.insulin" screen
        When I tap on "delete.manual.entry" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "are.you.sure.you.want.to.delete" text
        And I should see "cancel.in.popup" button
        And I should see "ok.delete.entry" button

        When I tap on "cancel.in.popup" button
        Then I should see "long.acting.insulin" screen
        When I tap on "delete.manual.entry" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap "ok.delete.entry" button
        Then I should see "logbook" screen

    @Precondition
    Scenario: Loging out of Application

        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        And I relaunch the app again
        And I handle login to your account screen
        Then I should see "login.to.your.account" screen


######################OFFLINE#######################################################


# Scenario:LOGBOOK-NEW ENTRY-LONG ACTING-INSULIN-OFFLINE-ADD,VIEW,EDIT,DELETE-IOS

# ## PRE-CONDITIONS:

# ## ensure that user has launched madelyne app
# ## ensure that user is registered successfully on mma app
# ## ensure that user is navigated to the home screen of the madelyne app
# ## ensure that the Internet connection is turned off
# ## ensure that in the more menu - schedule And reminders deselect all the check boxes in all the time blocks.
# ## make sure that the in the device settings, the date And time is the current one in 12-hour format hh:mm <am/pm>.

# Given I should see "home" screen
# And I set deviceformat to 24 hour
# When I tap on "logbook.icon"
# And I tap "new.entry" button
# Then I should see "new.logbook.entry" screen
# When I tap on "enter.long.acting.insulin.new.entry" option
# Then I should see "long.acting.insulin" screen

# And I should see "cancel" button
# And I should see "save" button
# And I should see "other.long.acting.insulin" in "insulin" field
# And I should see CurrentDate in "longacting.date" field
# And I should see "past.time" in "longacting.time" field

# When I tap on "insulin" field
# # Then I should see "orange.header"
# And I should see "long.acting.insulin.text"
# And I should see "back" button
# # And I should see "other.long.acting.insulin.tick.mark"
# # And I should see "tick.mark"

# And I should see "basaglar"
# And I should see "100.units.ml.u.100.basaglar"
# And I should see "insulin.glargine.injection.basaglar"

# And I should see "lantus"
# And I should see "100.units.ml.u.100.lantus"
# And I should see "insulin.glargine.injection.lantus"

# And I should see "levemir"
# And I should see "100.units.ml.u.100.levemir"
# And I should see "insulin.detemir.injection.levemir"

# And I should see "toujeo"
# And I should see "300.units.ml.u.300.toujeo"
# And I should see "insulin.glargine.injection.toujeo"

# And I should see "tresiba.u.100"
# And I should see "100.units.ml.tresiba.u.100"
# And I should see "insulin.degludec.injection.tresiba.u.100"

# And I should see "tresiba.u.200"
# And I should see "200.units.ml.tresiba.u.200"
# And I should see "insulin.degludec.injection.tresiba.u.200"

# When I tap on "tresiba.u.200"
# And I tap on "back" button
# Then I should see "long.acting.insulin" screen

# When I tap on "longacting.units" field
# And I clear "longacting.units" field
# And I enter "501" into "longacting.units" field
# Then I should see "501" in "longacting.units" field
# And I should see "entered.value.is.outside.allowable.range" errormessage
# And I should see "save" button is disabled

# @LongactingInsulin12hrOffline
# Scenario Outline: Longacting Insulin Entry

#     When I tap on "longacting.units" field
#     And I clear "longacting.units" field
#     And I enter "<LongactingInsulin>" into "longacting.units" field
#     Then I should see "<LongactingInsulin>" in "longacting.units" field
#     And I should see "save" button is enabled
#     Examples:
#         | LongactingInsulin |
#         | 0               |
#         | 500             |
#         | 110             |


# When I tap on "longacting.date" field
# Then I should see "date.picker"
# When I tap on "done" button
# Then I should see CurrentDate in "longacting.date"
# And I should see "save" button is enabled

# When I tap on "longacting.date" field
# And I select "past.year" in "year" field
# And I tap on "done" button
# Then I should see "past.date" in "longacting.date" field
# And I should see "past.date" in "longacting.date" field in MM-DD-YYYY format
# And I should see "save" button is enabled

# When I tap on "longacting.date" field
# And I select "future.year" in "year" field
# And I tap on "done" button
# Then I should see "user.cannot.select.a.future.date" errormessage
# And I should see "save" button is disabled

# When I tap on "longacting.date" field
# And I select CurrentYear in "year" List
# And I tap on "done" button
# Then I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format
# And I should see "save" button is disabled

# When I tap on "longacting.time" field
# Then I should see "time.picker"
# And I tap on "done" button
# And I should see "past.time" in "longacting.time" field
# And I should see "save" button is enabled

# When I tap on "longacting.time" field
# And I select "future.time.24" in "hour" field
# And I tap on "done" button
# Then I should see "user.cannot.select.a.future.time" errormessage
# And I should see "save" button is disabled

# When I tap on "longacting.time" field
# And I select "past.time.24" in "hour" field
# And I tap on "done" button
# Then I should see "past.time" in "longacting.time" field
# And I should see "save" button is enabled

# When I tap on "save" button
# Then I should see "logbook.screen"

# ##And I should see "current.date.circle" highlighted
# ##When I select "current.date"
# Then I should see "tresiba.u.200"
# And I should see "110.units.longacting"
#
# And I should see "manual.entry" text

# When I tap on "latest.long.action.insulin.entry"
# Then I should see "long.acting.insulin" screen
# When I tap on "insulin.longacting" field
# And I tap on "basaglar"
# And I tap on "back" button
# Then I should see "long.acting.insulin" screen

# When I tap on "longacting.units" field
# And I clear "longacting.units" field
# And I enter "105" into "longacting.units" field
# Then I should see "105" in "longacting.units" field
# And I should see "save" button is enabled

# When I tap on "longacting.date" field
# And I select CurrentYear in "year" List
# And I tap on "done" button
# Then I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format
# And I should see "save" button is disabled

# When I tap on "longacting.time" field
# And I select "past.time.24" in "hour" field
# And I tap on "done" button
# Then I should see "past.time" in "longacting.time" field
# And I should see "save" button is enabled
# When I tap on "mark.as.prime.toggle" button
# Then I should see "mark.as.prime.toggle" button is enabled

# When I tap on "save" button

# Then I should see "confirm.new.entry" pop-up
# And I should see "cancel" button
# And I should see "is.this.information.correct" text

# And I should see "tresiba.u.200" in "insulin.longacting" field
# And I should see "105.units.prime"
# And I should see "prime.air.shots" text
# And I should see "information.icon.longacting"
# And I should see "mark.as.prime.toggle" button is enabled
# And I should see CurrentDate in "longacting.date" field
# And I should see "past.time" in "longacting.time" field
# And I should see "yes.its.correct" button
# And I should see "no.keep.editing" button

# When I tap on "no.keep.editing" button
# Then I should see "edit.longacting.insulin" screen
# When I tap on "back" button
# Then I should see "discard.changes" pop-up
# And I should see "are.you.sure.you.want.to.discard" text
# And I should see "cancel" button
# And I should see "discard" button

# When I tap on "cancel" button
# And I tap on "back" button
# And I tap on "discard" button

# Then I should see "logbook.screen"
# And I should see "105.units.prime"
# And I should see "tresiba.u.200"
#
# And I should see "manual.entry" text

# When I tap on "latest.long.action.insulin.entry"
# Then I should see "long.acting.insulin" screen

# When I tap on "longacting.units" field
# And I enter "250" into "longacting.units" field
# Then I should see "250.units.prime" in "longacting.units" field
# And I should see "save" button is enabled
# When I tap on "mark.as.prime.toggle" button
# Then I should see "mark.as.prime.toggle" button is disabled

# When I tap on "save" button
# And I tap on "yes.its.correct" button

# Then I should see "logbook.screen"

# And I should see "250.units.longacting"
# And I should see "tresiba.u.200"
# And I should see "manual.entry" text
#

# When I tap on "latest.long.action.insulin.entry"
# Then I should see "long.acting.insulin" screen
# And I should see "mark.as.prime.toggle" button is disabled
# When I tap on "save" button
# And I tap on "yes.its.correct" button
# Then I should see "logbook.screen"

# And I should see "250.units.longacting"
# And I should see "tresiba.u.200"
# And I should see "manual.entry" text
#

# When I tap on "latest.long.action.insulin.entry"
# Then I should see "long.acting.insulin" screen
# When I tap on "delete" button
# Then I should see "confirm.delete.entry" pop-up
# And I should see "are.you.sure" text
# And I should see "cancel.in.popup" button
# And I should see "ok.in.popup" button
# When I tap on "cancel.in.popup" button
# Then I should see "long.acting.insulin" screen
# When I tap on "delete" button
# Then I should see "confirm.delete.entry" pop-up
# When I tap "ok.in.popup" button
# Then I should see "logbook" screen




