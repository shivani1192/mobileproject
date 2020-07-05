Feature: MADELYNE HOME SCREEN – MANUAL ENTRY - SOFTWARE TEST PROTOCOL FOR ANDROID


     @Precondition
     Scenario:Home Screen - Manual Entry- ANDROID

        ####### Steps till Home screen

        Given I launch the Madelyne application 
        When I enable set automatically in device settings
        And I turn OFF Bluetooth
        And I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "30" seconds
        And I should connect to email for registration verification
        And I wait for "20" seconds
        Then I verify email
        And I should see "personal.information" screen
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
        And I Verify "partner.sharing.code" text
        When I tap on "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap on "continue" button
        Then I should see "connect.smart" screen
        When I tap on "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap on "bgm.skip" button
        Then I should see "home" screen
        

        @SmokeTest
        Scenario:Smoke Test for Manual Entry
    
        When I set deviceformat to 12 hour
        And I disable set automatically in device settings
        # When I tap on "home.close" button
        # Then I should see "turn.on.your.bluetooth" pop-up
        # And I should see "home.bluetooth.you.can.always.add" text
        # And I should see "not.now1" button
        # And I should see "home.enable.bluetooth" button

        # When I tap on "not.now" button
        # Then I should see "home" screen

        And I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "turn.on.your.bluetooth" pop-up
        And I should see "home.bluetooth.you.can.always.add" text

        When I tap on "not.now" button
        And I turn ON Bluetooth 
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen
        When I tap on "logbook.icon"
        Then I should see "logbook" screen

        When I tap on "home" option
        Then I should see "home" screen
       
        When I tap on "downward.arrow" icon
        Then I should see "home" screen
        And I should see "welcome.back.firstname" text
        And I should see "you.can.use.connected.devices.to.start" text
        And I should see "today.date" text


        When I turn OFF Bluetooth
        And I tap on "upward.arrow" icon                                      
        And I tap on "set.reminders" button
        Then I should see "my.reminders.title" screen
        When I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen
        
        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
        And I should see "add.new.reminder" text
        And I should see "select.the.activity" text
        And I should see "activity1" option
        And I should see "time.of.reminder" option

        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "blood.sugar.check" option
        And I tap on "time.of.reminder" option
        And I select "7" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        And I tap on "home.icon"
        Then I should see "home" screen
        When I tap on "downward.arrow" icon
        Then I should see "home" screen
        When I set device time as "12:10 AM"
        Then I should see "welcome.back.firstname" text


        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "1.upcoming.reminder" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

        When I set device time as "6:55 AM"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.7.am" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        And I tap on "upward.arrow" icon 
        Then I should see "no.upcoming.reminders" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

        When I turn OFF Bluetooth
        Then I should see "home" screen

        When I tap on "more" option
        And I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen

        When I tap on "blood.sugar.check" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "1" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "home.icon"
        Then I should see "home" screen
       
        When I set device time as "2:0 AM"
        And I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
        Then I should see "blood.sugar" screen
        When I tap on "blood.sugar.mg.dl" field
		And I enter "250" into "blood.sugar.mg.dl" field
		Then I should see "250" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        
        And I should see "home.entry.time" text
        And I should see "home.entry.text" text
        And I should see "no.upcoming.reminders" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen
        And I should see "welcome.back.firstname" text
        And I should see "you.can.use.connected.devices.to.start" text

        When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen

        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long-acting.insulin" screen
        And I should see CurrentDate in "long-acting.date" field
        
        When I tap on "manual.long-acting.insulin" field
        And I tap on "basaglar" option
        Then I should see "long-acting.insulin" screen

        When I tap on "long-acting.units" field
        And I enter "115" into "long-acting.units" field
        Then I should see "115" in "long-acting.units" field

        When I tap on "long-acting.date" field
        And I tap on "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button" button
        Then I should see CurrentDate in "long-acting.date" field

        When I tap on "long-acting.time" field
        And I tap on "ok.button" button  
        Then I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry2.time" text
        And I should see "no.upcoming.reminders" button
      

        When I tap on "home.entry2.text"
        Then I should see "blood.sugar" screen 
        When I tap on "blood.sugar.mg.dl" field
		And I enter "1999" into "blood.sugar.mg.dl" field
		Then I should see "1999" in "blood.sugar.mg.dl" field             
        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen
        And I should see "no.upcoming.reminders" button

        When I tap on "home.entry1.text"
        Then I should see "long-acting.insulin" screen
        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "500" into "longacting.units" field
        Then I should see "500" in "longacting.units" field

        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry2.time" text
        And I should see "no.upcoming.reminders" button



        @NoRemindersNoEntries
        Scenario:Home Screen - Manual Entry-  No Reminders and No Entries
        # PRE-CONDITIONS: 
        # Ensure that user has launched Madelyne App as per section 6.1. and registered successfully on MMA App as per section 6.2. 
        # Ensure that user is navigated to the Home screen of the Madelyne App as per section 6.3. 
        # Ensure that the device follows 12 hours’ time format.
        # Ensure that the Bluetooth of the mobile device is disabled.
        # Ensure that the mobile device has internet connection.
        # Time format is specific to OS.

        When I set deviceformat to 12 hour
        And I disable set automatically in device settings
        # When I tap on "home.close" button
        # Then I should see "turn.on.your.bluetooth" pop-up
        # And I should see "you.can.always.add" text
        # And I should see "not.now1" button
        # And I should see "enable.bluetooth" button

        # When I tap on "not.now" button
        # And I turn ON Bluetooth 
        # Then I should see "connect.your.devices" pop-up
        # And I should see "have.devices.with.bluetooth" text
        # And I should see "not.now1" button
        # And I should see "connect" button

        # When I tap on "not.now" button
        # Then I should see "home" screen
        #-----Verifying Home Screen----

        Then I should see "hello.with.firstname" text
        # #And I should see "orange.header"     #can't automate image
        ## And I should see "bell.icon.in.home"   #can't automate image
        And I should see "today.date" text
        And I should see "get.started.on.connected.diabetes.journey" text
        And I should see "upward.arrow" icon

        And I should see "home.recent.entries" text
        And I should see "last.4hours" text
        And I should see "recent.entries" title
        And I should see "this.is.where.you.will.see" text
        And I should see "home.next" button
        
        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "downward.arrow" icon
        And I should see "last.4hours" text
        And I should see "you.can.use.connected.devices.to.start" text
        And I should see "no.entries.logged" text
        ##And I should see "set.reminders" symbol  
        And I should see "set.reminders" button

        And I should see "my.reminders.homecard"
        And I should see "my.reminders" title
        And I should see "reminders.can.help.keep.you.on.track" text
        And I should see "not.now1" button
        And I should see "set.reminders1" button

        When I tap on "not.now1" button
        Then I should see "turn.on.your.bluetooth" pop-up
        And I should see "home.bluetooth.you.can.always.add" text
        And I should see "not.now" button
        And I should see "home.enable.bluetooth" button

        When I tap on "not.now" button
        And I turn ON Bluetooth 
        Then I should see "connect.your.devices" pop-up
        And I should see "have.devices.with.bluetooth" text
        And I should see "not.now" button
        And I should see "connect" button

        When I tap on "not.now" button
        Then I should see "home" screen
        When I tap on "logbook.icon"
        Then I should see "logbook" screen

        When I tap on "home" option
        Then I should see "home" screen
        When I tap on "downward.arrow" icon
        Then I should see "home" screen
        And I should see "welcome.back.firstname" text
        And I should see "you.can.use.connected.devices.to.start" text
        And I should see "today.date" text
        And I should see "upward.arrow" icon
        And I should see "last.4hours" text
        And I should see "recent.entries" text

        
