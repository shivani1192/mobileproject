Feature: MADELYNE PROGRESS MENU - SOFTWARE TEST PROTOCOL IOS
  @Precondition
  Scenario: MADELYNE PROGRESS MENU - SOFTWARE TEST PROTOCOL
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
  Scenario: Verfication of New entry screen
    When I tap on "more" option
    Then I should see "more.menu" screen
    When I tap on "blood.sugar.target.range" option
    And I tap on "below.range.button" field
    Then I should see "below.range.scroll"
    When I select "90" in "below.range.scroll" field
    And I tap "done" button
    Then I should see "90" in "below.range" field
    When I tap on "save" button
    Then I should see "more.menu" screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "120" into "blood.sugar.mg.dl" field
    Then I should see "120" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    When I swipe down
    And I tap on "share.my.data" button
    And I tap on "create.mytempo.report" button
    
    ###check popup disappers fast
    # And I tap on "export" option
    # Then I should see "exporting.tempo.data" popup
    # And I should see "preparing" text
    # And I should see "cancel" button
    ######
    Then I should see "sharable.options" pop-up
    And I should see "export.mail" option
    And I should see "copy" option
    And I should see "print" option
    And I should see "export.close" button
    When I tap on "export.close" button
    # When I tap on "cancel" option
    Then I should see "progress" screen
    When I tap on "logbook.icon"
    And I tap on "blood.entry.logbook" option
    And I tap "delete" button
    Then I should see "confirm.delete.entry" pop-up
    And I should see "ok.delete.entry" button
    # And I should see "popup.cancel" button
    When I tap "ok.delete.entry" button
    And I tap on "progress.icon"
    Then I should see "progress" screen

  @SmokeTest
  Scenario Outline:Blood sugar entries in hypo,below,inrange and above
    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "<entry.bloodsugar>" into "blood.sugar.mg.dl" field
    Then I should see "<entry.bloodsugar>" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    Then I should see "progress" screen
    Examples:
      | entry.bloodsugar |
      | 20               |
      | 72               |
      | 100              |
      | 200              |

  @SmokeTest
  Scenario Outline: Mealtime Insulin Entries
    When I tap on "new.entry" option
    And I tap on "enter.mealtime.insulin.new.entry" option
    Then I should see "mealtime.insulin" screen
    When I tap on "units" field
    And I enter "<entry.mealtime>" into "units" field
    Then I should see "<entry.mealtime>" in "units" field
    When I tap on "insulin" field
    And I tap on "humalog.u-100"
    And I tap on "back" button
    And I tap on "save" button
    Then I should see "progress" screen
    Examples:
      | entry.mealtime |
      | 10             |
      | 16             |

  @SmokeTest
  Scenario: Editing Mealtime Insulin Entry in logbook
    When I tap on "logbook.icon"
    #choose 10units entry
    And I tap on "mealtime.entry.10units"
    And I tap on "ok" button
    Then I should see "mealtime.insulin" screen
    And I should see "save" button
    And I should see "mark.as.prime.toggle" button
    When I tap on "mark.as.prime.toggle" button
    Then I should see "mealtime.screen" screen
    When I tap on "back" button
    Then I should see "discard.changes" pop-up
    And I should see "are.you.sure.you.want.to.discard" text
    When I tap on "discard" button
    And I tap on "logbook" option
    Then I should see "logbook.screen"

  @SmokeTest
  Scenario Outline: Long-acting Entries

    When I tap on "new.entry" option
    And I tap on "enter.long.acting.insulin.new.entry" option
    Then I should see "long.acting.insulin" screen
    When I tap on "units" field
    And I enter "<entry.longacting>" into "units" field
    Then I should see "<entry.longacting>" in "units" field
    When I tap on "insulin" field
    And I tap on "basaglar"
    And I tap on "back" button
    And I tap on "save" button
    Then I should see "logbook.screen"
    Examples:
      | entry.longacting |
      | 10               |
      | 15               |

  @SmokeTest
  Scenario: Editing Long-acting Entry in Logbook
    When I tap on "logbook.icon"
    And I tap on "long.acting.entry.15units"
    #choose 15units entry
    Then I should see "long.acting.insulin" screen
    And I should see "save" option
    When I tap on "mark.as.prime.toggle" button
    And I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "is.this.information.correct" text
    And I should see "15" in "confirm.long-acting.units" field
    And I should see CurrentDate in "confirm.long-acting.date" field
    And I should see "yes.its.correct" button
    And I should see "no.keep.editing" button
    When I tap on "yes.its.correct" button
    Then I should see "logbook.screen"

  @SmokeTest
  Scenario Outline: Carb Intake Entries
    When I tap on "new.entry" option
    And I tap on "enter.carb.intake.new.entry" option
    Then I should see "carb.intake" screen
    When I tap on "carb.intake.grams" field
    And I enter "<entry.carbs>" into "carb.intake.grams" field
    Then I should see "<entry.carbs>" in "carb.intake.grams" field
    When I tap on "save" button
    Then I should see "logbook.screen"
    Examples:
      | entry.carbs |
      | 13          |
      | 200         |

  @SmokeTest
  Scenario:Visualisation of entries
    When I tap on "progress.icon"
    Then I should see "progress" screen

    When I tap on "hypo.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "hypo.option.range.lessthan.71" text in progress screen
    And I should see "25%" in "hypo.percentage" field

    When I tap on "below.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "below.option.range.71-89" text in progress screen
    And I should see "25%" in "below.percentage" field

    When I tap on "in-range.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "in-range.option.range.90-180" text in progress screen
    And I should see "25%" in "in-range.percentage" field

    When I tap on "above.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.above.option" text in progress screen
    And I should see "above.option.range.greaterthan.180" text in progress screen
    And I should see "25%" in "above.percentage" field

    When I tap on "progress.icon"
    Then I should see "progress" screen
    When I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units" text
    And I should see "average.long-acting.insulin.dose" text
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text
    And I should see "home" screen
    When I tap on "more" icon
    And I tap on "login.and.security.option"
    And I handle Logout button
    Then I should see "login.to.your.account" screen

  @Progress
  Scenario: MENU– PROGRESS VIEW – NO DATA
    # Preconditions
    # Make sure that the iOS/Android device is connected to the internet.
    # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
    # Make sure that the user is registered successfully on MMA App as per section 6.2.
    # Make sure that the user has navigated till home screen as per section 6.4.
    # The current date has been assumed as June 12, 2018.

    Given I should see "home" screen
    When I tap on "progress.icon"
    Then I should see "progress" screen
    And I should see "i.progress" icon
    And I should see "7d" option
    And I should see "14d" option
    And I should see "30d" option
    And I should see "90d" option
    And I should see "date.range.for.7.days"
    And I should see "welcome.to.your.progress" text

    When I tap on "14d" option
    Then I should see "date.range.for.14.days"
    And "14d" should be enabled
    And "7d" should be disabled
    And "30d" should be disabled
    And "90d" should be disabled
    And I should see "welcome.to.your.progress" text

    When I tap on "30d" option
    Then I should see "progress" screen
    And I should see "date.range.for.30.days"
    And "30d" should be enabled
    And "7d" should be disabled
    And "14d" should be disabled
    And "90d" should be disabled
    # And I should see "progress.image.icon" icon in progress screen
    And I should see "welcome.to.your.progress" text

    When I tap on "90d" option
    Then I should see "progress" screen
    And I should see "date.range.for.90.days"
    And "90d" should be enabled
    And "7d" should be disabled
    And "14d" should be disabled
    And "30d" should be disabled
    And I should see "welcome.to.your.progress" text

    When I tap on "i.progress" icon
    Then I should see "more.information" screen
    And I should see "done" button
    #And I should see "orange.header"(image can't verify)
    And I should see "more.information.title"
    And I should see "subtitle-blood.sugar.target.range"
    And I should see "more.information.text"

    When I tap on "done" button
    Then I should see "progress" screen

  @Progress
  Scenario:PROGRESS MENU– PROGRESS VIEW – VISUALIZATION DATA FRAMEWORK
    # PRE-CONDITIONS:
    # Make sure that the iOS/Android device is connected to the internet.
    # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
    # Make sure that the user is registered successfully on MMA App as per section 6.2.
    # Make sure that the user has navigated till home screen as per section 6.4.
    # Make sure that in More Menu “Blood Sugar Target Range” is set below range value as 90 and above range value as180.
    # Make sure that there is a blood sugar entry in “Logbook” as per section 6.5 with current date.
    # Make sure that there is a blood sugar entry in “Logbook” as per section 6.5 with previous date.
    # The current date has been assumed as June 12, 2018.

    #-----Verifying Progress screen----

    Given I should see "home" screen
    When I tap on "more" option
    Then I should see "more.menu" screen
    When I tap on "blood.sugar.target.range" option
    Then I should see "blood.sugar.target.range.title"
    And I should see "back" button
    And I should see "below.range" field

    When I tap on "below.range.button" field
    Then I should see "below.range.scroll"
    When I select "90" in "below.range.scroll" field
    And I tap "done" button
    Then I should see "90" in "below.range" field
    When I tap on "save" button
    Then I should see "more.menu" screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "120" into "blood.sugar.mg.dl" field
    Then I should see "120" in "blood.sugar.mg.dl" field

    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "90" into "blood.sugar.mg.dl" field
    Then I should see "90" in "blood.sugar.mg.dl" field

    When I tap on "blood.sugar.date" field
    And I select "past.year" in "year" field
    And I tap on "done" button
    Then I should see "past.date" in "blood.sugar.date" field
    And I should see "save" button is enabled

    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    And I should see "i.progress" icon
    And I should see "14d" option
    And I should see "7d" option
    And I should see "30d" option
    And I should see "90d" option
    ### And I should see "data.export" icon
    And I should see "date.range"
    #And I should see "circular.visualization.total.blood.sugar.entries"
    And I should see "total.blood.sugar.entries" text in progress screen

    When I tap on "hypo.text" option
    Then I should see "percentage.indicator.above.hypo" text in progress screen
    #And I should see "hypo" option in red(color can't verify)
    And I should see "hypo.text" text in progress screen

    When I tap on "below.text" option
    Then I should see "percentage.indicator.above.below.option" text in progress screen
    #And I should see "below" option in orange(color can't verify)
    And I should see "below.text" text in progress screen

    When I tap on "in-range.text" option
    Then I should see "percentage.indicator.above.in-range.option" text in progress screen
    #And I should see "in-range" option in lightgreen(color can't verify)
    And I should see "in-range.text" text in progress screen

    When I tap on "above.text" option
    Then I should see "percentage.indicator.above.above.option" text in progress screen
    #And I should see "above" option in lightblue(color can't verify)
    And I should see "above.option.range.greaterthan.180" text in progress screen
    And I should see "above.text" text in progress screen

    When I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.long-acting.insulin.dose" text
    #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.daily.carb.intake" text
    #And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.carb.intake" text in progress screen
    When I swipe down
    Then I should see "share.my.data" button

    When I tap on "hypo.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    #And I should see "hypo" option in red(color can't verify)
    And I should see "hypo.option.range.lessthan.71" text in progress screen
    And I should see "hypo.text" text in progress screen

    When I tap on "below.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    #And I should see "below" option in orange(color can't verify)
    And I should see "below.option.range.71-89" text in progress screen
    And I should see "below.text" text in progress screen

    When I tap on "in-range.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    #And I should see "in-range" option in lightgreen(color can't verify)
    And I should see "in-range.option.range.90-180" text in progress screen
    And I should see "in-range.text" text in progress screen

    When I tap on "above.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.above.option" text in progress screen
    #And I should see "above" option in lightblue(color can't verify)
    And I should see "above.option.range.greaterthan.180" text in progress screen
    And I should see "above.text" text in progress screen

    When I swipe down
    And I tap on "share.my.data" button
    Then I should see "tempo.insights.share.button" button
    And I should see "create.mytempo.report" button
    And I should see "cancel" button
    When I tap on "cancel" button
    Then I should see "progress" screen

    When I tap on "share.my.data" button
    And I tap on "create.mytempo.report" button
    ######## popup closes fast ############
    # Then I should see "export" button
    # And I should see "are.you.sure.export.data" text
    # And I should see "cancel" option
    # And I should see "export" option
    # When I tap on "cancel" option
    # Then I should see "progress" screen

    # When I swipe down
    # And I tap on "share.my.data" button
    # And I tap on "create.mytempo.report" button
    # And I tap on "export" option
    # Then I should see "exporting.tempo.data" button
    # And I should see "preparing" text
    # And I should see "cancel" button
    # When I tap on "cancel" button
    #####-- Cannot be automated - Device specific --####
    # And I should see "mail" option
    # And I should see "gmail" option
    # And I should see "hangout" option
    # And I should see "message" option
    # And I should see "more" option
    # And I should see "googleplus" option
    #####################################################
    And I should see "sharable.options" pop-up
    And I should see "export.mail" option
    And I should see "print" option
    And I should see "copy" option
    And I should see "export.close" button
    When I tap on "export.close" button
    Then I should see "progress" screen

    ######----pdf section verfication-----#######
    ####### for pdf works if not delete#
    #        When I tap on "progress.icon"
    #          Then I should see "progress" screen
    #         When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "20" into "blood.sugar.mg.dl" field
    #         Then I should see "20" in "blood.sugar.mg.dl" field
    #         And I tap on "save" button
    #         When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "30" into "blood.sugar.mg.dl" field
    #         Then I should see "30" in "blood.sugar.mg.dl" field
    #         And I tap on "save" button
    #         When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "40" into "blood.sugar.mg.dl" field
    #         Then I should see "40" in "blood.sugar.mg.dl" field
    #         And I tap on "save" button
    #         When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "50" into "blood.sugar.mg.dl" field
    #         Then I should see "50" in "blood.sugar.mg.dl" field
    #         And I tap on "save" button
    #          When I tap on "logbook.icon" option
    #          Then I should see "logbook" screen
    #          When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "21" into "blood.sugar.mg.dl" field
    #         Then I should see "21" in "blood.sugar.mg.dl" field
    #          And I tap on "save" button
    #         When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "22" into "blood.sugar.mg.dl" field
    #         Then I should see "22" in "blood.sugar.mg.dl" field
    #          When I tap on "blood.sugar.date" field
    #         When I select "past.7days.date" in "year" field
    #         And I tap on "done" button
    #         Then I should see "past.date" in "blood.sugar.date" field
    #         And I should see "save" button is enabled
    #         And I tap on "save" button
    #         When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "41" into "blood.sugar.mg.dl" field
    #         Then I should see "41" in "blood.sugar.mg.dl" field
    #          When I tap on "blood.sugar.date" field
    #         When I select "past.7days.date" in "year" field
    #         And I tap on "done" button
    #         Then I should see "past.7days.date" in "blood.sugar.date" field
    #         And I should see "save" button is enabled
    #         And I tap on "save" button
    #         When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "51" into "blood.sugar.mg.dl" field
    #         Then I should see "51" in "blood.sugar.mg.dl" field
    #          When I tap on "blood.sugar.date" field
    #         When I select "past.7days.date" in "year" field
    #         And I tap on "done" button
    #         Then I should see "past.7days.date" in "blood.sugar.date" field
    #         And I should see "save" button is enabled
    #         And I tap on "save" button
    #         When I tap on "progress.icon"
    #          Then I should see "progress" screen
    #          When I tap on "share.my.data" button
    #         And I tap on "create.mytempo.report" button
    #          And I tap on "export" option
    #          And I should see "sharable.options" pop-up
    #         And I tap on "complete.pdf" option
    #         And I should see "pdf"
    #          And I should see "entries"
    #          And I navigate back to application
    #           When I tap on "new.entry" option
    #         And I tap on "enter.blood.sugar.new.entry" option
    #         Then I should see "blood.sugar" screen
    #         When I tap on "blood.sugar.mg.dl" field
    #         And I enter "56" into "blood.sugar.mg.dl" field
    #         Then I should see "56" in "blood.sugar.mg.dl" field
    #          When I tap on "blood.sugar.date" field
    #         When I select "past.7days.date" in "year" field
    #         And I tap on "done" button
    #         Then I should see "past.7days.date" in "blood.sugar.date" field
    #         And I should see "save" button is enabled
    #         And I tap on "save" button
    #          When I tap on "progress.icon"
    #          Then I should see "progress" screen
    #          When I tap on "share.my.data" button
    #         And I tap on "create.mytempo.report" button
    #          And I tap on "export" option
    #          And I should see "sharable.options" pop-up
    #         And I tap on "complete.pdf" option
    #         And I should see "pdf"
    #          And I should see "entries"
    #          And I should see "last.date"
    #           And I navigate back to application
    # When I tap on "progress.icon"
    # Then I should see "progress" screen
    ####################################################################
    When I tap on "logbook.icon"
    And I tap on "blood.sugar.entry.120" option
    And I tap "delete" button
    Then I should see "confirm.delete.entry" pop-up
    And I should see "ok.delete.entry" button
    And I should see "cancel.in.popup" button
    When I tap "ok.delete.entry" button
    Then I should see "logbook.screen"
    When I tap on "logbook.icon"
    And I tap on "blood.sugar.entry.90"
    And I tap "delete" button
    Then I should see "confirm.delete.entry" pop-up
    And I should see "ok.delete.entry" button
    When I tap "ok.delete.entry" button
    Then I should see "logbook.screen"

  @Progress
  Scenario: PROGRESS MENU– PROGRESS VIEW – VISUALIZATION DATA

    #   # PRE-CONDITIONS:
    #   # Make sure that the iOS/Android device is connected to the internet.
    #   # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
    #   # Make sure that the user is registered successfully on MMA App as per section 6.2.
    #   # Make sure that the user has navigated till Home screen as per section 6.4.
    #   # The current date has been assumed as June 12, 2018.
    #   # Make sure that in More Menu “Blood Sugar Target Range” is set below range value as 90 and above range value as180.
    #   # Make sure that the user makes 5 blood sugar entries with values < 71 mg/dL which belongs to “Hypo” as per section 6.5.
    #   # # ##-----Add 5 entries each for Blood Sugar in Hypo(<71) range-----
    Given I should see "home" screen
    When I tap on "more" option
    Then I should see "more.menu" screen
    When I tap on "blood.sugar.target.range" option
    And I should see "blood.sugar.target.range.title"
    And I should see "back" button
    And I should see "below.range" field
    When I tap on "below.range.button" field
    And I should see "below.range.scroll"
    And I select "90" in "below.range.scroll" field
    And I tap "done" button
    Then I should see "90" in "below.range" field
    When I tap on "back" button
    Then I should see "more.menu" screen

  @Progress
  Scenario Outline:Entries in hypo,below,inrange and above
    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "<entry.bloodsugar>" into "blood.sugar.mg.dl" field
    Then I should see "<entry.bloodsugar>" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    Then I should see "more.menu" screen
    Examples:
      | entry.bloodsugar |
      | 20               |
      | 30               |
      | 40               |
      | 50               |
      | 60               |
      | 72               |
      | 73               |
      | 74               |
      | 75               |
      | 76               |
      | 100              |
      | 110              |
      | 120              |
      | 130              |
      | 140              |
      | 200              |
      | 250              |
      | 300              |
      | 350              |
      | 400              |

  @Progress
  Scenario: Visualization of Entries in hypo,below,inrange and above
    # And I wait for recording
    When I tap on "progress.icon"
    Then I should see "progress" screen
    #And I should see "circular.visualization.total.blood.sugar.entries"
    And I should see "total.entries.no.20" text in progress screen
    And I should see "total.blood.sugar.entries" text in progress screen
    #And I should see "hypo" option in red(color can't verify)
    And I should see "hypo.text" text in progress screen
    #And I should see "hypo" is selected by default(In-Range selected by default)
    #And I should see "below" option  in orange(color can't verify)
    And I should see "below.text" text in progress screen
    #And I should see "in-range" option  in lightgreen(color can't verify)
    And I should see "in-range.text" text in progress screen
    #And I should see "above" option  in lightblue(color can't verify)
    And I should see "above.text" text in progress screen

    When I tap on "hypo.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "hypo.option.range.lessthan.71" text in progress screen
    And I should see "25%" in "hypo.percentage" field

    When I tap on "below.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "below.option.range.71-89" text in progress screen
    And I should see "25%" in "below.percentage" field

    When I tap on "in-range.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "in-range.option.range.90-180" text in progress screen
    And I should see "25%" in "in-range.percentage" field

    When I tap on "above.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.above.option" text in progress screen
    And I should see "above.option.range.greaterthan.180" text in progress screen
    And I should see "25%" in "above.percentage" field

    When I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units" text in progress screen
    And I should see "average.long-acting.insulin.dose" text
    #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    #And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text
    And I should see "share.my.data" button

  #-----Add 3 entries each for Mealtime Insulin in hypo range-----
  @Progress
  Scenario Outline:Mealtime entries
    When I tap on "new.entry" option
    And I tap on "enter.mealtime.insulin.new.entry" option
    Then I should see "mealtime.insulin" screen
    When I tap on "units" field
    And I enter "<entry.mealtime>" into "units" field
    Then I should see "<entry.mealtime>" in "units" field
    When I tap on "insulin" field
    And I tap on "humalog.u-100"
    And I tap on "back" button
    Then I should see "mealtime.insulin" screen
    When I tap on "save" button
    Then I should see "progress" screen

    Examples:
      | entry.mealtime |
      | 10             |
      | 16             |
      | 18             |

  @Progress
  Scenario:Mealtime Insulin Entries
    When I tap on "progress.icon"
    Then I should see "progress" screen
    When I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units" text in progress screen
    And I should see "average.long-acting.insulin.dose" text
    #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    #And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text

    When I tap on "logbook.icon" option
    #choose 10units entry
    And I tap on "mealtime.entry.10units"
    Then I should see "mealtime.screen" screen
    And I should see "save" option
    And I tap "ok" button
    And I should see "mark.as.prime.toggle" button
    When I tap on "mark.as.prime.toggle" button
    Then I should see "mealtime.screen" screen
    When I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "is.this.information.correct" text
    And I tap on "yes.its.correct" button
    When I tap on "progress.icon"
    Then I should see "progress" screen
    When I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units" text
    And I should see "average.long-acting.insulin.dose" text
    #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    #And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text

  #     #-----Add 3 entries each for Long Acting Insulin in hypo range-----
  @Progress
  Scenario Outline: Long-acting Entries
    When I tap on "new.entry" option
    And I tap on "enter.long.acting.insulin.new.entry" option
    Then I should see "long.acting.insulin" screen
    When I tap on "units" field
    And I enter "<entry.longacting>" into "units" field
    Then I should see "<entry.longacting>" in "units" field
    When I tap on "insulin" field
    And I tap on "basaglar"
    And I tap on "back" button
    And I tap on "save" button
    Then I should see "progress" screen
    Examples:
      | entry.longacting |
      | 10               |
      | 15               |
      | 22               |

  @Progress
  Scenario:Longacting entries
    When I tap on "progress.icon"
    Then I should see "progress" screen
    When I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units" text
    And I should see "average.long-acting.insulin.dose" text
    #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    #And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text
    And I should see "share.my.data" button


    When I tap on "logbook.icon" option
    And I tap on "long.acting.entry.15units"
    #choose 15units entry
    Then I should see "long.acting.insulin" screen
    And I should see "save" option
    And I should see "mark.as.prime.toggle" button
    When I tap on "mark.as.prime.toggle" button
    And I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "is.this.information.correct" text
    When I tap on "yes.its.correct" button
    Then I should see "logbook.screen"
    When I tap on "progress.icon"
    Then I should see "progress" screen
    And I swipe down
    And I should see "average.mealtime.insulin.dose" text
    #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units" text
    And I should see "average.long-acting.insulin.dose" text
    #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    #And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text
    And I should see "share.my.data" button

  #-----Add 3 entries each for Enter Carb Intake in hypo range-----
  @Progress
  Scenario Outline:Carb Intake entries in Hypo Range
    When I tap on "progress.icon"
    And I tap on "new.entry" option
    And I tap on "enter.carb.intake.new.entry" option
    Then I should see "carb.intake" screen
    When I tap on "carb.intake.grams" field
    And I enter "<entry.carbs>" into "carb.intake.grams" field
    # And I tap outside
    Then I should see "<entry.carbs>" in "carb.intake.grams" field
    When I tap on "save" button
    #  And I tap outside
    # And I hide device keyboard
    Then I should see "progress" screen
    Examples:
      | entry.carbs |
      | 13          |
      | 17          |
      | 18          |

  @Progress
  Scenario: Visualization of Carb Intake entries in Hypo Range
    When I tap on "progress.icon"
    # And I wait for "1" minutes
    And I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units" text
    And I should see "average.long-acting.insulin.dose" text
    #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    #And I should see "average.daily.carb.intake.icon" icon in progress screen
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text
    And I should see "share.my.data" button

  @Progress
  Scenario Outline:Carb Intake Entries in High Range

    When I tap on "progress.icon"
    And I tap on "new.entry" option
    And I tap on "enter.carb.intake.new.entry" option
    Then I should see "carb.intake" screen
    When I tap on "carb.intake.grams" field
    And I enter "<entry.carbs>" into "carb.intake.grams" field
    Then I should see "<entry.carbs>" in "carb.intake.grams" field
    When I tap on "save" button
    Then I should see "progress" screen
    Examples:
      | entry.carbs |
      | 120         |
      | 150         |
      | 200         |

  @Progress
  Scenario: Visualization of Carb Intake Entries in High Range
    When I tap on "progress.icon"
    Then I should see "progress" screen
    When I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units"
    And I should see "average.long-acting.insulin.dose" text
    #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    #And I should see "average.daily.carb.intake.icon" icon in progress screen
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text
    And I should see "share.my.data" button

    When I tap on "7d" option
    Then I should see "progress" screen
    And I should see "date.range.for.7.days"
    When I tap on "14d" option
    Then I should see "progress" screen
    And I should see "date.range.for.14.days"
    When I tap on "30d" option
    Then I should see "progress" screen
    And I should see "date.range.for.30.days"
    When I tap on "90d" option
    Then I should see "progress" screen
    And I should see "date.range.for.90.days"
    When I tap on "more" option
    And I wait for "1" minutes
    And I tap on "login.and.security.option"
    And I tap on "logout" button
    Then I should see "login.to.your.account" screen

  @DateVerfication
  Scenario: PROGRESS MENU– PROGRESS VIEW – DATE VERIFICATION
    # PRE-CONDITIONS:
    # Make sure that the iOS/Android device is connected to the internet.
    # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
    # Make sure that the user is registered successfully on MMA App as per section 6.2.
    # Make sure that the user has navigated till Home screen as per section 6.4.
    # The current date has been assumed as June 12, 2018.
    # Make sure that there is a blood sugar entry in “Logbook” as per section 6.5.
    # Make sure that in More Menu “Blood Sugar Target Range” is set below range value as 90 and above range value as180.

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

    When I tap on "more" option
    Then I should see "more.menu" screen
    When I tap on "blood.sugar.target.range" option
    And I should see "blood.sugar.target.range.title"
    And I should see "back" button
    And I should see "below.range" field
    When I tap on "below.range.button" field
    And I should see "below.range.scroll"
    And I select "90" in "below.range.scroll" field
    And I tap "done" button
    Then I should see "90" in "below.range" field
    When I tap on "save" button
    Then I should see "more.menu" screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "120" into "blood.sugar.mg.dl" field
    Then I should see "120" in "blood.sugar.mg.dl" field

    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    When I tap on "progress.icon"
    Then I should see "progress" screen
    ##########--- Cannot Be Automated ---------##############
    #    When I navigate to device settings
    #    And I change the date to "march 10,2018"
    #    Then I should see date in device is changed
    #    And I should see date in "madelyne.mma" is changed
    #    When I navigate to "madelyne.mma"
    #    Then I should see "progress" screen
    #  And I set Date from settings
    #  And I select settingsdate
    # And I select settings "date.settings"
    #########################################################
    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "64" into "blood.sugar.mg.dl" field
    Then I should see "64" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    And I tap on "30d" option
    Then I should see "date.range.for.30.days"
    When I tap on "90d" option
    Then I should see "date.range.for.90.days"
    When I tap on "7d" option
    Then I should see "date.range.for.7.days"
    When I tap on "14d" option
    Then I should see "date.range.for.14.days"

    When I tap on "logbook.icon"
    And I tap on "blood.entry.logbook" option
    And I tap "delete" button
    Then I should see "confirm.delete.entry" pop-up
    And I should see "ok.delete.entry" button
    # And I should see "cancel.in.popup" button
    When I tap "ok.delete.entry" button
    And I tap on "logbook.icon"
    And I tap on "blood.entry.logbook.64" option
    And I tap "delete" button
    Then I should see "confirm.delete.entry" pop-up
    And I should see "ok.delete.entry" button
    # And I should see "cancel.in.popup" button
    When I tap "ok.delete.entry" button
    Then I should see "logbook.screen"

    When I tap on "progress.icon"
    Then I should see "progress" screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "70" into "blood.sugar.mg.dl" field
    Then I should see "70" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    #And I should see "circular.visualization.total.blood.sugar.entries"
    And I should see "total.blood.sugar.entries" text in progress screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "percentage.indicator.above.above.option" text in progress screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "71" into "blood.sugar.mg.dl" field
    Then I should see "71" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    #And I should see "circular.visualization.total.blood.sugar.entries"
    And I should see "total.blood.sugar.entries" text in progress screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "percentage.indicator.above.above.option" text in progress screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "89" into "blood.sugar.mg.dl" field
    Then I should see "89" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    #And I should see "circular.visualization.total.blood.sugar.entries"
    And I should see "total.blood.sugar.entries" text in progress screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "percentage.indicator.above.above.option" text in progress screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "90" into "blood.sugar.mg.dl" field
    Then I should see "90" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    #And I should see "circular.visualization.total.blood.sugar.entries"
    And I should see "total.blood.sugar.entries" text in progress screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "percentage.indicator.above.above.option" text in progress screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "180" into "blood.sugar.mg.dl" field
    Then I should see "180" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    #And I should see "circular.visualization.total.blood.sugar.entries"
    And I should see "total.blood.sugar.entries" text in progress screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "percentage.indicator.above.above.option" text in progress screen

    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "181" into "blood.sugar.mg.dl" field
    Then I should see "181" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    #And I should see "circular.visualization.total.blood.sugar.entries"
    And I should see "total.blood.sugar.entries" text in progress screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "percentage.indicator.above.above.option" text in progress screen
    When I tap on "more" option
    And I wait for "1" minutes
    And I tap on "login.and.security.option"
    And I tap on "logout" button
    Then I should see "login.to.your.account" screen

  # # @ProgressOffline
  #  Scenario: PROGRESS MENU– PROGRESS VIEW – VISUALIZATION OFFLINE
  # # # # PRE-CONDITIONS:
  # # Make sure that the iOS/Android device is connected to the internet.
  # # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
  # # Make sure that the user is registered successfully on MMA App as per section 6.2.
  # # The current date has been assumed as June 12, 2018
  # # Make sure that the user has navigated till Home screen as per section 6.4.
  # # Make sure that there is a blood sugar entry in “Logbook” as per section 6.5.
  #         When I tap on "progress.icon"
  #        Then I should see "progress" screen
  #          When I tap on "new.entry" option
  #         And I tap on "enter.blood.sugar.new.entry" option
  #         Then I should see "blood.sugar" screen
  #         When I tap on "blood.sugar.mg.dl" field
  #         And I enter "120" into "blood.sugar.mg.dl" field
  #         Then I should see "120" in "blood.sugar.mg.dl" field
  #         When I tap on "save" button
  # #----------Add 3 entries in Mealtime Insulin------------
  #         When I tap on "new.entry" option
  #         And I tap on "enter.mealtime.insulin.new.entry" option
  #         Then I should see "mealtime.insulin" screen
  #         When I tap on "units" field
  #         And I enter "10" into "units" field
  #         Then I should see "10" in "units" field
  #         When I tap on "save" button
  #         Then I should see "progress" screen
  #         When I tap on "new.entry" option
  #         And I tap on "enter.mealtime.insulin.new.entry" option
  #         Then I should see "mealtime.insulin" screen
  #         When I tap on "units" field
  #         And I enter "14" into "units" field
  #         Then I should see "14" in "units" field
  #         When I tap on "save" button
  #         Then I should see "progress" screen
  #         When I tap on "new.entry" option
  #         And I tap on "enter.mealtime.insulin.new.entry" option
  #         Then I should see "mealtime.insulin" screen
  #         When I tap on "units" field
  #         And I enter "18" into "units" field
  #         Then I should see "18" in "units" field
  #         When I tap on "save" button
  #         Then I should see "progress" screen
  #         And I swipe down
  #         And I should see "average.mealtime.insulin.dose" text
  #         #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen
  #         And I should see "total.doses.mealtimeinsulin" text in progress screen
  #         And I should see "average.mealtime.dose.units" text
  #         And I should see "average.long-acting.insulin.dose" text
  #         #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen
  #         And I should see "total.doses.long-acting.insulin" text in progress screen
  #         And I should see "average.long-acting.dose.units" text
  #         And I should see "average.daily.carb.intake" text
  #         #And I should see "average.daily.carb.intake.icon" icon in progress screen
  #         And I should see "total.doses.carb.intake" text in progress screen
  #         And I should see "average.carb.units" text
  #         And I terminate the app
  #         And I turn on Airplane mode
  #         When I tap on "progress.icon"
  #         Then I should see "progress" screen
  #         And I swipe down
  #         And I should see "average.mealtime.insulin.dose" text
  #         #And I should see "average.mealtime.insulin.dose.icon" icon in progress screen
  #         And I should see "total.doses.mealtimeinsulin" text in progress screen
  #         And I should see "average.mealtime.dose.units" text
  #         And I should see "average.long-acting.insulin.dose" text
  #         #And I should see "average.long-acting.insulin.dose.icon" icon in progress screen
  #         And I should see "total.doses.long-acting.insulin" text in progress screen
  #         And I should see "average.long-acting.dose.units" text
  #         And I should see "average.daily.carb.intake" text
  #         #And I should see "average.daily.carb.intake.icon" icon in progress screen
  #         And I should see "total.doses.carb.intake" text in progress screen
  #         And I should see "average.carb.units" text
  #         And I turn off Airplane mode
  #         Then I should see "home" screen

  @RegressionTest
  Scenario:RegressionTest
    Given I should see "home" screen
    When I tap on "progress.icon"
    Then I should see "progress" screen
    And I should see "7d" option
    And I should see "30d" option
    And I should see "90d" option
    And I should see "welcome.to.your.progress" text
    When I tap on "more" option
    Then I should see "more.menu" screen
    When I tap on "blood.sugar.target.range" option
    And I tap on "below.range.button" field
    And I should see "below.range.scroll"
    When I select "90" in "below.range.scroll" field
    And I tap "done" button
    Then I should see "90" in "below.range" field
    When I tap on "save" button
    Then I should see "more.menu" screen
    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "120" into "blood.sugar.mg.dl" field
    Then I should see "120" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    And I tap on "progress.icon"
    Then I should see "progress" screen
    When I swipe down
    And I tap on "share.my.data" button
    And I tap on "create.mytempo.report" button
    Then I should see "sharable.options" pop-up
     ###check popup disappers fast
    # And I tap on "export" option
    # Then I should see "exporting.tempo.data" popup
    # And I should see "preparing" text
    # And I should see "cancel" button
    ################################
    And I should see "export.mail" option
    And I should see "copy" option
    And I should see "print" option
    And I should see "export.close" button
    When I tap on "export.close" button
    Then I should see "progress" screen
    When I tap on "logbook.icon"
    And I tap on "blood.sugar.entry.120"
    And I tap "delete" button
    Then I should see "confirm.delete.entry" pop-up
    And I should see "ok.delete.entry" button
    When I tap "ok.delete.entry" button
    And I tap on "progress.icon"
    Then I should see "progress" screen

  @RegressionTest
  Scenario Outline:Blood sugar entries in hypo,below,in-range and above range
    When I tap on "new.entry" option
    And I tap on "enter.blood.sugar.new.entry" option
    Then I should see "blood.sugar" screen
    When I tap on "blood.sugar.mg.dl" field
    And I enter "<entry.bloodsugar>" into "blood.sugar.mg.dl" field
    Then I should see "<entry.bloodsugar>" in "blood.sugar.mg.dl" field
    When I tap on "save" button
    Then I should see "progress" screen
    Examples:
      | entry.bloodsugar |
      | 20               |
      | 72               |
      | 100              |
      | 200              |

  @RegressionTest
  Scenario Outline: Mealtime Insulin Entries
    When I tap on "new.entry" option
    And I tap on "enter.mealtime.insulin.new.entry" option
    Then I should see "mealtime.insulin" screen
    When I tap on "units" field
    And I enter "<entry.mealtime>" into "units" field
    Then I should see "<entry.mealtime>" in "units" field
    When I tap on "insulin" field
    And I tap on "humalog.u-100"
    And I tap on "back" button
    And I tap on "save" button
    Then I should see "progress" screen
    Examples:
      | entry.mealtime |
      | 10             |
      | 16             |

  @RegressionTest
  Scenario: Editing Mealtime Insulin Entry in logbook
    When I tap on "logbook.icon"
    #choose 10units entry
    And I tap on "mealtime.entry.10units"
    Then I should see "mealtime.screen" screen
    And I tap on "ok" button
    And I should see "save" option
    And I should see "mark.as.prime.toggle" button
    When I tap on "mark.as.prime.toggle" button
    Then I should see "mealtime.screen" screen
    When I tap on "back" button
    Then I should see "discard.changes" pop-up
    And I should see "are.you.sure.you.want.to.discard" text
    When I tap on "discard" button
    And I tap on "logbook" option
    Then I should see "logbook.screen"

  @RegressionTest
  Scenario Outline: Long-acting Entries
    When I tap on "new.entry" option
    And I tap on "enter.long.acting.insulin.new.entry" option
    Then I should see "long.acting.insulin" screen
    When I tap on "units" field
    And I enter "<entry.longacting>" into "units" field
    Then I should see "<entry.longacting>" in "units" field
    When I tap on "insulin" field
    And I tap on "basaglar"
    And I tap on "back" button
    And I tap on "save" button
    Then I should see "logbook.screen"
    Examples:
      | entry.longacting |
      | 10               |
      | 15               |

  @RegressionTest
  Scenario:Editing Long-acting Entry in Logbook
    When I tap on "logbook.icon"
    And I tap on "long.acting.entry.15units"
    #choose 15units entry
    Then I should see "long.acting.insulin" screen
    And I should see "save" option
    And I should see "mark.as.prime.toggle" button
    When I tap on "mark.as.prime.toggle" button
    And I tap on "save" button
    Then I should see "confirm.new.entry" pop-up
    And I should see "is.this.information.correct" text
    And I should see "15" in "confirm.long-acting.units" field
    And I should see CurrentDate in "confirm.long-acting.date" field
    And I should see "yes.its.correct" button
    And I should see "no.keep.editing" button
    When I tap on "yes.its.correct" button
    Then I should see "logbook.screen" screen

  @RegressionTest
  Scenario Outline: Carb Intake Entries
    When I tap on "new.entry" option
    And I tap on "enter.carb.intake.new.entry" option
    Then I should see "carb.intake" screen
    When I tap on "carb.intake.grams" field
    And I enter "<entry.carbs>" into "carb.intake.grams" field
    Then I should see "<entry.carbs>" in "carb.intake.grams" field
    And I tap on "save" button
    Examples:
      | entry.carbs |
      | 13          |
      | 200         |

  @RegressionTest
  Scenario: Visualisation of Entries
    When I tap on "progress.icon"
    Then I should see "progress" screen
    When I tap on "i.progress" icon
    Then I should see "done" button
    And I should see "more.information.title"
    And I should see "subtitle-blood.sugar.target.range"
    And I should see "more.information.text"
    When I tap on "done" button
    Then I should see "progress" screen
    And I should see "30d" option
    When I tap on "90d" option
    Then I should see "date.range.for.90.days"
    When I tap on "14d" option
    Then I should see "date.range.for.14.days"
    When I tap on "30d" option
    Then I should see "date.range.for.30.days"
    When I tap on "7d" option
    Then I should see "date.range.for.7.days"

    When I tap on "hypo.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.hypo" text in progress screen
    And I should see "hypo.option.range.lessthan.71" text in progress screen
    And I should see "25%" in "hypo.percentage" field

    When I tap on "below.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.below.option" text in progress screen
    And I should see "below.option.range.71-89" text in progress screen
    And I should see "25%" in "below.percentage" field

    When I tap on "in-range.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.in-range.option" text in progress screen
    And I should see "in-range.option.range.90-180" text in progress screen
    And I should see "25%" in "in-range.percentage" field

    When I tap on "above.text" option
    Then I should see "progress" screen
    And I should see "percentage.indicator.above.above.option" text in progress screen
    And I should see "above.option.range.greaterthan.180" text in progress screen
    And I should see "25%" in "above.percentage" field

    When I tap on "progress.icon"
    Then I should see "progress" screen
    When I swipe down
    Then I should see "average.mealtime.insulin.dose" text
    And I should see "total.doses.mealtimeinsulin" text in progress screen
    And I should see "average.mealtime.dose.units" text
    And I should see "average.long-acting.insulin.dose" text
    And I should see "total.doses.long-acting.insulin" text in progress screen
    And I should see "average.long-acting.dose.units" text
    And I should see "average.daily.carb.intake" text
    And I should see "total.doses.carb.intake" text in progress screen
    And I should see "average.carb.units" text
    And I should see "home" screen

    When I tap on "more" option
    And I tap on "login.and.security.option"
    And I tap on "logout" button
    Then I should see "login.to.your.account" screen