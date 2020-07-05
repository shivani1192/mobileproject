Feature: MADELYNE DATA SHARING – HCP – Software Test Protocol

# pre-condITIons:
# •	ensure that this protocol should execute in sequence only.
# •	make sure that the “madelyne mmA” App is installed on Android device
# •	make sure that the device is connected to the internet.
    
@DataSharing-DoNotConsent
Scenario: Data Sharing – HCP –  Do Not Consent In Onboarding

Given I launch the Madelyne application
And I set deviceformat to 12 hour
And I enable set automatically in device settings
And I turn OFF Bluetooth
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen
And I should see "agree.and.continue" button
When I tap "agree.and.continue" button
Then I should see "create.account" screen
And I should see "emailaddress" field
And I should see "password" field
When I enter "emailaddress" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
When I should connect to email for registration verification
And I verify email
Then I should see "personal.information" screen
And I should see "first.name" field
And I should see "last.name" field
And I should see "date.of.birth" field
When I enter "first.name" into "first.name" field
And I enter "last.name" into "last.name" field
And I tap "date.of.birth" field
Then I should see "date.picker"
When I select the "year" in "date.picker.year" field
And I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I tap "set.popup" button
And I tap "next" button
Then I should see "my.insulin" screen
When I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "next" button
Then I should see "confirm.insulin.type" pop-up
When I tap on "ok.popup" button
Then I should see "partner.sharing.code" screen
When I tap on "back" button
And I tap "next" button
And I tap on "ok.popup" button
Then I should see "partner.sharing.code" screen
When I enter "hcp.code.5.chars" into "partner.sharing.code.optional" field
Then I should see "next" button is disabled

#--------------Build Issue----------------------#
#---------Tempo Not Available Error Code : 14034------------#

When I clear "partner.sharing.code.optional" field
# And I enter "invalid.hcp.code" into "partner.sharing.code.optional" field
# And I tap "next" button
# Then I should see "partner.sharing.code.not.found" pop-up
# And I should see "code.could.not.be.found" text
# And I should see "ok.i.understand.popup" button
# When I tap "ok.i.understand.popup" button

And I enter "special.char.hcp.code" into "partner.sharing.code.optional" field
Then I should see "enter.code.exactly.as.its.shown" errormessage
And I should see "next" button is disabled
When I enter "already.used.hcp.code" into "partner.sharing.code.optional" field
And I tap "next" button
And I wait for "30" seconds
Then I should see "partner.sharing.code.has.already.been.used" pop-up
And I should see "code.already.been.used" text
And I should see "ok.i.understand.popup" button
When I tap "ok.i.understand.popup" button

#----Without internet steps-------------#
#----Cannot be automated-------------#

# And I navigate to device settings
# And I disable internet connection
# And I navigate to back application
# And I enter "6.character.code" into "partner.sharing.code.optional" field
# And I tap on "next" button
# Then I should see "no.network.connection" pop-up
# And I should see "please.check.your.settings" text
# And I should see "open.device.settings.in.popup" button
# And I should see "cancel.in.popup" button
# When I tap on "cancel.in.popup" button
# And I navigate to device settings
# And I enable internet connection
# And I navigate to back application

#--------------Build Issue----------------------#
#----Unable to proceed with valid HCP code in data sharing screen----------#

# And I clear "partner.sharing.code.optional" field
# And I enter "valid.hcp.code" into "partner.sharing.code.optional" field
# And I tap "next" button
# Then I should see "data.sharing.screen"
# And I should see "back" button
# And I should see "you.ve.partner.sharing.code" text
# And I should see "company.name.partner.code"
# And I should see "consent.privacy.statement.partner.sharing.code" text
# And I should see "agree.and.continue.partner" button
# And I should see "do.not.consent.to.share.data" link
# When I tap "do.not.consent.to.share.data" link
# Then I should see "do.not.consent" pop-up
# And I should see "do.not.consent.with.named.parties" text
# And I should see "cancel.in.popup" button
# And I should see "ok.popup" button
# When I tap "cancel.in.popup" button
# And I tap "do.not.consent.to.share.data" link
# Then I should see "do.not.consent" pop-up
# When I tap "ok.popup" button