@RemindersWithNoEntries
Scenario: Home Screen - Manual Entry - Reminders with No Entries 


# PRE-CONDITIONS:
# Execute this Test Case Continuation of 7.1 section.
# Ensure that the device follows 12 hours’ time format.
# Ensure that the Bluetooth of the mobile device is disabled.
# Ensure that the mobile device has internet connection.
# Time format is specific to OS.


        ##----------Verifying Home Screen--------------
        Given I should see "home" screen
        When I set deviceformat to 12 hour
        And I disable set automatically in device settings
        And I turn OFF Bluetooth
        And I tap on "upward.arrow" icon                                      
        And I tap on "set.reminders" button
        Then I should see "my.reminders.title" screen
        When I tap on "back" button
        Then I should see "more.menu" screen

        # When I tap on "more" option
        When I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen
        And I should see "set.reminders" text
        And I should see "reminders.can.help.keep.you.on.track1" text

        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
        And I should see "add.new.reminder" text
        And I should see "select.the.activity" text
        And I should see "activity1" option
        And I should see "time.of.reminder" option

        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "blood.sugar.check" option
        And I tap on "time.of.reminder" option
        And I select "7" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
       
        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "mealtime.insulin.dose" option
        And I tap on "time.of.reminder" option
        And I select "7" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
  
        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "long-acting.insulin.dose" option
        And I tap on "time.of.reminder" option
        And I select "7" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
  
        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "enter.carb.intake" option
        And I tap on "time.of.reminder" option
        And I select "7" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        And I tap on "home.icon"
        Then I should see "home" screen
        When I tap on "downward.arrow" icon
        Then I should see "home" screen
        When I set device time as "12:10 AM"
        Then I should see "welcome.back.firstname" text
        And I should see "you.can.use.connected.devices.to.start" text
        And I should see "today.date" text
        # And I should see "you.are.all.set.up" text   #not present in the build
        And I should see "upward.arrow" icon
        And I should see "last.4hours" text
        And I should see "recent.entries" text

        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "you.can.use.connected.devices.to.start" text
        And I should see "no.entries.logged" text
        ##And I should see "reminders" symbol  
        And I should see "4.upcoming.reminders" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

        When I set device time as "6:55 AM"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.7.am" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        And I tap on "upward.arrow" icon 
        Then I should see "no.upcoming.reminders" button

        When I tap on "more" option
        And I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen

        When I tap on "blood.sugar.check" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "8" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "mealtime.insulin.dose" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "9" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "long-acting.insulin.dose" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "9" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "enter.carb.intake" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "9" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "home.icon"
        Then I should see "home" screen
        And I should see "4.upcoming.reminders" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

        When I set device time as "7:55 AM"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.8.am" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        And I tap on "upward.arrow" icon 
        Then I should see "3.upcoming.reminders" button

        When I tap on "more" option
        And I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen

        When I tap on "enter.carb.intake" option
        Then I should see "edit.reminder" screen
        When I tap on "delete.entry" option
        Then I should see "delete.reminder" pop-up
        And I should see "are.you.sure.to.delete.reminder" text
        And I should see "cancel" button
        And I should see "delete.in.popup" button

        When I tap on "delete.in.popup" button
        Then I should see "my.reminders.title" screen
        When I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "home.icon"
        Then I should see "home" screen
        And I should see "2.upcoming.reminders" button

        When I set device time as "8:55 PM"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.9.pm" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        Then I should see "home" screen
        And I should see "no.upcoming.reminders" button
        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

     @EntriesWithNOReminders
    Scenario:Home Screen - Manual Entry- Entries with no Reminders

    # PRE-CONDITIONS: 

    # Ensure that this this Test Case Continuation of 7.2 section.
    # Ensure that the device follows 12 hours’ time format.
    # Ensure that the Bluetooth of the mobile device is disabled.
    # Ensure that the mobile device has internet connection.
    # Make sure user is in Home screen .
    # Update the All activities Time of Reminders to 1:00 AM in My Reminders screen.


        Given I should see "home" screen
        When I set deviceformat to 12 hour
        And I disable set automatically in device settings
        And I turn OFF Bluetooth

        And I tap on "more" option
        And I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen

        When I tap on "blood.sugar.check" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "1" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "mealtime.insulin.dose" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "1" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "long-acting.insulin.dose" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "1" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "home.icon"
        Then I should see "home" screen
    
        When I set device time as "2:0 AM"
        And I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
        Then I should see "blood.sugar" screen
        When I tap on "blood.sugar.mg.dl" field
		And I enter "250" into "blood.sugar.mg.dl" field
		Then I should see "250" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

        When I tap on "blood.sugar.time" field
		And I tap on "ok.button"
        And I tap on "save" button
        Then I should see "home" screen

        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        
        And I should see "home.entry.time" text
        And I should see "home.entry.text" text
        And I should see "home.entry.text1" text
        And I should see "no.upcoming.reminders" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen
        And I should see "welcome.back.firstname" text
        And I should see "you.can.use.connected.devices.to.start" text
        And I should see "today.date" text
        And I should see "upward.arrow" icon
        And I should see "recent.entries" text
        And I should see "last.4hours" text

        When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
        When I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        
        When I tap on "insulin" field
        Then I should see "mealtime.insulin.title"
        And I should see "other.mealtime.insulin" text

        When I tap on "novolog" option
        Then I should see "mealtime.insulin" screen
        When I tap on "mealtime.units" field
        And I enter "151" into "mealtime.units" field
        Then I should see "151" in "mealtime.units" field
        And I should see "save" button is enabled
        When I tap on "mealtime.date" field
        And I tap "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button"
        Then I should see CurrentDate in "mealtime.date" field

        When I tap on "mealtime.time" field
        Then I should see "hour.clock"
        When I tap on "ok.button"
        And I tap on "save" button
        Then I should see "home" screen

        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "home.entry1.time" text
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry2.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.text1" text
        And I should see "no.upcoming.reminders" button

        When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long-acting.insulin" screen
        And I should see CurrentDate in "long-acting.date" field
        
        When I tap on "manual.long-acting.insulin" field
        And I tap on "basaglar" option
        Then I should see "long-acting.insulin" screen

        When I tap on "long-acting.units" field
        And I enter "115" into "long-acting.units" field
        Then I should see "115" in "long-acting.units" field

        When I tap on "long-acting.date" field
        And I tap on "year" button
        And I select "current.year" in "year" field
        And I tap on "ok.button" button
        Then I should see CurrentDate in "long-acting.date" field

        When I tap on "long-acting.time" field
        And I tap on "ok.button" button  
        Then I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "home" screen
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry2.time" text
        And I should see "home.entry3.text" text
        And I should see "home.entry3.text1" text
        And I should see "home.entry3.time" text
        And I should see "no.upcoming.reminders" button

        When I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen

        When I tap on "grams" field
        And I enter "225" into "grams" field
        Then I should see "225" in "grams" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I tap "year" button
		And I select "current.year" in "year" field
		And I tap on "ok.button"
        Then I should see CurrentDate in "carb.intake.date" field

        When I tap on "carb.intake.time" field
		And I tap on "ok.button"

        When I tap on "save" button
        Then I should see "home" screen
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.time" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry3.text" text
        And I should see "home.entry3.time" text
        And I should see "home.entry3.text1" text
        And I should see "home.entry4.text" text
        And I should see "home.entry4.time" text
        And I should see "home.entry4.text1" text
        And I should see "no.upcoming.reminders" button

        When I tap on "home.entry4.text"
        Then I should see "blood.sugar" screen
        When I tap on "blood.sugar.mg.dl" field
		And I enter "2000" into "blood.sugar.mg.dl" field
		Then I should see "2000" in "blood.sugar.mg.dl" field
		And I should see "cannot.pick.a.mg.dl.above.1999" text

        When I tap on "blood.sugar.time" field
		And I select "device.future.time" in "hour" field
		Then I should see "ok.button"
		And I should see "cancel.button2" button
		When I tap on "ok.button"
		Then I should see "user.cannot.select.a.future.time" errormessage
		And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        When I tap on "discard" button
        Then I should see "home" screen

        When I tap on "home.entry4.text"
        Then I should see "blood.sugar" screen 
        When I tap on "blood.sugar.mg.dl" field
		And I enter "1999" into "blood.sugar.mg.dl" field
		Then I should see "1999" in "blood.sugar.mg.dl" field             
        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen
        And I should see "home.entry4.text" text
        And I should see "home.entry4.text1" text
        And I should see "home.entry4.time" text

        When I tap on "home.entry3.text"
        Then I should see "mealtime.insulin" screen

        When I clear "mealtime.units" field
        And I enter "501" into "mealtime.units" field
        Then I should see "501" in "mealtime.units" field
        And I should see "cannot.pick.a.unit.above.500.mealtime" errormessage
        And I should see "save" button is disabled

        When I tap on "mealtime.time" field
        Then I should see "hour.clock"
        When I select "device.future.time" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        When I tap on "discard" button
        Then I should see "home" screen

        When I tap on "home.entry3.text"
        Then I should see "mealtime.insulin" screen
        When I clear "mealtime.units" field
        And I enter "500" into "mealtime.units" field
        Then I should see "500" in "mealtime.units" field

        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen
        And I should see "home.entry3.text" text
        And I should see "home.entry3.text1" text
        And I should see "home.entry3.time" text

        When I tap on "home.entry2.text"
        Then I should see "long-acting.insulin" screen
        
        When I tap on "longacting.units" field
        And I enter "501" into "longacting.units" field
        Then I should see "501" in "longacting.units" field
        And I should see "cannot.pick.a.unit.above.500.longacting" errormessage
        And I should see "save" button is disabled

        When I tap on "longacting.time" field
        Then I should see "hour.clock"
        When I select "device.future.time" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage
        And I should see "save" button is disabled 

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        When I tap on "discard" button
        Then I should see "home" screen

        When I tap on "home.entry2.text"
        Then I should see "long-acting.insulin" screen
        When I tap on "longacting.units" field
        And I clear "longacting.units" field
        And I enter "500" into "longacting.units" field
        Then I should see "500" in "longacting.units" field

        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen
        And I should see "home.entry2.text" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry2.time" text

        When I tap on "home.entry1.text"
        Then I should see "carb.intake" screen

        When I clear "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
        Then I should see "501" in "carb.intake.grams" field
        And I should see "cannot.pick.a.grams.above.500" errormessage
        And I should see "save" button is disabled

        When I tap on "carb.intake.time" field
        And I select "device.future.time" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        When I tap on "discard" button
        Then I should see "home" screen

        When I tap on "home.entry1.text"
        Then I should see "carb.intake" screen
        When I clear "carb.intake.grams" field
        And I enter "500" into "carb.intake.grams" field
        Then I should see "500" in "carb.intake.grams" field

        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text

        # When I wait for "5" minutes
        Then I should see "home" screen
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.time" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry3.text" text
        And I should see "home.entry3.time" text
        And I should see "home.entry3.text1" text
        And I should see "home.entry4.text" text
        And I should see "home.entry4.time" text
        And I should see "home.entry4.text1" text
        And I should see "no.upcoming.reminders" button

        When I tap on "view.more" option
        Then I should see "logbook" screen
        And I should see "carb.intake.500" text
        And I should see "manual.entry" text
        And I should see "basaglar" text
        And I should see "logbook.longacting.entry500" text
        And I should see "novolog" text
        And I should see "mealtime.logbook.500" text
        And I should see "logbook.bloodsugar.1999" text
        And I should see "you.have.reached.the.end" text

        When I tap on "novolog"
        And I clear "mealtime.units" field
        And I enter "100" into "mealtime.units" field
        Then I should see "100" in "mealtime.units" field

        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "logbook" screen

        When I tap on "basaglar"
        Then I should see "long-acting.insulin" screen
        When I tap on "delete.longacting" button
        Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
        Then I should see "logbook" screen

        When I tap on "carb.intake.500"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field

        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "logbook" screen

        When I tap on "home.icon"
        Then I should see "home" screen
        When I tap on "downward.arrow" icon 
        Then I should see "recent.entries" title

        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
       
       #select 4hours before #try with past date
        When I tap "new.entry" button
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "activity.checkbox"
        Then I should see "activity.checkbox" selected
        When I tap on "save" button
        Then I should see "home" screen
        And I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.time" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry3.text" text
        And I should see "home.entry3.time" text
        And I should see "home.entry3.text1" text
        And I should see "no.upcoming.reminders" button

        When I tap on "home.entry1.text" field
        And I tap on "health.factors.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "health.factors.date" field
        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen

        # When I wait for "1" minutes
        # And I relaunch the app again
        # When I tap on "not.now1" button
        # And I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.time" text
        And I should see "home.entry2.text1" text
        And I should see "no.upcoming.reminders" button

      
        When I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen

        When I tap on "grams" field
        And I enter "120" into "grams" field
        Then I should see "120" in "grams" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field

        When I tap on "save" button
        Then I should see "home" screen
        And I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.text1" text
        And I should see "no.upcoming.reminders" button
        
        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

        
