Feature: Madelyne-MMA iOS Tempo InsightsTM Share – More Menu -  Software Test Protocol

    @Precondition
    Scenario: Steps till home screen
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

    @TempoInsightsTMShareMoreMenu
    Scenario: Tempo Insights From More Menu Screen

        # PRE-CONDITIONS:

        # Make sure that the iOS/Android device is connected to the internet.
        # Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
        # Make sure that the user is registered successfully on MMA App as per section 6.2.
        # Make sure that the user has navigated till home screen as per section 6.4.

        When I tap on "more" option
        Then I should see "more.menu" screen
        When I swipe down
        And I tap on "tempo.insights.share" option
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        And I should see "generate.new.code" button is disabled

        When I wait for recording
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        And I should see "this.code.will.expire.in.10.hours" text
        And I should see "generate.new.code" button is enabled

        # the following 4 steps cannot be automated

        # When I set device time to 10 hours ahead  ##(code generation time+10hrs)
        # Then I should see "tempo.insights.share.screen" screen
        # And I should see "code.field.tempo.insights.share.screen" field is disabled with grey color
        # And I should see "generate.new.code" button is enabled

        When I tap on "generate.new.code" button
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        And I should see "generate.new.code" button is disabled

        When I wait for recording
        Then I should see "tempo.insights.share.screen" screen
        And I should see "code.field.tempo.insights.share.screen" field is enabled
        And I should see "code.field.tempo.insights.share.screen" text
        And I should see "generate.new.code" button is enabled

        When I tap on "back" button
        And I tap on "tempo.insights.share" option
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        ##code1
        And I should see "generate.new.code" button is enabled

        When I tap on "generate.new.code" button
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        When I tap on "back" button
        Then I should see "more"
    ##code2


    #######################################################################################################
    ################--------- Internet Related and System Error Related Scenarios -------##################
    #######################################################################################################
    # Scenario: Quick Share – More Menu – Network errors-ios

    # PRE-CONDITIONS:

    ## Make sure that the iOS/Android device is connected to the Wi-Fi.
    ## Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
    ## Make sure that the user is registered successfully on MMA App as per section 6.2.
    ## Make sure that the user has navigated till home screen as per section 6.4.

    #     When I turn on cellular data
    #     And I tap on "more" option
    #     Then I should see "more.menu" screen
    #     And I tap on "tempo.insights.share" option
        # And I tap on "tempo.insights.share" option
        # Then I should see "tempo.insights.share" screen # remove while executing
        # Then I should see "tempo.insights.share.screen"
    #     Then I should see "tempo.insights.share.screen" screen

    #     When I turn off wifi in device settings
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "no.internet.connection" pop-up
    #     And I should see "make.sure.device.is.connected.to.internet" text
    #     And I should see "ok.in.popup" button

    #     When I tap on "ok.in.popup" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     Then I should see "code.field.tempo.insights.share.screen" field is disabled
    #     And I should see "triple.hyphen" in "code.field.tempo.insights.share.screen" field
    #     And I should see "generate.new.code" button

    #     When I turn on wifi in device settings
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "code.field.tempo.insights.share.screen" text

    #     When I turn on cellular data for device
    #     And I turn off cellular data for mytempo application
    #     And I turn off wifi in device settings
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "no.internet.connection" pop-up
    #     And I should see "make.sure.device.is.connected.to.internet" text
    #     And I should see "ok.in.popup" button

    #     When I tap on "ok.in.popup" button
    #     And I turn on cellular data for mytempo application
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "code.field.tempo.insights.share.screen" text

    #     When I turn on cellular data for device
    #     And I turn off cellular data for mytempo application
    #     And I turn on wifi in device settings
    #     And I go away from wifi
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "no.internet.connection" pop-up
    #     And I should see "make.sure.device.is.connected.to.internet" text
    #     And I should see "ok.in.popup" button

    #     When I tap on "ok.in.popup" button
    #     And I turn on cellular data for mytempo application
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "code.field.tempo.insights.share.screen" text

    #     When I tap on "more" option
    #     Then I should see "more.menu" screen
    #     When I tap on "tempo.insights.share" option
    #     Then I should see "tempo.insights.share.screen" screen
    #     When I turn off wifi in device settings
    #     And I turn off cellular data for device
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "cellular.data.turned.off" pop-up
    #     And I should see "turn.on.cellular.data.for.app" text
    #     And I should see "ok.in.popup" button

    #     When I tap on "ok.in.popup" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     Then I should see "code.field.tempo.insights.share.screen" field is disabled
    #     And I should see "triple.hyphen" in "code.field.tempo.insights.share.screen" field
    #     And I should see "generate.new.code" button

    #     When I turn on wifi in device settings
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "code.field.tempo.insights.share.screen" text

    ###########################################################################################################
    # Scenario: Quick Share – More Menu – System Error

    ## PRE-CONDITIONS:

    ## Make sure that the iOS/Android device is connected to the internet.
    ## Make sure that the Madelyne MMA is installed on the iOS/Android device as per section 6.1.
    ## Make sure that the user is registered successfully on MMA App as per section 6.2.
    ## Make sure that the user has navigated till home screen as per section 6.4.


    #     When I tap on "more" option
    #     And I tap on "tempo.insights.share" option
    #     And system error need to be generated with developer's help
    #     ##system error has to be generated with developer's help
    #     And I tap on "generate.new.code" button
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" field is disabled
    #     And I should see "triple.hyphen" in "code.field.tempo.insights.share.screen" field
    #     And I should see "unable.to.generate.share.code" text
    #     And I should see "generate.new.code" button

    #     When I tap on "generate.new.code" button
    #     ##system error needs to be cleared with developer's help
    #     Then I should see "tempo.insights.share.screen" screen
    #     And I should see "code.field.tempo.insights.share.screen" text
    #     And I should see "generate.new.code" button is disabled
    #     When I wait for recording
    #     Then I should see "code.field.tempo.insights.share.screen" text

    ##############################################################################################################

    @SmokeTest
    Scenario: Smoke Test for Tempo Insights Share More Menu
        When I tap on "more" option
        And I tap on "tempo.insights.share" option
        Then I should see "tempo.insights.share" screen
        And I should see "to.share.your.data" text
        And I should see "url.tempoinsights.com" text
        And I should see "enter.secure.share.code" text
        And I should see "this.code.will.expire.in.10.hours" text

        When I tap on "generate.new.code" button
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        And I should see "generate.new.code" button is enabled

        # the following 4 steps cannot be automated

        # When I set device time to 10 hours ahead  ##(code generation time+10hrs)
        # Then I should see "tempo.insights.share.screen" screen
        # And I should see "code.field.tempo.insights.share.screen" field is disabled with grey color
        # And I should see "generate.new.code" button is enabled

        When I tap on "generate.new.code" button
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        And I should see "generate.new.code" button is enabled

        When I tap on "back" button
        Then I should see "more"

    @RegressionTest
    Scenario: Regression Test for Quick Share From More Menu Screen
        When I tap on "more" option
        Then I should see "more.menu" screen
        And I tap on "tempo.insights.share" option
        Then I should see "tempo.insights.share" screen
        And I should see "back" button
        And I should see "to.share.your.data" text
        And I should see "url.tempoinsights.com" text
        And I should see "this.code.will.expire.in.10.hours" text
        And I should see "generate.new.code" button is enabled
        And I should see "code.field.tempo.insights.share.screen" text
        # And I should see "temporary.generated.code" in "code.field.tempo.insights.share.screen" field         #######Code changing dynamically-cannot be automated

        When I tap on "generate.new.code" button
        Then I should see "code.field.tempo.insights.share.screen" text
        And I should see "generate.new.code" button is enabled
        # And I should see "temporary.generated.code" in "code.field.tempo.insights.share.screen" field          #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        When I tap on "back" button
        And I tap on "tempo.insights.share" option
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        # And I should see "temporary.generated.code1" in "code.field.tempo.insights.share.screen" field          #######Code changing dynamically-cannot be automated
        And I should see "generate.new.code" button is enabled

        When I tap on "generate.new.code" button
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        # And I should see "temporary.generated.code2" in "code.field.tempo.insights.share.screen" field           #######Code changing dynamically-cannot be automated

        # the following 4 steps cannot be automated

        # When I set device time to 10 hours ahead  ##(code generation time+10hrs)
        # Then I should see "tempo.insights.share.screen" screen
        # And I should see "code.field.tempo.insights.share.screen" field is disabled with grey color
        # And I should see "generate.new.code" button is enabled
        When I tap on "generate.new.code" button
        Then I should see "tempo.insights.share" screen
        And I should see "code.field.tempo.insights.share.screen" text
        And I should see "generate.new.code" button is disabled

        When I tap on "back" button
        Then I should see "more"

    @Precondition
    Scenario: Loging out of Application
        When I tap on "more" option
        And I tap on "login.and.security.option"
        And I tap on "logout" button
        Then I should see "login.to.your.account" screen