And I tap on "i.do.not.have.a.partner.sharing.code" button
Then I should see "account.setup" screen
# And I should see progres bar with "55%" completed                # cannot be automated
# And I should see "hand.thumbs.up.symbol.with.circles.image"      # images cannot be automated
# And I should see "orange.header"                                 # colors cannot be automated
And I should see "nice.work" text
And I should see "your.account.is.all.set.up" text
And I should see "continue" button
When I tap on "continue" button
Then I should see "connect.smart" screen
When I tap on "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
When I tap on "bgm.skip" button
Then I should see "home" screen
And I should see "home.recent.entries" pop-up
And I should see "home.this.is.where.you.will.see" text
And I should see "home.next" button
When I tap on "home.next" button
And I tap on "home.reminders.not.now" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "downward.arrow" mark
Then I should see "home" screen
When I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen


@DataSharing-SkipOnboarding
Scenario: Data Sharing – HCP – Skip in Onboarding – Continue To More Menu

Given I launch the Madelyne application
And I set deviceformat to 12 hour
And I enable set automatically in device settings
And I turn OFF Bluetooth
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen
And I should see "agree.and.continue" button
When I tap "agree.and.continue" button
Then I should see "create.account" screen
And I should see "emailaddress" field
And I should see "password" field
When I enter "emailaddress1" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
When I should connect to email for registration verification
And I verify email
Then I should see "personal.information" screen
And I should see "first.name" field
And I should see "last.name" field
And I should see "date.of.birth" field
When I enter "first.name" into "first.name" field
And I enter "last.name" into "last.name" field
And I tap "date.of.birth" field
Then I should see "date.picker"
When I select the "year" in "date.picker.year" field
And I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I tap "set.popup" button
And I tap "next" button
Then I should see "my.insulin" screen
When I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "next" button
Then I should see "confirm.insulin.type" pop-up
When I tap on "ok.popup" button
Then I should see "partner.sharing.code" screen
When I tap on "i.do.not.have.a.partner.sharing.code" button
Then I should see "account.setup" screen
# And I should see progres bar with "55%" completed                # cannot be automated
# And I should see "hand.thumbs.up.symbol.with.circles.image"      # images cannot be automated
# And I should see "orange.header"                                 # colors cannot be automated
And I should see "nice.work" text
And I should see "your.account.is.all.set.up" text
And I should see "continue" button
When I tap on "continue" button
Then I should see "connect.smart" screen
When I tap on "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
When I tap on "bgm.skip" button
Then I should see "home" screen
And I should see "home.recent.entries" pop-up
And I should see "home.this.is.where.you.will.see" text
And I should see "home.next" button
When I tap on "home.next" button
And I tap on "home.reminders.not.now" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "downward.arrow" mark
Then I should see "home" screen
When I tap "more" option
And I Swipe Down "about.mytempo"
Then I should see "data.sharing" option
When I tap on "data.sharing" option
Then I should see "data.sharing.screen"
And I should see "back" button
And I should see "add.code" button                                                        
And I should see "you.are.not.currently.sharing.data" text
When I tap "back" button
And I tap "data.sharing" option
And I tap "add.code" button                                                              
Then I should see "add.code.screen"                                                       
And I should see "add.code.cancel" button
And I should see "submit.add.code" button
And I should see "if.you.recieved.partner.sharing.code" text
And I should see "partner.sharing.code.optional" field
When I tap "add.code.cancel" button
And I tap "add.code" button                                                                                                                   
And I enter "hcp.code.5.chars" into "partner.sharing.code.optional" field
Then I should see "submit.add.code" button is disabled

#--------------Build Issue----------------------#
#---------Tempo Not Available Error Code : 14034------------#

# When I clear "partner.sharing.code.optional" field
# And I enter "invalid.hcp.code" into "partner.sharing.code.optional" field
# And I tap "submit.add.code" button
# Then I should see "partner.sharing.code.not.found" pop-up
# And I should see "code.could.not.be.found" text
# And I should see "ok.i.understand.popup" button
# When I tap "ok.i.understand.popup" button

