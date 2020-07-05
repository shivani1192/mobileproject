Feature: MADELYNE INTERNATIONALIZATION-LANGUAGE - SOFTWARE TEST PROTOCOL


  @Precondition
  Scenario: HOME SCREEN - INTERNATIONALIZATION - LANGUAGE (ENGLISH)
    # PRE-CONDITIONS:
    # •	Ensure the iOS/Android device is connected to the internet.
    # •	Ensure that user has launched Madelyne App as per section 6.1.
    # •	Ensure that user has successfully registered as per section 6.2.
    # •	Ensure that user has navigated to the Home page as per section 6.4.
    # •	Ensure that the device language is selected as English.
    #-----Verifying home screen-----
    Given I launch the Madelyne application
    # When I set deviceformat to 12 hour
    Then I should see "welcome.to.tempotm" screen
    And I Verify "welcome.to.tempotm" text
    When I tap "lets.get.started" button
    And I tap "agree.and.continue" button
    Then I should see "create.account" screen
    And I Verify "create.account" text
    When I enter "emailaddress" into "emailaddress" field
    And I enter "password" into "password" field
    When I tap "next" button
        And I wait for "25" seconds
    Then I should see "verify.email" screen
     And I Verify "verify.email" text
    When I should connect to email for registration verification
    Then I verify email
    And I should see "personal.information" screen
    And I Verify "personal.information" text
    When I enter "first.name" into "first.name" field
    And I enter "last.name" into "last.name" field
    When I tap "date.of.birth" field
    And I select "month"
    And I select "year"
    And I select "date"
    And I wait for recording
    When I tap "done" button
    And I tap "next" button
    And I wait for "25" seconds
    Then I should see "my.insulin" screen
    When I tap on "mealtime.insulin.toggle" button
    And I tap on "long.acting.insulin.toggle" button
    And I tap on "next" button
    Then I should see "confirm.insulin.type" pop-up
    When I tap on "ok.popup" button
    Then I should see "partner.sharing.code" screen
    When I tap "i.do.not.have.a.partner.sharing.code" button
    Then I should see "account.setup" screen
    And I Verify "account.setup" text
    When I tap "continue" button
    Then I should see "tempo.smart" screen
    And I Verify "tempo.smart" text
    And I should see "set.up.smart" button
    And I should see "squire.skip" button
    When I tap "squire.skip" button
    Then I should see "connect.blood.sugar.meter" screen
    And I Verify "connect.blood.sugar.meter" text
    And I should see "connect.blood.sugar.meter" button
    And I should see "bgm.skip" button
    When I tap "bgm.skip" button
    Then I should see "home" screen
    And I handle Notification pop-up
    And I handle Bluetooth Notification pop-up
    And I relaunch the app
    And I handle ok button



  @SmokeTest
  Scenario: SMOKE TEST FOR INTERNATIONALIZATION - LANGUAGE (ENGLISH)
    When I should see "home" screen
    And I tap on "progress.icon" option
    Then I should see "welcome.to.your.progress" text in English
    When I tap on "logbook.icon" option
    Then I should see "welcome.to.your.logbook" text in English
    When I tap on "home" option
    Then I should see "home" text in English
    When I tap on "bell.icon.in.home" icon
    And I tap on "back" button
    When I tap on "new.entry.icon"
    And I tap on "enter.blood.sugar.newentry" option
    Then I should see "blood.sugar" screen in English
    And I should see "blood.sugar.mg.dl" screen in English
    When I tap on "blood.sugar.mg.dl" field
    And I enter "100" into "blood.sugar.mg.dl" field
    Then I should see "100" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    Then I should see "home" screen
