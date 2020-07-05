Feature:MADELYNE LOGBOOK- NEW ENTRY- MEALTIME INSULIN- SOFTWARE TEST PROTOCOL FOR IOS

    @Precondition
    Scenario:  LOGBOOK- NEW ENTRY- MEALTIME INSULIN- ADD, VIEW-IOS
        # # PRE-CONDITIONS:

        # # • Ensure that this protocol should execute in sequence only.
        # # • Ensure that user has launched Madelyne App as per section 6.1.
        # # •	Ensure that user is registered successfully on MMA App as per section 6.2
        # # •	Ensure that user is navigated to the Home screen of the Madelyne App as per section 6.3.
        # # •	Ensure that the Internet Connection is turned ON.
        # # •	Ensure that in the More Menu - Schedule and Reminders deselect all the check boxes in all the time blocks.
        # # •	Make sure that the in the device settings, the date and time is the current one in 12-hour format HH:MM <AM/PM>.

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
        Then I should see "connect.your.devices" pop-up
        When I tap on "not.now" button
        Then I should see "home" selected
    @SmokeTest
    Scenario: Smoke Test for Mealtime insulin

        Given I should see "home" screen
        When I set deviceformat to 12 hour
        Then I should see "home" screen
        When I tap on "logbook" option
        And I tap on "new.entry" option
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        And I should see CurrentTime in "mealtime.time" field
        And I should see CurrentDate in "mealtime.date" field
        When I tap on "insulin" field
        Then I should see "mealtime.insulin.text" screen
        When I tap on "admelog"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.units" field
        And I enter "155" into "mealtime.units" field
        Then I should see "155" in "mealtime.units" field
        And I should see "save" button is enabled
        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "mealtime.date" field
        And I should see "save" button is enabled

        When I tap "mealtime.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "mealtime.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "admelog"
        And I should see "155.units.mealtime"
        And I should see "manual.entry" text

        #------Tapping on latest mealtime entry-------

        When I tap on "155.units.mealtime"
        Then I should see "mark.as.prime.air.shot.label"
        When I tap on "ok" button
        Then I should see "mealtime.insulin" screen
        When I tap on "more.info.icon" option
        Then I should see "prime.air.shot.screen"
        And I should see "done" button is enabled
        When I tap on "done" button
        And I tap on "insulin" field
        And I tap on "humalog.u-100"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.units" field
        And I clear "mealtime.units" field
        And I enter "95" into "mealtime.units" field
        Then I should see "95" in "mealtime.units" field
        When I tap on "mealtime.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "mealtime.date" field
        And I should see "save" button is enabled
        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "mealtime.time" field
        And I should see "save" button is enabled
        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "humalog.u.100" text
        And I should see "100.units.ml" text
        And I should see "insulin.lispro.injection" text
        And I should see "95.prime" in "confirm.mealtime.units" field
        And I should see "past.date" in "confirm.mealtime.date" field
        And I should see "past.time" in "confirm.mealtime.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "mealtime.insulin" screen
        And I should see "95" in "mealtime.units" field
        And I should see "past.date" in "mealtime.date" field
        And I should see "past.time" in "mealtime.time" field

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        Then I should see "mealtime.insulin" screen

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen

        #------Tapping on latest mealtime entry-------

        When I tap on "155.units.mealtime"
        Then I should see "mealtime.insulin" screen
        When I tap on "insulin" field
        And I tap on "humalog.u-100"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.units" field
        And I clear "mealtime.units" field
        And I enter "250" into "mealtime.units" field
        And I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled
        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        Then I should see CurrentDate in "mealtime.date" field
        When I tap on "mealtime.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "mealtime.time" field

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "humalog.u-100"
        And I should see "manual.entry" text
        And I should see "time.logbook.screen"
        And I should see "latest.entry.250.prime" text
        When I relaunch the app again
        And I set deviceformat to 24 hour
        And I tap on "logbook.icon"
        And I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        And I should see CurrentTime in 24 hour format in "mealtime.time" field
        And I should see CurrentDate in "mealtime.date" field

        When I tap on "insulin" field
        And I tap on "admelog"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.units" field
        And I enter "100" into "mealtime.units" field
        Then I should see "100" in "mealtime.units" field
        And I should see "save" button is enabled
        When I tap on "mealtime.date" field
        And I tap "done" button
        Then I should see CurrentDate in "mealtime.date" field
        And I should see "save" button is enabled

        When I tap on "mealtime.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "mealtime.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "admelog"
        And I should see "100.units.mealtime"
        And I should see "manual.entry" text
        When I tap on "100.units.mealtime"
        And I tap on "insulin" field
        And I tap on "novolog"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "mealtime.date" field
        And I should see "save" button is enabled
        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook.screen"

        When I tap on "100.units.mealtime"
        Then I should see "mealtime.insulin" screen
        When I tap on "delete.mealtime.insulin" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "ok.delete.entry" button
        And I should see "cancel.popup" button
        When I tap "ok.delete.entry" button
        Then I should see "logbook" screen

    @MealtimeInsulin12hr
    Scenario: LOGBOOK- NEW ENTRY- MEALTIME INSULIN- ADD, VIEW, EDIT-12 HOUR

        Given I should see "home" screen
        When I relaunch the app again
        And I set deviceformat to 12 hour
        And I tap on "logbook.icon"
        When I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        And I should see CurrentTime in "mealtime.time" field
        And I should see CurrentDate in "mealtime.date" field
        And I should see "save" button is disabled
        And I should see "cancel" button is enabled
        And I should see "insulin" field
        And I should see "other.mealtime.insulin" text
        And I should see "mealtime.units" field

        When I tap on "insulin" field
        Then I should see "mealtime.insulin.text" screen
        And I should see "back" button is enabled
        And I should see "other.mealtime.insulin" text
        And I should see "admelog" text
        And I should see "100.units.ml.u-100.admelog" text
        And I should see "insulin.lispro.injection.admelog" text
        And I should see "apidra" text
        And I should see "100.units.ml.u-100.apidra" text
        And I should see "insulin.glulisine.injection" text
        And I should see "humalog.u-100" text
        And I should see "100.units.ml" text
        And I should see "insulin.lispro.injection.humlog-100" text
        And I should see "humalog.u-200" text
        And I should see "200.units.ml" text
        And I should see "insulin.lispro.injection" text
        And I should see "insulin.lispro.injection" text
        And I should see "100.units.ml.u-100.insulin" text
        And I should see "insulin.lispro.injection.insulin" text
        And I should see "novolog" text
        And I should see "100.units.ml.u-100.novolog" text
        And I should see "insulin.aspart.injection" text

        When I tap on "admelog"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen

        When I tap on "mealtime.units" field
        Then I should see "enter.dose.amount" text
        When I enter "501" into "mealtime.units" field
        Then I should see "entered.value.is.outside.allowable.range" errormessage

    @MealtimeInsulin12hr
    Scenario Outline: Mealtime Insulin Entry

        When I clear "mealtime.units" field
        And I enter "<MealtimeInsulin>" into "mealtime.units" field
        Then I should see "<MealtimeInsulin>" in "mealtime.units" field
        And I should see "save" button is enabled
        Examples:
            | MealtimeInsulin |
            | 0             |
            | 500             |
            | 155             |


    @MealtimeInsulin12hr
    Scenario: Mealtime Insulin Entry

        When I tap on "mealtime.date" field
        Then I should see CurrentDate in "mealtime.date" field
        And I should see "done" button

        When I tap on "mealtime.date" field
        And I select "past.year" in "year" field
        And I tap "done" button
        Then I should see "past.date" in "mealtime.date" field in MM-DD-YYYY format
        And I should see "save" button is enabled

        When I tap on "mealtime.date" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "mealtime.date" field in MM-DD-YYYY format
        And I should see "save" button is enabled

        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap "mealtime.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "logbook.icon"
        Then I should see "logbook" screen
        And I should see "admelog"
        And I should see "155.units.mealtime" text
        And I should see "manual.entry" text
        And I should see "time.logbook.screen" text
        And I should see "you.have.reached.the.end" text

        #------Tapping on latest mealtime entry-------

        When I tap on "155.units.mealtime"

        Then I should see "mark.as.prime.air.shot.label"
        And I should see "mark.as.prime.air.shot.tooltip"
        And I should see "when.you.remove.air.from.your.needle" text
        And I should see "ok" button
        When I tap on "ok" button

        Then I should see "mealtime.insulin" screen
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "source.manual.entry" text
        And I should see "admelog" text
        And I should see "admelog.100.units.ml.u-100" text
        And I should see "insulin.lispro.injection" text
        And I should see "155" in "mealtime.units" field
        And I should see "prime.air.shots" text
        And I should see "more.info.icon"
        And I should see "mark.as.prime.toggle" button
        And I should see "past.time" in "mealtime.time" field
        And I should see CurrentDate in "mealtime.date" field
        And I should see "delete" button

        When I tap on "more.info.icon" option
        Then I should see "prime.air.shot.screen"
        And I should see "done" button is enabled

        When I tap on "done" button
        And I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled

        When I tap on "insulin" field
        Then I should see "mealtime.insulin.text" screen
        When I tap on "humalog.u-100"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen

        When I tap on "mealtime.units" field
        Then I should see "155" in "mealtime.units" field
        When I clear "mealtime.units" field
        And I enter "95" into "mealtime.units" field
        Then I should see "95" in "mealtime.units" field
        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is disabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "humalog.u.100" text
        And I should see "100.units.ml" text
        And I should see "insulin.lispro.injection" text
        And I should see "95" in "confirm.mealtime.units" field
        And I should see CurrentDate in "confirm.mealtime.date" field
        And I should see "past.time" in "confirm.mealtime.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "mealtime.insulin" screen
        And I should see "humalog.u.100" text
        And I should see "100.units.ml" text
        And I should see "insulin.lispro.injection" text
        And I should see "95" in "mealtime.units" field
        And I should see "mark.as.prime.toggle" button is enabled
        And I should see "past.time" in "mealtime.time" field
        And I should see CurrentDate in "mealtime.date" field

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        Then I should see "mealtime.insulin" screen
        And I should see "95" in "mealtime.units" field

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen
        And I should see "admelog"
        And I should see "155.units.mealtime" text
        And I should see "manual.entry" text

        #------Tapping on latest mealtime entry-------

        When I tap on "155.units.mealtime"
        Then I should see "mealtime.insulin" screen

        When I tap on "mealtime.units" field
        And I clear "mealtime.units" field
        And I enter "250" into "mealtime.units" field
        And I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled
        And I should see "250" in "mealtime.units" field

        When I tap on "mealtime.date" field
        Then I should see "done" button
        When I select "future.year" in "year" field
        And I tap "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "mealtime.date" field in MM-DD-YYYY format
        And I should see "save" button is enabled

        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "ademlog"
        And I should see "250.prime" in "confirm.mealtime.units" field
        And I should see CurrentDate in "confirm.mealtime.date" field
        And I should see "past.time" in "confirm.mealtime.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "admelog"
        And I should see "manual.entry" text
        And I should see "latest.entry.250.prime" text
        And I should see "time.logbook.screen" text

        When I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        When I tap on "insulin" field
        And I tap on "humalog.u-200"
        And I tap on "back" button
        And I tap on "mealtime.units" field
        And I enter "150" into "mealtime.units" field
        Then I should see "150" in "mealtime.units" field
        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        And I tap "mealtime.time" field
        And I tap on "done" button
        And I tap on "save" button
        And I tap on "logbook.icon"
        Then I should see "logbook" screen

        When I tap on "home.icon"
        Then I should see "home" screen

    @MealtimeInsulin24hr
    Scenario:  LOGBOOK- NEW ENTRY- MEALTIME INSULIN- ADD, VIEW, EDIT-24 HOUR-IOS

        # PRE-CONDITIONS:

        # •	Ensure that this protocol should execute in sequence only.
        # •	Ensure that the record is created as per section 7.1.
        # •	Make sure that the device is connected to the internet.
        # •	Make sure that the in the device settings, the date and time is the current one in 24-hour format.

        Given I should see "home" screen
        When I relaunch the app again
        And I set deviceformat to 24 hour
        And I tap on "logbook.icon"
        And I tap "new.entry.icon" button
        Then I should see "new.logbook.entry" screen

        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        When I tap on "insulin" field
        Then I should see "mealtime.insulin.text" screen
        And I should see "back" button is enabled
        And I should see "other.mealtime.insulin" text
        And I should see "admelog"
        And I should see "100.units.ml.u-100.admelog"
        And I should see "insulin.lispro.injection.admelog"
        And I should see "apidra"
        And I should see "100.units.ml.u-100.apidra"
        And I should see "insulin.glulisine.injection"
        And I should see "humalog.u-100"
        And I should see "100.units.ml"
        And I should see "insulin.lispro.injection.humlog-100"
        And I should see "humalog.u-200"
        And I should see "200.units.ml"
        And I should see "insulin.lispro.injection"
        And I should see "insulin.lispro.injection"
        And I should see "100.units.ml.u-100.insulin"
        And I should see "insulin.lispro.injection.insulin"
        And I should see "novolog"
        And I should see "100.units.ml.u-100.novolog"
        And I should see "insulin.aspart.injection"

        When I tap on "apidra"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen

        When I tap on "mealtime.units" field
        And I enter "125" into "mealtime.units" field
        Then I should see "125" in "mealtime.units" field
        And I should see "save" button is enabled

        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "mealtime.date" field in MM-DD-YYYY format

        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "apidra"
        And I should see "125.units.mealtime" text
        And I should see "time.logbook.screen" text
        And I should see "manual.entry" text

        #------Tapping on latest mealtime entry-------

        When I tap on "125.units.mealtime"
        Then I should see "mealtime.insulin" screen
        When I tap on "insulin" field
        And I tap on "novolog"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen

        When I tap on "mealtime.units" field
        And I clear "mealtime.units" field
        And I enter "135" into "mealtime.units" field
        Then I should see "135" in "mealtime.units" field
        And I should see "save" button is enabled

        When I tap on "mealtime.date" field
        Then I should see "done" button

        When I select "future.year" in "year" field
        And I tap "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "mealtime.date" field

        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "novolog"
        And I should see "135" in "confirm.mealtime.units" field
        And I should see CurrentDate in "confirm.mealtime.date" field
        And I should see "past.time.24" in "confirm.mealtime.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "mealtime.insulin" screen
        And I should see "135" in "mealtime.units" field
        And I should see CurrentDate in "mealtime.date" field
        And I should see "past.time.24" in "mealtime.time" field

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        Then I should see "mealtime.insulin" screen
        And I should see "135" in "mealtime.units" field
        And I should see CurrentDate in "mealtime.date" field
        And I should see "past.time.24" in "mealtime.time" field

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen
        And I should see "apidra"
        And I should see "125.units.mealtime"

        #------Tapping on latest mealtime entry-------

        When I tap on "125.units.mealtime"
        Then I should see "mealtime.insulin" screen

        When I tap on "mealtime.units" field
        And I clear "mealtime.units" field
        And I enter "200" into "mealtime.units" field
        Then I should see "200" in "mealtime.units" field
        When I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled

        When I tap on "mealtime.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "mealtime.date" field in MM-DD-YYYY format

        When I tap on "mealtime.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "apidra"
        And I should see "200.prime" in "confirm.mealtime.units" field
        And I should see CurrentDate in "confirm.mealtime.date" field
        And I should see "past.time.24" in "confirm.mealtime.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "apidra"
        And I should see "manual.entry" text
        And I should see "latest.entry.200" text
        And I should see "time.logbook.screen" text

        When I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen

        When I tap on "mealtime.units" field
        And I enter "0" into "mealtime.units" field
        Then I should see "0" in "mealtime.units" field
        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "mealtime.date" field
        When I tap "mealtime.time" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook.screen"
        And I should see "mealtime.insulin" text
        And I should see "latest.entry.0" text
        And I should see "manual.entry" text
        And I should see "time.logbook.screen" text

        #------Tapping on latest mealtime entry-------

        When I tap on "latest.entry.0"
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.units" field
        And I clear "mealtime.units" field
        And I enter "500" into "mealtime.units" field
        Then I should see "500" in "mealtime.units" field
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "latest.entry.500" text


    @MealtimeInsulin24hr
    Scenario:LOGBOOK- NEW ENTRY- MEALTIME INSULIN- DELETE-IOS

        # # PRE-CONDITIONS:

        # # •	Ensure that this protocol should execute in sequence only.
        # # •	Ensure user already created two logbook Mealtime entries as per sections 7.1 and 7.2.
        # # •	Ensure that the Internet Connection is turned ON.


        When I tap on "logbook.icon"
        Then I should see "logbook" screen

        #------Tapping on latest mealtime entry-------

        When I tap on "latest.entry.500"
        Then I should see "mealtime.insulin" screen
        When I tap on "delete.mealtime.insulin" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "ok.delete.entry" button
        And I should see "cancel.popup" button
        When I tap "cancel.popup" button
        Then I should see "mealtime.insulin" screen

        When I tap on "delete.mealtime.insulin" button
        And I tap "ok.delete.entry" button
        Then I should see "logbook" screen

    @RegressionTest
    Scenario:Regression Test for MealTime Insulin
        Given I should see "home" screen
        When I set deviceformat to 12 hour
        Then I should see "home" screen
        When I tap on "logbook.icon"
        Then I should see "welcome.to.your.logbook" text
        And I should see "logbook.you.can.always.add.activities" text
        When I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        And I should see CurrentTime in "mealtime.time" field
        And I should see CurrentDate in "mealtime.date" field

        When I tap on "insulin" field
        Then I should see "mealtime.insulin.text" screen
        When I tap on "admelog"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.units" field
        And I enter "501" into "mealtime.units" field
        Then I should see "entered.value.is.outside.allowable.range" errormessage
        When I tap on "mealtime.units" field
        And I clear "mealtime.units" field
        And I enter "155" into "mealtime.units" field
        Then I should see "155" in "mealtime.units" field
        And I should see "save" button is enabled
        When I tap on "mealtime.date" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled
        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "mealtime.date" field
        And I should see "save" button is enabled
        When I tap on "mealtime.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap "mealtime.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "admelog"
        And I should see "155.units.mealtime"
        And I should see "manual.entry" text

        #------Tapping on latest mealtime entry-------

        When I tap on "155.units.mealtime"
