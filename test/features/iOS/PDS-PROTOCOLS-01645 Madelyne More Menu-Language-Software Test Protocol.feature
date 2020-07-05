Feature: MADELYNE MORE MENU – LANGUAGE - SOFTWARE TEST PROTOCOL
    
    @InternationalizationLanguage
    Scenario: MORE MENU - INTERNATIONALIZATION – LANGUAGE(English)
        # PRE-CONDITIONS:
        # •	Ensure the iOS/Android device is connected to the internet.
        # •	Ensure that the device language is selected as English.
        #-----Verifying home screen-----
        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen in English
        When I swipe left "welcome.to.tempotm" screen
        Then I should see "wireless.logging" screen in English
        When I swipe left "wireless.logging" screen
        Then I should see "keep.track.of.your.day" screen in English
        When I swipe left "keep.track.of.your.day" screen
        Then I should see "see.your.progress" screen in English
        When I swipe left "see.your.progress" screen
        Then I should see "see.your.progress" screen in English
        When I tap on "i" icon
        Then I should see "about.mytempo" screen
        And I should see "customer.support" screen in English
        And I should see "manufacturer" screen in English
        And I should see "unique.device.identifier" screen in English
        And I should see "login.instruction" screen in English
        And I should see "user.guide" screen in English
        Then I should see "about.mytempo" screen
        When I tap on "customer.support" link
        Then I should see "customer.support" screen in English
        And I tap on "done" button
        Then I should see "about.mytempo" screen
        When I tap on "manufacturer" link
        Then I should see "manufacturer" screen in English
        When I tap on "done" button
        Then I should see "about.mytempo" screen

        When I tap on "unique.device.identifier" link
        Then I should see "unique.device.identifier" screen in English
        When I tap on "done" button
        Then I should see "about.mytempo" screen

        When I tap on "login.instruction" link
        Then I should see "login.instruction" screen in English
        When I tap on "done" button
        Then I should see "about.mytempo" screen

        When I tap on "user.guide" link
        Then I should see "user.guide" screen in English
        When I tap on "done" button
        Then I should see "about.mytempo" screen
        When I tap on "back" button
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        Then I should see "terms.and.privacy" screen in English
        And I should see "i.have.read.and.agree.instruction" text in English
        When I tap on "terms.of.use"
        #########----- terms and privacy screen is not opening------#######
        # Then I should see "terms.of.use" screen in English
        # And I should see "terms.of.use.text"
        ###################################################################
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "privacy.statement.hyperlink"
        Then I should see "privacy.statement" screen in English
        And I should see "privacy.statement.text"
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen in English
        When I tap on "i.already.have.an.account" option
        Then I should see "login.to.your.account" screen in English
        When I tap on "back" button
        Then I should see "create.account" screen in English
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "30" seconds
        Then I should see "verify.email" screen in English
        And I Verify "verify.email" text
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen in English
        When I enter "first.name" into "first.name" field
        And I enter "last.name" into "last.name" field
        And I tap "date.of.birth" field
        And I tap on "year" button
        And I select "year"
        And I select "month"
        And I select "date"
        And I tap "done" button
        And I tap "next" button
        Then I should see "my.insulin" screen in English
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "next" button
        Then I should see "confirm.insulin.type" pop-up
        When I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen in English
        ############ Partner Program Related ###################
        # When I enter "valid.partner.program.code" in "partner.program.code" field
        # Then I should see "data.sharing" screen in English
        # When I tap on "do.not.consent" button
        # Then I should see "do.not.consent" popup in English
        #########################################################
        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen in English
        When I tap "continue" button
        Then I should see "tempo.smart" screen in English
        When I tap on "set.up.smart" button
        Then I should see "connect.smart.button.screen" in English
        When I tap on "back" button
        And I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter.screen" in English
        When I tap on "connect.blood.sugar.meter" button
        Then I should see "connect.blood.sugar.meter.screen" in English
        When I tap on "more.info" button
        Then I should see "more.info.screen" in English
        When I tap on "accu.check.guide" button
        Then I should see "accu.check.guide" screen in English
        When I tap on "done" button
        And  I tap on "more.info" button
        And I tap on "contour.next.one" button
        Then I should see "contour.next.one" screen in English
        When I tap on "done" button
        And I tap on "back" button
        ###### BGM device related #######
        # And I tap on "connect.blood.sugar.meter" 
        # Then I should see "select.your.blood.sugar.meter" screen in English
        #################################

        When I tap "bgm.skip" button
        Then I should see "welcome.to.mytempo" screen in English
        When I tap on "start" button
        Then I should see "home.and.recent.entries" screen in English
        When I tap on "next" button
        Then I should see "auto.logged.entries" screen in English
        When I tap on "next" button
        Then I should see "mark.entry.as.prime" screen in English
        When I tap on "next" button
        Then I should see "set.reminders.onboarding" screen in English
        When I tap on "next" button
        Then I should see "you.are.ready" screen in English
        When I tap on "go.to.home" button
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        And I tap on "not.now.button"
        Then I should see "home" selected
        And I should see "home" screen
        And I should see "home" text in English
        And I should see "progress.icon" in English
        And I should see "logbook" icon in English
        And I should see "new.entry" icon in English
        And I should see "more" icon in English
        And I tap on "progress.icon" option
        Then I should see "welcome.to.your.progress" text in English
        When I tap on "new.entry.icon"
        Then I should see "new.logbook.entry" overlay in English
        When I tap on "close.button" button
        Then I should see "progress" screen in English
        When I tap on "logbook.icon" option
        Then I should see "welcome.to.your.logbook" text in English
        When I tap on "home" option
        Then I should see "home" text in English
        When I tap on "more" option
        Then I should see "more.menu" screen
        When I swipe down
        And I tap on "about.mytempo" option
        Then I should see "about.mytempo" screen in English

        ######## Device Language Related###################
        # When I tap on "device.home" button
        # And I change device language as chinese
        # Then I should see device language is changed to chinese
        # And I launch madelyne application
        # When I tap on "more" tab
        # Then I should see "more.menu" screen in English
        # When I tap on "about.mytempo" option
        # Then I should see "about.mytempo" screen in English
        # When I tap on "device.home" button
        # And I change device language as italian
        # Then I should see device language is changed to italian
        # And I launch madelyne application
        # When I tap on "more" tab
        # Then I should see "more.menu" screen in English
        # When I tap on "about.mytempo" option
        # Then I should see "about.mytempo" screen in English
        # When I tap on "device.home" button
        # And I change device language as English
        # Then I should see device language is changed to English
        # And I launch madelyne application
        # When I tap on "more" tab
        # Then I should see "more.menu" screen in English
        # When I tap on "about.mytempo" option
        # Then I should see "about.mytempo" screen in English
        ####################################################
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "edit" button
        Then I should see "edit.profile" screen in English
        When I tap on "back" button
        And I should scroll up
        And I tap on "my.devices" button
        Then I should see "my.devices" screen in English
        When I tap on "add.device" button
        Then I should see "add.device" screen in English
        When I tap on "connect.tempo.smart.button"
        Then I should see "connect.smart.button" screen in English
        When I tap on "back" button
        And I tap on "connect.blood.sugar.meter.button"
        Then I should see "connect.blood.sugar.meter" screen in English
        When I tap on "back" button
        And I tap on "back" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin"
        Then I should see "my.insulin" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "blood.sugar.target.range"
        Then I should see "blood.sugar.target.range" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "about.diabetes"
        # Then I should see "about.diabetes" screen in English
        When I tap on "close" button
        Then I should see "more.menu" screen
        When I tap on "my.reminders"
        Then I should see "my.reminders" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "notification.settings"
        Then I should see "notification.settings" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "login.and.security.option"
        Then I should see "login.and.security.option" screen in English
         When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "data.sharing"
        Then I should see "data.sharing" screen in English
        When I tap on "add.code"
        Then I should see "add.code.screen" in English
        When I tap on "cancel" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "tempo.insights.share"
        Then I should see "tempo.insights.share" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I swipe down
        And I tap on "customer.support"
        Then I should see "customer.support" screen in English
         When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "terms.and.privacy"
        Then I should see "terms.and.conditions" screen in English
        When I tap on "terms.of.use"
        Then I should see "terms.of.use" screen in English
        When I tap on "done" button
        And I tap on "privacy.statement"
        Then I should see "privacy.statement" screen in English
        When I tap on "done" button
        And I tap on "third.party.notices"
        Then I should see "third.party.notices" screen in English
        When I tap on "done" button
        And I tap on "back" button
        When I tap on "about.mytempo" option
        Then I should see "about.mytempo" screen in English
        When I tap on "customer.support"
        Then I should see "customer.support" screen in English
        When I tap on "done" button
        And I tap on "manufacturer"
        Then I should see "manufacturer" screen in English
        When I tap on "done" button
        And I tap on "unique.device.identifier"
        Then I should see "unique.device.identifier" screen in English
        When I tap on "done" button
        And I tap on "login.instructions"
        Then I should see "login.instructions" screen in English
        When I tap on "done" button
        And I tap on "user.guide"
        Then I should see "user.guide" screen in English
        When I tap on "done" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account"
    
    @SmokeTest
    Scenario: Smoke Test for Languages

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen in English
        When I swipe left "welcome.to.tempotm" screen
        Then I should see "wireless.logging" screen in English
        When I swipe left "wireless.logging" screen
        Then I should see "keep.track.of.your.day" screen in English
        When I swipe left "keep.track.of.your.day" screen
        Then I should see "see.your.progress" screen in English
        When I swipe left "see.your.progress" screen
        Then I should see "see.your.progress" screen in English
        When I tap on "i" icon
        Then I should see "about.mytempo" screen
        And I should see "customer.support" screen in English
        And I should see "manufacturer" screen in English
        And I should see "unique.device.identifier" screen in English
        And I should see "login.instruction" screen in English
        And I should see "user.guide" screen in English
        Then I should see "about.mytempo" screen
        When I tap on "back" button
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        Then I should see "terms.and.privacy" screen in English
        When I tap on "terms.of.use"
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "privacy.statement.hyperlink"
        Then I should see "privacy.statement" screen in English
        When I tap on "done" button
    
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen in English
        When I tap on "i.already.have.an.account" option
        Then I should see "login.to.your.account" screen in English
        When I tap on "back" button
        Then I should see "create.account" screen in English
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "30" seconds
        Then I should see "verify.email" screen in English
        And I Verify "verify.email" text
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen in English
        When I enter "first.name" into "first.name" field
        And I enter "last.name" into "last.name" field
        And I tap "date.of.birth" field
        And I tap on "year" button
        And I select "year"
        And I select "month"
        And I select "date"
        And I tap "done" button
        And I tap "next" button
        Then I should see "my.insulin" screen in English
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "next" button
        And I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen in English
        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen in English
        When I tap "continue" button
        Then I should see "tempo.smart" screen in English
        When I tap on "set.up.smart" button
        Then I should see "connect.smart.button.screen" in English
        When I tap on "back" button
        And I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter.screen" in English
        When I tap on "connect.blood.sugar.meter" button
        Then I should see "connect.blood.sugar.meter.screen" in English
        When I tap on "more.info" button
        Then I should see "more.info.screen" in English
        When I tap on "accu.check.guide" button
        Then I should see "accu.check.guide" screen in English
        When I tap on "done" button
        And  I tap on "more.info" button
        And I tap on "contour.next.one" button
        Then I should see "contour.next.one" screen in English
        When I tap on "done" button
        And I tap on "back" button

        When I tap "bgm.skip" button
        Then I should see "welcome.to.mytempo" screen in English
        When I tap on "start" button
        Then I should see "home.and.recent.entries" screen in English
        When I tap on "next" button
        Then I should see "auto.logged.entries" screen in English
        When I tap on "next" button
        Then I should see "mark.entry.as.prime" screen in English
        When I tap on "next" button
        Then I should see "set.reminders.onboarding" screen in English
        When I tap on "next" button
        Then I should see "you.are.ready" screen in English
        When I tap on "go.to.home" button
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        And I tap on "not.now.button"
        Then I should see "home" selected
        And I should see "home" text in English
        And I should see "progress.icon" in English
        And I should see "logbook" icon in English
        And I should see "new.entry" icon in English
        And I should see "more" icon in English
        
        When I tap on "more" option
        Then I should see "more.menu" screen
        When I swipe down
        Then I should see "about.mytempo" option in English
        When I tap on "edit" button
        Then I should see "edit.profile" screen in English
        When I tap on "back" button
        And I should scroll up
        Then I should see "my.devices" option in English
        And I should see "my.insulin" option in English
        And I should see "blood.sugar.target.range" option in English
        And I should see "about.diabetes" option in English
        And I should see "my.reminders" option in English
        And I should see "notification.settings" option in English
        And I should see "login.and.security.option" option in English
        And I should see "data.sharing" option in English
        And I should see "tempo.insights.share" option in English
        When I swipe down
        Then I should see "customer.support" option in English
        And I should see "terms.and.privacy" option in English
        And I should see "about.mytempo" option in English
        And I should see "more.menu" screen
        When I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account"

        @RegressionTest
        Scenario: Regression Test for Languages

        Given I launch the Madelyne application
        Then I should see "welcome.to.tempotm" screen in English
        When I swipe left "welcome.to.tempotm" screen
        Then I should see "wireless.logging" screen in English
        When I swipe left "wireless.logging" screen
        Then I should see "keep.track.of.your.day" screen in English
        When I swipe left "keep.track.of.your.day" screen
        Then I should see "see.your.progress" screen in English
        When I swipe left "see.your.progress" screen
        Then I should see "see.your.progress" screen in English
        When I tap on "i" icon
        Then I should see "about.mytempo" screen
        And I should see "customer.support" screen in English
        And I should see "manufacturer" screen in English
        And I should see "unique.device.identifier" screen in English
        And I should see "login.instruction" screen in English
        And I should see "user.guide" screen in English
        Then I should see "about.mytempo" screen
        When I tap on "back" button
        Then I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        Then I should see "terms.and.privacy" screen in English
        When I tap on "terms.of.use"
        When I tap on "done" button
        Then I should see "terms.and.privacy" screen

        When I tap on "privacy.statement.hyperlink"
        Then I should see "privacy.statement" screen in English
        When I tap on "done" button
    
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen in English
        When I tap on "i.already.have.an.account" option
        Then I should see "login.to.your.account" screen in English
        When I tap on "back" button
        Then I should see "create.account" screen in English
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "30" seconds
        Then I should see "verify.email" screen in English
        And I Verify "verify.email" text
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen in English
        When I enter "first.name" into "first.name" field
        And I enter "last.name" into "last.name" field
        And I tap "date.of.birth" field
        And I tap on "year" button
        And I select "year"
        And I select "month"
        And I select "date"
        And I tap "done" button
        And I tap "next" button
        Then I should see "my.insulin" screen in English
        When I tap on "mealtime.insulin.toggle" button
        And I tap on "long.acting.insulin.toggle" button
        And I tap on "next" button
        And I tap on "ok.popup" button
        Then I should see "partner.sharing.code" screen in English
        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen in English
        When I tap "continue" button
        Then I should see "tempo.smart" screen in English
        When I tap on "set.up.smart" button
        Then I should see "connect.smart.button.screen" in English
        When I tap on "back" button
        And I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter.screen" in English
        When I tap on "connect.blood.sugar.meter" button
        Then I should see "connect.blood.sugar.meter.screen" in English
        When I tap on "more.info" button
        Then I should see "more.info.screen" in English
        When I tap on "accu.check.guide" button
        Then I should see "accu.check.guide" screen in English
        When I tap on "done" button
        And  I tap on "more.info" button
        And I tap on "contour.next.one" button
        Then I should see "contour.next.one" screen in English
        When I tap on "done" button
        And I tap on "back" button

        When I tap "bgm.skip" button
        Then I should see "welcome.to.mytempo" screen in English
        When I tap on "start" button
        Then I should see "home.and.recent.entries" screen in English
        When I tap on "next" button
        Then I should see "auto.logged.entries" screen in English
        When I tap on "next" button
        Then I should see "mark.entry.as.prime" screen in English
        When I tap on "next" button
        Then I should see "set.reminders.onboarding" screen in English
        When I tap on "next" button
        Then I should see "you.are.ready" screen in English
        When I tap on "go.to.home" button
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        And I tap on "not.now.button"
        Then I should see "home" selected
        And I should see "home" text in English
        And I should see "progress.icon" in English
        And I should see "logbook" icon in English
        And I should see "new.entry" icon in English
        And I should see "more" icon in English
        
        When I tap on "more" option
        Then I should see "more.menu" screen
        When I swipe down
        And I tap on "about.mytempo" option
        Then I should see "about.mytempo" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "edit" button
        Then I should see "edit.profile" screen in English
        When I tap on "back" button
        And I should scroll up
        And I tap on "my.devices" button
        Then I should see "my.devices" screen in English
        When I tap on "add.device" button
        Then I should see "add.device" screen in English
        When I tap on "connect.tempo.smart.button"
        Then I should see "connect.smart.button" screen in English
        When I tap on "back" button
        And I tap on "connect.blood.sugar.meter.button"
        Then I should see "connect.blood.sugar.meter" screen in English
        When I tap on "back" button
        And I tap on "back" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "my.insulin"
        Then I should see "my.insulin" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "blood.sugar.target.range"
        Then I should see "blood.sugar.target.range" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "about.diabetes"
        # Then I should see "about.diabetes" screen in English
        When I tap on "close" button
        Then I should see "more.menu" screen
        When I tap on "my.reminders"
        Then I should see "my.reminders" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "notification.settings"
        Then I should see "notification.settings" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "login.and.security.option"
        Then I should see "login.and.security.option" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "data.sharing"
        Then I should see "data.sharing" screen in English
        When I tap on "add.code"
        Then I should see "add.code.screen" in English
        When I tap on "cancel" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "tempo.insights.share"
        Then I should see "tempo.insights.share" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I swipe down
        And I tap on "customer.support"
        Then I should see "customer.support" screen in English
        When I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "terms.and.privacy"
        Then I should see "terms.and.conditions" screen in English
        When I tap on "terms.of.use"
        Then I should see "terms.of.use" screen in English
        When I tap on "done" button
        And I tap on "privacy.statement"
        Then I should see "privacy.statement" screen in English
        When I tap on "done" button
        And I tap on "third.party.notices"
        Then I should see "third.party.notices" screen in English
        When I tap on "done" button
        And I tap on "back" button
        When I tap on "about.mytempo" option
        Then I should see "about.mytempo" screen in English
        When I tap on "customer.support"
        Then I should see "customer.support" screen in English
        When I tap on "done" button
        And I tap on "manufacturer"
        Then I should see "manufacturer" screen in English
        When I tap on "done" button
        And I tap on "unique.device.identifier"
        Then I should see "unique.device.identifier" screen in English
        When I tap on "done" button
        And I tap on "login.instructions"
        Then I should see "login.instructions" screen in English
        When I tap on "done" button
        And I tap on "user.guide"
        Then I should see "user.guide" screen in English
        When I tap on "done" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        When I tap on "login.and.security.option"
        And I handle Logout button
        Then I should see "login.to.your.account"

