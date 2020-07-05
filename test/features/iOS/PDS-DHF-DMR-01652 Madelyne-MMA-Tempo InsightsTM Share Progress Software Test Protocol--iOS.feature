Feature: MADELYNE Tempo InsightsTM Share – Progress -  Software Test Protocol
    @Precondition
    Scenario: Precondition
        # PRE-CONDITIONS:
        # Make sure that the iOS/Android device is connected to the internet.
        # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
        # Make sure that the user is registered successfully on MMA App as per section 6.2.
        # Make sure that the user has navigated till home screen as per section 6.4.
        # Make sure that user having entries of Blood Sugar, Mealtime Insulin, Long Acting Insulin, Crabs and Health Factors.
        # Make sure that user has an activated HCP code in Data Sharing screen.

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
        Then I should see "turnon.your.bluetooth" pop-up
        When I tap on "not.now.button"
        Then I should see "home" selected

        When I tap on "new.entry.icon"
        And I tap on "enter.blood.sugar.newentry" option
        Then I should see "blood.sugar" screen
        When I tap on "blood.sugar.mg.dl" field
        And I enter "200" into "blood.sugar.mg.dl" field
        Then I should see "200" in "blood.sugar.mg.dl" field
        When I tap on "save" button
        And I tap on "new.entry.icon"
        And I tap on "enter.mealtime.insulin.new.entry" option
        Then I should see "mealtime.insulin" screen
        When I tap on "units" field
        And I enter "16" into "units" field
        Then I should see "16" in "units" field
        When I tap on "save" button
        And I tap on "new.entry.icon"
        And I tap on "enter.long.acting.insulin.new.entry" option
        Then I should see "long.acting.insulin" screen
        When I tap on "units" field
        And I enter "15" into "units" field
        Then I should see "15" in "units" field
        When I tap on "save" button
        And I tap on "new.entry.icon"
        And I tap on "enter.carb.intake.new.entry" option
        Then I should see "carb.intake" screen
        When I tap on "carb.intake.grams" field
        And I enter "200" into "carb.intake.grams" field
        Then I should see "200" in "carb.intake.grams" field
        When I tap on "save" button
        And I tap on "new.entry.icon"
        And I tap on "enter.health.factors.new.entry" option
        Then I should see "health.factors" screen
        When I tap on "activity.checkbox"
        And I tap on "save" button

    @TempoInsightsTMShareProgress
    Scenario: R2-TC- : Quick Share from Progress Screen

        When I tap on "progress.icon"
        And I swipe down
        And I tap on "share.my.data" button
        Then I should see "action.sheet"
        And I should see "tempo.insights.share.button" button
        And I should see "create.my.tempo.report" button
        And I should see "cancel" button

        When I tap on "cancel" button
        And I tap on "share.my.data" button
        Then I should see "tempo.insights.share.button" button
        When I tap on "tempo.insights.share.button"
        Then I should see "tempo.insights.share.screen"
        And I should see "done" button
         # And I should see "temporary.generated.code" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        When I wait for recording
        Then I should see "tempo.insights.share.screen"
        And I should see "done" button
        # And I should see "temporary.generated.code" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        When I tap on "generate.new.code" button
         # Then I should see "tempo.insights.share" screen # remove while executing
        Then I should see "tempo.insights.share.screen"
        And I should see "generate.new.code" button is disabled

        When I wait for recording
        Then I should see "tempo.insights.share.screen"
        And I should see "code.field.tempo.insights.share.screen" field is enabled
        # And I should see "temporary.generated.code.1" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        When I tap on "done" button
        Then I should see "progress" screen
        And I swipe down
        And I tap on "share.my.data" button
        And I should see "tempo.insights.share.button" button
        When I tap on "tempo.insights.share.button"
        Then I should see "tempo.insights.share.screen"
        And I should see "generate.new.code" button is enabled

        When I tap on "generate.new.code" button
        Then I should see "tempo.insights.share.screen"
        # And I should see "temporary.generated.code.3" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
    
        ############# the following 4 steps cannot be automated ###############
        # # When I put app in background 
        # # And I set device time to 9 hours 50 minutes ahead
        # # And I launch app again
        # #  # Then I should see "tempo.insights.share" screen # remove while executing
        # # Then I should see "tempo.insights.share.screen"
        # # And I should see "temporary.generated.code.3" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        # # When I set device time to 10 hours ahead  ##(code generation time+10hrs)
        # # Then I should see "tempo.insights.share.screen" screen
        # # And I should see "code.field.tempo.insights.share.screen" field is disabled with grey color
        # # And I should see "generate.new.code" button is enabled
        ########################################################################
        And I should see "done" button
        And I should see "generate.new.code" button is enabled

        When I tap on "done" button
        Then I should see "progress" screen

    @SmokeTest
    Scenario: R2-TC- : Quick Share Smoke Test

        When I tap on "progress.icon"
        And I swipe down
        And I tap on "share.my.data" button
        Then I should see "action.sheet"
        And I should see "tempo.insights.share.button" button

        When I tap on "tempo.insights.share.button"
        Then I should see "tempo.insights.share.screen"
        And I should see "done" button
        # And I should see "temporary.generated.code" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        When I tap on "generate.new.code" button
        Then I should see "generate.new.code" button is disabled
        # And I should see "temporary.generated.code.1" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        # the following 4 steps cannot be automated
        # When I set device time to 10 hours ahead  ##(code generation time+10hrs)
        # Then I should see "tempo.insights.share.screen" screen
        # And I should see "code.field.tempo.insights.share.screen" field is disabled with grey color
        # And I should see "generate.new.code" button is enabled
         # Then I should see "tempo.insights.share" screen # remove while executing
        Then I should see "tempo.insights.share.screen"
        And I should see "generate.new.code" button is enabled

        When I tap on "done" button
        Then I should see "progress" screen

    @RegressionTest
    Scenario: R2-TC- : Quick Share Regression Test

        When I tap on "progress.icon"
        And I swipe down
        And I tap on "share.my.data" button
        Then I should see "action.sheet"
        And I should see "tempo.insights.share.button" button
        And I should see "create.my.tempo.report" button
        And I should see "cancel" button
        When I tap on "cancel" button
        And I tap on "share.my.data" button
        And I tap on "tempo.insights.share.button"
        Then I should see "tempo.insights.share.screen"
        And I should see "done" button
        # And I should see "temporary.generated.code" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        When I tap on "generate.new.code" button
        Then I should see "generate.new.code" button is disabled
        Then I should see "tempo.insights.share.screen"
        # And I should see "temporary.generated.code" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        # the following 4 steps cannot be automated
        # When I set device time to 10 hours ahead  ##(code generation time+10hrs)
        # Then I should see "tempo.insights.share.screen" screen
        # And I should see "code.field.tempo.insights.share.screen" field is disabled with grey color
        # And I should see "generate.new.code" button is enabled
        Then I should see "tempo.insights.share.screen"
        # And I should see "temporary.generated.code" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled
        When I tap on "done" button
        Then I should see "progress" screen

    @Precondition
    Scenario: Loging out of Application
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account" screen