When I clear "partner.sharing.code.optional" field
And I enter "special.char.hcp.code" into "partner.sharing.code.optional" field
Then I should see "enter.code.exactly.as.its.shown" errormessage
And I should see "submit.add.code" button is disabled

#--------------Build Issue----------------------#
#----Unable to proceed with valid HCP code in data sharing screen----------#

# When I clear "partner.sharing.code.optional" field
# And I enter "valid.hcp.code" into "partner.sharing.code.optional" field
# And I tap "submit.add.code" button
# Then I should see "data.sharing.consent" pop-up
# And I should see "you.ve.entered.partner.sharing.code" text
# And I should see "partner.name" text
# And I should see "consent.to.share.my.data" text
# And I should see "agree.add.code" button
# And I should see "cancel" button
# When I tap "cancel" button
# And I tap "add.code" button
# And I enter "valid.hcp.code" into "partner.sharing.code.optional" field
# And I tap "submit.add.code" button
# Then I should see "data.sharing.consent" pop-up
# When I tap "agree.add.code" button
# Then I should see "data.sharing.screen"
# And I should see "hcp.name"
# And I should see "hcp.sharing.started.date"
# And I should see "stop.sharing.button"
# When I tap "add.code" button
# And I enter "valid.hcp.code" into "partner.sharing.code.optional" field
# And I tap on "submit.add.code" button
# Then I should see "partner.sharing.code.has.already.been.used" pop-up
# And I should see "code.already.been.used" text
# And I should see "ok.i.understand.popup" button
# When I tap "ok.i.understand.popup" button
# Then I should see "add.code.screen"
# When I tap "add.code.cancel" button
# And I tap "stop.sharing.button" button
# Then I should see "stop.sharing.data" pop-up
# And I should see "are.you.sure.to.stop.sharing" text
# And I should see "cancel.in.popup" button
# And I should see "stop.sharing.add.code.popup" button
# When I tap on "cancel.in.popup" button
# And I tap on "stop.sharing.button" button
# And I tap on "stop.sharing.add.code.popup" button


When I tap "add.code.cancel" button
And I tap "back" button
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen

@DataSharing-AgreeandContinue-MultiplePartners
Scenario: Data Sharing – HCP –  Agree and Continue In Onboarding

Given I launch the Madelyne application
And I set deviceformat to 12 hour
And I enable set automatically in device settings
And I turn OFF Bluetooth
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen
And I should see "agree.and.continue" button
When I tap "agree.and.continue" button
Then I should see "create.account" screen
And I should see "emailaddress" field
And I should see "password" field
When I enter "emailaddress2" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
When I should connect to email for registration verification
And I verify email
Then I should see "personal.information" screen
And I should see "first.name" field
And I should see "last.name" field
And I should see "date.of.birth" field
When I enter "first.name" into "first.name" field
And I enter "last.name" into "last.name" field
And I tap "date.of.birth" field
Then I should see "date.picker"
When I select the "year" in "date.picker.year" field
And I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I tap "set.popup" button
And I tap "next" button
Then I should see "my.insulin" screen
When I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "next" button
Then I should see "confirm.insulin.type" pop-up
When I tap on "ok.popup" button
Then I should see "partner.sharing.code" screen

#--------------Build Issue----------------------#
#----Unable to proceed with valid HCP code in data sharing screen----------#

# When I enter "valid.hcp.code.2" into "partner.sharing.code.optional" field
# And I tap "next" button
# And I tap "back" button
# And I enter "valid.hcp.code.2" into "partner.sharing.code.optional" field
# And I tap "next" button
# And I tap "agree.and.continue.partner" button

