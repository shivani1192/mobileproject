Feature: MADELYNE PROGRESS MENU - SOFTWARE TEST PROTOCOL ANDROID
@Precondition
Scenario: Steps to navigate to Home Screen
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
            And I wait for "50" seconds
		Then I should see "verify.email" screen
		And I Verify "verify.email" text
		When I should connect to email for registration verification
		Then I verify email
            And I wait for "10" seconds
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
      Scenario:Verfication of New entry screen
            When I tap on "more" option
            Then I should see "more.menu" screen
            When I tap on "blood.sugar.target.range" option

            Then I should see "blood.sugar.target.range.title"
            And I should see "back" button
            And I should see "below.range" field

            When I tap on "below.range" field
            And I clear "below.range" field
            And I enter "value.between.90.and.180" into "below.range" field
            Then I should see "90" in "below.range" field
            When I tap on "save" button
            Then I should see "more.menu" screen

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.progress" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "120" into "blood.sugar.mg.dl" field
            Then I should see "120" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            And I tap on "progress.icon"
            Then I should see "progress" screen

           
            When I Swipe Down "share.my.data"
            And I tap on "share.my.data" button
            Then I should see "quick.share.mytempo.data" button
            And I should see "create.mytempo.report" button
            When I tap on "create.mytempo.report" button

            Then I should see "export.tempo.data" pop-up
            When I tap on "cancel" option
            Then I should see "progress" screen

            When I tap on "logbook.icon"
            And I tap on "blood.sugar.entry.120" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            And I wait for "3" seconds
            Then I should see "logbook" screen
      
      @SmokeTest
      Scenario Outline:Blood sugar entries in hypo,below,inrange and above

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.progress" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "<entry.bloodsugar>" into "blood.sugar.mg.dl" field
            Then I should see "<entry.bloodsugar>" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            And I wait for "3" seconds
            Then I should see "logbook" screen

            Examples:
                  | entry.bloodsugar |
                  | 20               |
                  | 72               |
                  | 100              |
                  | 200              |


      @SmokeTest
      Scenario Outline:Mealtime entries
            When I tap on "new.entry.icon"
            And I tap on "enter.mealtime.insulin.progress" option
            Then I should see "mealtime.insulin" screen
            When I tap on "units" field
            And I enter "<entry.mealtime>" into "units" field
            Then I should see "<entry.mealtime>" in "units" field
            When I tap on "save" button
            And I wait for "3" seconds
            Then I should see "logbook" screen

            Examples:
                  | entry.mealtime |
                  | 10             |
                  | 16             |

      @SmokeTest
      Scenario:Editing meal time entry in logbook
            When I tap on "logbook.icon" option
            And I tap on "mealtime.entry.16" option
            Then I should see "mealtime.screen" screen
            And I should see "back" button
            And I should see "save" button
            And I should see "mark.as.prime.toggle" button

            When I tap on "mark.as.prime.toggle" button
            And I tap on "save" button
            Then I should see "confirm.new.entry" screen
            When I tap on "yes.its.correct" button
            And I wait for "3" seconds
            Then I should see "logbook" screen


      @SmokeTest
      Scenario Outline:Longacting entries
            When I tap on "new.entry.icon"
            And I tap on "enter.long-acting.insulin.option"
            Then I should see "long-acting.insulin" screen
            When I tap on "longacting.units" field
            And I enter "<entry.longacting>" into "longacting.units" field
            Then I should see "<entry.longacting>" in "longacting.units" field
            When I tap on "save" button
            And I wait for "3" seconds
            Then I should see "logbook" screen


            Examples:
                  | entry.longacting |
                  | 10               |
                  | 15               |

      @SmokeTest
      Scenario:Editing longacting entry in logbook

            When I tap on "logbook.icon" option
            And I tap on "longacting.entry.15" option
            Then I should see "longacting.screen" screen
            And I should see "back" button
            And I should see "save" button
            And I should see "mark.as.prime.toggle" button

            When I tap on "mark.as.prime.toggle" button
            And I tap on "save" button
            Then I should see "confirm.new.entry" screen
            When I tap on "yes.its.correct" button
            Then I should see "logbook" screen


      @SmokeTest
      Scenario Outline:Carb intake entries
            When I tap on "progress.icon"
            And I tap on "new.entry.icon"
            And I tap on "enter.carbs" option
            Then I should see "carb.intake" screen
            When I tap on "grams" field
            And I enter "<entry.carbs>" into "grams" field
            Then I should see "<entry.carbs>" in "grams" field
            When I tap on "save" button
            And I hide device keyboard
            Then I should see "logbook" screen

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

            When I Swipe Down "share.my.data"
            Then I should see "average.mealtime.insulin.dose" text

            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units" text in progress screen
            And I should see "average.long-acting.insulin.dose" text

            And I should see "total.doses.long-acting.insulin" text in progress screen
            And I should see "average.long-acting.dose.units" text
            And I should see "average.daily.carb.intake" text

            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "average.carb.units" text

            When I tap on "more" option
            And I tap on "login.and.security.option"
            And I tap on "logout" button
            Then I should see "login.to.your.account" screen



      @Progress
      Scenario: PROGRESS MENU– PROGRESS VIEW – NO DATA

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
            And I should see "mytempo.is.still.getting.to.know" text
            And I should see "home.icon"
            And I should see "progress.icon" 
            And I should see "new.entry.icon"
            And I should see "logbook.icon"
            And I should see "more" icon

            When I tap on "14d" option
            Then I should see "date.range.for.14.days"
            And "14d" should be enabled
            # And "7d" should be disabled   
            # And "30d" should be disabled
            # And "90d" should be disabled
      
            And I should see "welcome.to.your.progress" text
            And I should see "home.icon"
            And I should see "progress.icon" 
            And I should see "new.entry.icon"
            And I should see "logbook.icon"
            And I should see "more" icon

            When I tap on "30d" option
            Then I should see "progress" screen
            And I should see "date.range.for.30.days"
            And "30d" should be enabled
            # And "7d" should be disabled     ##checked property is true if it is enabled or disabled
            # And "14d" should be disabled
            # And "90d" should be disabled
            ## And I should see "progress.image.icon" icon in progress screen  #can't automate image
            And I should see "welcome.to.your.progress" text
            And I should see "home.icon"
            And I should see "progress.icon" 
            And I should see "new.entry.icon"
            And I should see "logbook.icon"
            And I should see "more" icon

            When I tap on "90d" option
            Then I should see "progress" screen
            And I should see "date.range.for.90.days"
            And "90d" should be enabled
            # And "7d" should be disabled
            # And "14d" should be disabled
            # And "30d" should be disabled
            And I should see "welcome.to.your.progress" text
            And I should see "home.icon"
            And I should see "progress.icon" 
            And I should see "new.entry.icon"
            And I should see "logbook.icon"
            And I should see "more" icon

            When I tap on "i.progress" icon
            Then I should see "more.information" screen
            And I should see "close" button
            #And I should see "orange.header"      (image can't verify)
            And I should see "more.information.title"
            And I should see "subtitle-blood.sugar.target.range"
            And I should see "more.information.text" 
            When I tap on "close" button
            Then I should see "progress" screen


      @Progress
      Scenario:PROGRESS MENU– PROGRESS VIEW – VISUALIZATION DATA FRAMEWORK 

      # PRE-CONDITIONS: 

            # Make sure that the iOS/Android device is connected to the internet.
            # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
            # Make sure that the user is registered successfully on MMA App as per section 6.2.
            # Make sure that the user has navigated till home screen as per section 6.4.
            # Make sure that in More Menu “Blood Sugar Target Range” is set below range value as 90 and above range value as180.
            # The current date has been assumed as June 12, 2018.
            # Make sure that there is a blood sugar entry in “Logbook” as per section 6.5 with current date.
            # Make sure that there is a blood sugar entry in “Logbook” as per section 6.5 with previous date. 
      ##-----Verifying Progress screen-----
           
           
            Given I should see "home" screen
            When I tap on "more" option
            Then I should see "more.menu" screen 

            When I tap on "blood.sugar.target.range" option 
            Then I should see "blood.sugar.target.range.title"
            And I should see "back" button
            And I should see "below.range" field
            
            When I tap on "below.range.button" field
            And I clear "below.range" field
            And I enter "value.between.90.and.180" into "below.range" field
            Then I should see "90" in "below.range" field
            When I tap on "save" button
            Then I should see "more.menu" screen  

            When I tap on "new.entry.icon" 
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "120" into "blood.sugar.mg.dl" field
            Then I should see "120" in "blood.sugar.mg.dl" field

            When I tap on "blood.sugar.date" field
		And I tap "year" button
		And I select "current.year" in "year" field
		And I tap on "ok.button"
		Then I should see CurrentDate in "blood.sugar.date" field

            When I tap on "save" button
            Then I should see "more.menu" screen
            When I tap on "progress.icon"
            Then I should see "progress" screen

            When I tap on "new.entry.icon" 
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "90" into "blood.sugar.mg.dl" field
            Then I should see "90" in "blood.sugar.mg.dl" field
            When I tap on "blood.sugar.date" field
            And I tap "year" button
            And I select "past.year" in "year" field
            And I tap on "ok.button" button
            Then I should see "past.date" in "blood.sugar.date" field
            And I should see "save" button is enabled
            When I tap on "save" button
            Then I should see "progress" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen
            And I should see "i.progress" icon

            And I should see "14d" option
            And I should see "7d" option
            And I should see "30d" option 
            
            And I should see "90d" option
            ### And I should see "data.export" icon          #can't automate image
            And I should see "date.range"
            ##And I should see "circular.visualization.total.blood.sugar.entries"     #can't automate image
            And I should see "total.blood.sugar.entries" text in progress screen

            When I tap on "hypo.text" option 
            Then I should see "percentage.indicator.above.hypo" text in progress screen
            ##And I should see "hypo" option in red(color can't verify)
            And I should see "hypo.text" text in progress screen

            When I tap on "below.text" option
            Then I should see "percentage.indicator.above.below.option" text in progress screen
            ##And I should see "below" option in orange(color can't verify)
            And I should see "below.text" text in progress screen

       
            When I tap on "in-range.text" option 
            Then I should see "percentage.indicator.above.in-range.option" text in progress screen
            ##And I should see "in-range" option in lightgreen(color can't verify)
            And I should see "in-range.text" text in progress screen 
            
            When I tap on "above.text" option 
            Then I should see "percentage.indicator.above.above.option" text in progress screen
            ##And I should see "above" option in lightblue(color can't verify)
            And I should see "above.option.range.greaterthan.180" text in progress screen
            And I should see "above.text" text in progress screen

            When I Swipe Down "share.my.data"
            Then I should see "average.mealtime.insulin.dose" text
            ##And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.mealtimeinsulin" text in progress screen

            And I should see "average.long-acting.insulin.dose" text
            ##And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.long-acting.insulin" text in progress screen

            And I should see "average.daily.carb.intake" text
            ##And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "share.my.data" button
            
            When I tap on "logbook.icon"
            And I tap on "progress.icon"
            Then I should see "progress" screen

            When I tap on "hypo.text" option 
            Then I should see "progress" screen
            And I should see "percentage.indicator.above.hypo" text in progress screen
            ##And I should see "hypo" option in red(color can't verify)
            And I should see "hypo.option.range.lessthan.71" text in progress screen
            And I should see "hypo.text" text in progress screen   

            When I tap on "below.text" option
            Then I should see "progress" screen
            And I should see "percentage.indicator.above.below.option" text in progress screen
            ##And I should see "below" option in orange(color can't verify)
            And I should see "below.option.range.71-89" text in progress screen
            And I should see "below.text" text in progress screen

            When I tap on "in-range.text" option 
            Then I should see "progress" screen
            And I should see "percentage.indicator.above.in-range.option" text in progress screen
            ##And I should see "in-range" option in lightgreen(color can't verify)
            And I should see "in-range.option.range.90-180" text in progress screen
            And I should see "in-range.text" text in progress screen 
            
            When I tap on "above.text" option 
            Then I should see "progress" screen
            And I should see "percentage.indicator.above.above.option" text in progress screen
            ##And I should see "above" option in lightblue(color can't verify)
            And I should see "above.option.range.greaterthan.180" text in progress screen
            And I should see "above.text" text in progress screen


            When I Swipe Down "share.my.data"
            And I tap on "share.my.data" button
            Then I should see "quick.share.mytempo.data" button
            And I should see "create.mytempo.report" button
            When I tap outside "quick.share.tempo" pop-up
            Then I should see "progress" screen

            When I tap on "share.my.data" button
            And I tap on "create.mytempo.report" button
            Then I should see "export.tempo.data" pop-up
            And I should see "are.you.sure.export.data" text
            And I should see "cancel" option
            And I should see "export" option
            When I tap on "cancel" option
            Then I should see "progress" screen

            When I tap on "share.my.data" button
            And I tap on "create.mytempo.report" button
            And I tap on "export" option
            ##  Then I should see "exporting.tempo.data" popup
            ##  And I should see "preparing" text             ##popup disapperaing fast###
            ##  And I should see "cancel" button
            ##When I tap on "cancel" button
            And I tap outside "sharable.options" pop-up
            Then I should see "progress" screen
            
            When I tap on "share.my.data" button
            And I tap on "create.mytempo.report" button
            And I tap on "export" option
            ##  Then I should see "exporting.tempo.data" popup
            ##  And I should see "preparing" text
            ##  And I should see "cancel" button ##popup disapperaing fast###
            Then I should see "sharable.options" pop-up
            ##   And I should see "mail" option       ##device specific
            ##   And I should see "copy" option
            When I tap outside "sharable.options" pop-up
            Then I should see "progress" screen

            ##pdf verification

            When I tap on "logbook.icon" 
            And I tap on "blood.sugar.entry.90" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen
         
 
            When I tap on "blood.sugar.entry.120" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "250" into "blood.sugar.mg.dl" field
		Then I should see "250" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap "save" button
            Then I should see "logbook" screen

            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "150" into "blood.sugar.mg.dl" field
		Then I should see "150" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap "save" button
            Then I should see "logbook" screen

            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
		And I enter "130" into "blood.sugar.mg.dl" field
		Then I should see "130" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap on "save" button
            Then I should see "logbook" screen

            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
		And I enter "450" into "blood.sugar.mg.dl" field
		Then I should see "450" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap on "save" button
            Then I should see "logbook" screen

            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "350" into "blood.sugar.mg.dl" field
		Then I should see "350" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap "save" button
            Then I should see "logbook" screen


            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "120" into "blood.sugar.mg.dl" field
		Then I should see "120" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap on "blood.sugar.date" field
		And I tap "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
		Then I should see "past.date" in "blood.sugar.date" field

            When I tap "save" button
            Then I should see "logbook" screen

            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "349" into "blood.sugar.mg.dl" field
		Then I should see "349" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap on "blood.sugar.date" field
		And I tap "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
		Then I should see "past.date" in "blood.sugar.date" field

            When I tap "save" button
            Then I should see "logbook" screen

            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "40" into "blood.sugar.mg.dl" field
		Then I should see "40" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap on "blood.sugar.date" field
		And I tap "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
		Then I should see "past.date" in "blood.sugar.date" field

            When I tap "save" button
            Then I should see "logbook" screen

            When I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "50" into "blood.sugar.mg.dl" field
		Then I should see "50" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap on "blood.sugar.date" field
		And I tap "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
		Then I should see "past.date" in "blood.sugar.date" field

            When I tap "save" button
            Then I should see "logbook" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen
            And I should see "total.blood.sugar.entries" text in progress screen

            When I Swipe Down "share.my.data"
            And I tap on "share.my.data" button
            And I tap on "create.mytempo.report" button
            And I tap on "export" option
            And I should see "sharable.options" pop-up
            When I tap outside "sharable.options" pop-up
            Then I should see "progress" screen

            When I tap on "logbook.icon" 
            And I tap on "new.entry.icon"
		Then I should see "new.logbook.entry" screen
		When I tap on "enter.blood.sugar.new.entry" option
		Then I should see "blood.sugar" screen
		When I tap on "blood.sugar.mg.dl" field
		And I enter "90" into "blood.sugar.mg.dl" field
		Then I should see "90" in "blood.sugar.mg.dl" field
		And I should see "save" button is enabled

            When I tap on "blood.sugar.date" field
		And I tap "year" button
		And I select "past.year" in "year" field
		And I tap on "ok.button"
		Then I should see "past.date" in "blood.sugar.date" field

            When I tap "save" button
            Then I should see "logbook" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen
            And I should see "total.blood.sugar.entries" text in progress screen

            When I Swipe Down "share.my.data"
            And I tap on "share.my.data" button
            And I tap on "create.mytempo.report" button
            And I tap on "export" option
            Then I should see "sharable.options" pop-up
            When I tap outside "sharable.options" pop-up
            Then I should see "progress" screen

            When I tap on "logbook.icon" 
            And I tap on "logbook.bloodsugar.250" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "bloodsugar.350.mg.dl" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "blood.sugar.450.entry" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "blood.sugar.130.entry" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "blood.sugar.entry.150" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "blood.sugar.50.entry" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "blood.sugar.40.entry" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "blood.sugar.entry.349" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "blood.sugar.entry.120" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "blood.sugar.entry.90" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen


      @Progress
       Scenario: PROGRESS MENU– PROGRESS VIEW – VISUALIZATION DATA


      # PRE-CONDITIONS: 

      # Make sure that the iOS/Android device is connected to the internet.
      # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
      # Make sure that the user is registered successfully on MMA App as per section 6.2. 
      # Make sure that the user has navigated till Home screen as per section 6.4.
      # The current date has been assumed as June 12, 2018.
      # Make sure that in More Menu “Blood Sugar Target Range” is set below range value as 90 and above range value as180.
      # Make sure that the user makes 5 blood sugar entries with values < 71 mg/dL which belongs to “Hypo” as per section 6.5.


      # ##-----Add 5 entries each for Blood Sugar in Hypo(<71) range-----

            Given I should see "progress" screen
            When I tap on "more" option
            Then I should see "more.menu" screen          
            When I tap on "blood.sugar.target.range" option 
            Then I should see "blood.sugar.target.range.title"
            And I should see "back" button
            And I should see "below.range" field
            
            When I tap on "below.range.button" field
            And I select "value.between.90.and.180" in "below.range" field
            Then I should see "90" in "below.range" field
            When I tap on "back" button
            Then I should see "more.menu" screen  

    @Progress
     Scenario Outline:Entries in hypo,below,inrange and above
            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.progress" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "<entry.bloodsugar>" into "blood.sugar.mg.dl" field
            Then I should see "<entry.bloodsugar>" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            And I wait for "2" seconds
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
      Scenario: Entries in hypo,below,inrange and above ranges
            When I wait for recording
            And I tap on "progress.icon"
            Then I should see "progress" screen
            ##And I should see "circular.visualization.total.blood.sugar.entries"    #can't automate image
            And I should see "total.entries.no.20" text in progress screen
            And I should see "total.blood.sugar.entries" text in progress screen
            ##And I should see "hypo" option in red(color can't verify)
            And I should see "hypo.text" text in progress screen
            ##And I should see "hypo" is selected by default(In-Range selected by default)
            ##And I should see "below" option  in orange(color can't verify)
            And I should see "below.text" text in progress screen
            ##And I should see "in-range" option  in lightgreen(color can't verify)
            And I should see "in-range.text" text in progress screen
            ##And I should see "above" option  in lightblue(color can't verify)
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

            When I Swipe Down "share.my.data"
            Then I should see "average.mealtime.insulin.dose" text
            ##And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units" text in progress screen
            And I should see "average.long-acting.insulin.dose" text
            ##And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.long-acting.insulin" text in progress screen
            And I should see "average.long-acting.dose.units" text
            And I should see "average.daily.carb.intake" text
            ##And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "average.carb.units" text

  ##-----Add 3 entries each for Mealtime Insulin in hypo range-----
      @Progress
      Scenario Outline:Mealtime entries
            When I tap on "new.entry.icon"
            And I tap on "enter.mealtime.insulin.progress" option
            Then I should see "mealtime.insulin" screen
            When I tap on "units" field
            And I enter "<entry.mealtime>" into "units" field
            Then I should see "<entry.mealtime>" in "units" field
            When I tap on "save" button
            And I wait for "2" seconds
            Then I should see "progress" screen
            Examples:
                  | entry.mealtime |
                  | 10             |
                  | 16             |
                  | 18             |

        
      @Progress
      Scenario:Mealtime entries
            When I tap on "progress.icon"
            Then I should see "progress" screen
            When I Swipe Down "share.my.data"
            Then I should see "average.mealtime.insulin.dose" text
            ##And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units" text in progress screen
            And I should see "average.long-acting.insulin.dose" text
            ##And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.long-acting.insulin" text in progress screen
            And I should see "average.long-acting.dose.units" text
            And I should see "average.daily.carb.intake" text
            ##And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "average.carb.units" text


            When I tap on "logbook.icon" option
            ##choose 10units entry
            And I tap on "mealtime.entry.18" option
            Then I should see "mealtime.screen" screen
            And I should see "back" button
            And I should see "save" button
            And I should see "mark.as.prime.toggle" button 

            When I tap on "mark.as.prime.toggle" button
            And I tap on "save" button
            Then I should see "confirm.new.entry" screen
            When I tap on "yes.its.correct" button
            Then I should see "logbook" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen
            When I Swipe Down "share.my.data"
            Then I should see "average.mealtime.insulin.dose" text
            ##And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units" text 
            And I should see "average.long-acting.insulin.dose" text
            ##And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.long-acting.insulin" text in progress screen
            And I should see "average.long-acting.dose.units" text
            And I should see "average.daily.carb.intake" text
            ##And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "average.carb.units" text


         ##-----Add 3 entries each for Long Acting Insulin in hypo range-----
      @Progress
      Scenario Outline:Longacting entries
            When I tap on "new.entry.icon"
            And I tap on "enter.long-acting.insulin.option"
            Then I should see "long-acting.insulin" screen
            When I tap on "longacting.units" field
            And I enter "<entry.longacting>" into "longacting.units" field
            Then I should see "<entry.longacting>" in "longacting.units" field
            When I tap on "save" button
            And I wait for "2" seconds
            Then I should see "progress" screen

            Examples:
                  | entry.longacting |
                  | 10               |
                  | 15               |
                  | 22               |
       

      @Progress
      Scenario: Longacting entries
            When I tap on "progress.icon"
            Then I should see "progress" screen

            When I Swipe Down "share.my.data"
            Then I should see "average.mealtime.insulin.dose" text
            ##And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units" text
            And I should see "average.long-acting.insulin.dose" text
            ##And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.long-acting.insulin" text in progress screen
            And I should see "average.long-acting.dose.units" text
            And I should see "average.daily.carb.intake" text
            ##And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "average.carb.units" text


            When I tap on "logbook.icon" option
            And I tap on "longacting.entry.15" option
            #choose 15units entry
            Then I should see "longacting.screen" screen
            And I should see "back" button
            And I should see "save" button
            And I should see "mark.as.prime.toggle" button 

            When I tap on "mark.as.prime.toggle" button
            And I tap on "save" button
            Then I should see "confirm.new.entry" screen
            And I should see "is.this.information.correct" text
            When I tap on "yes.its.correct" button
            Then I should see "logbook" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen
            When I Swipe Down "share.my.data"
            Then I should see "average.mealtime.insulin.dose" text
            ##And I should see "average.mealtime.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units" text
            And I should see "average.long-acting.insulin.dose" text
            ##And I should see "average.long-acting.insulin.dose.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.long-acting.insulin" text in progress screen
            And I should see "average.long-acting.dose.units" text
            And I should see "average.daily.carb.intake" text
            ##And I should see "average.daily.carb.intake.icon" icon in progress screen(image can't verify)
            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "average.carb.units" text


      ##-----Add 3 entries each for Enter Carb Intake in hypo range-----
       
      @Progress
      Scenario Outline: Carb intake entries
            When I tap on "progress.icon"
            And I tap on "new.entry.icon"
            And I tap on "enter.carbs" option
            Then I should see "carb.intake" screen
            When I tap on "grams" field
            And I enter "<entry.carbs>" into "grams" field
            Then I should see "<entry.carbs>" in "grams" field
            When I tap on "save" button
            And I hide device keyboard
            Then I should see "progress" screen
            Examples:
                  | entry.carbs |
                  | 13          |
                  | 17          |
                  | 18          |
       
      @Progress
      Scenario: Carb intake entries
            When I tap on "progress.icon"
            And I Swipe Down till "share.my.data" in "progress.screen"
            Then I should see "average.mealtime.insulin.dose" text
            ##And I should see "average.mealtime.insulin.dose.icon" icon in progress screen
            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units" text
            And I should see "average.long-acting.insulin.dose" text
            ##And I should see "average.long-acting.insulin.dose.icon" icon in progress screen
            And I should see "total.doses.long-acting.insulin" text in progress screen
            And I should see "average.long-acting.dose.units" text
            And I should see "average.daily.carb.intake" text
            ##And I should see "average.daily.carb.intake.icon" icon in progress screen
            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "average.carb.units" text


      @Progress
      Scenario Outline:Carb intake entries in high range
            When I tap on "new.entry.icon"
            And I tap on "enter.carbs" option
            Then I should see "carb.intake" screen
            When I tap on "grams" field
            And I enter "<entry.carbs>" into "grams" field
            Then I should see "<entry.carbs>" in "grams" field
            When I tap on "save" button
            And I hide device keyboard
            Then I should see "progress" screen
            Examples:
                  | entry.carbs |
                  | 120         |
                  | 150         |
                  | 200         |
                  
      @Progress
      Scenario: Visualization of entries in highrange
            When I tap on "progress.icon"
            Then I should see "progress" screen
            When I Swipe Down "share.my.data"

            Then I should see "average.mealtime.insulin.dose" text
            ##And I should see "average.mealtime.insulin.dose.icon" icon in progress screen
            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units"
            And I should see "average.long-acting.insulin.dose" text
            ##And I should see "average.long-acting.insulin.dose.icon" icon in progress screen
            And I should see "total.doses.long-acting.insulin" text in progress screen
            And I should see "average.long-acting.dose.units" text
            And I should see "average.daily.carb.intake" text
            ##And I should see "average.daily.carb.intake.icon" icon in progress screen
            And I should see "total.doses.carb.intake" text in progress screen
            And I should see "average.carb.units" text
            
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
            And I tap on "login.and.security.option"
            And I tap on "logout" button
            And I wait for recording
            Then I should see "login.to.your.account" screen

        
 @Dataverification
 Scenario: PROGRESS MENU– PROGRESS VIEW – DATE VERIFICATION


      # PRE-CONDITIONS: 

      # Make sure that the iOS/Android device is connected to the internet.
      # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
      # Make sure that the user is registered successfully on MMA App as per section 6.2. 
      # Make sure that the user has navigated till Home screen as per section 6.4.
      # The current date has been assumed as June 12, 2018.
      # Make sure that there is a blood sugar entry in “Logbook” as per section 6.5. 
      # Make sure that in More Menu “Blood Sugar Target Range” is set below range value as 90 and above range value as 180.

            Given I launch the Madelyne application
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
		When I enter "emailaddress1" into "emailaddress" field
		And I enter "password" into "password" field
		And I tap "next" button
		Then I should see "verify.email" screen
		And I Verify "verify.email" text
		When I should connect to email for registration verification
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
    
            When I tap on "more" option
            Then I should see "more.menu" screen          
            When I tap on "blood.sugar.target.range" option 

            Then I should see "blood.sugar.target.range.title"
            And I should see "back" button
            And I should see "below.range" field
            
            When I tap on "below.range.button" field
            ##And I should see "below.range"
            And I clear "below.range" field
            And I enter "value.between.90.and.180" into "below.range" field
            Then I should see "90" in "below.range" field
            When I tap on "save" button
            Then I should see "more.menu" screen  

            When I tap on "new.entry.icon" 
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "120" into "blood.sugar.mg.dl" field
            Then I should see "120" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            And I tap on "progress.icon"
            Then I should see "progress" screen
       
            ## When I tap on "progress.icon"
            ## Then I should see "progress" screen
            ## When I navigate to device settings
            ## And I change the date to more than 90 days from present
            ## Then I should see date in device is changed
            ## And I should see date in "madelyne.mma" is changed
            ## When I navigate to "madelyne.mma"
            ## Then I should see "progress" screen

            ## When I set Date from settings
            ## And I select settingsdate
            ## And I select settings "date.settings"
            ##Then I should see "progress" screen

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "64" into "blood.sugar.mg.dl" field
            Then I should see "64" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            Then I should see "progress" screen

            When I tap on "progress.icon"
            And I tap on "30d" option
            Then I should see "date.range.for.30.days"

            When I tap on "90d" option
            Then I should see "date.range.for.90.days"
            
            When I tap on "7d" option
            Then I should see "date.range.for.7.days"

            When I tap on "14d" option
            Then I should see "date.range.for.14.days"

            When I tap on "logbook.icon" 
            And I tap on "blood.sugar.entry.120" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "logbook.icon" 
            And I tap on "blood.sugar.entry.64" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            Then I should see "logbook" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "70" into "blood.sugar.mg.dl" field
            Then I should see "70" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            Then I should see "progress" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen

            ##And I should see "circular.visualization.total.blood.sugar.entries"  #can't automate image
            And I should see "total.blood.sugar.entries" text in progress screen
            And I should see "percentage.indicator.above.hypo" text in progress screen
            And I should see "percentage.indicator.above.below.option" text in progress screen
            And I should see "percentage.indicator.above.in-range.option" text in progress screen
            And I should see "percentage.indicator.above.above.option" text in progress screen
            
            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "71" into "blood.sugar.mg.dl" field
            Then I should see "71" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            Then I should see "progress" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen

            ##And I should see "circular.visualization.total.blood.sugar.entries"  #can't automate image
            And I should see "total.blood.sugar.entries" text in progress screen
            And I should see "percentage.indicator.above.hypo" text in progress screen
            And I should see "percentage.indicator.above.below.option" text in progress screen
            And I should see "percentage.indicator.above.in-range.option" text in progress screen
            And I should see "percentage.indicator.above.above.option" text in progress screen

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "89" into "blood.sugar.mg.dl" field
            Then I should see "89" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            Then I should see "progress" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen

            ##And I should see "circular.visualization.total.blood.sugar.entries"  #can't automate image
            And I should see "total.blood.sugar.entries" text in progress screen
            And I should see "percentage.indicator.above.hypo" text in progress screen
            And I should see "percentage.indicator.above.below.option" text in progress screen
            And I should see "percentage.indicator.above.in-range.option" text in progress screen
            And I should see "percentage.indicator.above.above.option" text in progress screen

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "90" into "blood.sugar.mg.dl" field
            Then I should see "90" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            Then I should see "progress" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen

            ##And I should see "circular.visualization.total.blood.sugar.entries"  #can't automate image
            And I should see "total.blood.sugar.entries" text in progress screen
            And I should see "percentage.indicator.above.hypo" text in progress screen
            And I should see "percentage.indicator.above.below.option" text in progress screen
            And I should see "percentage.indicator.above.in-range.option" text in progress screen
            And I should see "percentage.indicator.above.above.option" text in progress screen

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "180" into "blood.sugar.mg.dl" field
            Then I should see "180" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            Then I should see "progress" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen

            ##And I should see "circular.visualization.total.blood.sugar.entries"  #can't automate image
            And I should see "total.blood.sugar.entries" text in progress screen
            And I should see "percentage.indicator.above.hypo" text in progress screen
            And I should see "percentage.indicator.above.below.option" text in progress screen
            And I should see "percentage.indicator.above.in-range.option" text in progress screen
            And I should see "percentage.indicator.above.above.option" text in progress screen

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.new.entry" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "181" into "blood.sugar.mg.dl" field
            Then I should see "181" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            Then I should see "progress" screen

            When I tap on "progress.icon"
            Then I should see "progress" screen

            ##And I should see "circular.visualization.total.blood.sugar.entries"   #can't automate image
            And I should see "total.blood.sugar.entries" text in progress screen
            And I should see "percentage.indicator.above.hypo" text in progress screen
            And I should see "percentage.indicator.above.below.option" text in progress screen
            And I should see "percentage.indicator.above.in-range.option" text in progress screen
            And I should see "percentage.indicator.above.above.option" text in progress screen

            When I tap on "more" option
            And I tap on "login.and.security.option"
            And I tap on "logout" button
            And I wait for recording
            Then I should see "login.to.your.account" screen


      @RegressionTest
      Scenario:Verfication of New entry screen
            When I tap on "more" option
            Then I should see "more.menu" screen
            When I tap on "blood.sugar.target.range" option

            Then I should see "blood.sugar.target.range.title"
            And I should see "back" button
            And I should see "below.range" field

            When I tap on "below.range" field
            And I clear "below.range" field
            And I enter "value.between.90.and.180" into "below.range" field
            Then I should see "90" in "below.range" field
            When I tap on "save" button
            Then I should see "more.menu" screen

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.progress" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "120" into "blood.sugar.mg.dl" field
            Then I should see "120" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            And I tap on "progress.icon"
            Then I should see "progress" screen

            When I Swipe Down "share.my.data"
            And I tap on "share.my.data" button
            Then I should see "quick.share.mytempo.data" button
            And I should see "create.mytempo.report" button
            When I tap on "create.mytempo.report" button

            Then I should see "export.tempo.data" pop-up
            And I should see "are.you.sure.export.data" text
            And I should see "cancel" option
            And I should see "export" option
            When I tap on "cancel" option
            Then I should see "progress" screen

            When I tap on "logbook.icon"
            And I tap on "blood.sugar.entry.120" option
            And I tap "delete.entry" button
            Then I should see "confirm.delete.entry" pop-up
            And I should see "ok.popup" button
            And I should see "cancel.in.popup" button
            When I tap "ok.popup" button
            And I wait for "3" seconds
            Then I should see "logbook" screen

      @RegressionTest
      Scenario Outline:Blood sugar entries in hypo,below,inrange and above

            When I tap on "new.entry.icon"
            And I tap on "enter.blood.sugar.progress" option
            Then I should see "blood.sugar" screen
            When I tap on "blood.sugar.mg.dl" field
            And I enter "<entry.bloodsugar>" into "blood.sugar.mg.dl" field
            Then I should see "<entry.bloodsugar>" in "blood.sugar.mg.dl" field
            When I tap on "save" button
            And I wait for "3" seconds
            Then I should see "logbook" screen
            Examples:
                  | entry.bloodsugar |
                  | 20               |
                  | 72               |
                  | 100              |
                  | 200              |


      @RegressionTest
      Scenario Outline:Mealtime entries
            When I tap on "new.entry.icon"
            And I tap on "enter.mealtime.insulin.progress" option
            Then I should see "mealtime.insulin" screen
            When I tap on "units" field
            And I enter "<entry.mealtime>" into "units" field
            Then I should see "<entry.mealtime>" in "units" field
            When I tap on "save" button
            And I wait for "3" seconds
            Then I should see "logbook" screen
            Examples:
                  | entry.mealtime |
                  | 10             |
                  | 16             |

      @RegressionTest
      Scenario:Editing meal time entry in logbook
            When I tap on "logbook.icon" option
            #choose 10units entry
            And I tap on "mealtime.entry.16" option
            Then I should see "mealtime.screen" screen
            And I should see "back" button
            And I should see "save" button
            And I should see "mark.as.prime.toggle" button

            When I tap on "mark.as.prime.toggle" button
            And I tap on "save" button
            Then I should see "confirm.new.entry" screen
            When I tap on "yes.its.correct" button
            And I wait for "3" seconds
            Then I should see "logbook" screen

      @RegressionTest
      Scenario Outline:Longacting entries
            When I tap on "new.entry.icon"
            And I tap on "enter.long-acting.insulin.option"
            Then I should see "long-acting.insulin" screen
            When I tap on "longacting.units" field
            And I enter "<entry.longacting>" into "longacting.units" field
            Then I should see "<entry.longacting>" in "longacting.units" field
            When I tap on "save" button
            And I wait for "3" seconds
            Then I should see "logbook" screen

            Examples:
                  | entry.longacting |
                  | 10               |
                  | 15               |

      @RegressionTest
      Scenario:Editing longacting entry in logbook

            When I tap on "logbook.icon" option
            And I tap on "longacting.entry.15" option
            #choose 15units entry
            Then I should see "longacting.screen" screen
            And I should see "back" button
            And I should see "save" button
            And I should see "mark.as.prime.toggle" button

            When I tap on "mark.as.prime.toggle" button
            And I tap on "save" button
            Then I should see "confirm.new.entry" screen
            When I tap on "yes.its.correct" button
            Then I should see "logbook" screen


      @RegressionTest
      Scenario Outline:Carb intake entries
            When I tap on "progress.icon"
            And I tap on "new.entry.icon"
            And I tap on "enter.carbs" option
            Then I should see "carb.intake" screen
            When I tap on "grams" field
            And I enter "<entry.carbs>" into "grams" field
            Then I should see "<entry.carbs>" in "grams" field
            When I tap on "save" button
            And I hide device keyboard
            Then I should see "progress" screen
            Examples:
                  | entry.carbs |
                  | 13          |
                  | 200         |


      @RegressionTest
      Scenario:Visualization of entries
            When I tap on "progress.icon"
            Then I should see "progress" screen
            When I tap on "i.progress" icon
            Then I should see "more.information" screen
            And I should see "close" button
            And I should see "more.information.title"
            And I should see "subtitle-blood.sugar.target.range"
            And I should see "more.information.text"
            When I tap on "close" button
            Then I should see "progress" screen
            When I tap on "14d" option
            Then I should see "date.range.for.14.days"
            When I tap on "90d" option
            Then I should see "date.range.for.90.days"
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

            When I Swipe Down "share.my.data"
            Then I should see "average.mealtime.insulin.dose" text

            And I should see "total.doses.mealtimeinsulin" text in progress screen
            And I should see "average.mealtime.dose.units" text in progress screen
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
            And I wait for recording
            Then I should see "login.to.your.account" screen