@RemindersWithEntries
Scenario: Home Screen - Manual Entry-Reminders -With Entries
    # PRE-CONDITIONS: 
    # Ensure that user has launched Madelyne App as per section 6.1. and registered successfully on MMA App as per section 6.2. 
    # Ensure that user is navigated to the Home screen of the Madelyne App as per section 6.3. 
    # Ensure that the device follows 12 hours’ time format.
    # Ensure that the Bluetooth of the mobile device is enabled.
    # Ensure that the mobile device has internet connection.
    # Time format is specific to OS.

        Given I launch the Madelyne application 
        When I enable set automatically in device settings
        And I turn ON Bluetooth
        And I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "60" seconds
        Then I should connect to email for registration verification
        And I wait for "10" seconds
        When I verify email
        Then I should see "personal.information" screen
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
        And I Verify "partner.sharing.code" text
        When I tap on "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap on "continue" button
        Then I should see "connect.smart" screen
        When I tap on "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap on "bgm.skip" button
        Then I should see "home" screen
        
        When I set deviceformat to 12 hour
        And I disable set automatically in device settings
        # When I tap on "home.close" button
        # When I tap on "home.close" button
        # Then I should see "turn.on.your.bluetooth" pop-up
        # And I should see "you.can.always.add" text
        # And I should see "not.now1" button
        # And I should see "enable.bluetooth" button

        # When I tap on "not.now" button
        # And I turn ON Bluetooth 
        # Then I should see "connect.your.devices" pop-up
        # And I should see "have.devices.with.bluetooth" text
        # And I should see "not.now1" button
        # And I should see "connect" button

        # When I tap on "not.now" button
        # Then I should see "home" screen
        When I tap on "home.next" button
        Then I should see "my.reminders.homecard"
        And I should see "my.reminders" title
        When I tap on "set.reminders1" button
        Then I should see "my.reminders.title" screen
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "home.icon"
        # Then I should see "home" screen
        Then I should see "connect.your.devices" pop-up
        When I tap on "not.now" button
        Then I should see "home" screen                                     
        When I tap on "set.reminders" button
        Then I should see "my.reminders.title" screen

        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
        And I should see "add.new.reminder" text
        And I should see "select.the.activity" text
        And I should see "activity1" option
        And I should see "time.of.reminder" option

        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "blood.sugar.check" option
        And I tap on "time.of.reminder" option
        And I select "8" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
       
        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "mealtime.insulin.dose" option
        And I tap on "time.of.reminder" option
        And I select "12" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
  
        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "long-acting.insulin.dose" option
        And I tap on "time.of.reminder" option
        And I select "5" in "hour" field
        And I select "00" in "minutes" field
        And I select "pm" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
  
        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "enter.carb.intake" option
        And I tap on "time.of.reminder" option
        And I select "11" in "hour" field
        And I select "55" in "minutes" field
        And I select "pm" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        And I tap on "home.icon"
        Then I should see "home" screen

        When I set device time as "6:0 AM"
        And I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "250" into "blood.sugar.mg.dl" field
		Then I should see "250" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

        When I tap "save" button
        Then I should see "home" screen

        When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "150" into "blood.sugar.mg.dl" field
		Then I should see "150" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

        When I tap "save" button
        Then I should see "home" screen

        When I tap on "new.entry.icon"
        And I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen

#  #  #Verifying Insulin field
        When I tap on "insulin" field
        Then I should see "mealtime.insulin.title"
        When I tap on "humalog.u.100" option
        And I tap on "units" field
        And I enter "100" into "units" field
        Then I should see "100" in "units" field
        
        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "new.entry.icon"
        And I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen

#  #  #Verifying Insulin field
        When I tap on "insulin" field
        Then I should see "mealtime.insulin.title"
        When I tap on "humalog.u.200" option
        And I tap on "units" field
        And I enter "200" into "units" field
        Then I should see "200" in "units" field
        
        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        And I tap on "insulin.field.longacting"
        And I tap on "basaglar"
        And I tap on "longacting.units" field
        And I enter "70" into "longacting.units" field
        Then I should see "70" in "longacting.units" field

        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
        When I tap on "enter.long.acting.insulin.new.entry" option
        And I tap on "insulin.field.longacting"
        And I tap on "levemir"
        And I tap on "longacting.units" field
        And I enter "160" into "longacting.units" field
        Then I should see "160" in "longacting.units" field

        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        And I enter "120" into "carb.intake.grams" field
        Then I should see "120" in "carb.intake.grams" field

        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "new.entry.icon" 
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        And I enter "90" into "carb.intake.grams" field
        Then I should see "90" in "carb.intake.grams" field

        When I tap on "save" button
        Then I should see "home" screen

        When I tap "new.entry" button
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "illness.checkbox"
        Then I should see "illness.checkbox" selected
        When I tap on "stress.checkbox"
        Then I should see "stress.checkbox" selected
        When I tap "save" button
        Then I should see "home" screen

        When I tap "new.entry" button
        And I tap on "enter.health.factors.new.entry" option
        And I tap on "stress.checkbox"
        Then I should see "stress.checkbox" selected
        When I tap "save" button
        Then I should see "home" screen

        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.time" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry3.text" text
        And I should see "home.entry3.time" text
        And I should see "home.entry3.text1" text
        And I should see "home.entry4.text" text
        And I should see "home.entry4.time" text
        And I should see "home.entry4.text1" text

        And I should see "home.entry5.text" text
        And I should see "home.entry5.text1" text
        And I should see "home.entry5.time" text
        And I should see "home.entry6.text" text
        And I should see "home.entry6.text1" text
        And I should see "home.entry6.time" text
        When I swipe down
        Then I should see "home.entry7.text" text
        And I should see "home.entry7.text1" text
        And I should see "home.entry7.time" text
        And I should see "home.entry8.text" text 
        And I should see "home.entry8.text1" text 
        And I should see "home.entry8.time" text
        And I should see "home.entry9.text" text 
        And I should see "home.entry9.time" text
        And I should see "home.entry9.text1" text 
        And I should see "home.entry10.text" text 
        And I should see "home.entry10.text1" text 
        And I should see "home.entry10.time" text
        And I should see "4.upcoming.reminders" button

        When I tap on "logbook.icon"
        Then I should see "logbook" screen

        When I tap on "carb.intake.entry.120" option
        Then I should see "carb.intake" screen
        When I tap "delete.entry" button
		Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
		Then I should see "logbook" screen

        When I tap on "basaglar" option
        Then I should see "long-acting.insulin" screen 
        And I should see "delete.entry" button
		When I tap "delete.entry" button
		Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
		Then I should see "logbook" screen

        When I tap on "health.factors.stress.illness" option
        And I tap on "delete.health.factors" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "health.factors.are.you.sure.delete.entry" text
        When I tap on "ok.popup" button
        Then I should see "logbook" screen

        When I tap on "humalog.u.100" option
        Then I should see "mealtime.insulin" screen
        
        When I tap on "delete.mealtime" button
        Then I should see "confirm.delete.entry" pop-up
        And I should see "mealtime.are.you.sure.delete.entry" text
        When I tap on "ok.popup" button
        Then I should see "logbook" screen

        When I tap on "blood.sugar.entry.150" option
        Then I should see "blood.sugar" screen 
        And I should see "delete.entry" button
		When I tap "delete.entry" button
		Then I should see "confirm.delete.entry" pop-up
        When I tap on "ok.popup" button
		Then I should see "logbook" screen

        When I tap on "levemir" option
        Then I should see "long-acting.insulin" screen 
        When I tap on "mark.as.prime.toggle" button
        Then I should see "long-acting.insulin" screen
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen

        When I tap on "humalog.u.200" option
        Then I should see "long-acting.insulin" screen 
        When I tap on "mark.as.prime.toggle" button
        Then I should see "long-acting.insulin" screen
        When I tap on "save" button
        And I tap on "yes.its.correct" button
        Then I should see "logbook" screen

        When I tap on "home" option
        Then I should see "home" screen
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.time" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry3.text" text
        And I should see "home.entry3.time" text
        And I should see "home.entry3.text1" text
        And I should see "home.entry4.text" text
        And I should see "home.entry4.time" text
        And I should see "home.entry4.text1" text
        And I should see "home.entry5.text" text
        And I should see "home.entry5.text1" text
        And I should see "home.entry5.time" text
        And I should see "4.upcoming.reminders" button

        When I set deviceformat to 24 hour
        And I tap on "logbook.icon"
        Then I should see "logbook" screen
  
        When I tap on "home" option
        Then I should see "home" screen
        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

        When I set device time in 24 hour format as "7:55"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.8.00" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        Then I should see "home" screen
        
        When I set device time in 24 hour format as "11:55"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.12.00" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        Then I should see "home" screen

        When I set device time in 24 hour format as "16:55"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.17.00" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        Then I should see "home" screen

        When I tap on "upward.arrow" icon
        And I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "150" into "blood.sugar.mg.dl" field
		Then I should see "150" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

        When I tap "save" button
        Then I should see "home" screen 

        And I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        
        And I should see "home.entry.time" text
        And I should see "home.entry.text" text
        And I should see "home.entry.text1" text
        And I should see "1.upcoming.reminder" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

        When I set device time in 24 hour format as "23:50"
        And I wait for "3" minutes
        And I wait for "2" minutes
        Then I should see "its.23.55" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        Then I should see "home" screen

        When I tap on "more" option
        And I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen
        
        When I tap on "mealtime.insulin.dose" option  
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "00" in "hour" field
        And I select "00" in "minutes" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        And I tap on "home.icon"
        Then I should see "home" screen

        When I set device time in 24 hour format as "23:55"
        Then I wait for "3" minutes

        When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
        Then I should see "blood.sugar" screen
        When I tap on "blood.sugar.mg.dl" field
		And I enter "130" into "blood.sugar.mg.dl" field
		Then I should see "130" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "home" screen
        When I tap on "upward.arrow" icon 
        Then I should see "home.entry.time" text
        And I should see "home.entry.text" text
        And I should see "home.entry.text1" text
        And I should see "no.upcoming.reminders" button

        When I wait for "2" minutes
        Then I should see "its.00.00" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        Then I should see "home" screen
        

        And I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "home.entry.text1" text
        And I should see "home.entry.time" text
        And I should see "home.entry.text" text
       
        When I tap on "home.entry.text" 
        Then I should see "blood.sugar" screen
        When I tap on "blood.sugar.date" field
		And I tap on "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
		And I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen

        #select 4 hours before
        When I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen

        When I tap on "grams" field
        And I enter "250" into "grams" field
        Then I should see "250" in "grams" field
        And I should see "save" button is enabled


        When I tap on "save" button
        Then I should see "home" screen
        And I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "home.entry.text" text
        And I should see "home.entry.text1" text
        And I should see "home.entry.time" text
        And I should see "3.upcoming.reminders" button

        When I tap on "home.entry.text" 
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        And I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen

        When I wait for "2" minutes
        Then I should see "home" screen

        And I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "you.can.use.connected.devices.to.start" text
        And I should see "no.entries.logged" text
        And I should see "3.upcoming.reminders" button

        # When I turn OFF WiFi
        # And I tap on "new.entry.icon"
		# Then I should see "new.logbook.entry" screen
		# When I tap on "enter.blood.sugar.new.entry" option
        # Then I should see "blood.sugar" screen
        # When I tap on "blood.sugar.mg.dl" field
		# And I enter "500" into "blood.sugar.mg.dl" field
		# Then I should see "500" in "blood.sugar.mg.dl" field
		# And I should see "save" button is enabled

        # When I tap on "save" button
        # Then I should see "home" screen
        # And I should see "home.entry.text" text
        # And I should see "home.entry.text1" text
        # And I should see "home.entry.time" text

        # When I tap on "new.entry.icon"
		# Then I should see "new.logbook.entry" screen
        # When I tap on "enter.mealtime.insulin.new.entry" option
        # Then I should see "mealtime.insulin" screen
        
        # When I tap on "insulin" field
        # Then I should see "mealtime.insulin.title"
        # And I should see "other.mealtime.insulin" text

        # When I tap on "novolog" option
        # Then I should see "mealtime.insulin" screen
        # When I tap on "mealtime.units" field
        # And I enter "190" into "mealtime.units" field
        # Then I should see "190" in "mealtime.units" field
        # And I should see "save" button is enabled
       
        # When I tap on "save" button
        # Then I should see "home" screen
        # And I should see "home.entry1.time" text
        # And I should see "home.entry1.text" text
        # And I should see "home.entry1.text1" text
        # And I should see "home.entry2.time" text
        # And I should see "home.entry2.text" text
        # And I should see "home.entry2.text1" text

        # When I tap on "new.entry.icon"
		# Then I should see "new.logbook.entry" screen
        # When I tap on "enter.long.acting.insulin.new.entry" option

        # Then I should see "long-acting.insulin" screen
        # And I should see CurrentDate in "long-acting.date" field
        
        # And I tap on "manual.long-acting.insulin" field
        # And I tap on "tresiba.u.200" option
        # Then I should see "long-acting.insulin" screen

        # When I tap on "long-acting.units" field
        # And I enter "105" into "long-acting.units" field
        # Then I should see "105" in "long-acting.units" field

        # When I tap on "save" button
        # Then I should see "home" screen
        # And I should see "home.entry1.text" text
        # And I should see "home.entry1.text1" text
        # And I should see "home.entry1.time" text
        # And I should see "home.entry2.text" text
        # And I should see "home.entry2.text1" text
        # And I should see "home.entry2.time" text
        # And I should see "home.entry3.text" text
        # And I should see "home.entry3.text1" text
        # And I should see "home.entry3.time" text

        # When I tap on "new.entry.icon"
        # Then I should see "new.logbook.entry" screen
        # When I tap "enter.carb.intake.new.entry"
        # Then I should see "carb.intake" screen

        # When I tap on "grams" field
        # And I enter "50" into "grams" field
        # Then I should see "50" in "grams" field
        # And I should see "save" button is enabled

        # When I tap on "save" button
        # Then I should see "home" screen
        # And I should see "home.entry1.text" text
        # And I should see "home.entry1.text1" text
        # And I should see "home.entry1.time" text
        # And I should see "home.entry2.text" text
        # And I should see "home.entry2.time" text
        # And I should see "home.entry2.text1" text
        # And I should see "home.entry3.text" text
        # And I should see "home.entry3.time" text
        # And I should see "home.entry3.text1" text
        # And I should see "home.entry4.text" text
        # And I should see "home.entry4.time" text
        # And I should see "home.entry4.text1" text

        # When I tap "new.entry" button
        # And I tap on "enter.health.factors.new.entry" option
        # And I tap on "activity.checkbox"
        # Then I should see "activity.checkbox" selected
        # When I tap on "save" button
        # Then I should see "home" screen
        # And I should see "home.entry1.text" text
        # And I should see "home.entry1.text1" text
        # And I should see "home.entry1.time" text
        # And I should see "home.entry2.text" text
        # And I should see "home.entry2.time" text
        # And I should see "home.entry2.text1" text
        # And I should see "home.entry3.text" text
        # And I should see "home.entry3.time" text
        # And I should see "home.entry3.text1" text
        # And I should see "home.entry4.text" text
        # And I should see "home.entry4.time" text
        # And I should see "home.entry4.text1" text
        # And I should see "home.entry5.text" text
        # And I should see "home.entry5.text1" text
        # And I should see "home.entry5.time" text

        # When I tap on "view.more" option
        # Then I should see "logbook" screen
        # And I should see "carb.intake.50" text
        # And I should see "manual.entry" text
        # And I should see "novolog" text
        # And I should see "logbook.longacting.entry5105" text
        # And I should see "tresiba.u.200" text
        # And I should see "mealtime.logbook.190" text
        # And I should see "logbook.bloodsugar.1999" text

        # When I tap on "home.icon"
        # Then I should see "home" screen

        # When I tap on "home.entry5.text"
        # Then I should see "blood.sugar" screen 
        # When I tap on "blood.sugar.mg.dl" field
		# And I enter "1990" into "blood.sugar.mg.dl" field
		# Then I should see "1990" in "blood.sugar.mg.dl" field             
        # When I tap on "save" button
		# Then I should see "confirm.new.entry" pop-up
		# When I tap "yes.its.correct" button
        # Then I should see "home" screen
        # And I should see "home.entry5.text" text
        # And I should see "home.entry5.text1" text
        # And I should see "home.entry5.time" text

        # When I tap on "home.entry3.text"
        # Then I should see "mealtime.insulin" screen
        # And I clear "mealtime.units" field
        # And I enter "455" into "mealtime.units" field
        # Then I should see "455" in "mealtime.units" field

        # When I tap on "save" button
		# Then I should see "confirm.new.entry" pop-up
		# When I tap "yes.its.correct" button
        # Then I should see "home" screen
        # And I should see "home.entry4.text" text
        # And I should see "home.entry4.text1" text
        # And I should see "home.entry4.time" text

        # When I tap on "home.entry3.text"
        # Then I should see "long-acting.insulin" screen
        # When I tap on "longacting.units" field
        # And I clear "longacting.units" field
        # And I enter "499" into "longacting.units" field
        # Then I should see "499" in "longacting.units" field

        # When I tap on "save" button
		# Then I should see "confirm.new.entry" pop-up
		# When I tap "yes.its.correct" button
        # Then I should see "home" screen
        # And I should see "home.entry3.text" text
        # And I should see "home.entry3.text1" text
        # And I should see "home.entry3.time" text

        # When I tap on "home.entry2.text"
        # Then I should see "carb.intake" screen
        # When I clear "carb.intake.grams" field
        # And I enter "500" into "carb.intake.grams" field
        # Then I should see "500" in "carb.intake.grams" field

        # When I tap on "save" button
		# Then I should see "confirm.new.entry" pop-up
		# When I tap "yes.its.correct" button
        # Then I should see "home" screen
        # And I should see "home.entry2.text" text
        # And I should see "home.entry2.text1" text
        # And I should see "home.entry2.time" text

        # When I tap on "home.entry1.text"
        # And I tap on "activity.checkbox"
        # And I tap on "stress.checkbox"

        # When I tap on "save" button
		# Then I should see "confirm.new.entry" pop-up
		# When I tap "yes.its.correct" button
        # Then I should see "home" screen
        # And I should see "home.entry1.text" text
        # And I should see "home.entry1.text1" text
        # And I should see "home.entry1.time" text

        # When I tap on "carb.intake.entry.50" option
        # Then I should see "carb.intake" screen
        # When I tap "delete.entry" button
		# Then I should see "confirm.delete.entry" pop-up
        # When I tap on "ok.popup" button
		# Then I should see "logbook" screen

        # When I tap on "novolog" option
        # Then I should see "long-acting.insulin" screen 
        # And I should see "delete.entry" button
		# When I tap "delete.entry" button
		# Then I should see "confirm.delete.entry" pop-up
        # When I tap on "ok.popup" button
		# Then I should see "logbook" screen

        # When I tap on "health.factors.activity" option
        # And I tap on "delete.health.factors" button
        # Then I should see "confirm.delete.entry" pop-up
        # And I should see "health.factors.are.you.sure.delete.entry" text
        # When I tap on "ok.popup" button
        # Then I should see "logbook" screen

        # When I tap on "tresiba.u.200" option
        # Then I should see "mealtime.insulin" screen
        
        # When I tap on "delete.mealtime" button
        # Then I should see "confirm.delete.entry" pop-up
        # And I should see "mealtime.are.you.sure.delete.entry" text
        # When I tap on "ok.popup" button
        # Then I should see "logbook" screen

        # When I tap on "blood.sugar.entry.550" option
        # Then I should see "blood.sugar" screen 
        # And I should see "delete.entry" button
		# When I tap "delete.entry" button
		# Then I should see "confirm.delete.entry" pop-up
        # When I tap on "ok.popup" button
		# Then I should see "logbook" screen


        When I tap on "more" option
        And I tap on "login.and.security.option"
        And I tap on "logout" button
        Then I should see "login.to.your.account" screen




