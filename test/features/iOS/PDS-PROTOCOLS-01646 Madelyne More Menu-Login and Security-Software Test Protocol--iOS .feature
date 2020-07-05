#---------- SRS Covered MAD10-SYS-2542,MAD10-SYS-2543,MAD10-MMA_SRS-77,MAD10-MMA_SRS-189,MAD10-MMA_SRS-221,MAD10-MMA_SRS-222
#---------- MAD10-MMA_SRS-223,MAD10-MMA_SRS-399,MAD10-MMA_SRS-426,MAD10-MMA_SRS-7,MAD10-MMA_SRS-31,MAD10-MMA_SRS-32
#---------- MAD10-MMA_SRS-33,MAD10-MMA_SRS-81,MAD10-MMA_SRS-82,MAD10-MMA_SRS-83,MAD10-MMA_SRS-224,MAD10-MMA_SRS-225
#---------- MAD10-MMA_SRS-427,MAD10-MMA_SRS-428,MAD10-MMA_SRS-429,MAD10-MMA_SRS-430
#---------- Version 1
Feature: MORE MENU – LOGIN AND SECURITY - SOFTWARE TEST PROTOCOL
  #Preconditions
  #Date & Time 24-Hour Time = disabled; Set Automatically = enabled; Time Zone = EST
  #Language & Region Language = English; Region = United States; Calendar = Gregorian
  #Make sure the Device is connected to internet.
  #On the Device, the date and time shall be the current one.
  #Make sure to use new email address  in "emailaddress"
  #make sure that "emailaddress" should not match with "registered.new.email" and "registered.confirm.new.email"
  #Make sure to change and give same mail id's in  "registered.new.email" and "registered.confirm.new.email"
  #Make sure to use the same password used while creating account in "registered.confirm.password"
  #Make sure to use the same password used while creating account in "correct.confirm.password"
  @Precondition
  Scenario: Going till Home Screen
    Given I launch the Madelyne application
    And I should see "welcome.to.tempotm" screen
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
    Then I should see "partner.sharing.code" screen
    When I tap "i.do.not.have.a.partner.sharing.code" button
    Then I should see "account.setup" screen
    When I tap "continue" button
    Then I should see "tempo.smart" screen
    And I should see "set.up.smart" button
    And I should see "squire.skip" button
    When I tap "squire.skip" button
    Then I should see "connect.blood.sugar.meter" screen
    And I should see "connect.blood.sugar.meter" button
    And I should see "bgm.skip" button
    When I tap "bgm.skip" button
    And I handle Notification pop-up
    And I handle Bluetooth Notification pop-up
    Then I should see "home" selected
