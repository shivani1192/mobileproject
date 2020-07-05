Feature:MADELYNE DATA SHARING – HCP – Software Test Protocol
  # pre-condITIons:
  # •	ensure that this protocol should execute in sequence only.
  # •	make sure that the “madelyne mmA” App is installed on Android device.
  # •	make sure that the device is connected to the internet.
  @DataSharing-DoNotConsent
  Scenario:Data Sharing – HCP –  Do Not Consent In Onboarding
    Given I launch the Madelyne application
    Then I should see "welcome.to.tempotm" screen
    When I tap "lets.get.started" button
    And I tap "agree.and.continue" button
    Then I should see "create.account" screen
    When I enter "emailaddress" into "emailaddress" field
    And I enter "password" into "password" field
    And I tap "next" button
    Then I should see "verify.email" screen
    When I should connect to email for registration verification
    Then I verify email
    And I should see "personal.information" screen
    When I enter "first.name" into "first.name" field
    And I enter "last.name" into "last.name" field
    And I tap "date.of.birth" field
    And I select "month"
    And I select "year"
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
    When I enter "hcp.code.5.chars" into "partner.sharing.code.optional" field
    Then I should see "next" button is enabled
    When I clear "partner.sharing.code.optional" field
    And I enter "invalid.hcp.code" into "partner.sharing.code.optional" field
    And I tap "next" button 
    Then I should see "partner.sharing.code.not.found" pop-up
    And I should see "code.could.not.be.found" text
    And I should see "ok.i.understand.popup" button
    When I tap "ok.i.understand.popup" button
    And I enter "special.char.hcp.code" into "partner.sharing.code.optional" field
    Then I should see "enter.code.exactly.as.its.shown" errormessage
    And I should see "next" button is disabled
    When I enter "already.used.hcp.code" into "partner.sharing.code.optional" field
    And I tap "next" button
    # Then I should see "partner.sharing.code.has.already.been.used" pop-up
    # And I should see "code.already.been.used" text
    # And I should see "ok.i.understand.popup" button
    # When I tap "ok.i.understand.popup" button
    Then I should see "code.already.been.used" errormessage
     ####not acccording to protocol acc to build
    # And I tap on "ok.i.understand.popup" button
    ############ --- Network Related ----#######################

    # # When I disable internet
    # # Then I go back to the application
    # # When I tap on "next" button
    # # Then I should see "no.netwrok.connection" text
    # # And I should see "you.need.wifi.or.mobile.netwrok"
    # # And I should see "open.device.settings"
    # # And I should see "cancel" button
    # # When I tap on "cancel" button
    # # And I enable internet
    # # Then I go back to application
    #############################################################

    And I enter "valid.hcp.code" into "partner.sharing.code.optional" field
    And I tap "next" button
    Then I should see "data.sharing.screen"
    And I should see "back" button
    And I should see "you.ve.entered.partner.sharing.code" text
    And I should see "company.name"
    And I should see "consent.to.share.my.data.description" text
    And I should see "agree.and.continue" button
    And I should see "do.not.consent.to.share.data" link
    When I tap "do.not.consent.to.share.data" link
    Then I should see "do.not.consent" pop-up
    And I should see "do.not.consent.with.named.parties" text
    And I should see "cancel.in.popup" button
    And I should see "ok" button
    When I tap "cancel.in.popup" button
    And I tap "do.not.consent.to.share.data" link
    Then I should see "do.not.consent" pop-up
    When I tap "ok" button
    Then I should see "account.setup" screen
    And I should see "nice.work"
    And I should see "your.account.is.all.set.up"
    And I should see "continue" button
    When I tap "continue" button
    Then I should see "tempo.smart" screen
    And I should see "set.up.smart" button
    And I should see "squire.skip" button
    When I tap "squire.skip" button
    Then I should see "connect.blood.sugar.meter" screen
    And I should see "bgm.skip" button
    When I tap "bgm.skip" button
    And I handle Notification pop-up
    And I handle Bluetooth Notification pop-up
    And I relaunch the app
    And I tap on "ok" button
    Then I should see "home" selected
    When I tap on "more" icon
    And I tap on "login.and.security.option"
    And I handle Logout button
    Then I should see "login.to.your.account" screen
  @DataSharing-SkipOnboarding
  Scenario:Data Sharing – HCP – Skip in Onboarding – Continue To More Menu
    Given I launch the Madelyne application
    Then I should see "welcome.to.tempotm" screen
    When I tap "lets.get.started" button
    And I tap "agree.and.continue" button
    Then I should see "create.account" screen
    When I enter "emailaddress1" into "emailaddress" field
    And I enter "password" into "password" field
    And I tap "next" button
    Then I should see "verify.email" screen
    When I should connect to email for registration verification
    Then I verify email
    And I should see "personal.information" screen
    When I enter "first.name" into "first.name" field
    And I enter "last.name" into "last.name" field
    And I tap "date.of.birth" field
    And I select "month"
    And I select "year"
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
    When I tap "i.do.not.have.a.partner.sharing.code" button
    Then I should see "account.setup" screen
    And I should see "nice.work"
    And I should see "your.account.is.all.set.up"
    And I should see "continue" button
    When I tap "continue" button
    Then I should see "tempo.smart" screen
    And I should see "set.up.smart" button
    And I should see "squire.skip" button
    When I tap "squire.skip" button
    Then I should see "connect.blood.sugar.meter" screen
    And I should see "bgm.skip" button
    When I tap "bgm.skip" button
    And I handle Notification pop-up
    And I handle Bluetooth Notification pop-up
    And I relaunch the app
    And I tap on "ok" button
    Then I should see "home" selected
    When I tap "more" option
    Then I should see "data.sharing"
    When I tap "data.sharing" button
    And I wait for "1" minutes
    Then I should see "data.sharing.screen"
    And I should see "back" button
    And I should see "add.code" button
    And I should see "you.are.not.currently.sharing.data" text
    When I tap "back" button
    And I tap "data.sharing" button
    And I wait for "1" minutes
    Then I should see "data.sharing.screen"
    When I tap "add.code" button
    Then I should see "add.code.screen"
    And I should see "cancel" button
    And I should see "submit" button
    And I should see "if.you.recieved.partner.sharing.code" text
    And I should see "partner.sharing.code.optional" field
    When I tap "cancel" button
    Then I should see "data.sharing.screen"
    When I tap "add.code" button
    Then I should see "add.code.screen"
    When I enter "hcp.code.5.chars" into "partner.sharing.code.optional" field
    Then I should see "submit" button is enabled
    When I clear "partner.sharing.code.optional" field
    And I enter "invalid.hcp.code" into "partner.sharing.code.optional" field
    And I tap "submit" button
    Then I should see "code.could.not.be.found" errormessage
     ####not acccording to protocol acc to build
    And I tap on "ok.i.understand.popup" button
    And I enter "special.char.hcp.code" into "partner.sharing.code.optional" field
    Then I should see "enter.code.exactly.as.its.shown" errormessage
    And I should see "submit" button is disabled
    When I enter "valid.hcp.code" into "partner.sharing.code.optional" field
    And I tap "submit" button
    Then I should see "data.sharing.consent" pop-up
    And I should see "you.ve.entered.partner.sharing.code" text
    And I should see "company.name" text
    And I should see "consent.to.share.my.data" text
    And I should see "agree" button
    And I should see "cancel" button
    When I tap "cancel" button
    Then I should see "add.code.screen"
    When I enter "valid.hcp.code" into "partner.sharing.code.optional" field
    And I tap "submit" button
    Then I should see "data.sharing.consent" pop-up
    When I tap "agree" button
    Then I should see "data.sharing.screen"
    And I should see "hcp.name" text
    And I should see "hcp.sharing.started.date" text
    And I should see "i.understand.that.if.i.choose.stop.sharing" text
    And I should see "stop.sharing" button
    When I tap "add.code" button
    And I enter "valid.hcp.code" into "partner.sharing.code.optional" field
    And I tap on "submit" button
    Then I should see "code.already.been.used" errormessage
    ### ####not acccording to protocol acc to build
    And I tap on "ok.i.understand.popup" button
    Then I should see "add.code.screen"
    When I tap "cancel" button
    And I tap "stop.sharing" button
    Then I should see "stop.sharing.data" pop-up
    And I should see "are.you.sure.to.stop.sharing" text
    And I should see "cancel.in.popup" button
    And I should see "stop.sharing.popup" button
    When I tap on "cancel.in.popup" button
    And I tap on "stop.sharing" button
    And I tap on "stop.sharing.popup" button
    Then I should see "data.sharing.screen"
    When I tap "back" button
    And I tap on "login.and.security.option"
    And I tap on "logout" button
    Then I should see "login.to.your.account" screen
  @DataSharing-AgreeandContinue-MultiplePartners
  Scenario:Data Sharing – HCP –  Agree and Continue In Onboarding
    Given I launch the Madelyne application
    Then I should see "welcome.to.tempotm" screen
    When I tap "lets.get.started" button
    And I tap "agree.and.continue" button
    Then I should see "create.account" screen
    When I enter "emailaddress2" into "emailaddress" field
    And I enter "password" into "password" field
    And I tap "next" button
    Then I should see "verify.email" screen
    When I should connect to email for registration verification
    Then I verify email
    And I should see "personal.information" screen
    When I enter "first.name" into "first.name" field
    And I enter "last.name" into "last.name" field
    And I tap "date.of.birth" field
    And I select "month"
    And I select "year"
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
    When I enter "valid.hcp.code.2" into "partner.sharing.code.optional" field
    And I tap "next" button
    And I tap "back" button
    And I enter "valid.hcp.code.2" into "partner.sharing.code.optional" field
    And I tap "next" button
    Then I should see "data.sharing.screen"
    When I tap "agree.and.continue" button
    Then I should see "account.setup" screen
    And I should see "nice.work"
    And I should see "your.account.is.all.set.up"
    And I should see "continue" button
    When I tap "continue" button
    Then I should see "tempo.smart" screen
    And I should see "set.up.smart" button
    And I should see "squire.skip" button
    When I tap "squire.skip" button
    Then I should see "connect.blood.sugar.meter" screen
    And I should see "bgm.skip" button
    When I tap "bgm.skip" button
    And I handle Notification pop-up
    And I handle Bluetooth Notification pop-up
    And I relaunch the app
    And I tap on "ok" button
    Then I should see "home" selected
    When I tap "more" option
    Then I should see "data.sharing"
    When I tap "data.sharing" button
    And I wait for "1" minutes
    Then I should see "data.sharing.screen"
    And I should see "back" button
    And I should see "add.code" button
    And I should see "hcp.name" text
    And I should see "hcp.sharing.started.date" text
    And I should see "i.understand.that.if.i.choose.stop.sharing" text
    And I should see "stop.sharing" button
    When I tap "back" button
    Then I should see "more.icon"
  ############ --- Network Related ----#######################

  # # When I disable internet
  # # Then I go back to the application
  # # When I tap on "next" button
  # # Then I should see "no.netwrok.connection" text
  # # And I should see "you.need.wifi.or.mobile.netwrok"
  # # And I should see "open.device.settings"
  # # And I should see "cancel" button
  # # When I tap on "cancel" button
  # # And I enable internet
  # # Then I go back to application
  #############################################################

  @DataSharing-AgreeandContinue-MultiplePartners
  Scenario:Data Sharing – HCP – More Menu – Adding Multiple Partners
    When I tap "more" option
    Then I should see "data.sharing"
    When I tap "data.sharing" button
    And I wait for "1" minutes
    Then I should see "data.sharing.screen"
    When I tap "add.code" button
    Then I should see "add.code.screen"
    When I enter "valid.hcp.code.3" into "partner.sharing.code.optional" field
    And I tap "submit" button
    And I tap "agree" button
    Then I should see "data.sharing.screen"
    And I should see "back" button
    And I should see "add.code" button
    And I should see "hcp.name" text
    And I should see "hcp.sharing.started.date" text
    And I should see "i.understand.that.if.i.choose.stop.sharing" text
    And I should see "stop.sharing" button
    And I should see "hcp.name.2" text
    And I should see "hcp.sharing.started.date.2" text
    And I should see "stop.sharing.2" button
    When I tap "stop.sharing" button
    Then I should see "stop.sharing.data" pop-up
    And I should see "are.you.sure.to.stop.sharing" text
    And I should see "cancel.in.popup" button
    And I should see "stop.sharing.popup" button
    When I tap on "cancel.in.popup" button
    And I tap on "stop.sharing" button
    And I tap on "stop.sharing.popup" button
    Then I should see "data.sharing.screen"
    And I should see "hcp.name" text
    And I should see "hcp.sharing.started.date" text
    And I should see "i.understand.that.if.i.choose.stop.sharing" text
    And I should see "stop.sharing" button
    When I tap "stop.sharing" button
    Then I should see "stop.sharing.data" pop-up
    When I tap on "stop.sharing.popup" button
    Then I should see "data.sharing.screen"
    And I should see "you.are.not.currently.sharing.data" text
    When I tap "back" button
    And I tap on "more" option
    And I tap on "login.and.security.option"
    And I tap on "logout" button
    Then I should see "login.to.your.account" screen
  @SmokeTest
  Scenario:Data Sharing – HCP – More Menu – Smoke Test
    Given I launch the Madelyne application
    Then I should see "welcome.to.tempotm" screen
    When I tap "lets.get.started" button
    And I tap "agree.and.continue" button
    Then I should see "create.account" screen
    When I enter "emailaddress" into "emailaddress" field
    And I enter "password" into "password" field
    And I tap "next" button
    Then I should see "verify.email" screen
    When I should connect to email for registration verification
    Then I verify email
    And I should see "personal.information" screen
    When I enter "first.name" into "first.name" field
    And I enter "last.name" into "last.name" field
    And I tap "date.of.birth" field
    And I select "month"
    And I select "year"
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
    When I enter "valid.hcp.code1.smoke" into "partner.sharing.code.optional" field
    And I tap "next" button
    Then I should see "data.sharing.screen"
    When I tap "agree.and.continue"
    Then I should see "account.setup" screen
    When I tap "continue" button
    Then I should see "tempo.smart" screen
    When I tap "squire.skip" button
    Then I should see "connect.blood.sugar.meter" screen
    When I tap "bgm.skip" button
    And I handle Notification pop-up
    And I handle Bluetooth Notification pop-up
    And I relaunch the app
    And I tap on "ok" button
    Then I should see "home" selected
    When I tap "more" option
    Then I should see "data.sharing"
    When I tap "data.sharing" button
    And I wait for "1" minutes
    Then I should see "data.sharing.screen"
    And I should see "hcp.name" text
    And I should see "hcp.sharing.started.date" text
    And I should see "i.understand.that.if.i.choose.stop.sharing" text
    And I should see "stop.sharing" button
    When I tap "add.code" button
    And I enter "valid.hcp.code2.smoke" into "partner.sharing.code.optional" field
    And I tap on "submit" button
    And I tap "agree" button
    Then I should see "data.sharing.screen"
    And I should see "back" button
    And I should see "add.code" button
    And I should see "hcp.name" text
    And I should see "hcp.sharing.started.date" text
    And I should see "i.understand.that.if.i.choose.stop.sharing" text
    And I should see "stop.sharing" button
    And I should see "hcp.name.2" text
    And I should see "hcp.sharing.started.date.2" text
    And I should see "stop.sharing.2" button
    When I tap "stop.sharing" button
    And I tap on "stop.sharing.popup" button
    Then I should see "data.sharing.screen"
    And I should see "hcp.name"
    When I tap "stop.sharing" button
    And I tap on "stop.sharing.popup" button
    Then I should see "data.sharing.screen"
    And I should see "you.are.not.currently.sharing.data" text
    When I tap "back" button
    And I tap on "more" option
    And I tap on "login.and.security.option"
    And I tap on "logout" button
    Then I should see "login.to.your.account" screen
  @RegressionTest
  Scenario:Data Sharing – HCP –  Regression Test
    Given I launch the Madelyne application
    Then I should see "welcome.to.tempotm" screen
    When I tap "lets.get.started" button
    And I tap "agree.and.continue" button
    Then I should see "create.account" screen
    When I enter "emailaddress" into "emailaddress" field
    And I enter "password" into "password" field
    And I tap "next" button
    Then I should see "verify.email" screen
    When I should connect to email for registration verification
    Then I verify email
    And I should see "personal.information" screen
    When I enter "first.name" into "first.name" field
    And I enter "last.name" into "last.name" field
    And I tap "date.of.birth" field
    And I select "month"
    And I select "year"
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
    When I enter "hcp.code.5.chars" into "partner.sharing.code.optional" field
    Then I should see "next" button is enabled
    When I clear "partner.sharing.code.optional" field
    And I enter "invalid.hcp.code" into "partner.sharing.code.optional" field
    And I tap "next" button
    Then I should see "code.could.not.be.found" errormessage
     ####not acccording to protocol acc to build
    When I tap on "ok.i.understand.popup" button
    And I enter "special.char.hcp.code" into "partner.sharing.code.optional" field
    Then I should see "enter.code.exactly.as.its.shown" errormessage
    And I should see "next" button is disabled
    When I enter "already.used.hcp.code" into "partner.sharing.code.optional" field
    And I tap "next" button
    Then I should see "code.already.been.used" errormessage
    ####not acccording to protocol acc to build
    And I tap on "ok.i.understand.popup" button
    And I enter "valid.hcp.code1.regression" into "partner.sharing.code.optional" field
    And I tap "next" button
    Then I should see "data.sharing.screen"
    And I should see "back" button
    And I should see "you.ve.entered.partner.sharing.code" text
    And I should see "company.name"
    And I should see "consent.to.share.my.data.description" text
    And I should see "agree.and.continue" button
    And I should see "do.not.consent.to.share.data" link
    When I tap "do.not.consent.to.share.data" link
    Then I should see "do.not.consent" pop-up
    And I should see "do.not.consent.with.named.parties" text
    And I should see "cancel.in.popup" button
    And I should see "ok" button
    When I tap "cancel.in.popup" button
    And I tap "agree.and.continue" button
    Then I should see "account.setup" screen
    And I should see "continue" button
    When I tap "continue" button
    Then I should see "tempo.smart" screen
    And I should see "set.up.smart" button
    And I should see "squire.skip" button
    When I tap "squire.skip" button
    Then I should see "connect.blood.sugar.meter" screen
    And I should see "bgm.skip" button
    When I tap "bgm.skip" button
    And I handle Notification pop-up
    And I handle Bluetooth Notification pop-up
    And I relaunch the app
    And I tap on "ok" button
    Then I should see "home" selected
    When I tap "more" option
    Then I should see "data.sharing"
    When I tap "data.sharing" button
    And I wait for "1" minutes
    Then I should see "data.sharing.screen"
    And I should see "hcp.name" text
    And I should see "hcp.sharing.started.date" text
    And I should see "i.understand.that.if.i.choose.stop.sharing" text
    And I should see "stop.sharing" button
    When I tap "add.code" button
    Then I should see "add.code.screen"
    When I enter "valid.hcp.code2.regression" into "partner.sharing.code.optional" field
    And I tap "submit" button
    And I tap "agree" button
    Then I should see "data.sharing.screen"
    And I should see "hcp.name" text
    And I should see "hcp.sharing.started.date" text
    And I should see "i.understand.that.if.i.choose.stop.sharing" text
    And I should see "stop.sharing" button
    And I should see "hcp.name.2" text
    And I should see "hcp.sharing.started.date.2" text
    And I should see "stop.sharing.2" button
    When I tap "stop.sharing" button
    And I tap on "stop.sharing.popup" button
    Then I should see "data.sharing.screen"
    And I should see "hcp.name"
    When I tap "stop.sharing" button
    And I tap on "stop.sharing.popup" button
    Then I should see "data.sharing.screen"
    And I should see "you.are.not.currently.sharing.data" text
    When I tap "back" button
    And I tap on "more" option
    And I tap on "login.and.security.option"
    And I tap on "logout" button
    Then I should see "login.to.your.account" screen