@RegressionTest
 Scenario:Regression Test for Manual Entry

        When I set deviceformat to 12 hour
        And I disable set automatically in device settings
        # When I tap on "home.close" button
        # Then I should see "turn.on.your.bluetooth" pop-up
        # And I should see "home.bluetooth.you.can.always.add" text
        # And I should see "not.now1" button
        # And I should see "home.enable.bluetooth" button

        # When I tap on "not.now1" button
        # And I turn ON Bluetooth 
        # Then I should see "connect.your.devices" pop-up
        # And I should see "have.devices.with.bluetooth" text
        # And I should see "not.now" button
        # And I should see "connect" button

        # When I tap on "not.now" button
        # Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "turn.on.your.bluetooth" pop-up
        And I should see "home.bluetooth.you.can.always.add" text

        When I tap on "not.now" button
        And I turn ON Bluetooth 
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen
        When I tap on "logbook.icon"
        Then I should see "logbook" screen

        When I tap on "home" option
        Then I should see "home" screen
      
        When I tap on "downward.arrow" icon
        Then I should see "home" screen
        And I should see "welcome.back.firstname" text
        And I should see "you.can.use.connected.devices.to.start" text
        And I should see "today.date" text


        When I turn OFF Bluetooth
        And I tap on "upward.arrow" icon                                      
        And I tap on "set.reminders" button
        Then I should see "my.reminders.title" screen
        When I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen
        
        When I tap on "add.new1" button
        Then I should see "my.reminders.title" screen
        And I should see "add.new.reminder" text
        And I should see "select.the.activity" text
        And I should see "activity1" option
        And I should see "time.of.reminder" option

        When I tap on "activity1" option
        Then I should see "select.an.activity1" pop-up
        When I tap on "blood.sugar.check" option
        And I tap on "time.of.reminder" option
        And I select "7" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "reminder.save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        And I tap on "home.icon"
        Then I should see "home" screen
        When I tap on "downward.arrow" icon
        Then I should see "home" screen
        When I set device time as "12:10 AM"
        Then I should see "welcome.back.firstname" text


        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "1.upcoming.reminder" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen

        When I set device time as "6:55 AM"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.7.am" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        And I tap on "upward.arrow" icon 
        Then I should see "no.upcoming.reminders" button

        When I tap on "more" option
        And I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen

        When I tap on "blood.sugar.check" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "8" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "home.icon"
        Then I should see "home" screen
        And I should see "1.upcoming.reminder" button

        When I set device time as "7:55 AM"
        And I wait for "3" minutes
        Then I should see "home" screen
        When I wait for "2" minutes
        Then I should see "its.8.am" pop-up
        And I should see "this.is.your.reminder.for" text
        And I should see "ok" button

        When I tap on "ok" button
        And I tap on "more" option
        And I tap on "home.icon"
        Then I should see "no.upcoming.reminders" button

        When I tap on "downward.arrow" icon
        Then I should see "home" screen

        When I turn OFF Bluetooth
        Then I should see "home" screen

        When I tap on "more" option
        And I tap on "my.reminders" option
        Then I should see "my.reminders.title" screen

        When I tap on "blood.sugar.check" option
        Then I should see "edit.reminder" screen
        When I tap on "time.of.reminder" option
        And I select "1" in "hour" field
        And I select "00" in "minutes" field
        And I select "am" in "am" field
        And I tap on "ok.button" button
        And I tap on "save" button
        Then I should see "my.reminders.title" screen

        When I tap on "back" button
        Then I should see "more.menu" screen

        When I tap on "home.icon"
        Then I should see "home" screen

        When I set device time as "2:0 AM"
        And I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
        Then I should see "blood.sugar" screen
        When I tap on "blood.sugar.mg.dl" field
		And I enter "250" into "blood.sugar.mg.dl" field
		Then I should see "250" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        
        And I should see "home.entry.time" text
        And I should see "home.entry.text" text
        And I should see "home.entry.text1" text
        And I should see "no.upcoming.reminders" button

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen
        And I should see "welcome.back.firstname" text
        And I should see "you.can.use.connected.devices.to.start" text


        When I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen

        When I tap on "grams" field
        And I enter "225" into "grams" field
        Then I should see "225" in "grams" field
        And I should see "save" button is enabled

        When I tap on "save" button
        Then I should see "home" screen

        When I tap on "upward.arrow" icon 
        Then I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "home.entry1.text" text
        And I should see "home.entry1.text1" text
        And I should see "home.entry1.time" text
        And I should see "home.entry2.text" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry2.time" text
        And I should see "no.upcoming.reminders" button
      
        When I tap on "home.entry2.text"
        Then I should see "blood.sugar" screen
        When I tap on "blood.sugar.mg.dl" field
		And I enter "2000" into "blood.sugar.mg.dl" field
		Then I should see "2000" in "blood.sugar.mg.dl" field
		And I should see "cannot.pick.a.mg.dl.above.1999" text

        When I tap on "blood.sugar.time" field
		And I select "device.future.time" in "hour" field
		Then I should see "ok.button"
		And I should see "cancel.button2" button
		When I tap on "ok.button"
		Then I should see "user.cannot.select.a.future.time" errormessage
		And I should see "save" button is disabled

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        When I tap on "discard" button
        Then I should see "home" screen

        When I tap on "home.entry2.text"
        Then I should see "blood.sugar" screen 
        When I tap on "blood.sugar.mg.dl" field
		And I enter "1999" into "blood.sugar.mg.dl" field
		Then I should see "1999" in "blood.sugar.mg.dl" field             
        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen
        And I should see "home.entry2.text" text
        And I should see "home.entry2.text1" text
        And I should see "home.entry2.time" text
        And I should see "no.upcoming.reminders" button

        When I tap on "home.entry1.text"
        Then I should see "carb.intake" screen

        When I clear "carb.intake.grams" field
        And I enter "501" into "carb.intake.grams" field
        Then I should see "501" in "carb.intake.grams" field
        And I should see "cannot.pick.a.grams.above.500" errormessage
        And I should see "save" button is disabled

        When I tap on "carb.intake.time" field
        And I select "device.future.time" in "hour" field
        And I tap on "ok.button"
        Then I should see "user.cannot.select.a.future.time" errormessage

        When I tap on "back" button
        Then I should see "discard.changes" pop-up
        When I tap on "discard" button
        Then I should see "home" screen

        When I tap on "home.entry1.text"
        Then I should see "carb.intake" screen
        When I clear "carb.intake.grams" field
        And I enter "500" into "carb.intake.grams" field
        Then I should see "500" in "carb.intake.grams" field

        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "home" screen
        And I should see "home.entry1.text" text
        And I should see "home.entry1.time" text
        And I should see "home.entry1.text1" text
        And I should see "no.upcoming.reminders" button
      

        When I tap on "view.more" option
        Then I should see "logbook" screen
        And I should see "logbook.bloodsugar.1999" text
        And I should see "carb.intake.500" text
        And I should see "you.have.reached.the.end" text

        When I tap on "carb.intake.500"
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field

        When I tap on "save" button
		Then I should see "confirm.new.entry" pop-up
		When I tap "yes.its.correct" button
        Then I should see "logbook" screen

        When I tap on "home.icon"
        Then I should see "home" screen
        And I should see "home.entry.text" text
        And I should see "home.entry.text1" text
        And I should see "home.entry.time" text
        And I should see "no.upcoming.reminders" button

        When I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" screen
        When I tap "enter.carb.intake.new.entry"
        Then I should see "carb.intake" screen

        When I tap on "grams" field
        And I enter "120" into "grams" field
        Then I should see "120" in "grams" field
        And I should see "save" button is enabled

        When I tap on "carb.intake.date" field
        And I tap "year" button
        And I select "past.year" in "year" field
        And I tap on "ok.button"
        Then I should see "past.date" in "carb.intake.date" field

        When I tap on "save" button
        Then I should see "home" screen
        And I should see "recent.entries" title
        And I should see "view.more" link
        And I should see "last.4hours" text
        And I should see "home.entry.text" text
        And I should see "home.entry.text1" text
        And I should see "home.entry.time" text

        When I tap on "downward.arrow" icon 
        Then I should see "home" screen



 @Precondition
Scenario:Logging out of Application
        When I tap on "more" option
        And I tap on "login.and.security.option"
        And I tap on "logout" button
        Then I should see "login.to.your.account" screen