Then I should see "mark.as.prime.air.shot.label"
        And I should see "mark.as.prime.air.shot.tooltip"
        And I should see "when.you.remove.air.from.your.needle" text
        And I should see "ok" button
        When I tap on "ok" button

        Then I should see "mealtime.insulin" screen
        When I tap on "more.info.icon" option
        Then I should see "prime.air.shot.screen"
        And I should see "done" button is enabled
        When I tap on "done" button
        And I tap on "mark.as.prime.toggle" button
        Then I should see "mark.as.prime.toggle" button is enabled

        When I tap on "insulin" field
        And I tap on "humalog.u-100"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "mealtime.date" field
        And I should see "save" button is enabled
        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "155.prime" in "confirm.mealtime.units" field
        And I should see "past.date" in "confirm.mealtime.date" field
        And I should see "past.time" in "confirm.mealtime.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "mealtime.insulin" screen
        And I should see "155" in "mealtime.units" field
        And I should see "past.date" in "mealtime.date" field
        And I should see "past.time" in "mealtime.time" field

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        Then I should see "mealtime.insulin" screen

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen

        #------Tapping on latest mealtime entry-------

        When I tap on "155.units.mealtime"
        Then I should see "mealtime.insulin" screen
        When I tap on "insulin" field
        And I tap on "humalog.u-100"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mark.as.prime.toggle" button
        And I tap on "mealtime.units" field
        And I clear "mealtime.units" field
        And I enter "200" into "mealtime.units" field
        Then I should see "200" in "mealtime.units" field
        When I tap on "mealtime.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "mealtime.date" field
        And I should see "save" button is enabled
        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "humalog.u-100"
        And I should see "latest.entry.200.prime" text
        And I should see "manual.entry" text
        And I should see "time.logbook.screen" text

        When I relaunch the app again
        And I set deviceformat to 24 hour
        And I tap on "logbook.icon"
        And I tap "new.entry" button
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        And I should see CurrentTime in 24 hour format in "mealtime.time" field
        And I should see CurrentDate in "mealtime.date" field
        When I tap on "insulin" field
        Then I should see "mealtime.insulin.text" screen
        When I tap on "admelog"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.units" field
        And I enter "100" into "mealtime.units" field
        Then I should see "100" in "mealtime.units" field
        And I should see "save" button is enabled

        When I tap on "mealtime.date" field
        And I select CurrentYear in "year" List
        And I tap "done" button
        Then I should see CurrentDate in "mealtime.date" field
        And I should see "save" button is enabled

        When I tap on "mealtime.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "mealtime.time" field
        And I should see "save" button is enabled
        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "admelog"
        And I should see "100.units.mealtime"
        And I should see "time.logbook.screen" text
        And I should see "manual.entry" text

        #------Tapping on latest mealtime entry-------

        When I tap on "100.units.mealtime"
        Then I should see "mealtime.insulin" screen
        When I tap on "insulin" field
        And I tap on "novolog"
        And I tap on "back" button
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "mealtime.date" field
        And I should see "save" button is enabled
        When I tap on "mealtime.time" field
        Then I should see "done" button
        When I select "past.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "past.time.24" in "mealtime.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen

        #------Tapping on latest mealtime entry-------

        When I tap on "100.units.mealtime"
        Then I should see "mealtime.insulin" screen
        When I tap on "delete.mealtime.insulin" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "ok.delete.entry" button
        And I should see "cancel.popup" button
        When I tap "ok.delete.entry" button
        Then I should see "logbook" screen

    @Precondition
    Scenario: Logging out of Application

        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        And I relaunch the app again
        And I handle login to your account screen
        Then I should see "login.to.your.account" screen