####################################################################################
###########---- Cannot be Automated-Related to Browser automation ----##############
####################################################################################
# # @LoginAndSecurity
# # Scenario: MORE MENU– LOGIN AND SECURITY – CHANGE PASSWORD
# #   When I launch madelyne application
# #   Then I should see "login.to.your.account" screen
# #   And I should see "emailaddress" Field
# #   And I should see "fingerprint.icon"
# #   And I should see "password" field
# #   And I should see "eye.icon"
# #   And I should see "login" button
# #   And I should see "forgot.password" link
# #   And I should see "back" button
# #   When I enter "registered.email.address" into " emailaddress" field
# #   And I enter "password" into "password" field
# #   And I tap on "logion" button
# #   And I tap on "more.menu" option
# #   And I tap on "login.and.security" option
# #   And I tap on "change.password" button
# #   And I should see "change.password" screen
# #   And I should see "change.password.title"
# #   And I should see "please.enter.email.address" text
# #   And I should see "cancel" button
# #   And I should see empty "emailaddress" field
# #   And I should see "send.link" button
# #   And I should see "having.trouble.please.call" text
# #   When I tap on "cancel" button
# #   And I tap on "change.password" button
# #   Then I should see "change.password" screen
# #   When I tap on "enter.email.address" field
# #   And I enter "email.address" into "enter.email.address" field
# #   And I tap on "send.link" button
# #   Then I should see "check.your.email.address" screen
# #   And I should see "check.your.email.title"
# #   And I should see "please.check.your.email" text
# #   And I should see "email.address"
# #   And I should see "tap.to.continue" button
# #   And I should see "resend.link" button
# #   When I access email account
# #   And I check for email regarding password verification
# #   Then I should see password verification link
# #   When I navigate to application
# #   And I tap on "resend.link" button
# #   Then I should see two emails for password verification
# #   When I tap on first verification link
# #   Then I should see link is no more valid Message
# #   When I set device time to 1 hour ahead
# #   And I tap on second verification link
# #   Then I should see link is no more valid Message
# #   When I navigate to tempo application
# #   And I tap on "resend.link" button
# #   Then I should password verification mail is recieved
# #   When I tap on "tap.to.continue" button
# #   Then User will logout of the application
# #   And I should see "login.to.your.account" screen
# #   When I access email account
# #   And I click on reset your password link
# #   Then I should see OKTA webpage open
# #   And I should see "reset.your,password" title
# #   And I should see "password.requirements" text
# #   And I should see "new.password" field
# #   And I should see "repeat.password" field
# #   And I should see "reset.your.password" button
# #   When I enter "73characters" into "new.password" field
# #   And I enter "73characters" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "alphabets" into "new.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "we.found.some.new.errors" text
# #   And I should see "new.password.must.match" errormessage
# #   And I enter "dollarsymbols" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "we.found.some.new.errors" text
# #   And I should see "new.password.must.match" errormessage
# #   When I enter "new.password" into "new.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "we.found.some.new.errors" text
# #   And I should see "new.password.must.match" errormessage
# #   When I enter "valid.password" into "new.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "we.found.some.new.errors" text
# #   And I should see "new.password.must.match" errormessage
# #   When I enter "4char.passsword" into "new.password" field
# #   And I enter "4char.passsword" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "valid.password" into "new.password" field
# #   And I enter "valid.passsword" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "invalid.password1" into "new.password" field
# #   And I enter "invalid.passsword1" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "invalid.password2" into "new.password" field
# #   And I enter "invalid.passsword2" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "username" into "new.password" field
# #   And I enter "username" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "first.name" into "new.password" field
# #   And I enter "first.name" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "last.name" into "new.password" field
# #   And I enter "last.name" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "present.password" into "new.password" field
# #   And I enter "present.password" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "password.requirements" text
# #   When I enter "number.password" into "new.password" field
# #   And I enter "number1.password" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "we.found.some.new.errors" text
# #   And I should see "new.password.must.match" errormessage
# #   When I enter "random.characters" into "new.password" field
# #   And I enter "random.characters1" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "we.found.some.new.errors" text
# #   And I should see "new.password.must.match" errormessage
# #   When I enter "valid.password1" into "new.password" field
# #   And I enter "valid.password2" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see both passwords in masked State
# #   And I should see "we.found.some.new.errors" text
# #   And I should see "new.password.must.match" errormessage
# #   When I enter "new.valid.password" into "new.password" field
# #   And I enter "new.valid.password" into "repeat.password" field
# #   And I tap on "reset.your.password" button
# #   Then I should see "password.updated.message"
# #   And I should see "return.to.tempo" button
# #   When I tap on "return.to.tempo" button
# #   Then I should see "login.to.your.account" screen
# #   When I enter "emailaddress" into "emailaddress" field
# #   And I enter "password" into "password" field
# #   And I tap on "login" button
# #   Then I should see "incorrect.username.or.password" pop-up
# #   When I tap on "ok.button"
# #   Then I should see "login.to.your.account" screen
# #   When I enter "emailaddress" into "emailaddress" field
# #   And I enter "new.valid.password" into "password" field
# #   And I tap on "login" button
# #   Then I should see "home" screen
####################################################################################
####################################################################################
####################################################################################

####################################################################################
####---- Cannot be Automated-Related to faceid/touchid and unlock/lock phone----####
####################################################################################
# # @LoginAndSecurity
# # Scenario: MORE MENU– LOGIN AND SECURITY – TOUCH ID - NOT SUPPORTED

# #   When I tap on "more" option
# #   Then I should see "more.menu" screen
# #   When I tap on "login.and.security.option"
# #   Then I should see "login.and.security.title"
# #   And I should see "emailaddress" field
# #   And I should see "change.email" button
# #   And I should see "password" field
# #   And I should see "change.password" button
# #   And I should see "auto.logout" button
# #   And I should see "logout" button
# #   When I tap on "logout" button
# #   Then I should see "login.to.your.account" screen
# #   When Tap on the "More" option in the home screen of Device 2
# #   Then I should see "more.menu" screen
# #   When I tap on "login.and.security.option"
# #   Then I should see "login.and.security.title"
# #   And I should see "emailaddress" field
# #   And I should see "change.email" button
# #   And I should see "password" field
# #   And I should see "change.password" button
# #   And I should see "auto.logout" button
# #   And I should see "logout" button
# #   When I tap on "logout" button
# #   Then I should see "login.to.your.account" screen
# #   When Tap on "enable.face.id" toggle button to Turn ON
# #   Then I should see "enable.face.id" toggle button is enabled
# #   When Tap on "enable.face.id" toggle button to Turn OFF
# #   Then I should see "enable.face.id" toggle button is disabled
# #   When I tap on "logout" button
# #   Then I should see "login.to.your.account" screen
####################################################################################
####################################################################################
####################################################################################