And I tap on "manual.up.arrow" button
    Then I should see "blood.sugar.activity.card.100"

    When I tap on "new.entry.icon"
    And I tap on "enter.mealtime.insulin.newentry" option
    Then I should see "mealtime.insulin" screen
    Then I should see "mealtime.insulin" screen in English
    And I should see "mealtime.units" screen in English
    When I tap on "units" field
    And I enter "200" into "units" field
    Then I should see "200" in "units" field
    When I tap on "save" button
    Then I should see "home" screen
   
    Then I should see "mealtime.insulin.activity.card.200"

    When I tap on "new.entry.icon"
    When I tap on "enter.long.acting.insulin.new.entry" option
    Then I should see "long.acting.insulin" screen
    Then I should see "long.acting.insulin" screen in English
    And I should see "longacting.units" screen in English
    When I tap on "units" field
    And I enter "100" into "units" field
    Then I should see "100" in "units" field
    When I tap on "save" button
    Then I should see "home" screen
  
    Then I should see "longacting.insulin.activity.card.100"

    When I tap on "new.entry.icon"
    And I tap on "enter.carbs.newentry" option
    Then I should see "carb.intake" screen in English
    And I should see "carb.intake.grams" screen in English
    When I tap on "carb.intake.grams" field
    And I enter "200" into "carb.intake.grams" field
    Then I should see "200" in "carb.intake.grams" field
    When I tap on "save" button
    Then I should see "home" screen
 
    Then I should see "carb.intake.activity.card.200"

    When I tap on "new.entry.icon"
    And I tap on "enter.health.factors.new.entry" option
    Then I should see "health.factors" screen in English
    When I tap on "activity.checkbox"
    And I tap on "save" button
    Then I should see "home" screen

    Then I should see "health.factors.activity.card.activity"
    When I tap on "progress.icon"
    Then I should see "progress" screen in English
    When I swipe down
    Then I should see "progress" screen in English
    When I tap on "7d" option
    Then I should see "progress" screen in English
    
    When I tap on "14d" option
    Then I should see "progress" screen in English
  
    When I tap on "30d" option
    Then I should see "progress" screen in English
   
    When I tap on "90d" option
    Then I should see "progress" screen in English
  
    When I swipe up
    When I tap on "i.progress" icon
    Then I should see "more.information.title" screen in English
    When I tap on "done" button
    When I swipe down
      When I swipe down
    And I tap on "share.my.data" button
    And I tap on "create.mytempo.report" button
    Then I should see "export.tempo.data" pop-up in English
    When I tap on "cancel" option
    Then I should see "progress" screen
    When I tap on "logbook.icon"
    And I tap on "latest.blood.sugar.entry.100"
    Then I should see "blood.sugar" screen in English
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "blood.sugar" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    When I tap on "logbook" icon
    Then I should see "logbook" screen
    When I tap on "latest.mealtime.insulin.entry.200"
    When I tap on "information.icon.mealtime" icon
    Then I should see "prime.air.shot" screen in English
    When I tap on "done" button
    Then I should see "mealtime.screen"
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "mealtime.screen" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    When I tap on "latest.long-acting.insulin.entry.100"
    Then I should see "longacting.screen" screen in English
    When I tap on "information.icon.longacting" icon
    Then I should see "prime.air.shot" screen in English
    When I tap on "done" button
    Then I should see "longacting.screen"
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "longacting.screen" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    When I tap on "latest.carb.intake.entry.200"
    Then I should see "carb.intake" screen in English
    And I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "carb.intake" screen in English
    When I tap on "back" button
    And I tap on "calendar.icon.logbook" icon
     And I tap on "calendar.cancel" button
    Then I should see "logbook" screen in English


  @LanguageEnglish
  Scenario: HOME SCREEN - INTERNATIONALIZATION - LANGUAGE (ENGLISH)
    When I should see "home" screen
    And I tap on "progress.icon" option
    Then I should see "welcome.to.your.progress" text in English
    When I tap on "logbook.icon" option
    Then I should see "welcome.to.your.logbook" text in English
    When I tap on "home" option
    Then I should see "home" text in English
    When I tap on "bell.icon.in.home" icon
    And I tap on "back" button
    When I tap on "new.entry.icon"
    And I tap on "enter.blood.sugar.newentry" option
    Then I should see "blood.sugar" screen in English
    And I should see "blood.sugar.mg.dl" screen in English
    When I tap on "blood.sugar.mg.dl" field
    And I enter "100" into "blood.sugar.mg.dl" field
    Then I should see "100" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    Then I should see "home" screen
     And I tap on "manual.up.arrow" button
    Then I should see "blood.sugar.activity.card.100"

    When I tap on "new.entry.icon"
    And I tap on "enter.mealtime.insulin.newentry" option
    Then I should see "mealtime.insulin" screen
    Then I should see "mealtime.insulin" screen in English
    And I should see "mealtime.units" screen in English
    When I tap on "units" field
    And I enter "200" into "units" field
    Then I should see "200" in "units" field
    When I tap on "save" button
    Then I should see "home" screen