# @ProgressOffline
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

#          When I tap on "new.entry.icon"
#         And I tap on "enter.blood.sugar.new.entry" option
#         Then I should see "blood.sugar" screen
#         When I tap on "blood.sugar.mg.dl" field
#         And I enter "120" into "blood.sugar.mg.dl" field
#         Then I should see "120" in "blood.sugar.mg.dl" field
#         When I tap on "save" button

# #----------Add 3 entries in Mealtime Insulin------------

#         When I tap on "new.entry.icon"
#         And I tap on "enter.mealtime.insulin.newentry" option
#         Then I should see "mealtime.insulin" screen
#         When I tap on "units" field
#         And I enter "10" into "units" field
#         Then I should see "10" in "units" field
#         When I tap on "save" button
#         Then I should see "progress" screen

#         When I tap on "new.entry.icon"
#         And I tap on "enter.mealtime.insulin.newentry" option
#         Then I should see "mealtime.insulin" screen
#         When I tap on "units" field
#         And I enter "14" into "units" field
#         Then I should see "14" in "units" field
#         When I tap on "save" button
#         Then I should see "progress" screen
   
#         When I tap on "new.entry.icon"
#         And I tap on "enter.mealtime.insulin.newentry" option
#         Then I should see "mealtime.insulin" screen
#         When I tap on "units" field
#         And I enter "18" into "units" field
#         Then I should see "18" in "units" field
#         When I tap on "save" button
#         Then I should see "progress" screen

#         And I Swipe Down till "share.my.data" in "progress.screen"
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
#         And I Swipe Down till "share.my.data" in "progress.screen"
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



        