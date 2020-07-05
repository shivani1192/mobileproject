#---------- SRS Covered MAD10-MMA_SRS-234,MAD10-MMA_SRS-235,MAD10-MMA_SRS-236,MAD10-SYS-2283,MAD10-SYS-2512,MAD10-MMA_SRS-16
#---------- MAD10-MMA_SRS-231,MAD10-MMA_SRS-517,MAD10-SYS-2512,MAD10-SYS-2513,MAD10-SYS-2343,MAD10-MMA_SRS-16,MAD10-MMA_SRS-17
#---------- MAD10-MMA_SRS-18,MAD10-MMA_SRS-19,MAD10-MMA_SRS-20,MAD10-MMA_SRS-60,MAD10-MMA_SRS-63,MAD10-MMA_SRS-231
#---------- MAD10-MMA_SRS-515,MAD10-MMA_SRS-517,MAD10-MMA_SRS-379
#---------- Version 1
@TermsAndPrivacyHelpAndAbout
Feature: MADELYNE MORE MENU – TERMS AND PRIVACY, HELP AND ABOUT TEMPO- SOFTWARE TEST PROTOCOL
    #Pre-Conditions
    #	Make sure that Madelyne MMA is installed on the iOS/Android device as per section 6.1
    #	Make sure the user is registered successfully on MMA App as per section 6.2.
    #	Make sure that Device is connected to internet.
    #	Make sure that user is navigated to home page as per section 6.4.
    #   Make sure to use registered email address in "existing.emailaddress" and registered password in "existing.password"
    @Precondition
    Scenario: Steps till more menu screen
        #Pre-Conditions
        #	Make sure that Madelyne MMA is installed on the iOS/Android device as per section 6.1
        #	Make sure the user is registered successfully on MMA App as per section 6.2.
        #	Make sure that Device is connected to internet.
        #	Make sure that user is navigated to home page as per section 6.4.
        # Setting for privacy and legal process
        Given I launch the Madelyne application
        And I should see "welcome.to.tempotm" screen
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "25" seconds
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
        And I wait for recording
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
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap "bgm.skip" button
        And I relaunch the app
        And I handle Notification pop-up
        And I handle Bluetooth Notification pop-up
        Then I should see "home" screen
        When I swipe down
        And I tap "set.you.schedule.home.screen" button
        Then I should see "schedule.and.reminders" screen
        When I tap "enter.blood.sugar" checkbox
        And I tap "save" button
        Then I should see "home" screen  
         When I tap on "more" icon
        Then I should see "more.menu" screen        
    @SmokeTest
    Scenario: Smoketest-Terms & Privacy,Help & About tempo
        ##Terms&Privacy
        Given I should see "more.menu" screen
        And I Swipe Down "terms.and.privacy.more.menu"
        When I tap on "terms.and.privacy.more.menu" button
        #Terms of Use
        And I tap on "terms.of.use" link
        Then I should see "terms.of.use" screen
        When I tap on "done" button
        #Privacy Statement
        And I tap on "privacy.statement" link
        Then I should see "privacy.statement" screen
        When I tap on "done" button
    #Third Party
        And I tap on "third.party.notices" link
       Then I should see "third.party.notices.text"
        When I tap on "done" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        # ##customersupport
        And I swipe down
        When I tap on "customer.support" button
      And I tap on "customer.support" link
      Then I should see "customer.support.text"
        When I swipe down
      And I tap on "lilly.tempo.support.number"
         Then I should see "contact" pop-up
         When I tap on "cancel" button
         And I tap on "back" button
         And I tap on "back" button
       Then I should see "more.menu" screen
        ##AboutTempo
        And I swipe down
        When I tap on "about.mytempo.option" button
        Then I should see "about.mytempo.screen"
        When I tap on "customer.support" link
        And I should see "customer.support.text"
        When I tap on "done" button
      And I tap on "manufacturer" link
        And I should see "manufacturer.text"
        When I tap on "done" button
  And I tap on "unique.device.identifier" link
        Then I should see "unique.device.identifier.text"
    And I should see "done" button
        When I tap on "done" button
        And I tap on "login.instructions" link
       Then I should see "login.instructions.text"
        When I tap on "done" button
      And I tap on "user.guide" link
        Then I should see "user.guide.text"
        And I should scroll up
        When I tap on "done" button
        Then I should see "about.mytempo.screen"
     When I tap on "back" button
        Then I should see "more.menu" screen
       
    @TermsAndPrivacy
    Scenario: Verification of terms and privacy screen
        Given I should see "more.menu" screen
        And I Swipe Down "terms.and.privacy.more.menu"
        And I wait for "25" seconds
        When I tap on "terms.and.privacy.more.menu" button
        Then I should see "terms.and.conditions" screen
        When I tap on "terms.of.use" link
      Then I should see "terms.of.use.text"
      And I should see "done" button
          And I Verify "terms.of.use.section.header1.subtext1" text                               

        When I tap on "done" button                               
           And I tap on "privacy.statement" link
        Then I should see "privacy.statement.screen"
      And I should see "done" button

        And I should see "privacy.statement.text"
         And I Verify "privacy.statement.section.header.subtext1" text                            
        When I tap on "done" button
     
        And I tap on "third.party.notices" link
        Then I should see "third.party.notices.text"
        And I should see "done" button

        And I should see "third.party.notices.acknowledgements" text
        And I Verify "third.party.notices.content" text
        When I tap on "done" button
        And I tap on "back" button
        Then I should see "more.menu" screen
        #########################
    #     Offline without internet
    #     When I tap on "terms.and.privacy.more.menu" button
    #     Then I should see "terms.and.conditions" screen
  #     When I tap on "terms.of.use" link