# #And I tap on "manual.up.arrow" button
    Then I should see "mealtime.insulin.activity.card.200"

    When I tap on "new.entry.icon"
    When I tap on "enter.long.acting.insulin.new.entry" option
    Then I should see "long.acting.insulin" screen
    Then I should see "long.acting.insulin" screen in English
    And I should see "longacting.units" screen in English
    When I tap on "units" field
    And I enter "100" into "units" field
    Then I should see "100" in "units" field
    When I tap on "save" button
    Then I should see "home" screen

    Then I should see "longacting.insulin.activity.card.100"

    When I tap on "new.entry.icon"
    And I tap on "enter.carbs.newentry" option
    Then I should see "carb.intake" screen in English
    And I should see "carb.intake.grams" screen in English
    When I tap on "carb.intake.grams" field
    And I enter "200" into "carb.intake.grams" field
    Then I should see "200" in "carb.intake.grams" field
    When I tap on "save" button
    Then I should see "home" screen
  
    Then I should see "carb.intake.activity.card.200"

    When I tap on "new.entry.icon"
    And I tap on "enter.health.factors.new.entry" option
    Then I should see "health.factors" screen in English
    When I tap on "activity.checkbox"
    And I tap on "save" button
    Then I should see "home" screen
  
    Then I should see "health.factors.activity.card.activity"

    When I tap on "progress.icon"
    Then I should see "progress" screen in English
    When I swipe down
    Then I should see "progress" screen in English
    When I tap on "7d" option
    Then I should see "progress" screen in English
    When I tap on "14d" option
    Then I should see "progress" screen in English
    When I tap on "30d" option
    Then I should see "progress" screen in English
    When I tap on "90d" option
    Then I should see "progress" screen in English
    When I swipe up
    When I tap on "i.progress" icon
    Then I should see "more.information.title" screen in English
    When I tap on "done" button
    When I swipe down
     When I swipe down
    And I tap on "share.my.data" button
    And I tap on "create.mytempo.report" button
    Then I should see "export.tempo.data" pop-up in English
    When I tap on "cancel" option
    Then I should see "progress" screen

    When I tap on "logbook.icon"
    And I tap on "latest.blood.sugar.entry.100"
    Then I should see "blood.sugar" screen in English
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "blood.sugar" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    #Tap on latest mealtime insulin entry
    When I tap on "logbook" icon
    Then I should see "logbook" screen
    When I tap on "latest.mealtime.insulin.entry.200"
    When I tap on "information.icon.mealtime" icon
    Then I should see "prime.air.shot" screen in English
    When I tap on "done" button
    Then I should see "mealtime.screen"
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "mealtime.screen" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    #     #Tap on latest long acting insulin entry
    When I tap on "latest.long-acting.insulin.entry.100"
    Then I should see "longacting.screen" screen in English
    When I tap on "information.icon.longacting" icon
    Then I should see "prime.air.shot" screen in English
    When I tap on "done" button
    Then I should see "longacting.screen"
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "longacting.screen" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    #     #Tap on latest long acting insulin entry
    When I tap on "latest.carb.intake.entry.200"
    Then I should see "carb.intake" screen in English
    And I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "carb.intake" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    #Tap on Calender icon
    When I tap on "calendar.icon.logbook" icon
    Then I should see "calender.overlay"
    When I tap on "calendar.cancel" button
    Then I should see "logbook" screen in English

  @RegressionTest
  Scenario:  REGRESSION TEST FOR INTERNATIONALIZATION - LANGUAGE IN ENGLISH
    When I should see "home" screen
    And I tap on "progress.icon" option
    Then I should see "welcome.to.your.progress" text in English
    When I tap on "logbook.icon" option
    Then I should see "welcome.to.your.logbook" text in English
    When I tap on "home" option
    Then I should see "home" text in English
    When I tap on "bell.icon.in.home" icon
    And I tap on "back" button
    When I tap on "new.entry.icon"
    And I tap on "enter.blood.sugar.newentry" option
    Then I should see "blood.sugar" screen in English
    And I should see "blood.sugar.mg.dl" screen in English
    When I tap on "blood.sugar.mg.dl" field
    And I enter "100" into "blood.sugar.mg.dl" field
    Then I should see "100" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    Then I should see "home" screen
    And I tap on "manual.up.arrow" button
    Then I should see "blood.sugar.activity.card.100"

    When I tap on "new.entry.icon"
    And I tap on "enter.mealtime.insulin.newentry" option
    Then I should see "mealtime.insulin" screen
    Then I should see "mealtime.insulin" screen in English
    And I should see "mealtime.units" screen in English
    When I tap on "units" field
    And I enter "200" into "units" field
    Then I should see "200" in "units" field
    When I tap on "save" button
    Then I should see "home" screen
    
    Then I should see "mealtime.insulin.activity.card.200"

    When I tap on "new.entry.icon"
    When I tap on "enter.long.acting.insulin.new.entry" option
    Then I should see "long.acting.insulin" screen
    Then I should see "long.acting.insulin" screen in English
    And I should see "longacting.units" screen in English
    When I tap on "units" field
    And I enter "100" into "units" field
    Then I should see "100" in "units" field
    When I tap on "save" button
    Then I should see "home" screen
   
    Then I should see "longacting.insulin.activity.card.100"

    When I tap on "new.entry.icon"
    And I tap on "enter.carbs.newentry" option
    Then I should see "carb.intake" screen in English
    And I should see "carb.intake.grams" screen in English
    When I tap on "carb.intake.grams" field
    And I enter "200" into "carb.intake.grams" field
    Then I should see "200" in "carb.intake.grams" field
    When I tap on "save" button
    Then I should see "home" screen
    
    Then I should see "carb.intake.activity.card.200"

    When I tap on "new.entry.icon"
    And I tap on "enter.health.factors.new.entry" option
    Then I should see "health.factors" screen in English
    When I tap on "activity.checkbox"
    And I tap on "save" button
    Then I should see "home" screen

    Then I should see "health.factors.activity.card.activity"
    When I tap on "progress.icon"
    Then I should see "progress" screen in English
    When I swipe down
    Then I should see "progress" screen in English
    When I tap on "7d" option
    Then I should see "progress" screen in English
   
    When I tap on "14d" option
    Then I should see "progress" screen in English
   
    When I tap on "30d" option
    Then I should see "progress" screen in English
 
    When I tap on "90d" option
    Then I should see "progress" screen in English

    When I swipe up
    When I tap on "i.progress" icon
    Then I should see "more.information.title" screen in English
    When I tap on "done" button
    When I swipe down
      When I swipe down
    And I tap on "share.my.data" button
    And I tap on "create.mytempo.report" button
    Then I should see "export.tempo.data" pop-up in English
    When I tap on "cancel" option
    Then I should see "progress" screen
    When I tap on "logbook.icon"
    And I tap on "latest.blood.sugar.entry.100"
    Then I should see "blood.sugar" screen in English
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "blood.sugar" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    When I tap on "logbook" icon
    Then I should see "logbook" screen
    When I tap on "latest.mealtime.insulin.entry.200"
    When I tap on "information.icon.mealtime" icon
    Then I should see "prime.air.shot" screen in English
    When I tap on "done" button
    Then I should see "mealtime.screen"
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "mealtime.screen" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    When I tap on "latest.long-acting.insulin.entry.100"
    Then I should see "longacting.screen" screen in English
    When I tap on "information.icon.longacting" icon
    Then I should see "prime.air.shot" screen in English
    When I tap on "done" button
    Then I should see "longacting.screen"
    When I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "longacting.screen" screen in English
    When I tap on "back" button
    Then I should see "logbook" screen
    When I tap on "latest.carb.intake.entry.200"
    Then I should see "carb.intake" screen in English
    And I tap on "delete.manual.entry" button
    Then I should see "confirm.delete.entry" pop-up in English
    When I tap on "cancel.popup" button
    Then I should see "carb.intake" screen in English
    When I tap on "back" button
    And I tap on "calendar.icon.logbook" icon
    And I tap on "calendar.cancel" button
    Then I should see "logbook" screen in English

   @Precondition
    Scenario: Loging out of Application

        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen
  ################ upto here commment
  # Scenario: HOME SCREEN - INTERNATIONALIZATION - LANGUAGE (SPANISH)
  # # PRE-CONDITIONS:
  # # •	Ensure the iOS/Android device is connected to the internet.
  # # •	Ensure that user has launched Madelyne App as per section 6.1.
  # # •	Ensure that user has successfully registered as per section 6.2.
  # # •	Ensure that user has navigated to the Home page as per section 6.4.
  # # •	Ensure that the device language is selected as Spanish.
  #     #-----Verifying home screen-----
  #     Given I should see "home" screen
  #     And I should see "morning" text in Spanish
  #     And I should see "first.name" in Spanish
  #     When I tap on "progress" option
  #     Then I should see "progress.screen"
  #     And I should see "welcome.to.your.progress" text in Spanish
  #     When I tap on "logbook" option
  #     Then I should see "welcome.to.your.logbook" text in Spanish
  #     When I tap on "home" option
  #     Then I should see "home" screen in Spanish
  #     And I should see "create.a.personalized.schedule" pop-up
  #     And I should see "set.schedule" button
  #     And I should see "not.now" button
  #     When I tap on "set.schedule" button
  #     Then I should see "schedule.and.reminders" screen in Spanish
  #     When I Swipe down
  #     Then I should see "schedule.and.reminders" screen in Spanish
  #     When I tap on "back" button
  #     Then I should see "home" screen in Spanish
  #     And I should see "create.a.personalized.schedule" pop-up
  #     And I should see "set.schedule" button
  #     And I should see "not.now" button
  #     When I tap on "not.now" button
  #     And I should see "morning" text in Spanish
  #     And I should see "first.name" in Spanish
  #     When I tap on "bell.icon"
  #     Then I should see "notification" screen in Spanish
  #     When I tap on "back" button
  #     And I should set Schedule
  #     Then I should see schedule is set successfully
  #     #-----Changing Device time(Morning)-----
  #     When I set devicetime in device settings
  #     And I wait for 5 mins
  #     And I navigate to home screen
  #     Then I should see "home" screen
  #     And I should see "breakfast.entries" text in Spanish
  #     #------Verifying Blood Sugar screen-----
  #     When I tap on "enter.blood.sugar" button
  #     Then I should see "blood.sugar" screen in Spanish
  #     #Verifying mg/dL field
  #     When I enter "mg/dl.value.1.1" into "mg/dl" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "breakfast.entries.details"
  #     And I should see "mg/dl.value.1.1" in "enter.blood.sugar" field
  #     And I should see "data.collected" text
  #     #-----Verifying Mealtime Insulin screen-----
  #     When I tap on "enter.mealtime.insulin" button
  #     Then I should see "mealtime.insulin" screen in Spanish
  #     #Verifying Insulin field
  #     When I tap on "insulin" field
  #     Then I should see "mealtime.insulin.with.brands" screen in Spanish
  #     When I tap on "back" button
  #     And I enter "insulin.value.1.1" into "units" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "breakfast.entries.details" in Spanish
  #     And I should see "units.value.1.1" in "enter.mealtime.insulin" field
  #     And I should see "entry.updates" text
  #     #-----Verifying Long-Acting Insulin screen------
  #     #Verifying Insulin field
  #     When I tap on "enter.long-acting.insulin" button
  #     Then I should see "long-acting.insulin" screen in Spanish
  #     When I tap on "insulin" field
  #     Then I should see "long-acting.insulin.with.brands" screen
  #     When I tap on "back" button
  #     And I enter "long-acting.value.1.1" into "units" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "breakfast.entries.details" in Spanish
  #     And I should see "long-acting.value.1.1" in "enter.long-acting.insulin" field
  #     And I should see "entry.updates" text
  #     #-----Verifying Carb Intake screen-----
  #     #Verifying Grams field
  #     When I tap on "enter.carbs" button
  #     Then I should see "carb.intake" screen in Spanish
  #     When I tap on "grams" field
  #     And I enter "carb.intake.value.1.1" into "grams" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "breakfast.entries.details" in Spanish
  #     And I should see "carb.intake.value.1.1" in "enter.carbs" field
  #     And I should see "entry.updates" text
  #     #-----Changing Device time(Afternoon)------
  #     When I set devicetime in device settings
  #     And I wait for 5 mins
  #     And I navigate to home screen
  #     Then I should see "home" screen in Spanish
  #     And I should see "lunch.entries" text in Spanish
  #     #------Verifying Blood Sugar screen-----
  #     When I tap on "enter.blood.sugar" button
  #     Then I should see "blood.sugar" screen in Spanish
  #     #Verifying mg/dL field
  #     When I enter "mg/dl.value.1.1" into "mg/dl" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "lunch.entries.details"
  #     And I should see "mg/dl.value.1.1" in "enter.blood.sugar" field
  #     And I should see "data.collected" text
  #     #-----Verifying Mealtime Insulin screen-----
  #     When I tap on "enter.mealtime.insulin" button
  #     Then I should see "mealtime.insulin" screen in Spanish
  #     #Verifying Insulin field
  #     When I tap on "insulin" field
  #     Then I should see "mealtime.insulin.with.brands" screen in Spanish
  #     When I tap on "back" button
  #     And I enter "insulin.value.1.1" into "units" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "lunch.entries.details" in Spanish
  #     And I should see "units.value.1.1" in "enter.mealtime.insulin" field
  #     And I should see "entry.updates" text
  #     #-----Verifying Carb Intake screen-----
  #     #Verifying Grams field
  #     When I tap on "enter.carbs" button
  #     Then I should see "carb.intake" screen in Spanish
  #     When I tap on "grams" field
  #     And I enter "carb.intake.value.1.1" into "grams" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "lunch.entries.details" in Spanish
  #     And I should see "carb.intake.value.1.1" in "enter.carbs" field
  #     And I should see "entry.updates" text
  #     #-----Changing Device time(Evening)------
  #     When I set devicetime in device settings
  #     And I wait for 5 mins
  #     And I navigate to home screen
  #     Then I should see "home" screen in Spanish
  #     And I should see "dinner.entries" text in Spanish
  #     #------Verifying Blood Sugar screen-----
  #     When I tap on "enter.blood.sugar" button
  #     Then I should see "blood.sugar" screen in Spanish
  #     #Verifying mg/dL field
  #     When I enter "mg/dl.value.1.1" into "mg/dl" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "dinner.entries.details"
  #     And I should see "mg/dl.value.1.1" in "enter.blood.sugar" field
  #     And I should see "data.collected" text
  #     #-----Verifying Mealtime Insulin screen-----
  #     When I tap on "enter.mealtime.insulin" button
  #     Then I should see "mealtime.insulin" screen in Spanish
  #     #Verifying Insulin field
  #     When I tap on "insulin" field
  #     Then I should see "mealtime.insulin.with.brands" screen in Spanish
  #     When I tap on "back" button
  #     And I enter "insulin.value.1.1" into "units" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "dinner.entries.details" in Spanish
  #     And I should see "units.value.1.1" in "enter.mealtime.insulin" field
  #     And I should see "entry.updates" text
  #     #-----Verifying Carb Intake screen-----
  #     #Verifying Grams field
  #     When I tap on "enter.carbs" button
  #     Then I should see "carb.intake" screen in Spanish
  #     When I tap on "grams" field
  #     And I enter "carb.intake.value.1.1" into "grams" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "dinner.entries.details" in Spanish
  #     And I should see "carb.intake.value.1.1" in "enter.carbs" field
  #     And I should see "entry.updates" text
  #     #-----Changing Device time(Night)------
  #     When I set devicetime in device settings
  #     And I wait for 5 mins
  #     And I navigate to home screen
  #     Then I should see "home" screen in Spanish
  #     And I should see "bedtime.entries" text in Spanish
  #     #------Verifying Blood Sugar screen-----
  #     When I tap on "enter.blood.sugar" button
  #     Then I should see "blood.sugar" screen in Spanish
  #     #Verifying mg/dL field
  #     When I enter "mg/dl.value.1.1" into "mg/dl" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "bedtime.entries.details"
  #     And I should see "mg/dl.value.1.1" in "enter.blood.sugar" field
  #     And I should see "data.collected" text
  #     #-----Verifying Mealtime Insulin screen-----
  #     When I tap on "enter.mealtime.insulin" button
  #     Then I should see "mealtime.insulin" screen in Spanish
  #     #Verifying Insulin field
  #     When I tap on "insulin" field
  #     Then I should see "mealtime.insulin.with.brands" screen in Spanish
  #     When I tap on "back" button
  #     And I enter "insulin.value.1.1" into "units" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "bedtime.entries.details" in Spanish
  #     And I should see "units.value.1.1" in "enter.mealtime.insulin" field
  #     And I should see "entry.updates" text
  #     #-----Verifying Carb Intake screen-----
  #     #Verifying Grams field
  #     When I tap on "enter.carbs" button
  #     Then I should see "carb.intake" screen in Spanish
  #     When I tap on "grams" field
  #     And I enter "carb.intake.value.1.1" into "grams" field
  #     And I tap on "save" button
  #     Then I should see "home" screen
  #     And I should see "bedtime.entries.details" in Spanish
  #     And I should see "carb.intake.value.1.1" in "enter.carbs" field
  #     And I should see "entry.updates" text
  #     #-----Verifying Progress screen-----
  #     When I tap on "progress" icon
  #     Then I should see "progress" screen in Spanish
  #     When I Swipe down
  #     Then I should see "progress" screen in Spanish
  #     When I tap on "7d" option
  #     Then I should see "progress.last.7days" in Spanish
  #     When I tap on "30d" option
  #     Then I should see "progress.last.30days" in Spanish
  #     When I tap on "90d" option
  #     Then I should see "progress.last.90days" in Spanish
  #     #Tap on "i" icon
  #     When I tap on "i" icon
  #     Then I should see "more.information" screen in Spanish
  #     When I tap on "done" button
  #     And I tap on "export.data" icon
  #     Then I should see "export.tempo.data" pop-up in Spanish
  #     When I tap on "export" option
  #     Then I should see "exporting.tempo.data" pop-up in Spanish
  #     And I wait for export to finish
  #     And I tap on "any.app" in "pop-up"
  #     Then I should see "progress" screen in Spanish
  #     #Tap on latest blood sugar entry
  #     When I tap on "logbook" icon
  #     Then I should see "logbook" screen in Spanish
  #     When I tap on "latest.blood.sugar.entry"
  #     Then I should see "blood.sugar" screen in Spanish
  #     When I tap on "edit" button
  #     Then I should see "edit.blood.sugar.entry" screen in Spanish
  #     When I tap on "delete" button
  #     Then I should see "confirm.delete.entry" pop-up in Spanish
  #     When I tap on "cancel" button
  #     Then I should see "edit.blood.sugar.entry" screen in Spanish
  #     When I tap on "back" button
  #     Then I should see "logbook" screen in Spanish
  #     #Tap on latest mealtime insulin entry
  #     When I tap on "logbook" icon
  #     Then I should see "logbook" screen in Spanish
  #     When I tap on "latest.mealtime.insulin.entry"
  #     When I tap on "i" icon
  #     Then I should see "prime.(air shots)" screen in Spanish
  #     When I tap on "done" button
  #     And I tap on "edit" button
  #     Then I should see "edit.mealtime.insulin.entry" screen in Spanish
  #     When I tap on "cancel" button
  #     And I tap on "delete"
  #     Then I should see "confirm.delete.entry" pop-up in Spanish
  #     When I tap on "cancel" button
  #     Then I should see "mealtime.insulin" screen in Spanish
  #     When I tap on "back" button
  #     Then I should see "logbook" screen in Spanish
  #     #Tap on latest long acting insulin entry
  #     When I tap on "latest.long-acting.insulin.entry"
  #     Then I should see "long-acting.insulin" screen in Spanish
  #     When I tap on "i" icon
  #     Then I should see "prime.(air shots)" screen in Spanish
  #     When I tap on "done" button
  #     And I tap on "edit" button
  #     Then I should see "edit.long-acting.insulin.entry" screen in Spanish
  #     When I tap on "cancel" button
  #     And I tap on "delete"
  #     Then I should see "confirm.delete.entry" pop-up in Spanish
  #     When I tap on "cancel" button
  #     Then I should see "long-acting.insulin" screen in Spanish
  #     When I tap on "back" button
  #     Then I should see "logbook" screen in Spanish
  #     #Tap on latest long acting insulin entry
  #     When I tap on "latest.carb.intake.entry"
  #     Then I should see "carb.intake" screen in Spanish
  #     When I tap on "edit" button
  #     Then I should see "edit.carb.intake.entry" screen in Spanish
  #     When I tap on "cancel" button
  #     And I tap on "delete"
  #     Then I should see "confirm.delete.entry" pop-up in Spanish
  #     When I tap on "cancel" button
  #     Then I should see "carb.intake" screen in Spanish
  #     When I tap on "back" button
  #     Then I should see "logbook" screen in Spanish
  #     #Tap on Calender icon
  #     When I tap on "calender" icon
  #     Then I should see "calender.overlay" screen in Spanish
  #     When I tap on "cancel" button
  #     Then I should see "logbook" screen in Spanish
  #     When I tap on "new.entry" icon
  #     Then I should see "new.logbook.entry.overlay" screen in Spanish
  #     When I tap on "enter.blood.sugar" button
  #     Then I should see "blood.sugar" screen in Spanish
  #     When I tap on "cancel" button
  #     And I tap on "new.entry" icon
  #     Then I should see "new.logbook.entry.overlay" screen in Spanish
  #     When I tap on "enter.mealtime.insulin" button
  #     Then I should see "mealtime.insulin" screen im English
  #     When I tap on "cancel" button
  #     And I tap on "new.entry" icon
  #     Then I should see "new.logbook.entry.overlay" screen in Spanish
  #     When I tap on "enter.long-acting.insulin" button
  #     Then I should see "long-acting.insulin" screen in Spanish
  #     When I tap on "cancel" button
  #     And I tap on "new.entry" icon
  #     Then I should see "new.logbook.entry.overlay" screen in Spanish
  #     When I tap on "enter.carbs" button
  #     Then I should see "carb.intake" screen in Spanish
  #     When I tap on "cancel" button
  #     And I tap on "new.entry" icon
  #     Then I should see "new.logbook.entry.overlay" screen in Spanish
  #     When I tap on "enter.health.factors" button
  #     Then I should see "health.factors" screen in Spanish
  #     When I tap on "cancel" button
  #     Then I should see "logbook" screen in Spanish
  