Feature: MADELYNE INTERNATIONALIZATION-LANGUAGE - SOFTWARE TEST PROTOCOL

  @Precondition
  Scenario: HOME SCREEN - INTERNATIONALIZATION - LANGUAGE ANDROID(ENGLISH)
    # PRE-CONDITIONS:
    # •	Ensure the iOS/Android device is connected to the internet.
    # •	Ensure that user has launched Madelyne App as per section 6.1.
    # •	Ensure that user has successfully registered as per section 6.2.
    # •	Ensure that user has navigated to the Home page as per section 6.4.
    # •	Ensure that the device language is selected as English.
    #-----Verifying home screen-----
            Given I launch the Madelyne application
            When I turn ON Bluetooth
            And I tap on "lets.get.started" button
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
            And I wait for "30" seconds
            Then I should see "verify.email" screen
            And I Verify "verify.email" text
            When I should connect to email for registration verification
            Then I verify email
            And I wait for "5" seconds
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
            And I Verify "partner.sharing.code" text
            When I tap on "i.do.not.have.a.partner.sharing.code" button
            Then I should see "account.setup" screen
            And I Verify "account.setup" text
            And I should see "continue" button
            And I Verify "continue" text
            When I tap on "continue" button
            Then I should see "connect.smart" screen
            And I Verify "connect.smart" text
            When I tap on "squire.skip" button
            Then I should see "connect.blood.sugar.meter" screen
            And I Verify "connect.blood.sugar.meter" text
            And I should see "bgm.skip" button
            And I Verify "bgm.skip" text
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
  Scenario: INTERNATIONALIZATION - LANGUAGE (ENGLISH)
          Given I should see "home" screen
          When I tap on "progress.icon" option
          Then I should see "welcome.to.your.progress" text in English
          When I tap on "logbook.icon" option
          Then I should see "welcome.to.your.logbook" text in English
          And I should see "you.can.always.add.activities" text in English
          When I tap on "home" option
          Then I should see "home" screen in English
          And I should see "you.can.use.connected.devices.to.start" text in English

         
          When I tap on "upward.arrow" icon
          Then I should see "recent.entries" text in English
          And I should see "view.more" text in English
          And I should see "set.reminders" text in English          

          When I tap on "downward.arrow" icon
          Then I should see "home" screen

          When I tap on "bell.icon.in.home" option
          Then I should see "notifications" screen in English

          When I tap on "back" button
          And I tap on "new.entry.icon"
          Then I should see "new.logbook.entry" screen in English
        
          When I tap on "enter.blood.sugar.new.entry" option
          Then I should see "blood.sugar" screen in English
     
          When I enter "100" into "blood.sugar.mg.dl" field
          Then I should see "100" in "blood.sugar.mg.dl" field
          When I tap on "save" button
          Then I should see "home" screen

          When I tap on "upward.arrow" icon 
          Then I should see "recent.entries" text in English
          And I should see "home.entry.text" text in English
          And I should see "home.entry.text1" text in English

          When I tap on "logbook.icon"
          Then I should see "logbook.text" screen in English

          When I tap on "blood.sugar.entry.100" option
          Then I should see "blood.sugar" screen in English
          And I should see "delete.entry" button
          When I tap "delete.entry" button
          Then I should see "confirm.delete.entry" pop-up in English
          When I tap on "cancel" button
          Then I should see "blood.sugar" screen in English
          When I tap on "back" button
          Then I should see "logbook.text" screen in English


  @LanguageEnglish
  Scenario: HOME SCREEN - INTERNATIONALIZATION - LANGUAGE (ENGLISH)
         
          Given I should see "home" screen
          Then I should see "hello.with.firstname" text in English
          And I should see "get.started.on.connected.diabetes.journey" text in English
          When I tap on "progress.icon" option
          Then I should see "welcome.to.your.progress" text in English
          And I should see "mytempo.is.still.getting.to.know" text in English
          When I tap on "logbook.icon" option
          Then I should see "welcome.to.your.logbook" text in English
          And I should see "you.can.always.add.activities" text in English
          When I tap on "home" option
          Then I should see "home" screen in English
          And I should see "you.can.use.connected.devices.to.start" text in English
          And I should see "today.date" text

          When I tap on "upward.arrow" icon
          Then I should see "recent.entries" text in English
          And I should see "view.more" text in English
          And I should see "set.reminders" text in English          

          When I tap on "downward.arrow" icon
          Then I should see "home" screen

          When I tap on "bell.icon.in.home" option
          Then I should see "notifications" screen in English
 
          When I tap on "back" button
          And I tap on "new.entry.icon"
          Then I should see "new.logbook.entry" screen in English
        
          ##------Verifying Blood Sugar screen-----
          When I tap on "enter.blood.sugar.new.entry" option
          Then I should see "blood.sugar" screen in English
          ##Verifying mg/dL field
          When I enter "100" into "blood.sugar.mg.dl" field
          Then I should see "100" in "blood.sugar.mg.dl" field
          When I tap on "save" button
          Then I should see "home" screen

          When I tap on "upward.arrow" icon 
          Then I should see "recent.entries" text in English
          And I should see "home.blood.sugar" text in English
          And I should see "blood.sugar.entry.100" text in English

          #-----Verifying Mealtime Insulin screen-----
          When I tap on "new.entry.icon"
          And I tap on "enter.mealtime.insulin.new.entry" option
          Then I should see "mealtime.screen" screen in English
          ##Verifying Insulin field
          When I tap on "insulin" field
          Then I should see "mealtime.insulin.title" screen in English
          And I should see "other.mealtime.insulin" text in English

          When I tap on "back" button
          And I enter "200" into "mealtime.units" field
          And I tap on "save" button
          Then I should see "home" screen
          And I should see "recent.entries" text in English
          And I should see "home.other.mealtime.insulin" text in English
          And I should see "mealtime.entry.200" text in English


          #-----Verifying Long-Acting Insulin screen------
          #Verifying Insulin field
          When I tap on "new.entry.icon"
	  Then I should see "new.logbook.entry" screen in English
          When I tap on "enter.long.acting.insulin.new.entry" option
          Then I should see "longacting.screen" screen in English
          When I tap on "manual.long-acting.insulin" field
          Then I should see "long.acting.insulin.text" screen in English
          When I tap on "back" button
          And I enter "100" into "longacting.units" field
          And I tap on "save" button
          Then I should see "home" screen
          And I should see "home.other.long-acting.insulin" text in English
          And I should see "longacting.entry.100" text in English
          
          #-----Verifying Carb Intake screen-----
          #Verifying Grams field
          When I tap on "new.entry.icon"
          And I tap "enter.carb.intake.new.entry" option
          Then I should see "carb.intake" screen in English
          When I tap on "carb.intake.grams" field
          And I enter "110" into "carb.intake.grams" field
          And I tap on "save" button
          Then I should see "home" screen
          And I should see "home.enter.carb.intake" text in English
          And I should see "carb.intake.entry.110" text in English

          When I tap on "new.entry.icon"
          And I tap on "enter.health.factors.new.entry" option
          Then I should see "health.factors" screen in English
          When I tap on "stress.checkbox"
          Then I should see "stress.checkbox" selected
          When I tap "save" button
          Then I should see "home" screen
          And I should see "home.health.factors" text in English
          And I should see "healthfactors.entry" text in English

          When I tap on "progress.icon" option
          Then I should see "progress.title" screen in English
          And I should see "total.blood.sugar.entries.text" text in English
          And I should see "date.range.for.7.days" text

          When I tap on "14d" option
          Then I should see "date.range.for.14.days" text

          When I tap on "30d" option
          Then I should see "date.range.for.30.days" text

          When I tap on "90d" option
          Then I should see "date.range.for.90.days" text

          When I swipe down
          Then I should see "average.mealtime.insulin.dose" text in English
          And I should see "total.doses.mealtimeinsulin" text in English

          And I should see "average.long-acting.insulin.dose" text in English
          And I should see "total.doses.long-acting.insulin" text in English

          And I should see "average.daily.carb.intake" text in English
          And I should see "total.doses.carb.intake" text in English
      
          When I tap on "i.progress" option
          Then I should see "more.information.title" screen in English

          When I tap on "close" button
          Then I should see "progress.title" screen

          When I tap on "share.my.data" button
          And I tap on "create.mytempo.report" button
          Then I should see "export.tempo.data" pop-up in English
          And I should see "are.you.sure.export.data" text in English
        
          When I tap on "export" option
          ##  Then I should see "exporting.tempo.data" popup
          ##  And I should see "preparing" text             ##popup disapperaing fast###
          ##  And I should see "cancel" button
          ##  When I tap on "cancel" button
          And I tap outside "sharable.options" pop-up
          Then I should see "progress.title" screen in English

          When I tap on "logbook.icon"
          Then I should see "logbook.text" screen in English

          When I tap on "blood.sugar.entry.100" option
          Then I should see "blood.sugar" screen in English
          And I should see "delete.entry" button
          When I tap "delete.entry" button
          Then I should see "confirm.delete.entry" pop-up in English
          When I tap on "cancel" button
          Then I should see "blood.sugar" screen in English
          When I tap on "back" button
          Then I should see "logbook.text" screen in English

          When I tap on "mealtime.entry.200" option
          Then I should see "mealtime.insulin" screen in English

          When I tap on "information.icon.mealtime"
          Then I should see "prime.air.shot.screen" screen in English
          And I should see "priming.your.pen.title" text in English
          And I should see "priming.your.pen.text" text in English
          And I should see "done" button

          When I tap on "done" button
          And I tap on "delete.mealtime" button
          Then I should see "confirm.delete.entry" pop-up in English
          And I should see "mealtime.are.you.sure.delete.entry" text in English
          When I tap on "cancel" button
          Then I should see "mealtime.insulin" screen in English
          When I tap on "back" button
          Then I should see "logbook.text" screen in English

          When I tap on "longacting.entry.100" option
          Then I should see "long-acting.insulin" screen in English

          When I tap on "information.icon.longacting"
          Then I should see "prime.air.shot.screen" screen in English
          And I should see "priming.your.pen.title" text in English
          And I should see "priming.your.pen.text" text in English
          And I should see "done" button

          When I tap on "done" button
          And I tap "delete.entry" button
	  Then I should see "confirm.delete.entry" pop-up in English
          When I tap on "cancel" button
          Then I should see "long-acting.insulin" screen in English
          When I tap on "back" button
          Then I should see "logbook.text" screen in English

          When I tap on "carb.intake.entry.110" option
          Then I should see "carb.intake" screen in English
          When I tap "delete.entry" button
          Then I should see "confirm.delete.entry" pop-up in English
          And I should see "are.you.sure.delete.entry" text in English

          When I tap on "cancel" button
          Then I should see "carb.intake" screen in English
          When I tap on "back" button
          Then I should see "logbook.text" screen in English

          When I tap on "calendar.icon.logbook" 
          Then I should see "calender.overlay"
          When I tap on "calendar.close" button
          Then I should see "logbook" screen

         

  @RegressionTest
  Scenario:  REGRESSION TEST FOR INTERNATIONALIZATION - LANGUAGE IN ENGLISH
          
          
          Given I should see "home" screen
          When I tap on "progress.icon" option
          Then I should see "welcome.to.your.progress" text in English
          When I tap on "logbook.icon" option
          Then I should see "welcome.to.your.logbook" text in English
          And I should see "you.can.always.add.activities" text in English
          When I tap on "home" option
          Then I should see "home" screen in English
          And I should see "you.can.use.connected.devices.to.start" text in English

          When I tap on "bell.icon.in.home" option
          Then I should see "notifications" screen in English

          When I tap on "back" button
          And I tap on "new.entry.icon"
          Then I should see "new.logbook.entry" screen in English
        
          When I tap on "enter.blood.sugar.new.entry" option
          Then I should see "blood.sugar" screen in English
     
          When I enter "100" into "blood.sugar.mg.dl" field
          Then I should see "100" in "blood.sugar.mg.dl" field
          When I tap on "save" button
          Then I should see "home" screen

          When I tap on "upward.arrow" icon 
          Then I should see "recent.entries" text in English
          And I should see "home.blood.sugar" text in English
          And I should see "blood.sugar.entry.100" text in English

          When I tap on "new.entry.icon"
          And I tap on "enter.mealtime.insulin.new.entry" option
          Then I should see "mealtime.screen" screen in English
          ##Verifying Insulin field
          When I tap on "insulin" field
          Then I should see "mealtime.insulin.title" screen in English
          And I should see "other.mealtime.insulin" text in English

          When I tap on "back" button
          And I enter "200" into "mealtime.units" field
          And I tap on "save" button
          Then I should see "home" screen
          And I should see "recent.entries" text in English
          And I should see "home.other.mealtime.insulin" text in English
          And I should see "mealtime.entry.200" text in English

          When I tap on "progress.icon" option
          Then I should see "progress.title" screen in English

          When I swipe down
          Then I should see "average.mealtime.insulin.dose" text in English
          And I should see "average.long-acting.insulin.dose" text in English
          And I should see "average.daily.carb.intake" text in English
        
      
          When I tap on "i.progress" option
          Then I should see "more.information.title" screen in English

          When I tap on "close" button
          Then I should see "progress.title" screen

          When I tap on "share.my.data" button
          And I tap on "create.mytempo.report" button
          Then I should see "export.tempo.data" pop-up in English
          And I should see "are.you.sure.export.data" text in English
        
          When I tap on "export" option
          ##  Then I should see "exporting.tempo.data" popup
          ##  And I should see "preparing" text             ##popup disapperaing fast###
          ##  And I should see "cancel" button
          ##  When I tap on "cancel" button
          And I tap outside "sharable.options" pop-up
          Then I should see "progress.title" screen in English


          When I tap on "logbook.icon"
          Then I should see "logbook.text" screen in English

          When I tap on "blood.sugar.entry.100" option
          Then I should see "blood.sugar" screen in English
          And I should see "delete.entry" button
          When I tap "delete.entry" button
          Then I should see "confirm.delete.entry" pop-up in English
          When I tap on "cancel" button
          Then I should see "blood.sugar" screen in English
          When I tap on "back" button
          Then I should see "logbook.text" screen in English

          When I tap on "mealtime.entry.200" option
          Then I should see "mealtime.insulin" screen in English

          When I tap on "information.icon.mealtime"
          Then I should see "prime.air.shot.screen" screen in English
          And I should see "priming.your.pen.title" text in English
          And I should see "priming.your.pen.text" text in English
          And I should see "done" button

          When I tap on "done" button
          And I tap on "delete.mealtime" button
          Then I should see "confirm.delete.entry" pop-up in English
          And I should see "mealtime.are.you.sure.delete.entry" text in English
          When I tap on "cancel" button
          Then I should see "mealtime.insulin" screen in English
          When I tap on "back" button
          Then I should see "logbook.text" screen in English

          When I tap on "calendar.icon.logbook" 
          Then I should see "calender.overlay"
          When I tap on "calendar.close" button
          Then I should see "logbook" screen



  @Precondition
  Scenario: Logging out of Application
    When I tap on "more" option
    And I tap on "login.and.security.option"
    And I tap on "logout" button
    Then I should see "login.to.your.account" screen
   