#    And I should see "terms.of.use.text"
#     # When I tap on "done" button
   #     When I tap on "privacy.statement" link
    #     Then I should see "privacy.statement.screen"
      #     # When I tap on "done" button

    #     When I tap on "third.party.notices" link
    #     Then I should see "third.party.notices.text"
   #     # When I tap on "done" button
    #     Then I should see "terms.and.conditions" screen
    #     When I tap on "back" button
    #     Then I should see "more.menu" screen

        ##############################

    @Customersupport
    Scenario: VERIFICATION OF MORE MENU – CUSTOMERSUPPORT
        #  PRE-CONDITIONS:
        #	Make sure that Madelyne MMA is installed and launched on the iOS/Android device as per section 6.1.
        #	Make sure the user is registered successfully on MMA App as per section 6.2.
        #	Make sure that Device is connected to internet.
        #	Make Sure that user is navigated till Home page of MMA App as per section 6.4.
        When I tap on "more" icon
        Then I should see "more.menu" screen
        And I swipe down
        When I tap on "customer.support" button
        And I tap on "customer.support" link
        Then I should see "customer.support.text"
         And I swipe down
   
         When I tap on "lilly.tempo.support.number"
         Then I should see "contact" pop-up
         And I should see "call" button
         And I should see "cancel" button
         When I tap on "cancel" button
         When I tap on "back" button
         When I tap on "back" button
        Then I should see "more.menu" screen
    @AboutTempo
    Scenario: VERIFICATION OF MORE MENU – ABOUT TEMPO
        #PRE-CONDITIONS:
        #	“Madelyne MMA” App should be installed on iOS/Android device as per section 6.1.
        #	Make Sure that User is registered successfully on MMA App as per section 6.2
        #	Make sure the device is connected to internet.
        #	On the device, the date and time shall be the current one.
        #	Make sure that user is navigated till Home page of MMA App as per section 6.4
    Given I should see "more.menu" screen
        # Verification of Lilly MMA Complete Information
        And I swipe down
        When I tap on "about.mytempo.option" button
        And I tap on "customer.support" link
        When I swipe down
         And I tap on "lilly.tempo.support.number"
         Then I should see "contact" pop-up
        And I should see "cancel" button
         And I should see "call" button
         When I tap on "cancel" button
       And I tap on "done" button
     
  #Verification abouot Manufacturer link
        When I tap on "manufacturer" link
        Then I should see "manufacturer.text"
        When I tap on "done" button
       And I tap on "unique.device.identifier" link                                         
       Then I should see "unique.device.identifier.text"
       When I tap on "done" button
        And I tap on "login.instructions" link
        Then I should see "login.instructions.text"
        When I tap on "done" button
       
        And I tap on "user.guide" link
       Then I should see "user.guide.text"
        And I should scroll up
         And I should see "done" button
     When I tap on "done" button
##OFFline turn off internet 
##Go to device turnof internet
#Navigate back to apllication
  # When I tap on "about.mytempo.option" button
# And I tap on "user.guide" link
#         And I should see "user.guide.text"
#         And I should scroll up
#          And I should see "done" button
#         Then I should see "about.mytempo.screen"

       And I tap on "back" button
        Then I should see "more.menu" screen
    @RegressionTest
    Scenario: Regression test-Terms & Privacy,Help & About tempo
        ##Terms&Privacy
        Given I should see "more.menu" screen
        And I Swipe Down "terms.and.privacy.more.menu"
        And I wait for "25" seconds
        When I tap on "terms.and.privacy.more.menu" button
        Then I should see "terms.and.conditions" screen
        And I should see "terms.of.use" link
        And I should see "privacy.statement" link
        And I should see "third.party.notices" link
        #Terms of Use
        When I tap on "terms.of.use" link
        Then I should see "terms.of.use" screen
       When I tap on "done" button
       #Privacy Statement
        And I tap on "privacy.statement" link
        Then I should see "privacy.statement" screen
        When I tap on "done" button
       #Third Party
        And I tap on "third.party.notices" link
       Then I should see "third.party.notices.text"
        When I tap on "done" button
       And I tap on "back" button
        Then I should see "more.menu" screen
        # ##customersupport
        And I swipe down
        When I tap on "customer.support" button
     And I tap on "customer.support" link
        Then I should see "customer.support.text"
        And I swipe down
      When I tap on "lilly.tempo.support.number"
         Then I should see "contact" pop-up
         When I tap on "cancel" button
         When I tap on "back" button
         When I tap on "back" button
        Then I should see "more.menu" screen
        ##AboutTempo
        And I swipe down
        When I tap on "about.mytempo.option" button
        And I tap on "customer.support" link
        Then I should see "customer.support.text"
        
        When I swipe down
         And I tap on "lilly.tempo.support.number"
         Then I should see "contact" pop-up
         And I should see "call" button
         When I tap on "cancel" button
       And I tap on "done" button
       
        When I tap on "manufacturer" link
        Then I should see "manufacturer.text"
        When I tap on "done" button
       And I tap on "unique.device.identifier" link
       Then I should see "done" button
        When I tap on "done" button
     
        And I tap on "login.instructions" link
      Then I should see "login.instructions.text"
       When I tap on "done" button
    
        And I tap on "user.guide" link
        Then I should see "user.guide.text"
        And I should scroll up
        When I tap on "done" button
        Then I should see "about.mytempo.screen"
        When I tap on "back" button
        Then I should see "more.menu" screen
    @Precondition
    Scenario: Logout
        When I tap on "more" icon
        And I tap on "login.and.security.option"
        And I tap "logout" button
        And I relaunch the app again
        And I handle login to your account screen
        Then I should see "login.to.your.account" screen