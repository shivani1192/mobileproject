Feature:LOGBOOK- NEW ENTRY – ENTER LONG ACTING INSULIN - SOFTWARE TEST PROTOCOL FOR ANDROID

    @Precondition
    Scenario:LOGBOOK-NEW ENTRY-LONG-ACTING INSULIN-ADD, VIEW, EDIT HOURS-ANDROID

    # PRE-CONDITIONS:

    # ensure that this protocol should execute in sequence only.
    # ensure that user has launched madelyne app as per section 6.1.
    # ensure that user is registered successfully on mma app as per section 6.2.
    # ensure that user is navigated to the home screen as per section 6.3.
    # ensure that the Internet connection is turned on.  
    # make sure that the in the device settings, the date And time is the current one in 12-hour format hh:mm <am/pm>

        Given I launch the Madelyne application
        When I turn ON Bluetooth
		And I set deviceformat to 12 hour
        And I enable set automatically in device settings
        Then I should see "welcome.to.tempotm" screen
		When I tap on "lets.get.started" button
		Then I should see "terms.and.privacy" screen
		And I Verify "terms.and.privacy" text
		And I should see "agree.and.continue" button
		And I Verify "agree.and.continue" text
		When I tap "agree.and.continue" button 
		Then I should see "create.account" screen
		And I Verify "create.account" text
		And I should see "emailaddress" field
		And I Verify "emailaddress" text
		And I should see "password" field
		And I Verify "password" text
		When I enter "emailaddress" into "emailaddress" field
		And I enter "password" into "password" field
		And I tap "next" button
		Then I should see "verify.email" screen
		And I Verify "verify.email" text
		When I should connect to email for registration verification
        And I wait for "60" seconds
		Then I verify email
		And I should see "personal.information" screen
		And I Verify "personal.information" text
		And I should see "first.name" field
		And I Verify "first.name" text
		And I should see "last.name" field
		And I Verify "last.name" text
		And I should see "date.of.birth" field
		And I Verify "date.of.birth" text
		When I enter "first.name" into "first.name" field
		And I enter "last.name" into "last.name" field
		And I tap "date.of.birth" field
		Then I should see "date.picker"
		When I select the "year" in "date.picker.year" field
		And I select the "month" in "date.picker.month" field
		And I select the "date" in "date.picker.date" field
		And I tap "set.popup" button
		And I tap "next" button
		Then I should see "my.insulin1" screen
		When I tap on "mealtime.insulin.toggle" button
		And I tap on "long-acting.insulin.toggle" button
		And I tap on "next" button
		Then I should see "confirm.insulin.type" pop-up
		When I tap on "ok.popup" button
		Then I should see "partner.sharing.code" screen
		When I tap on "i.do.not.have.a.partner.sharing.code" button
		Then I should see "account.setup" screen
		And I should see "continue" button
		When I tap on "continue" button
		Then I should see "connect.smart" screen
		When I tap on "squire.skip" button
		Then I should see "connect.blood.sugar.meter" screen
		And I should see "bgm.skip" button
		When I tap on "bgm.skip" button
		Then I should see "home" screen
		# Then I should see "turn.on.your.bluetooth" pop-up
		# When I tap on "not.now" button
		# Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen

        When I tap on "downward.arrow" icon
        Then I should see "home" screen

    @SmokeTest
	Scenario: Smoke Test for Long-Acting insulin
    	When I set deviceformat to 12 hour
		And I enable set automatically in device settings
        And I tap on "logbook.icon"
        And I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see CurrentTime in "longacting.time" field
        And I should see CurrentDate in "longacting.date" field

        When I tap on "insulin.field.longacting"
        And I tap on "basaglar"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.units" field
        And I enter "151" into "longacting.units" field
        Then I should see "151" in "longacting.units" field
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I tap on "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button" button
        Then I should see CurrentDate in "longacting.date" field

        When I tap on "longacting.date"
        And I tap "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
        Then I should see "past.date" in "longacting.date" field

        When I tap on "longacting.time" field
        Then I should see "hour.clock" 
        When I select "past.hour" in "hour" field
        And I select "past.minutes" in "minutes" field
        And I tap on "ok.button"
        Then I should see "past.time" in "longacting.time" field
        
        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time"

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting" 
        Then I should see "long.acting.insulin.text"
        When I tap on "levemir"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.date" field
        And I tap on "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button" button
        Then I should see CurrentDate in "longacting.date" field

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text


        When I set deviceformat to 24 hour
		And I enable set automatically in device settings
        And I tap on "logbook.icon"
        And I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long-acting.insulin" screen
        And I should see CurrentTime in 24 hour format in "longacting.time" field
        And I should see CurrentDate in "longacting.date" field

        When I tap on "insulin.field.longacting"
        And I tap on "basaglar"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.units" field
        And I enter "151" into "longacting.units" field
        Then I should see "151" in "longacting.units" field
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I tap on "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button" button
        Then I should see CurrentDate in "longacting.date" field
         
        When I tap on "longacting.date" field
        And I tap "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
        Then I should see "past.date" in "longacting.date" field

        When I tap on "longacting.time" field
        And I select "past.hour.24" in "hour" field
		And I select "past.minutes" in "minutes" field
		And I tap on "ok.button"
		Then I should see "past.time.24" in "longacting.time" field
        
        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time"

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting" 
        Then I should see "long.acting.insulin.text"
        When I tap on "levemir"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.date" field
        And I tap "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
        Then I should see "past.date" in "longacting.date" field

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
        Then I should see "logbook" screen

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
        Then I should see "logbook" screen

        And I should see "welcome.to.your.logbook" text
		And I should see "you.can.always.add.activities" text
        
        When I tap on "home" option
        Then I should see "home" screen

    @LongactingInsulin12hr
	Scenario: LOGBOOK LONG ACTING INSULIN ADD, VIEW, EDIT 12 HOUR FORMAT Android
        
        When I set deviceformat to 12 hour
		And I enable set automatically in device settings
        And I tap on "logbook.icon"
        And I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long-acting.insulin" screen
        And I should see CurrentTime in "longacting.time" field
        And I should see "save" button is disabled
        And I should see "insulin.field.longacting" text
        And I should see "longacting.units" field
        And I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format
        
        When I tap on "back" button
        Then I should see "logbook" screen
        When I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting" 
        Then I should see "long.acting.insulin.text"
        And I should see "back" button
        And I should see "other.long-acting.insulin.tick.mark"
        #And I should see "tick.mark"

        # List of available insulins 
        And I should see "basaglar"
        And I should see "100.units.ml.u.100.longacting"
        And I should see "insulin.glargine.injection.longacting"

        And I should see "lantus"
        And I should see "100.units.ml.u.100.longacting"
        And I should see "insulin.glargine.injection.longacting"

        And I should see "levemir"
        And I should see "100.units.ml.u.100.longacting"
        And I should see "insulin.detemir.injection.longacting"

        And I should see "toujeo"
        And I should see "300.units.ml.u.300.longacting"
        And I should see "insulin.glargine.injection.longacting"

        And I should see "tresiba.u.100"
        And I should see "100.units.ml.longacting"
        And I should see "insulin.degludec.injection.longacting"

        And I should see "tresiba.u.200"
        And I should see "200.units.ml.longacting"
        And I should see "insulin.degludec.injection.longacting"

        When I tap on "basaglar"
        Then I should see "long-acting.insulin" screen
        And I should see "insulin.field.longacting" text
        And I should see "save" button is disabled 

        When I tap on "longacting.units" field
        And I enter "501" into "longacting.units" field
        Then I should see "501" in "longacting.units" field
        And I should see "cannot.pick.a.unit.above.500.longacting" errormessage
        And I should see "save" button is disabled

        @LongactingInsulin12hr
        Scenario Outline: Long-Acting entry

        When I clear "longacting.units" field
        And I enter "<Longacting>" into "longacting.units" field
        Then I should see "<Longacting>" in "longacting.units" field
        And I should see "save" button is enabled
        Examples:
        | Longacting |
        | 0          |
        | 500        |

        @LongactingInsulin12hr
        Scenario: LongActing entry

        ## When I tap on "longacting.date" field         ##future dates are not visible 
        ## And I tap "year" button
        ## And I select "future.year" in "year" field
        ## And I tap on "ok.button"
        ## Then I should see "user.cannot.select.future.date" text

        When I tap on "longacting.date" field
        Then I should see "ok.button"
        And I should see "cancel.calander" button
        When I tap on "cancel.calander" button
        Then I should see "long-acting.insulin" screen
        And I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format

        When I tap on "longacting.date" field
        And I tap on "ok.button" button
        Then I should see CurrentDate in "longacting.date" field in MM-DD-YYYY format
        And I should see "save" button is enabled
        And I should see CurrentTime in "longacting.time" field

        When I tap on "longacting.time" field
        Then I should see "hour.clock" 
        And I should see "cancel.time" button
        And I should see "ok.button" button
        When I tap on "cancel.time" button
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "future.time" in "hour" field
        Then I should see "ok.button"
        And I should see "cancel.time" button
        When I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled 

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "past.hour" in "hour" field
        And I select "past.minutes" in "minutes" field
        Then I should see "ok.button"
        And I should see "cancel.time" button
        When I tap on "ok.button"
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text
        And I should see "you.have.reached.the.end" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        And I should see "back" button
        And I should see "source.manual.entry" text
        And I should see "mark.as.prime.air.shot" text
        And I should see "information.icon.longacting"  
        And I should see "mark.as.prime.toggle" button is disabled
        And I should see "past.time" in "longacting.time" field
        And I should see CurrentDate in "longacting.date" field
        And I should see "delete.longacting" button

        When I tap on "back" button
        Then I should see "logbook" screen
        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "information.icon.longacting"
        Then I should see "prime.air.shot.screen"
        And I should see "priming.your.pen.title"
        And I should see "priming.your.pen.text"
        And I should see "done" button

        When I tap on "done" button
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "lantus"
        Then I should see "long-acting.insulin" screen
        And I should see "back" button
        And I should see "save" button
        And I should see "source.manual.entry" text
        And I should see "insulin.field.longacting" text
        And I should see "500" in "edit.longacting.units" field
        And I should see "mark.as.prime.air.shot" text
        And I should see "information.icon.longacting" 
        And I should see "past.time" in "longacting.time" field
        And I should see CurrentDate in "longacting.date" field

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "insulin.field.longacting.popup" text
        And I should see "500" in "longacting.popup.units" field
        And I should see "past.time" in "longacting.popup.time" field
        And I should see CurrentDate in "longacting.popup.date" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "long-acting.insulin" screen
        
        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel" button
        And I should see "discard" button

        When I tap on "cancel" button
        Then I should see "long-acting.insulin" screen

        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "levemir"
        Then I should see "long-acting.insulin" screen
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text
        And I should see "you.have.reached.the.end" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        And I should see "back" button
        And I should see "source.manual.entry" text
        And I should see "insulin.field.longacting" text
        And I should see "500" in "edit.longacting.units" field
        And I should see "mark.as.prime.air.shot" text
        And I should see "information.icon.longacting" 
        And I should see "past.time" in "longacting.time" field
        And I should see CurrentDate in "longacting.date" field

        When I tap on "edit.longacting.units"
        And I clear "edit.longacting.units" field
        And I enter "501" into "edit.longacting.units" field
        Then I should see "501" in "edit.longacting.units" field
        And I should see "cannot.pick.a.unit.above.500.longacting" errormessage
        And I should see "save" button is enabled
       
        When I tap on "edit.longacting.units"
        And I clear "edit.longacting.units" field
        And I enter "15" into "edit.longacting.units" field
        Then I should see "15" in "edit.longacting.units" field
        And I should see "save" button is enabled
       
        When I tap on "save" button
        And I wait for "5" seconds
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text
        And I should see "you.have.reached.the.end" text

        When I tap on "updated.long.action.insulin.details"
        And I tap on "mark.as.prime.toggle" button
        Then I should see "long-acting.insulin" screen
        And I should see "back" button
        And I should see "save" button
        And I should see "source.manual.entry" text
        And I should see "insulin.field.longacting" text
        And I should see "mark.as.prime.air.shot" text
        And I should see "information.icon.longacting" 
        And I should see "past.time" in "longacting.time" field
        And I should see CurrentDate in "longacting.date" field
        And I should see "delete.longacting" button

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.date" 
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.date" field
        And I tap on "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "longacting.date" field
        And I should see "save" button is enabled

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "future.time" in "hour" field
        Then I should see "ok.button"
        And I should see "cancel.calander" button
        When I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "past.hour" in "hour" field
        And I select "past.minutes" in "minutes" field
        Then I should see "ok.button"
        And I should see "cancel.time" button
        When I tap on "ok.button"
        Then I should see "past.time" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

       

    @LongactingInsulin24hr
    Scenario:LOGBOOK-NEW ENTRY-LONG-ACTING INSULIN-ADD, VIEW, EDIT-24 HOURS-ANDROID

    # PRE-CONDITIONS:

    # ensure that this protocol should execute in sequence only. 
    # ensure that the record is created as per section 7.1.
    # Ensure that user has launched Madelyne App as per section 6.1. 
    # Ensure that user is registered successfully on MMA App as per section 6.2 
    # Ensure that user navigated till Home screen as per section 6.3.
    # make sure that the device is connected to the internet.
    # make sure that the in the device settings, the date And time is the current one in 24-hour format

        Given I should see "home" screen
        When I set deviceformat to 24 hour
        And I enable set automatically in device settings
        And I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "toujeo"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "0" into "longacting.units" field
        Then I should see "0" in "longacting.units" field

        When I tap on "longacting.date" field
        Then I should see "ok.button"
        And I should see "cancel.calander" button
        When I tap on "cancel.calander" button
        Then I should see "long-acting.insulin" screen
        And I should see CurrentDate in "longacting.date" field

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "future.time.24" in "hour" field
        Then I should see "ok.button"
        And I should see "cancel.time" button
        When I tap on "ok.button" button
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled 

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "past.hour.24" in "hour" field
        And I select "past.minutes" in "minutes" field
        Then I should see "ok.button"
        And I should see "cancel.time" button
        When I tap on "ok.button"
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "logbook.icon"
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text
        

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        And I should see "back" button is enabled
        And I should see "source.manual.entry" text
        And I should see "mark.as.prime.air.shot" text
        And I should see "information.icon.longacting" text
        And I should see "mark.as.prime.toggle" button is disabled
        And I should see "past.time.24" in "longacting.time" field
        And I should see "past.date" in "longacting.date" field
        And I should see "delete.longacting" button
        And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "logbook" screen
        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting"
        Then I should see "long.acting.insulin.text"
        #And I should see "tick.mark"
        When I tap on "tresiba.u.100"
        And I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "insulin.field.longacting.popup" text
        And I should see "0" in "longacting.popup.units" field
        And I should see "past.time.24" in "longacting.popup.time" field
        And I should see "past.date" in "longacting.popup.date" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button

        When I tap on "no.keep.editing" button
        Then I should see "long-acting.insulin" screen
        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        And I should see "are.you.sure.you.want.to.discard" text
        And I should see "cancel" button
        And I should see "discard" button

        When I tap on "cancel" button
        Then I should see "carb.intake" screen
        When I tap on "back" button
        And I tap on "discard" button
        Then I should see "logbook" screen

        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting"
        Then I should see "long.acting.insulin.text"
        #And I should see "tick.mark"
        When I tap on "tresiba.u.200"
        And I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "edit.longacting.units" field
        And I clear "edit.longacting.units" field
        And I enter "500" into "edit.longacting.units" field
        Then I should see "500" in "edit.longacting.units" field

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.date" 
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "longacting.date" field
        And I should see "save" button is enabled 
        
        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        
        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "past.hour.24" in "hour" field
        And I select "past.minutes" in "minutes" field
        Then I should see "ok.button"
        And I should see "cancel.time" button
        When I tap on "ok.button"
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

    @LongactingInsulin24hr
    Scenario:LOGBOOK-NEW ENTRY-LONG-ACTING INSULIN-DELETE-ANDROID

    # # PRE-CONDITIONS:

    # # ensure that this protocol should execute in sequence only.
    # # ensure user already created two logbook entries as per sections 7.1 And 7.2.
    # # ensure that the Internet connection is turned on.
    # # Make sure that user is in Logbook screen.


        Given I should see "logbook" screen
        When I tap on "calendar.icon.logbook" 
        Then I should see "calender.overlay"
        When I tap on "calendar.close" button
        Then I should see "logbook" screen

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        And I should see "delete.longacting" button
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "ok.popup" button
        When I tap on "cancel.popup.1" button
        Then I should see "long-acting.insulin" screen
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
        Then I should see "logbook" screen


    @LongactingInsulin12hr
    Scenario:LOGBOOK-NEW ENTRY-LONG-ACTING INSULIN-DELETE-ANDROID

    # # PRE-CONDITIONS:

    # # ensure that this protocol should execute in sequence only.
    # # ensure user already created two logbook entries as per sections 7.1 And 7.2.
    # # ensure that the Internet connection is turned on.


        Given I should see "logbook" screen
        When I tap on "calendar.icon.logbook" 
        Then I should see "calender.overlay"
        When I tap on "calendar.close" button
        Then I should see "logbook" screen

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        And I should see "delete.longacting" button
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "ok.popup" button
        When I tap on "cancel.popup.1" button
        Then I should see "long-acting.insulin" screen
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
        Then I should see "logbook" screen


    @RegressionTest
	Scenario: Regression Test for LOGBOOK LongActing Insulin
        When I set deviceformat to 12 hour
		And I enable set automatically in device settings
        And I tap on "logbook.icon"
        And I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see CurrentTime in "longacting.time" field
        And I should see CurrentDate in "longacting.date" field

        When I tap on "insulin.field.longacting"
        And I tap on "basaglar"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.units" field
        And I enter "151" into "longacting.units" field
        Then I should see "151" in "longacting.units" field
        And I should see "save" button is enabled

        When I tap on "longacting.date" field
        And I tap on "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button" button
        Then I should see CurrentDate in "longacting.date" field
 
        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "future.time" in "hour" field
        Then I should see "ok.button"
        And I should see "cancel.calander" button
        When I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.time" field
        Then I should see "hour.clock" 
        When I select "past.hour" in "hour" field
        And I select "past.minutes" in "minutes" field
        And I tap on "ok.button"
        Then I should see "past.time" in "longacting.time" field
        
        When I tap on "save" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting" 
        Then I should see "long.acting.insulin.text" text
        When I tap on "levemir"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.date" field
        And I tap on "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button" button
        Then I should see CurrentDate in "longacting.date" field

        When I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "insulin.field.longacting.popup" text
        And I should see "151" in "longacting.popup.units" field
        And I should see "yes.its.correct" button
        And I should see "no.keep.editing" button
        When I tap on "no.keep.editing" button
        Then I should see "long-acting.insulin" screen
        When I tap on "insulin.field.longacting" 
        Then I should see "long.acting.insulin.text"
        When I tap on "levemir"
        Then I should see "long-acting.insulin" screen
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text


        When I set deviceformat to 24 hour
		And I enable set automatically in device settings
        And I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry"
        Then I should see "long-acting.insulin" screen
        And I should see CurrentTime in 24 hour format in "longacting.time" field
        And I should see "back" button is enabled
        And I should see "save" button is disabled
        When I tap on "longacting.time" field
        And I tap on "ok.button" button
        And I tap on "insulin.field.longacting" field
        Then I should see "long.acting.insulin.text"
        When I tap on "toujeo"
        Then I should see "long-acting.insulin" screen

        When I tap on "longacting.units"
        And I clear "longacting.units" field
        And I enter "100" into "longacting.units" field
        Then I should see "100" in "longacting.units" field

        When I tap on "longacting.date" field
        Then I should see "ok.button"
        And I should see "cancel.calander" button
        When I tap on "cancel.calander" button
        Then I should see "long-acting.insulin" screen
        And I should see CurrentDate in "longacting.date" field

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "future.time.24" in "hour" field
        Then I should see "ok.button"
        And I should see "cancel.calander" button
        When I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled 

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "past.hour.24" in "hour" field
        And I select "past.minutes" in "minutes" field
        Then I should see "ok.button"
        And I should see "cancel.button2" button
        When I tap on "ok.button"
        Then I should see "past.time.24" in "longacting.time" field
        And I should see "save" button is enabled

        When I tap on "save" button
        And I tap on "logbook.icon"
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen

        When I tap on "insulin.field.longacting"
        Then I should see "long.acting.insulin.text"
        #And I should see "tick.mark"
        When I tap on "tresiba.u.100"
        And I tap on "save" button
        Then I should see "confirm.new.entry" screen
        And I should see "is.this.information.correct" text
        And I should see "insulin.field.longacting.popup" text
        
        When I tap on "yes.its.correct" button
        Then I should see "logbook" screen
        And I should see "updated.long.action.insulin.details" text
        And I should see "updated.long.action.insulin.details.units" text
        And I should see "updated.long.action.insulin.details.manual.entry" text
        And I should see "insulin.value.entry.time" text

        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
        Then I should see "logbook" screen
     
        When I tap on "updated.long.action.insulin.details"
        Then I should see "long-acting.insulin" screen
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
        Then I should see "logbook" screen

        And I should see "welcome.to.your.logbook" text
		And I should see "you.can.always.add.activities" text
        When I tap on "home" option
        Then I should see "home" screen

    @Precondition
    Scenario:Loging out of application
        When I tap on "more" option
        And I tap on "login.and.security.option"
        And I tap on "logout" button
        Then I should see "login.to.your.account" screen