When I tap on "i.do.not.have.a.partner.sharing.code" button
Then I should see "account.setup" screen
# And I should see progres bar with "55%" completed                # cannot be automated
# And I should see "hand.thumbs.up.symbol.with.circles.image"      # images cannot be automated
# And I should see "orange.header"                                 # colors cannot be automated
And I should see "nice.work" text
And I should see "your.account.is.all.set.up" text
And I should see "continue" button
When I tap on "continue" button
Then I should see "connect.smart" screen
When I tap on "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
When I tap on "bgm.skip" button
Then I should see "home" screen
And I should see "home.recent.entries" pop-up
And I should see "home.this.is.where.you.will.see" text
And I should see "home.next" button
When I tap on "home.next" button
And I tap on "home.reminders.not.now" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "downward.arrow" mark
Then I should see "home" screen
When I tap "more" option
Then I should see "data.sharing" option
When I tap "data.sharing" option
Then I should see "data.sharing.screen"
And I should see "back" button
And I should see "add.code" button

# Following steps cannot be automated as it requires valid HCP code

# And I should see "hcp.name"
# And I should see "hcp.sharing.started.date"
# And I should see "stop.sharing.button"
And I should see "you.are.not.currently.sharing.data" text

When I tap "back" button
Then I should see "data.sharing"

#----Without internet steps-------------#
#----Cannot be automated-------------#

# When I tap on "add.code" button
# And I tap "data.sharing" button
# And I navigate to device settings
# And I disable internet connection
# And I navigate to back application
# And I enter "valid.hcp.code" into "partner.sharing.code.optional" field
# And I tap "submit.add.code" button
# Then I should see "no.network.connection" pop-up
# And I should see "please.check.your.settings" text
# And I should see "open.device.settings.in.popup" button
# And I should see "cancel.in.popup" button

@DataSharing-AgreeandContinue-MultiplePartners
Scenario: Data Sharing – HCP – More Menu – Adding Multiple Partners

When I tap "more" option
Then I should see "data.sharing"
When I tap "data.sharing" button
Then I should see "data.sharing.screen"
When I tap "add.code" button
Then I should see "add.code.screen"


#--------------Build Issue----------------------#
#----Unable to proceed with valid HCP code in data sharing screen----------#

# When I enter "valid.hcp.code.3" into "partner.sharing.code.optional" field
# And I tap "submit.add.code" button
# And I tap "agree.add.code" button
# Then I should see "data.sharing.screen"
# And I should see "hcp.name"
# And I should see "hcp.sharing.started.date"
# And I should see "stop.sharing.button"
# And I should see "hcp.name.2"
# And I should see "hcp.sharing.started.date.2"
# And I should see "stop.sharing.button.2"
# When I tap "stop.sharing.button" button
# And I tap on "stop.sharing.add.code.popup" button
# Then I should see "data.sharing.screen"
# And I should see "hcp.name"
# And I should see "hcp.sharing.started.date"
# And I should see "stop.sharing.button"
# When I tap "stop.sharing.button" button
# And I tap on "stop.sharing.add.code.popup" button
# Then I should see "data.sharing.screen"
# And I should see "you.are.not.currently.sharing.data" text


When I tap "add.code.cancel" button
And I tap "back" button
And I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen

########## Partner sharing code #######
# Then I should see 2 details in datasharing screen ####based on application
# When I tap "add.code" button
# Then I should see "add.code.screen"
# When I enter "valid.partner.sharing.code" into "partner.sharing.code.optional" field
# And I tap "submit.add.code" button
# And I tap "agree.add.code" button
# Then I should see 2+1 partner sharing details in datasharing screen ####based on application

# When I tap "stop.sharing.add.code" button # for 2nd added value
# Then I should see 1+1 partner sharing details in datasharing screen ####based on application
# When I tap "stop.sharing.add.code" button # for onboarding added value
# Then I should see 1 partner sharing details in datasharing screen ####based on application
# When I tap "stop.sharing.add.code" button # for parnter sharing added value
# Then I should see empty screen # based on application 
# When I tap on "more" option
# And I tap on "login.and.security.option"
# And I tap on "logout" button
# Then I should see "login.to.your.account" screen

##############

@SmokeTest
Scenario: Data Sharing – HCP – More Menu – Smoke Test

