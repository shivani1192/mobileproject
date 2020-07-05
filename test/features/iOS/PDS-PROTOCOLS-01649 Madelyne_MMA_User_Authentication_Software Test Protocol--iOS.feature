#---------- SRS Covered MAD10-SYS-2532,MAD10-MMA_SRS-50,MAD10-MMA_SRS-52,MAD10-MMA_SRS-54,MAD10-MMA_SRS-78,MAD10-MMA_SRS-79
#---------- MAD10-MMA_SRS-189,MAD10-MMA_SRS-396,MAD10-MMA_SRS-397,MAD10-MMA_SRS-408,MAD10-MMA_SRS-461,MAD10-MMA_SRS-463,MAD10-MMA_SRS-464
#---------- Version 1
Feature: MADELYNE USER AUTHENTICATION – SOFTWARE TEST PROTOCOL
   @CreatingMail
   Scenario: USER AUTHENTICATION – USER LOGIN - creating unregistered mail
      Given I launch the Madelyne application
      Given I see "welcome.to.tempotm" screen
     
      When I tap on "lets.get.started" button
      Then I should see "terms.and.privacy" screen
      When I tap on "agree.and.continue" button
      Then I should see "create.account" screen
      When I enter "newregistered.email" into "emailaddress" field
      And I enter "newregistered.password" into "password" field
      When I tap on "next" button
      Then I wait for recording
      And I should see "verify.email" screen
      And I terminate the app
      And I relaunch the app again
      And I handle terms and privacy screen
   @SmokeTest
   Scenario:smoketest
      # When I enter "registered.email" into "emailaddress" field
      # And I enter "newregistered.password" into "password" field
      # And I tap on "login" button
      # Then I should see "incorrect.username" pop-up
      # And I should see "wrong.email.or.password" text
      # And I should see "ok" button
      # When I tap on "ok" button
      # Then I should see "login.to.your.account" screen
      # When I relaunch the app again
      # And I handle terms and privacy screen
      # Then I should see "login.to.your.account" screen
      # When I enter "unregistered.email" into "emailaddress" field
      # And I enter "registered.password" into "password" field
      # And I login 15 times
      # When I tap on "login" button
      # Then I should see "incorrect.username" pop-up
      # And I should see "wrong.email.or.password" text
      # And I should see "ok" button
      # When I tap on "ok" button
      Then I should see "login.to.your.account" screen
      When I enter "registered.email.other.device" into "emailaddress" field
      And I enter "registered.password.other.device" into "password" field
      And I tap on "login" button
      Then I should see "you.can.use.one.device" pop-up

      And I should see "using.new.device.means" text
      And I should see "proceed" button
      And I should see Cancel button
      And I tap on "proceed" button
       Then I should see "logging.in.as.diff.user" pop-up
       And I should see "logging.in.as.a.different.user.means" text
      And I should see "proceed" button
      And I should see Cancel button
      When I tap on "proceed" button
      And I wait for "1" minutes
      Then I should see terms and privacy screen
        And I handle turn on bluetooth pop-up
      And I handle Notification pop-up
      And I handle Bluetooth Notification pop-up
   And I handle ok button
      When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
      And I relaunch the app again
      And I handle login to your account screen
      Then I should see "login.to.your.account" screen
   @LoginToAccount
   Scenario:Verfication of Login to your Account Screen
      Given I launch the Madelyne application
      Given I see "welcome.to.tempotm" screen
      Then I Verify "welcome.to.tempotm" text
      When I tap on "i.already.have.an.account" link
      Then I should see "login.to.your.account" screen
      #And I should see "orange.header"                               ############# Not Feasible via Appium Automation Yet#############
      And I should see "back" button
      And I should see "emailaddress" field
      And I should see "password" field
      And I should see "eye" icon
      And I should see "login" button
      And I should see "forgot.password" link
      
   #         #-----Login with unregistered email------
   # # @LoginButton
   # Scenario Outline:Verfication of login button
   #    When I enter "<emailaddress>" into "emailaddress" field
   #    And I enter "<password>" into "password" field
   #    And I should see "login" button is enabled
   #    When I tap on "login" button
   #    Then I should see "incorrect.username" pop-up
   #    And I should see "wrong.email.or.password" text
   #    And I should see "ok" button
   #    When I tap on "ok" button
   #    Then I should see "login.to.your.account" screen
   #    When I clear "emailaddress" field
   #    And I clear "password" field
   #    Examples:
   #       | emailaddress       | password               |
   #       | unregistered.email | registered.password    |
   #       | unregistered.email | newregistered.password |
         # | registered.email   | newregistered.password |

   @LoggingIn
   Scenario:Logging with new email
      When I enter "newregistered.email" into "emailaddress" field
      Then I should see "newregistered.email" in "emailaddress" field
      #-----Login with unregistered password------
      When I clear "password" field
      And I enter "newregistered.password" into "password" field
      And I tap on "login" button
      And I wait "1" minutes
      Then I should see "verify.email" screen
      And I should connect to email for registration verification
      Then I verify email
      And I wait for "25" seconds
      And I should see "personal.information" screen
      # #------Navigate till Home screen-----
      When I enter "first.name" into "first.name" field
        And I enter "last.name" into "last.name" field
        And I tap "date.of.birth" field
        And I select "month"
        And I select "year"
        And I select "date"
        And I wait for recording
        And I tap "done" button
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
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap "bgm.skip" button
         And I relaunch the app
         And I handle Notification pop-up
         And I handle Bluetooth Notification pop-up
            And I handle ok button
       Then I should see "home" screen
      When I tap on "more" icon
      And I swipe down
      And I tap on "login.and.security.option"
      And I handle Logout button
       And I relaunch the app again
     And I handle login to your account screen

     
   # ###################Build issue jira id 1100########################
   # # #-----Login for 20 times-----
   @MultipleLogin
   Scenario:Loging in multiple times
      # When I relaunch the app again
      # And I handle login to your account screen
      # Then I should see "login.to.your.account" screen
      # And I enter "unregistered.email" into "emailaddress" field
      # And I enter "registered.password" into "password" field
      # And I login 15 times
      # When I tap on "login" button
      # Then I should see "incorrect.username" pop-up
      # And I should see "wrong.email.or.password" text
      # And I should see "ok" button
      # When I tap on "ok" button
          When I relaunch the app again
      Then I should see "login.to.your.account" screen
      
      When I enter "newregistered.email" into "emailaddress" field
      And I enter "newregistered.password" into "password" field
      And I tap on "remember.me.toggle" button
      And I tap on "login" button
      And I wait for "1" minutes
      And I handle turn on bluetooth pop-up
           And I handle ok button
      # Then I should see "home" screen
      When I tap on "logbook.icon"
      And I tap on "new.entry.icon"
      And I tap on "enter.blood.sugar.new.entry" button
      Then I should see "blood.sugar" screen
      When I enter "blood.sugar.value" into "blood.sugar.mg.dl" field
      And I tap on "save" button
      Then I should see "logbook.screen"
       When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
      And I relaunch the app again
      And I handle login to your account screen
      
   @OtherDeviceCredentials
   Scenario:Logging in with Other device credentials
      When I enter "registered.email.other.device" into "emailaddress" field
      And I enter "registered.password.other.device" into "password" field
      And I tap on "login" button
      And I wait "1" minutes
      Then I should see "you.can.use.one.device" pop-up
      And I should see "using.new.device.means" text
      And I should see "proceed" button
      And I should see Cancel button
      When I handle Cancel button
      When I enter "registered.email.other.device" into "emailaddress" field
      And I enter "registered.password.other.device" into "password" field
      And I tap on "login" button
      And I wait "1" minutes
      Then I should see "you.can.use.one.device" pop-up
      And I should see "using.new.device.means" text
      And I should see "proceed" button
      And I should see Cancel button
      And I tap on "proceed" button


      Then I should see "logging.in.as.diff.user" pop-up
      Then I should see "logging.in.as.a.different.user.means" text
      And I should see "proceed" button
      And I should see Cancel button
      When I handle Cancel button
      Then I should see "login.to.your.account" screen

      When I enter "registered.email.other.device" into "emailaddress" field
      And I enter "registered.password.other.device" into "password" field
      And I tap on "login" button
       And I tap on "proceed" button
      #  Then I should see terms and privacy screen
       And I handle turn on bluetooth pop-up
            And I handle ok button
      When I tap on "logbook.icon"
      Then I should see "logbook.screen"
      When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
      And I relaunch the app again
      And I handle login to your account screen
      Then I should see "login.to.your.account" screen

    @OtherDeviceCredentials
   Scenario:Enabling and disabling remember toggle button
      When I enter "newregistered.email" into "emailaddress" field
      And I enter "newregistered.password" into "password" field
      # And I tap on "remember.me.toggle" button
      Then I should see "remember.me.toggle" button is enabled
      When I tap on "login" button
      And I tap on "proceed" button
      And I wait "1" minutes
      And I handle turn on bluetooth pop-up
           And I handle ok button
      # Then I should see "home" screen
      When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
      And I relaunch the app again
      And I handle login to your account screen
      And I should see "newregistered.email" in "emailaddress" field
      And I should see "newregistered.password" masked in "password" field
      And I should see "remember.me.toggle" button is enabled
      When I tap on "remember.me.toggle" button
      And I enter "newregistered.email" into "emailaddress" field
      And I enter "newregistered.password" into "password" field
      And I tap on "login" button
      And I wait "1" minutes
      And I handle turn on bluetooth pop-up
           And I handle ok button
      # Then I should see "home" screen
      When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
      And I relaunch the app again
      And I handle login to your account screen
    Then I should see "newregistered.email" in "emailaddress" field
      And I should see "newregistered.password" masked in "password" field
      When I enter "newregistered.email" into "emailaddress" field
      And I enter "newregistered.password" into "password" field
      And I tap on "login" button
      And I wait "1" minutes
      And I handle turn on bluetooth pop-up
           And I handle ok button

      When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
      And I relaunch the app again
      And I handle login to your account screen
      Then I should see "login.to.your.account" screen

     
   @RegressionTest
   Scenario:Regressiontest
   Given I launch the Madelyne application
      Given I see "welcome.to.tempotm" screen
      When I tap on "lets.get.started" button
      Then I should see "terms.and.privacy" screen
      When I tap on "agree.and.continue" button
      Then I should see "create.account" screen
      When I enter "newregistered.email" into "emailaddress" field
      And I enter "newregistered.password" into "password" field
      When I tap on "next" button
     And I wait for "25" seconds
      And I should see "verify.email" screen
      And I terminate the app
      And I relaunch the app again
      And I handle terms and privacy screen
      
      # When I enter "registered.email" into "emailaddress" field
      # And I enter "newregistered.password" into "password" field
      # And I tap on "login" button
      # Then I should see "incorrect.username" pop-up
      # And I should see "wrong.email.or.password" text
      # And I should see "ok" button
      # When I tap on "ok" button
      Then I should see "login.to.your.account" screen
      When I clear "emailaddress" field
      And I enter "newregistered.email" into "emailaddress" field
      Then I should see "newregistered.email" in "emailaddress" field
      When I clear "password" field
      And I enter "newregistered.password" into "password" field
      And I tap on "login" button
      And I wait for "25" seconds
      Then I should see "verify.email" screen
      And I should connect to email for registration verification
      Then I verify email
         And I wait for "25" seconds
      And I should see "personal.information" screen
    When I enter "first.name" into "first.name" field
        And I enter "last.name" into "last.name" field
        And I tap "date.of.birth" field
        And I select "month"
        And I select "year"
        And I select "date"
        And I wait for recording
        And I tap "done" button
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
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap "bgm.skip" button
         And I relaunch the app
         And I handle Notification pop-up
         And I handle Bluetooth Notification pop-up
            And I handle ok button
       Then I should see "home" screen
      When I tap on "more" icon
      And I swipe down
      And I tap on "login.and.security.option"
      And I handle Logout button
      When I relaunch the app again
      And I handle login to your account screen
      Then I should see "login.to.your.account" screen
   #    And I enter "unregistered.email" into "emailaddress" field
   #    And I enter "registered.password" into "password" field
   #    And I login 15 times
   #    When I tap on "login" button
   #   Then I should see "incorrect.username" pop-up
   #    And I should see "wrong.email.or.password" text
   #    And I should see "ok" button
   #    When I tap on "ok" button
   #    Then I should see "login.to.your.account" screen
      
      When I enter "registered.email.other.device" into "emailaddress" field
      And I enter "registered.password.other.device" into "password" field
      And I tap on "login" button
      Then I should see "you.can.use.one.device" pop-up
      And I should see "using.new.device.means" text
      And I should see "proceed" button
      And I should see Cancel button

  And I tap on "proceed" button
      Then I should see "logging.in.as.diff.user" pop-up
        And I should see "logging.in.as.a.different.user.means" text
    
      And I should see "proceed" button
      And I should see Cancel button
      When I tap on "proceed" button
      And I wait for "1" minutes
      Then I should see terms and privacy screen
      And I handle turn on bluetooth pop-up
       And I handle ok button
        Then I should see "home" screen
       When I tap on "logbook.icon"
      And I tap on "new.entry.icon"
      And I tap on "enter.blood.sugar.new.entry" button
      Then I should see "blood.sugar" screen
      When I enter "blood.sugar.value" into "blood.sugar.mg.dl" field
      And I tap on "save" button
       Then I should see "logbook.screen"
      When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
       And I relaunch the app again
      And I handle login to your account screen
      When I enter "newregistered.email" into "emailaddress" field
      And I enter "newregistered.password" into "password" field
      # And I tap on "remember.me.toggle" button
      Then I should see "remember.me.toggle" button is enabled
      When I tap on "login" button
      And I wait for "1" minutes
      Then I should see "logging.in.as.diff.user" pop-up
      And I should see "proceed" button
      And I should see Cancel button
      When I tap on "proceed" button
      And I wait for "1" minutes
       And I handle turn on bluetooth pop-up
        And I handle ok button
      # Then I should see terms and privacy screen
      And I should see "home" screen
      When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
      And I relaunch the app again
      And I handle login to your account screen

      Then I should see "login.to.your.account" screen
      And I should see "newregistered.email" in "emailaddress" field
      And I should see "newregistered.password" masked in "password" field
      And I should see "remember.me.toggle" button is enabled
      When I tap on "remember.me.toggle" button
     And I enter "newregistered.email" into "emailaddress" field
      And I enter "newregistered.password" into "password" field
      And I tap on "login" button
      And I wait "1" minutes
       And I handle turn on bluetooth pop-up
        And I handle ok button
      Then I should see "home" screen

      When I tap on "more" icon
      And I tap on "login.and.security.option"
      And I handle Logout button
      And I relaunch the app again
      And I handle login to your account screen
      Then I should see "login.to.your.account" screen