####################################################################################
#######---- Cannot be Automated-Related to future date and internet ----############
####################################################################################

# # @LoginAndSecurity
# # Scenario: MORE MENU– LOGIN AND SECURITY – AUTO LOGOUT

# #   When I tap on "more" option
# #   Then I should see "more.menu" screen
# #   When I tap on "login.and.security.option"
# #   Then I should see "login.and.security.title"
# #   And I should see "emailaddress" field
# #   And I should see "change.email" button
# #   And I should see "password" field
# #   And I should see "change.password" button
# #   And I should see "auto.logout" button
# #   And I should see "logout" button
# #   When I wait for 15 minutes
# #   Then I unlock device
# #   And I should see "login.and.security.screen"
# #   When I tap on "change.email" button
# #   And Tap on device home button
# #   And wait for 15 minutes
# #   Then I should be able to use other application with app in background
# #   When I launch madelyne application
# #   Then I should see "change.email.screen"
# #   And I tap on "cancel" button
# #   Then I should see "login.and.security"
# #   When I tap on "auto.logout" button
# #   Then I should see "auto.logout" is enabled
# #   When I tap on "auto.logout" button
# #   Then I should see "auto.logout" is disabled
# #   When I tap on "auto.logout" button
# #   Then I should see "auto.logout" is enabled
# #   When I wait for 15 minutes
# #   And I unlock phone
# #   Then I should see "login.to.your.account" screen
# #   When I tap on "remember.me" button
# #   Then I should see "remember.me" is enabled
# #   When I tap on "login" button
# #   Then I should see "home" icon
# #   And I should see "progress" icon
# #   And I should see "new.entry" icon
# #   And I should see "logbook" icon
# #   And I should see "more" icon
# #   And Tap on device home button
# #   And I wait for 15 minutes
# #   Then I should be able to use other application with app in background
# #   When I launch madelyne application
# #   Then I should see "login.to.your.account" screen
# #   When I enter "password" into "password" field
# #   Then I should see "home" icon
# #   And I should see "progress" icon
# #   And I should see "new.entry" icon
# #   And I should see "logbook" icon
# #   And I should see "more" icon
# #   When I kill application and relaunch
# #   Then I should see "home" icon
# #   And I should see "progress" icon
# #   And I should see "new.entry" icon
# #   And I should see "logbook" icon
# #   And I should see "more" icon
# #   When I tap on "more" option
# #   Then I should see "more.menu" screen
# #   When I tap on "login.and.security.option"
# #   Then I should see "login.and.security.title"
# #   When I tap on "logout" button
# #   Then I should see "login.to.your.account" screen
# #   When I tap on "remember.me" button
# #   Then I should see "remember.me" is disabled
# #   When I tap on "login" button
# #   Then I should see "home" icon
# #   And I should see "progress" icon
# #   And I should see "new.entry" icon
# #   And I should see "logbook" icon
# #   And I should see "more" icon
# #   When I wait for 15 minutes
# #   And I kill application and relaunch
# #   Then I should see "welcome.to.tempo" screen
# #   When I tap on "already.have.an.account" button
# #   And I enter valid credentials
# #   And I tap on "remember.me" button
# #   Then I should see "remember.me" is enabled
# #   When I tap on "login" button
# #   Then I should see "home" icon
# #   And I should see "progress" icon
# #   And I should see "new.entry" icon
# #   And I should see "logbook" icon
# #   And I should see "more" icon
# #   When I tap on "more" option
# #   Then I should see "more.menu" screen
# #   When I tap on "login.and.security.option"
# #   Then I should see "login.and.security.title"
# #   When I tap "auto.logout" button
# #   And I tap on "logout" button
# #   Then I should see "login.to.your.account" screen
# #   When I kill the myTempo app from the background
# #   Then I disconnect form internet
# #   When I set device date 61 days ahead
# #   Then I launch application
# #   And I should see home screen with a popup "your.session.expired"
# #   And I should see "login.to.your.account" Screen
# #   When I tap on "forgot.password" button
# #   Then I should see "reset.your.password" screen
# #   When I set device date to current date
# #   And I connect device to internet
# #   Then I launch application
# #   When I tap on "back" button
# #   And I enter valid credentials
# #   And I tap on "login" button
# #   Then I should see "home" screen
# #   When I kill the myTempo app from the background
# #   Then I disconnect form internet
# #   When I set device date 61 days ahead
# #   Then I launch application
# #   And I should see home screen with a popup "your.session.expired"
# #   And I should see "login.to.your.account" Screen
# #   When I tap on "sign.in.button"
# #   And I set device date to current date
# #   And I connect device to internet
# #   Then I launch application
# #   When I enter valid credentials
# #   And I tap on "login" button
# #   Then I should see "home" screen
####################################################################################
####################################################################################
####################################################################################