Given I launch the Madelyne application
And I set deviceformat to 12 hour
And I enable set automatically in device settings
And I turn OFF Bluetooth
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen
And I should see "agree.and.continue" button
When I tap "agree.and.continue" button
Then I should see "create.account" screen
And I should see "emailaddress" field
And I should see "password" field
When I enter "emailaddress" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
When I should connect to email for registration verification
And I verify email
Then I should see "personal.information" screen
And I should see "first.name" field
And I should see "last.name" field
And I should see "date.of.birth" field
When I enter "first.name" into "first.name" field
And I enter "last.name" into "last.name" field
And I tap "date.of.birth" field
Then I should see "date.picker"
When I select the "year" in "date.picker.year" field
And I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I tap "set.popup" button
And I tap "next" button
Then I should see "my.insulin" screen
When I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "next" button
Then I should see "confirm.insulin.type" pop-up
When I tap on "ok.popup" button
Then I should see "partner.sharing.code" screen


#--------------Build Issue----------------------#
#----Unable to proceed with valid HCP code in data sharing screen----------#

# When I enter "valid.hcp.code1.smoke" into "partner.sharing.code.optional" field
# And I tap "next" button
# Then I should see "data.sharing.screen"
# When I tap "agree.and.continue.partner" button


When I tap on "i.do.not.have.a.partner.sharing.code" button
Then I should see "account.setup" screen
When I tap on "continue" button
Then I should see "connect.smart" screen
When I tap on "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
When I tap on "bgm.skip" button
Then I should see "home" screen
And I should see "home.recent.entries" pop-up
And I should see "home.this.is.where.you.will.see" text
And I should see "home.next" button
When I tap on "home.next" button
And I tap on "home.reminders.not.now" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "downward.arrow" mark
Then I should see "home" screen
When I tap "more" option
Then I should see "data.sharing" option
When I tap "data.sharing" option
Then I should see "data.sharing.screen"

# Following steps cannot be automated as it requires valid HCP code

# And I should see "hcp.name"
# And I should see "hcp.sharing.started.date"
# And I should see "stop.sharing.button"

And I should see "back" button
And I should see "add.code" button                                                        
And I should see "you.are.not.currently.sharing.data" text

When I tap "add.code" button
Then I should see "add.code.screen"

#--------------Build Issue----------------------#
#----Unable to proceed with valid HCP code in data sharing screen----------#

# When I enter "valid.hcp.code2.smoke" into "partner.sharing.code.optional" field
# And I tap "submit.add.code" button
# And I tap "agree.add.code" button
# Then I should see "data.sharing.screen"
# And I should see "hcp.name"
# And I should see "hcp.name.2"
# When I tap "stop.sharing.button" button
# And I tap on "stop.sharing.add.code.popup" button
# Then I should see "data.sharing.screen"
# And I should see "hcp.name"
# When I tap "stop.sharing.button" button
# And I tap on "stop.sharing.add.code.popup" button
# Then I should see "data.sharing.screen"
# And I should see "you.are.not.currently.sharing.data" text


When I tap "add.code.cancel" button
And I tap "back" button
And I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen

@RegressionTest
Scenario: Data Sharing – HCP –  Regression Test

Given I launch the Madelyne application
And I set deviceformat to 12 hour
And I enable set automatically in device settings
And I turn OFF Bluetooth
When I tap on "lets.get.started" button
Then I should see "terms.and.privacy" screen
And I should see "agree.and.continue" button
When I tap "agree.and.continue" button
Then I should see "create.account" screen
And I should see "emailaddress" field
And I should see "password" field
When I enter "emailaddress" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
When I should connect to email for registration verification
And I verify email
Then I should see "personal.information" screen
And I should see "first.name" field
And I should see "last.name" field
And I should see "date.of.birth" field
When I enter "first.name" into "first.name" field
And I enter "last.name" into "last.name" field
And I tap "date.of.birth" field
Then I should see "date.picker"
When I select the "year" in "date.picker.year" field
And I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I tap "set.popup" button
And I tap "next" button
Then I should see "my.insulin" screen
When I tap on "mealtime.insulin.toggle" button
And I tap on "long-acting.insulin.toggle" button
And I tap on "next" button
Then I should see "confirm.insulin.type" pop-up
When I tap on "ok.popup" button
Then I should see "partner.sharing.code" screen
When I tap on "back" button
And I tap "next" button
And I tap on "ok.popup" button
Then I should see "partner.sharing.code" screen
When I enter "hcp.code.5.chars" into "partner.sharing.code.optional" field
Then I should see "next" button is disabled
When I clear "partner.sharing.code.optional" field