######################################################################################
########--------- Internet Related and System Error Related Scenarios -------#########
######################################################################################
# # Scenario:R2-TC- : Quick Share – Progress – Network Error - iOS
# # # PRE-CONDITIONS:
# # # Make sure that the iOS/ device is connected to the Wi-Fi.
# # # Make sure that the Madelyne MMA is installed on the iOS device as per section 6.1.
# # # Make sure that the user is registered successfully on MMA App as per section 6.2.
# # # Make sure that the user has navigated till home screen as per section 6.4.
# # # Make sure that user having entries of Blood Sugar, Mealtime Insulin, Long Acting Insulin, Crabs and Health Factors.
# # # Make sure that user has an activated HCP code in Data Sharing screen.

# # #-----------------Make sure Wi-Fi signal is not present----------------------#
# # #-----------------Make sure Wi-Fi signal is not present----------------------#
# # #-----------------Tap on “Generate New Code” button----------------------#
# # When I tap on "progress.icon"
# # And I tap on "share.my.data" button
# # And I should see "tempo.insights.share.button" button
# # And I should see "tempo.insights.share.my.tempo.data" button  # remove while executing
# # And I turn off wifi
# # And I tap on "generate.new.code" button
# # Then I should see "tempo.insights.share" screen
# # And I should see "activity.spinner.in.code.field"
# # And I should see "generate.new.code" button is disabled
# # And I should see "no.internet.connection" pop-up
# # And I should see "make.sure.your.device.is.connected" text
# # And I should see "ok" button
# # #------------Tap on “OK” button in popup----#
# # When I tap on "ok" button
# # Then I should see "tempo.insights.share" screen
# # And I should see "code.field.is.deactivated"
# # And I should see "dashes" in "code" field
# # #-------Make sure Wi-Fi signal is present------#
# # When I turn on wifi
# # Then I should see "tempo.insights.share" screen
# # And I should see "activity.spinner.in.code.field"
# # And I should see "generate.new.code" button is disabled
# # And I should see "generated.new.temporary.code.2" in "code" field
# # #----Disable the Wi-Fi in device settings------#
# # #----Enable the Cellular Data in device settings------#
# # #----Make sure Cellular Data signal is not present------#
# # #----Tap on “Generate New Code” button------#
# # When I turn off wifi
# # And I enable cellular data
# # And I disable cellular data signal
# # And I tap on "generate.new.code" button
# # Then I should see "activity.spinner.in.code.field"
# # And I should see "generate.new.code" button is disabled
# # And I should see "no.internet.connection" pop-up
# # And I should see "make.sure.your.device.is.connected" text
# # And I should see "ok" button
# # #-----------Tap on “OK” button in popup-------#
# # #-----------Make sure Cellular Data signal is present-------#
# # When I tap on "ok" button
# # And I enable cellular data signal
# # Then I should see "tempo.insights.share" screen
# # And I should see "activity.spinner.in.code.field"
# # And I should see "generate.new.code" button is disabled
# # And I should see "generated.new.temporary.code.3" in "code" field
# # Scenario:R2-TC- : Quick Share – Progress – Cellular Data is Turned Off - IOS
# # # PRE-CONDITIONS:
# # # Make sure that the iOS/Android device is connected to the internet
# # # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1
# # # Make sure that the user is registered successfully on MMA App as per section 6.2
# # # Make sure that the user has navigated till home screen as per section 6.4
# # #-----------------Disable the Wi-Fi and cellular data in device settings----------------------#
# # #-----------------Tap on “Generate New Code” button----------------------#
# # When I tap on "progress.icon"
# # And I tap on "share.my.data" button
# # And I should see "tempo.insights.share.button" button
# # And I should see "tempo.insights.share.my.tempo.data" button  # remove while executing
# # And I turn off wifi
# # And I disable cellular data signal
# # And I tap on "generate.new.code" button
# # Then I should see "tempo.insights.share" screen
# # And I should see "activity.spinner.in.code.field"
# # And I should see "generate.new.code" button is disabled
# # And I should see "cellular.dat.is.turned.off" pop-up
# # And I should see "you.can.turn.on.cellular.data" text
# # And I should see "settings" button
# # And I should see "ok" button
# # #-------------Tap on “OK” button in popup-------------#
# # When I tap on "ok" button
# # Then I should see "tempo.insights.share" screen
# # And I should see "code.field.is.deactivated"
# # And I should see "dashes" in "code" field
# # #-------Enable internet in device settings------#
# # When I turn on wifi
# # Then I should see "tempo.insights.share" screen
# # And I should see "activity.spinner.in.code.field"
# # And I should see "generate.new.code" button is disabled
# # And I should see "generated.new.temporary.code.4" in "code" field
# # Scenario: R2-TC- : Quick Share – Progress – System Error
# # # PRE-CONDITIONS:
# # # Make sure that the iOS/Android device is connected to the internet
# # # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1
# # # Make sure that the user is registered successfully on MMA App as per section 6.2
# # # Make sure that the user has navigated till home screen as per section 6.4
# # #-----------------Tap on “Generate New Code” button----------------------#
# # When I tap on "progress.icon"
# # And I tap on "share.my.data" button
# # And I should see "tempo.insights.share.button" button
# # And I should see "tempo.insights.share.my.tempo.data" button  # remove while executing
# # Then I should see "tempo.insights.share" screen
# # And I should see "done" button
# # And I should see "to.share.your.data" text
# # And I should see "url.tempoinsights.com" text
# # And I should see "enter.secure.share.code" text
# # And I should see "code.field.tempo.insights.share.screen" text
# # And I should see "this.code.will.expire.in.10.hours" text
# # And I should see "generate.new.code" button is enabled
# # And I tap on "generate.new.code" button
# # Then I should see "tempo.insights.share" screen
# # And I should see "code.field.is.deactivated"
# # And I should see "dashes" in "code" field
# # And I should see "we.are.unable.to.generate.temporary.code" errormessage
# # Then I should see "tempo.insights.share" screen
# # And I should see "activity.spinner.in.code.field"
# # And I should see "generate.new.code" button is disabled
# # And I should see "generated.new.temporary.code.5" in "code" field
######################################################################################
######################################################################################
