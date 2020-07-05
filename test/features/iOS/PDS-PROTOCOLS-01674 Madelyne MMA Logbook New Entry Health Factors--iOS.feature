Feature:LOGBOOK - NEW ENTRY- HEALTH FACTORS - SOFTWARE TEST PROTOCOL-IOS

    # PRE-CONDITIONS:

    # Make sure that Madelyne MMA is installed on the iOS device as per section 6.1
    # Make sure that User is registered successfully on MMA App as per section 6.2.
    # Make sure that Device’s time is set to current date and time.
    #    1.Current Date: ________________ 2. Current Time: ____________.
    # Make sure that Device is connected to internet.
    # Make sure that user navigated till Home screen as per section 6.3.
    # Ensure that in the More Menu - Schedule and Reminders deselect all the check boxes in all the time blocks.
    # Make sure that in the device settings, the date and time is the current one in 12-hour format HH:MM <AM/PM>.
    # Steps till logbookscreen

    @Precondition
    Scenario:Logbook- Health Factors -IOS
        Given I launch the Madelyne application
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
       Then I should see "home" selected
    
    @SmokeTest
    Scenario: Smoke Test For Health Factors

        Given I should see "home" screen
        When I set deviceformat to 12 hour
        And I enable set automatically in device settings
        Then I should see "home" screen
        When I tap on "logbook" option
        And I tap on "new.entry" option
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.health.factors.new.entry" option
        Then I should see "health.factors" screen
        And I should see CurrentTime in "health.factors.time" field
        And I should see CurrentDate in "health.factors.date" field

        When I tap on "activity.checkbox"
        Then I should see "activity.checkbox" selected
        And I should see "save" button is enabled

        When I tap on "health.factors.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "health.factors.time" field

        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "health.factors.date" field

        When I tap on "save" button
        Then I should see "logbook.screen"

        When I tap on "health.factors.entry.1" option
        Then I should see "activity.checkbox" selected
        And I should see "past.date" in "health.factors.date" field
        And I should see "past.time" in "health.factors.time" field
        And I should see "delete.health.factors" button

        When I tap on "back" button
        And I tap on "health.factors.entry.1" option
        And I tap on "activity.checkbox"
        Then I should see "activity.checkbox" Deselected
        And I should see "illness.checkbox" Deselected
        And I should see "stress.checkbox" Deselected
        And I should see "save" button is disabled
        When I tap on "illness.checkbox"
        Then I should see "illness.checkbox" selected
        And I should see "save" button is enabled

        When I tap on "health.factors.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        And I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "save" button

        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "illness" in "confirm.health.factors" field
        And I should see "past.date" in "confirm.health.factors.date" field
        And I should see "past.time" in "confirm.health.factors.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button
        When I tap on "no.keep.editing" button
        Then I should see "health.factors" screen
        When I tap on "save" button
        And I tap on "yes.its.correct" button

        When I tap on "health.factors.entry.1" option
        And I tap on "illness.checkbox"
        Then I should see "activity.checkbox" Deselected
        And I should see "illness.checkbox" Deselected
        And I should see "stress.checkbox" Deselected
        And I should see "save" button is disabled
        When I tap on "activity.checkbox"
        Then I should see "activity.checkbox" selected
        And I should see "save" button is enabled
        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button
        When I tap on "cancel.popup" button
        Then I should see "health.factors" screen
        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook.screen"

        #---------Tap on Health factor entry in logbook---------#
        #---------Make some changes in  Health Factor activities-------#

        When I tap on "health.factors.entry.1" option
        And I tap on "illness.checkbox"
        And I tap on "activity.checkbox"
        Then I should see "illness.checkbox" selected
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "stress.checkbox"
        And I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook.screen"

        When I relaunch the settings app again
        And I set deviceformat to 24 hour
        And I tap on "logbook" option
        Then I should see "logbook.screen"
        When I tap on "health.factors.entry.1"
        And I tap on "health.factors.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        And I tap on "yes.its.correct" button
        And I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"
        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "illness.checkbox"
        And I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook.screen"

        When I tap on "health.factors.entry.1"
        And I tap on "stress.checkbox"
        Then I should see "illness.checkbox" selected
        And I should see "stress.checkbox" selected
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "stress.checkbox"
        Then I should see "stress.checkbox" selected
        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook" screen

        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "stress.text.1"
        And I should see "manual.entry.text"
        And I should see "time.logbook.screen"

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

        #----verify the "health factors" entry is deleted in "logbook.screen"------------

        And I should see "welcome.to.your.logbook" text
        And I should see "logbook.you.can.always.add.activities" text
        And I should see "home.icon"
        And I should see "progress.icon"
        And I should see "new.entry.icon"
        And I should see "logbook.icon" selected
        And I should see "more.icon"

        When I tap on "home" option
        Then I should see "home" screen

    @RegressionTest
    Scenario: Regression Test for Logbook Health Factors
    
        Given I should see "home" screen
        When I set deviceformat to 12 hour
        And I enable set automatically in device settings
        Then I should see "home" screen
        When I tap on "logbook" option
        And I tap on "new.entry" option
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.health.factors.new.entry" option
        Then I should see "health.factors" screen
        And I should see CurrentTime in "health.factors.time" field
        And I should see CurrentDate in "health.factors.date" field
        And I should see "save" button is disabled
        And I should see "cancel" button is enabled

        When I tap on "activity.checkbox"
        Then I should see "activity.checkbox" selected
        And I should see "save" button is enabled

        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "health.factors.date" field
        And I should see "save" button is enabled

        When I tap on "health.factors.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "health.factors.date" field
        And I should see "save" button is enabled

        When I tap on "health.factors.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        When I tap on "health.factors.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        Then I should see "past.time" in "health.factors.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "logbook.screen"

        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "activity.text.1"
        And I should see "manual.entry" text
        And I should see "time.logbook.screen"

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen

        When I tap on "back" button
        And I tap on "health.factors.entry.1" option
        And I tap on "activity.checkbox"

        Then I should see "activity.checkbox" Deselected
        And I should see "illness.checkbox" Deselected
        And I should see "stress.checkbox" Deselected
        And I should see "save" button is disabled

        When I tap on "illness.checkbox"
        Then I should see "illness.checkbox" selected
        And I should see "save" button is enabled

        When I tap on "health.factors.date" field
        Then I should see "date.picker.logbook"
        When I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        When I tap on "health.factors.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "health.factors.date" field
        And I should see "save" button is enabled

        When I tap on "health.factors.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        Then I should see "past.date" in "health.factors.date" field
        And I should see "save" button is enabled

        When I tap on "health.factors.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "illness" in "confirm.health.factors" field
        And I should see "past.date" in "confirm.health.factors.date" field
        And I should see "past.time" in "confirm.health.factors.time" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button
        When I tap on "no.keep.editing" button
        Then I should see "health.factors" screen
        When I tap on "save" button
        And I tap on "yes.its.correct" button

        When I tap on "health.factors.entry.1" option
        And I tap on "illness.checkbox"
        Then I should see "activity.checkbox" Deselected
        And I should see "illness.checkbox" Deselected
        And I should see "stress.checkbox" Deselected
        And I should see "save" button is disabled
        When I tap on "activity.checkbox"
        Then I should see "activity.checkbox" selected
        And I should see "save" button is enabled
        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button
        When I tap on "cancel.popup" button
        Then I should see "health.factors" screen
        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook.screen"

        #---------Tap on Health factor entry in logbook---------#
        #---------Make some changes in  Health Factor activities-------#

        When I tap on "health.factors.entry.1" option
        And I tap on "illness.checkbox"
        And I tap on "activity.checkbox"
        Then I should see "illness.checkbox" selected
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "health.factors.are.you.sure.delete.entry" text
        And I should see "cancel.popup" button
        And I should see "ok.delete.entry" button
        When I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "stress.checkbox"
        And I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook.screen"

        When I relaunch the settings app again
        And I set deviceformat to 24 hour
        And I tap on "logbook.icon"
        Then I should see "logbook.screen"

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen

        When I tap on "health.factors.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        When I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "stress.text.1"
        And I should see "manual.entry.text"
        And I should see "time.logbook.screen"

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen

        When I tap on "delete.health.factors" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "health.factors.are.you.sure.delete.entry" text
        And I should see "cancel.popup" button
        And I should see "ok.delete.entry" button

        When I tap on "cancel.popup" button
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        Then I should see CurrentTime in 24 hour format in "health.factors.time" field
        And I should see CurrentDate in "health.factors.date" field

        When I tap on "illness.checkbox"
        Then I should see "illness.checkbox" selected
        And I should see "save" button is enabled

        When I tap on "health.factors.time" field
        And I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        When I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"

        When I tap on "health.factors.entry.1"
        And I tap on "stress.checkbox"
        Then I should see "illness.checkbox" selected
        And I should see "stress.checkbox" selected
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "activity.checkbox"
        And I tap on "illness.checkbox"
        Then I should see "activity.checkbox" selected
        And I should see "illness.checkbox" selected
        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook.screen"

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "source.manual.entry" text
        And I should see "activity.checkbox" selected
        And I should see "illness.checkbox" selected
        And I should see "past.date" in "health.factors.date" field
        And I should see "past.time.24" in "health.factors.time" field
        And I should see "delete.health.factors" button

        When I tap on "stress.checkbox"
        Then I should see "stress.checkbox" selected
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"

        #----verifying "health factors" details--------------

        And I should see "health.factors.text"
        And I should see "activity.illness.stress.text"
        And I should see "manual.entry.text"
        And I should see "time.logbook.screen"

        #----tap on saved button-----------

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

        #----verify the "health factors" entry is deleted in "logbook.screen"------------

        And I should see "welcome.to.your.logbook" text
        And I should see "logbook.you.can.always.add.activities" text
        And I should see "home.icon"
        And I should see "progress.icon"
        And I should see "new.entry.icon"
        And I should see "logbook.icon" selected
        And I should see "more.icon"

        When I tap on "home" option
        Then I should see "home" screen

    @HealthFactors12hr
    Scenario: LOGBOOK – HEALTH FACTORS-NEW ENTRY,VIEW,EDIT,DELETE – 12 HOUR FORMAT-IOS

        Given I should see "home" screen
        When I relaunch the settings app again
        And I set deviceformat to 12 hour
        And I enable set automatically in device settings
        # -----tap on "logbook" option------------------

        And I tap on "logbook" option
        Then I should see "logbook.icon" selected
        

        # ------tap on "new entry" option----------------
        # ------tap on "enter health factors" option-----------

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        Then I should see "health.factors" screen
        When I tap on "activity.checkbox"
        Then I should see "activity.checkbox" selected
        When I tap on "illness.checkbox"
        Then I should see "illness.checkbox" selected
        When I tap on "stress.checkbox"
        Then I should see "stress.checkbox" selected
        And I should see "save" button is enabled

        #----tap on "cancel" button-------------

        When I tap on "cancel" button
        And I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        Then I should see "health.factors" screen
        And I should see "activity.checkbox" Deselected
        And I should see "illness.checkbox" Deselected
        And I should see "stress.checkbox" Deselected

        When I tap on "activity.checkbox"
        And I tap on "health.factors.date" field
        Then I should see CurrentDate in "health.factors.date" field
        And I should see "save" button is enabled

        When I tap on "health.factors.date" field
        And I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        #------tap on "date.field.1"----------------------
        #------select current date---------
        #------tap on "done" button--------------------

        When I tap on "health.factors.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        Then I should see CurrentDate in "health.factors.date" field
        And I should see "save" button is enabled

        # #------tap on "time.field.1"----------------------
        # #------select future time---------
        # #------tap on "done" button--------------------

        When I tap on "health.factors.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        #------tap on "time" field------------------------------------
        #-----tap on "done" button---------------

        When I tap on "health.factors.time" field
        And I select "past.time" in "hour" field
        Then I should see "past.time" in "health.factors.time" field
        When I tap on "done" button

        And I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button

        And I tap on "save" button
        Then I should see "logbook.screen"

        #----verifying "health factors" details--------------

        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "activity.text.1"
        And I should see "manual.entry" text
        And I should see "time.logbook.screen"

        #----tap on edit button for saved "Health Factors" details in the logbook------#

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "source.manual.entry" text
        And I should see "activity.checkbox" selected
        And I should see "past.date" in "health.factors.date" field
        And I should see "past.time" in "health.factors.time" field
        And I should see "delete.health.factors" button

        #---tap on "back" button--------------

        When I tap on "back" button

        #------tap on saved "health factors" details in the logbook---------

        And I tap on "health.factors.entry.1" option

        #---deselect all the activities under "health factors" field-------------

        And I tap on "activity.checkbox"
        Then I should see "activity.checkbox" Deselected
        And I should see "illness.checkbox" Deselected
        And I should see "stress.checkbox" Deselected
        And I should see "save" button is disabled

        #------select "illness" checkbox from the List in "health factors"--------------

        When I tap on "illness.checkbox"
        Then I should see "illness.checkbox" selected
        And I should see "save" button is enabled

        #-----verify "date" field-------------

        When I tap on "health.factors.date" field
        Then I should see "date.picker.logbook"
        When I select "future.year" in "year" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.date" errormessage
        And I should see "save" button is disabled

        #------tap on "date.field.1"----------------------
        #------select current date---------
        #------tap on "done" button--------------------

        When I tap on "health.factors.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "future.time" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        #------tap on "time" field------------------
        #------select the past time which is less than the current time-------------
        #-----tap on "done" button---------------

        When I tap on "health.factors.time" field
        And I select "past.time" in "hour" field
        And I tap on "done" button

        And I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button

        And I tap on "save" button

        And I tap on "no.keep.editing" button
        Then I should see "health.factors" screen
        And I should see "illness.checkbox" selected
        And I should see "past.date" in "health.factors.date" field
        And I should see "past.time" in "health.factors.time" field

        #-----tap on "back" button---------
        

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel.popup" button
        And I should see "discard" button

        When I tap on "cancel.popup" button
        Then I should see "health.factors" screen
        And I should see "illness.checkbox" selected
        And I should see "past.date" in "health.factors.date" field
        And I should see "past.time" in "health.factors.time" field

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "activity.text.1"
        And I should see "manual.entry" text
        And I should see "time.logbook.screen"

        #---------Tap on Health factor entry in logbook---------#
        #---------Make some changes in  Health Factor activities-------#

        When I tap on "health.factors.entry.1" option
        And I tap on "stress.checkbox"
        And I tap on "activity.checkbox"
        Then I should see "stress.checkbox" selected
        When I tap on "save" button
        And I tap on "yes.its.correct" button

        #----verifying "health factors" details--------------

        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "stress.text.1"
        And I should see "manual.entry" text
        And I should see "time.logbook.screen"

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "health.factors.are.you.sure.delete.entry" text
        And I should see "cancel.popup" button
        And I should see "ok.delete.entry" button
        When I tap on "cancel.popup" button
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"
        
        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "activity.checkbox"
        Then I should see "activity.checkbox" selected
        When I tap on "save" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "activity.text.1"
        And I should see "manual.entry" text
        And I should see "time.logbook.screen"


    @HealthFactors24hr
    Scenario:LOGBOOK – HEALTH FACTORS-NEW ENTRY,VIEW,EDIT,DELETE – 24 HOUR FORMAT-IOS

        # PRE-CONDITIONS:

        # 	Make sure that tester needs to execute the previous test case before executing this test case and all the test cases needs to be executed on the same device.
        # 	Make sure that Device’s time is set to 24-hour format.
        # 	Make sure that Device’s time is set to current date and time.
        #    1.Current Date: ________________ 2. Current Time: ____________.
        # 	Make sure that Device is connected to internet.
        # 	Make sure that user is in Home screen.

        Given I should see "logbook.screen"
        When I relaunch the settings app again
        And I set deviceformat to 24 hour
        And I tap on "logbook" option
        Then I should see "logbook.screen"

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "source.manual.entry" text
        And I should see "activity.checkbox" selected
        And I should see "past.date" in "health.factors.date" field
        And I should see "delete.health.factors" button

        When I tap on "health.factors.date" field
        And I select CurrentYear in "year" List
        And I tap on "done" button

        And I tap on "health.factors.time" field
        And I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        When I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button

        And I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"
        # And I should see "heart" icon                ######## cannot be automated
        And I should see "health.factors.text"
        And I should see "activity.text.1"
        And I should see "manual.entry.text"
        And I should see "time.logbook.screen"

        #---tap on saved "health factors" details in logbook----------

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "source.manual.entry" text
        And I should see "activity.checkbox" selected
        And I should see CurrentDate in "health.factors.date" field
        And I should see "past.time.24" in "health.factors.time" field
        And I should see "delete.health.factors" button

        When I tap on "delete.health.factors" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "health.factors.are.you.sure.delete.entry" text
        And I should see "cancel.popup" button
        And I should see "ok.delete.entry" button

        When I tap on "cancel.popup" button
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button
        Then I should see "logbook.screen"

        #----verify the "health factors" entry is deleted in "logbook.screen"------------

        And I should see "welcome.to.your.logbook" text

        #--------tap on "new entry" option-------------------------------

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        Then I should see CurrentTime in 24 hour format in "health.factors.time" field
        And I should see CurrentDate in "health.factors.date" field

        #-----select "illness" checkbox from the List in "health factors"----------

        When I tap on "illness.checkbox"
        Then I should see "illness.checkbox" selected
        And I should see "save" button is enabled

        #----tap on "time.field.1"--------------

        When I tap on "health.factors.time" field
        And I select "future.time.24" in "hour" field
        And I tap on "done" button
        Then I should see "user.cannot.select.a.future.time" text
        And I should see "save" button is disabled

        #------tap on "time" field------------------
        #------select the past time which is less than the current time which is recorded in pre-condition-------------
        #-----tap on "done" button---------------

        When I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button

        #------tap on "date.field.1"----------------------
        #----select the date which is before the current date-------------------
        #-----tap on "done" button---------------

        And I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button

        #------tap on "save" button--------

        And I tap on "save" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"

        #----verifying "health factors" details--------------

        And I should see "health.factors.text"
        And I should see "illness.text.1"
        And I should see "manual.entry.text"
        And I should see "time.logbook.screen"

        #---tap on saved "health factors" details in the logbook-------------

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "source.manual.entry" text
        And I should see "illness.checkbox" selected
        And I should see "past.date" in "health.factors.date" field
        And I should see "past.time.24" in "health.factors.time" field
        And I should see "delete.health.factors" button

        When I tap on "stress.checkbox"
        Then I should see "stress.checkbox" selected
        When I tap on "save" button
        And I tap on "yes.its.correct" button

        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "illness.stress.text"
        And I should see "manual.entry.text"
        And I should see "time.logbook.screen"

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "health.factors.are.you.sure.delete.entry" text
        And I should see "cancel.popup" button
        And I should see "ok.delete.entry" button
        When I tap on "ok.delete.entry" button

        #----verify the "health factors" entry is deleted in "logbook.screen"------------

        Then I should see "logbook.screen"

        #--------tap on "new entry" option-------------------------------

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option

        #-----select "activity" and "illness" checkbox from the List in "health factors"----------

        And I tap on "activity.checkbox"
        And I tap on "illness.checkbox"
        Then I should see "activity.checkbox" selected
        And I should see "illness.checkbox" selected
        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button

        #--------tap on "save" button----------

        And I tap on "save" button
        Then I should see "logbook.screen"

        #----verifying "health factors" details--------------

        And I should see "health.factors.entry.1"
        # And I should see "heart" icon                  ######## cannot be automated
        And I should see "health.factors.text"
        And I should see "activity.illness.text"
        And I should see "manual.entry.text"
        And I should see "time.logbook.screen"

        #-----tap on saved "health factors" details in the logbook---------------

        When I tap on "health.factors.entry.1"
        Then I should see "health.factors" screen
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        And I should see "source.manual.entry" text
        And I should see "activity.checkbox" selected
        And I should see "illness.checkbox" selected
        And I should see "past.date" in "health.factors.date" field
        And I should see "past.time.24" in "health.factors.time" field
        And I should see "delete.health.factors" button

        #---select "stress" checkbox from the List in "health factors"----------------

        When I tap on "stress.checkbox"
        Then I should see "stress.checkbox" selected
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook.screen"
        And I should see "health.factors.entry.1"

        #----verifying "health factors" details--------------

        And I should see "health.factors.text"
        And I should see "activity.illness.stress.text"
        And I should see "manual.entry.text"
        And I should see "time.logbook.screen"

        #----tap on edit button for saved "Health Factors" details in logbook-----------

        When I tap on "health.factors.entry.1"
        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button

        #----verify the "health factors" entry is deleted in "logbook.screen"------------

        Then I should see "logbook.screen"

        #--------tap on "new entry" option-------------------------------

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "activity.checkbox"
        Then I should see "activity.checkbox" selected
        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook" screen

        #----verifying "health factors" details--------------

        And I should see "health.factors.entry.1"
        # And I should see "heart" icon                 ######## cannot be automated
        And I should see "health.factors.text"
        And I should see "activity.text.1"
        And I should see "manual.entry.text"   
        And I should see "time.logbook.screen"

        #---tap on saved "health factors" details in the logbook-------------

        When I tap on "health.factors.entry.1"

        #-----tap on "delete" button in health factor screen-----------

        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button

        #----verify the "health factors" entry is deleted in "logbook.screen"------------

        Then I should see "logbook.screen"

        #--------tap on "new entry" option-------------------------------

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option

        #-----select "illness" checkbox from the List in "health factors"----------

        And I tap on "illness.checkbox"
        Then I should see "illness.checkbox" selected
        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook" screen

        #----verifying "health factors" details--------------

        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "illness.text.1"
        And I should see "manual.entry" text
        And I should see "time.logbook.screen"

        #---tap on saved "health factors" details in the logbook-------------

        When I tap on "health.factors.entry.1"

        #-----tap on "delete" button in health factor screen-----------

        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button

        #----verify the "health factors" entry is deleted in "logbook.screen"------------

        Then I should see "logbook.screen"

        #--------tap on "new entry" option-------------------------------

        When I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option

        #-----select "stress" and "activity" checkbox from the List in "health factors"----------

        And I tap on "stress.checkbox"
        And I tap on "activity.checkbox"
        Then I should see "stress.checkbox" selected
        And I should see "activity.checkbox" selected
        When I tap on "health.factors.date" field
        And I select "past.year" in "year" field
        And I tap on "done" button
        And I tap on "health.factors.time" field
        And I select "past.time.24" in "hour" field
        And I tap on "done" button
        And I tap on "save" button
        Then I should see "logbook" screen

        #----verifying "health factors" details--------------

        And I should see "health.factors.entry.1"
        And I should see "health.factors.text"
        And I should see "activity.stress.text.1"
        And I should see "manual.entry" text
        And I should see "time.logbook.screen"

        #---tap on saved "health factors" details in the logbook-------------

        When I tap on "health.factors.entry.1"

        #-----tap on "delete" button in health factor screen-----------

        And I tap on "delete.health.factors" button
        And I tap on "ok.delete.entry" button

        #----verify the "health factors" entry is deleted in "logbook.screen"------------

        Then I should see "logbook.screen"

        When I tap on "home" option
        Then I should see "home" screen

    @Precondition
    Scenario: Loging out of Application

        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        And I relaunch the app again
        And I handle login to your account screen
        Then I should see "login.to.your.account" screen