#--------------Build Issue----------------------#
#---------Tempo Not Available Error Code : 14034------------#

# And I enter "invalid.hcp.code" into "partner.sharing.code.optional" field
# And I tap "next" button
# Then I should see "partner.sharing.code.not.found" pop-up
# And I should see "code.could.not.be.found" text
# And I should see "ok.i.understand.popup" button
# When I tap "ok.i.understand.popup" button

And I enter "special.char.hcp.code" into "partner.sharing.code.optional" field
Then I should see "enter.code.exactly.as.its.shown" errormessage
And I should see "next" button is disabled
When I enter "already.used.hcp.code" into "partner.sharing.code.optional" field
And I tap "next" button
Then I should see "partner.sharing.code.has.already.been.used" pop-up
And I should see "code.already.been.used" text
And I should see "ok.i.understand.popup" button
When I tap "ok.i.understand.popup" button

#--------------Build Issue----------------------#
#----Unable to proceed with valid HCP code in data sharing screen----------#

# And I enter "valid.hcp.code1.regression" into "partner.sharing.code.optional" field
# And I tap "next" button
# Then I should see "data.sharing.screen"
# And I should see "back" button
# And I should see "you.ve.partner.sharing.code" text
# And I should see "company.name.partner.code"
# And I should see "consent.privacy.statement.partner.sharing.code" text
# And I should see "agree.and.continue.partner" button
# And I should see "do.not.consent.to.share.data" link
# When I tap "do.not.consent.to.share.data" link
# Then I should see "do.not.consent" pop-up
# And I should see "do.not.consent.with.named.parties" text
# And I should see "cancel.in.popup" button
# And I should see "ok.popup" button
# When I tap "cancel.in.popup" button
# And I tap "agree.and.continue.partner" button

And I tap on "i.do.not.have.a.partner.sharing.code" button
Then I should see "account.setup" screen
And I should see "continue" button
When I tap on "continue" button
Then I should see "connect.smart" screen
When I tap on "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
When I tap on "bgm.skip" button
Then I should see "home" screen
And I should see "home.recent.entries" pop-up
And I should see "home.this.is.where.you.will.see" text
And I should see "home.next" button
When I tap on "home.next" button
And I tap on "home.reminders.not.now" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "downward.arrow" mark
Then I should see "home" screen
When I tap "more" option
Then I should see "data.sharing" option
When I tap "data.sharing" option
Then I should see "data.sharing.screen"

# Following steps cannot be automated as it requires valid HCP code

# And I should see "hcp.name"
# And I should see "hcp.sharing.started.date"
# And I should see "stop.sharing.button"

And I should see "back" button
And I should see "add.code" button  
And I should see "you.are.not.currently.sharing.data" text

When I tap "add.code" button
Then I should see "add.code.screen"

#--------------Build Issue----------------------#
#----Unable to proceed with valid HCP code in data sharing screen----------#

# When I enter "valid.hcp.code2.regression" into "partner.sharing.code.optional" field
# And I tap "submit.add.code" button
# And I tap "agree.add.code" button
# Then I should see "data.sharing.screen"
# And I should see "hcp.name"
# And I should see "hcp.name.2"
# When I tap "stop.sharing.button" button
# And I tap on "stop.sharing.add.code.popup" button
# Then I should see "data.sharing.screen"
# And I should see "hcp.name"
# When I tap "stop.sharing.button" button
# And I tap on "stop.sharing.add.code.popup" button
# Then I should see "data.sharing.screen"
# And I should see "you.are.not.currently.sharing.data" text

When I tap "add.code.cancel" button
And I tap "back" button
And I tap on "more" option
And I tap on "login.and.security.option"
And I tap on "logout" button
Then I should see "login.to.your.account" screen