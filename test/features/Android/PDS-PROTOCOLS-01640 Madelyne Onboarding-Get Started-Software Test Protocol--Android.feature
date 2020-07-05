#---------- SRS Covered MAD10-SYS-2512,MAD10-SYS-2513,MAD10-SYS-2343,MAD10-MMA_SRS-231,MAD10-MMA_SRS-16
#---------- MAD10-MMA_SRS-17,MAD10-MMA_SRS-18,MAD10-MMA_SRS-19,MAD10-MMA_SRS-63,MAD10-MMA_SRS-96
#---------- MAD10-MMA_SRS-517,MAD10-MMA_SRS-515,MAD10-MMA_SRS-67
#---------- Version 0
Feature: MADELYNE(MMA) ONBOARDING GET STARTED SOFTWARE TEST PROTOCOL FOR ANDROID
# PRE-CONDITIONS:

# Make sure that Madelyne MMA is installed on the iOS/Android device as per section 6.1.
# Make sure that user allows the Madelyne MMA to Access the device location in android device.
    @SmokeTest
    Scenario: SmokeTest-ONBOARDING GET STARTED & ABOUT TEMPO
        Given I launch the Madelyne application
        Then I see "welcome.to.tempotm" screen
        ##Swipe left Operation
        When I swipe left "welcome.to.temptm" screen
        Then I should see "wireless.logging" screen
        When I swipe left "wireless.logging" screen
        Then I should see "keep.track.of.your.day" screen
        When I swipe left "keep.track.of.your.day" screen
        Then I should see "see.your.progress" screen
        When I swipe left "see.your.progress" screen
        Then I should see "see.your.progress" screen
        ##Swipe Right Operation
        When I swipe right "see.your.progress" screen
        Then I should see "keep.track.of.your.day" screen
        When I swipe right "keep.track.of.your.day" screen
        Then I should see "wireless.logging" screen
        When I swipe right "wireless.logging" screen
        Then I should see "welcome.to.tempotm" screen
        When I swipe right "welcome.to.tempotm" screen
        Then I should see "welcome.to.tempotm" screen
        When I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen
        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        ##Verification-Do not agree
        When I tap on "lets.get.started" button
        And I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        When I swipe left "welcome.to.tempotm" screen
        Then I should see "wireless.logging" screen
        When I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen
        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        ##Swipe left to welcome to tempo screen and tap on i icon
        When I swipe left "welcome.to.tempotm" screen
        And I tap on "i" button
        Then I should see "about.mytempo" screen
        And I should see "mma.version"
        And I should see "customer.support" link
        And I should see "manufacturer" link
        And I should see "unique.device.identifier" link
        And I should see "login.instruction" link
        And I should see "user.guide" link
        When I tap on "customer.support" link
        Then I should see "customer.support.screen"
        When I tap on "close" button
        Then I should see "about.mytempo" screen
        When I tap on "manufacturer" link
        Then I should see "manufacturer.screen"
        When I tap on "close" button
        Then I should see "about.mytempo" screen
        When I tap on "unique.device.identifier" link
        Then I should see "unique.device.identifier.screen"
        When I tap on "close" button
        Then I should see "about.mytempo" screen
        When I tap on "login.instruction" link
        Then I should see "login.instruction.screen"
        When I tap on "close" button
        Then I should see "about.mytempo" screen
        When I tap on "back" button
        Then I should see "welcome.to.tempotm" screen

    @RegressionTest
    Scenario:Regression test-ONBOARDING GET STARTED & ABOUT TEMPO
        Given I launch the Madelyne application
        Then I see "welcome.to.tempotm" screen
        ##Swipe left Operation
        When I swipe left "welcome.to.temptm" screen
        Then I should see "wireless.logging" screen
        And I should see "i" icon
        And I should see "lets.get.started" button
        And I should see "i.already.have.an.account" button
        When I swipe left "wireless.logging" screen
        Then I should see "keep.track.of.your.day" screen
        And I should see "i" icon
        And I should see "lets.get.started" button
        And I should see "i.already.have.an.account" button
        ##Swipe Right Operation
        When I swipe right "keep.track.of.your.day" screen
        Then I should see "wireless.logging" screen
        And I should see "i" icon
        And I should see "lets.get.started" button
        And I should see "i.already.have.an.account" button
        When I swipe right "wireless.logging" screen
        Then I should see "welcome.to.tempotm" screen
        And I should see "i" icon
        And I should see "lets.get.started" button
        And I should see "i.already.have.an.account" button
        When I swipe right "welcome.to.tempotm" screen
        Then I should see "welcome.to.tempotm" screen
        When I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen
        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        ##Verification-Do not agree
        When I tap on "lets.get.started" button
        And I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        When I swipe left "welcome.to.tempotm" screen
        Then I should see "wireless.logging" screen
        When I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen
        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        ##Swipe left to welcome to tempo screen and tap on i icon
        When I swipe left "welcome.to.tempotm" screen
        And I tap on "i" button
        Then I should see "about.mytempo" screen
        And I should see "mma.version"
        And I should see "customer.support" link
        And I should see "manufacturer" link
        And I should see "unique.device.identifier" link
        And I should see "login.instruction" link
        And I should see "user.guide" link
        When I tap on "customer.support" link
        Then I should see "customer.support.screen"
        And I should see "close" button
        And I should see "enquiry" text
        And I should see "lilly.tempo.support.number"
        And I Verify "lilly.tempo.support.number" text
        And "lilly.tempo.support.number" link should be enabled
        And I should see "pre.require.info" text
        And I Verify "pre.require.info" text
        When I swipe down
        Then I should see "my.tempo.app.version"
        And I should see "hardware.model"
        And I should see "android.version"
        When I tap on "close" button
        Then I should see "about.mytempo" screen
        When I tap on "manufacturer" link
        Then I should see "manufacturer.screen"
        And I should see "close" button
        When I tap on "close" button
        Then I should see "about.mytempo" screen
        When I tap on "unique.device.identifier" link
        Then I should see "unique.device.identifier.screen"
        And I should see "close" button
        When I tap on "close" button
        Then I should see "about.mytempo" screen
        When I tap on "login.instruction" link
        Then I should see "login.instruction.screen"
        And I should see "close" button
        When I tap on "close" button
        Then I should see "about.mytempo" screen
        When I tap on "user.guide" link
        Then I should see "user.guide.pdf" screen 
        And I should see "pdf.content"
        When I tap on "back" button 
        Then I should see "about.mytempo" screen
        When I tap on "back" button
        Then I should see "welcome.to.tempotm" screen
    @OnboardingGetStarted
    Scenario: VERIFICATION OF ONBOARDING GET STARTED
        #PRECONDITIONS:
     
        # Make sure that Madelyne MMA is installed on the iOS/Android device as per section 6.1.
        # Make sure that user allows the Madelyne MMA to Access the device location in android device
        ##Home Screen Details
        
        Given I launch the Madelyne application
        Then I see "welcome.to.tempotm" screen
        And I Verify "welcome.to.tempotm" text
        # And I should see "welcome.to.tempotm.image"    ######Not Feasible via Appium Automation Yet#########
        # # And I should see "orange.header" bullet      ######Not Feasible via Appium Automation Yet#########
        And I should see "i" icon
        And I should see "get.started.message" text
        And I Verify "get.started.message" text
        # And I should see "four.navigation" dots       ######Not Feasible via Appium Automation Yet#########
        # And I should see "first.dot" highlighted      ######Not Feasible via Appium Automation Yet#########
        And I should see "lets.get.started" button
        And I Verify "lets.get.started" text
        And I should see "i.already.have.an.account" button
        And I Verify "i.already.have.an.account" text
        ##Swipe left operation
        When I swipe left "welcome.to.temptm" screen
        Then I should see "wireless.logging" screen
        And I Verify "wireless.logging" text
        # And I should see "wireless.logging.image"         ######Not Feasible via Appium Automation Yet#########
        # # And I should see "orange.header" bullet         ######Not Feasible via Appium Automation Yet#########
        And I should see "i" icon
        And I should see "automatically.log.message" text
        And I Verify "automatically.log.message" text
        # And I should see "four.navigation" dots       ######Not Feasible via Appium Automation Yet#########
        # And I should see "second.dot" highlighted     ######Not Feasible via Appium Automation Yet#########
        And I should see "lets.get.started" button
        And I should see "i.already.have.an.account" button
        When I swipe left "wireless.logging" screen
        Then I should see "keep.track.of.your.day" screen
        And I Verify "keep.track.of.your.day" text
        # And I should see "keep.track.of.your.day.image"       ######Not Feasible via Appium Automation Yet#########
        # # And I should see "orange.header" bullet             ######Not Feasible via Appium Automation Yet#########
        And I should see "i" icon
        And I should see "see.what.messages" text
        And I Verify "see.what.messages" text
        # And I should see "four.navigation" dots       ######Not Feasible via Appium Automation Yet#########
        # And I should see "third.dot" highlighted      ######Not Feasible via Appium Automation Yet#########
        And I should see "lets.get.started" button
        And I should see "i.already.have.an.account" button
        When I swipe left "keep.track.of.your.day" screen
        Then I should see "see.your.progress" screen
        # And I should see "see.your.progress.image"        ######Not Feasible via Appium Automation Yet#########
        # # And I should see "orange.header" bullet         ######Not Feasible via Appium Automation Yet#########
        And I should see "i" icon
        And I should see "see.your.data.message" text
        Then I Verify "see.your.progress" text
        # And I should see "four.navigation" dots       ######Not Feasible via Appium Automation Yet#########
        # And I should see "fourth.dot" highlighted     ######Not Feasible via Appium Automation Yet#########
        And I should see "lets.get.started" button
        And I should see "i.already.have.an.account" button
        When I swipe left "see.your.progress" screen
        Then I should see "see.your.progress" screen
        And I should see "i" icon
        And I should see "see.your.data.message" text
        # And I should see "four.navigation" dots       ######Not Feasible via Appium Automation Yet#########
        # And I should see "fourth.dot" highlighted     ######Not Feasible via Appium Automation Yet#########
        And I should see "lets.get.started" button
        And I should see "i.already.have.an.account" button
        ##Swipe Right Operation
        When I swipe right "see.your.progress" screen
        Then I should see "keep.track.of.your.day" screen
        When I swipe right "keep.track.of.your.day" screen
        Then I should see "wireless.logging" screen
        When I swipe right "wireless.logging" screen
        Then I should see "welcome.to.tempotm" screen
        When I swipe right "welcome.to.tempotm" screen
        Then I should see "welcome.to.tempotm" screen
        When I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen
        And I Verify "terms.and.privacy" text
        # And I should see "progress.bar.with.7%"           ######Not Feasible via Appium Automation Yet#########
        And I should see "i.have.read.and.agree.instruction" text
        And I Verify "i.have.read.and.agree.instruction" text
        #And I should see "terms.of.use" hyperlink
        #And I should see "privacy.statement" hyperlink
        And I should see "agree.and.continue" button
        And I Verify "agree.and.continue" text
        And I should see "do.not.agree" button
        And I Verify "do.not.agree" text
        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        When I swipe left "welcome.to.tempotm" screen
        Then I should see "wireless.logging" screen
        When I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen
        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        When I swipe left "welcome.to.tempotm" screen
        And I swipe left "wireless.logging" screen
        And I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen
        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        When I swipe left "welcome.to.tempotm" screen
        And I swipe left "wireless.logging" screen
        And I swipe left "keep.track.of.your.day" screen
        And I tap on "lets.get.started" button
        Then I should see "terms.and.privacy" screen
        When I tap on "do.not.agree" button
        Then I should see "welcome.to.tempotm" screen
        When I tap on "i.already.have.an.account" button
        Then I should see "login.to.your.account" screen
        
    # @OnboardingAboutTempo
    # Scenario: VERIFICATION OF ONBOARDING ABOUT TEMPO
    #    #PRE-CONDITIONS:

    #     # Make sure that Madelyne MMA is uninstalled and again freshly installed on the iOS/Android device as per section 6.1.
    #     # Make sure that device is not connected to internet.
  
    #     Given I launch the Madelyne application
    #     Then I should see "welcome.to.tempotm" screen
    #     When I tap on "i" icon
    #     Then I should see "about.mytempo" screen
    #     And I Verify "about.mytempo" text
    #     And I should see "mma.version" text
    #     And I should see "back" button
    #     And I should see "customer.support" link
    #     And I Verify "customer.support" text
    #     And I should see "manufacturer" link
    #     And I Verify "manufacturer" text
    #     And I should see "unique.device.identifier" link
    #     And I Verify "unique.device.identifier" text
    #     And I should see "login.instruction" link
    #     And I Verify "login.instruction" text
    #     And I should see "user.guide" link
    #     And I Verify "user.guide" text
    #     When I tap on "customer.support" link
    #     Then I should see "customer.support.screen"
    #     # # And I should see "orange.header" bullet         ######Not Feasible via Appium Automation Yet#########
    #     And I should see "close" button
    #     And I should see "enquiry" text
    #     And I Verify "enquiry" text                   
       
    #     And I should see "lilly.tempo.support.number"
    #     And I Verify "lilly.tempo.support.number" text
    #     And I should see "lilly.tempo.support.number" link is enabled
    #     And I should see "pre.require.info" text
    #     And I Verify "pre.require.info" text
    #     When I swipe down
    #     Then I should see "my.tempo.app.version" 
    #     And I should see "hardware.model"
    #     And I should see "android.version"
    #     #------Verifying the Lilly Customer Care Contact number    ##not working
    #     # When I tap on "lilly.tempo.support.number"
    #     # Then I should see lilly answer center contact number in dialing screen
    #     # When I activate the application
    #     # Then I should see "customer.support.screen"
    #     # When I tap on "lilly.tempo.support.number"
    #     # Then I should see lilly answer center contact number in dialing screen
    #     # When I tap on Call button
    #     # And I activate the application

    #     # When I tap on "done" button     #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     When I tap on "manufacturer" link
    #     Then I should see "manufacturer.screen"
    #     ## And I should see "orange.header" bullet          ######Not Feasible via Appium Automation Yet#########
    #     And I should see "eli.lilly.address"
    #     # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     When I tap on "unique.device.identifier" link
    #     Then I should see "unique.device.identifier.screen"
    #     # # And I should see "orange.header" bullet         ######Not Feasible via Appium Automation Yet#########
    #     And I should see "unique.device.identifier.number"
    #     And I Verify "unique.device.identifier.number" text
    #     And I should see "close" button
    #     # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #verification of Login Instruction link
    #     When I tap on "login.instruction" link
    #     Then I should see "login.instruction.screen"
    #     # #And I should see "login.instruction.content"
       
    #     # # And I should see "orange.header" bullet         ######Not Feasible via Appium Automation Yet#########
    #      # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #-------Verification of User Guide
    #     When I tap on "user.guide" link
    #     Then I should see "user.guide.pdf" screen 
    #     And I should see "pdf.content"
    #     When I tap on "back" button 
    #     Then I should see "about.mytempo" screen
     
    #     When I tap on "back" button
    #     Then I should see "welcome.to.tempotm" screen
    #     ##Swipe left to welcome to tempo screen and tap on i icon
    #     When I swipe left "welcome.to.tempotm" screen
    #     And I tap on "i" button
    #     Then I should see "about.mytempo" screen
    #     And I should see "mma.version"
    #     And I should see "back" button
    #     And I should see "customer.support" link
    #     And I should see "manufacturer" link
    #     And I should see "unique.device.identifier" link
    #     And I should see "login.instruction" link
    #     And I should see "user.guide" link
    #     When I tap on "customer.support" link
    #     Then I should see "customer.support.screen"
    #     # And I should see "orange.header" bullet           ######Not Feasible via Appium Automation Yet#########
    #     And I should see "close" button
    #     And I should see "enquiry" text
    #     And I should see "lilly.tempo.support.number"
    #     And I Verify "lilly.tempo.support.number" text
    #     And "lilly.tempo.support.number" link should be enabled
    #     And I should see "pre.require.info" text
    #     And I Verify "pre.require.info" text
    #     When I swipe down
    #     Then I should see "my.tempo.app.version"
    #     And I should see "hardware.model"
    #     And I should see "android.version"
    #     #----Verifying the Lilly Customer Care Contact number
    #     # When I tap on "lilly.tempo.support.number"
    #     # Then I should see lilly answer center contact number in dialing screen
    #     # When I activate the application
    #     # Then I should see "customer.support.screen"
    #     # When I tap on "lilly.tempo.support.number"
    #     # Then I should see lilly answer center contact number in dialing screen
    #     # When I tap on Call button
    #     # And I activate the application

    #     # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     When I tap on "manufacturer" link
    #     Then I should see "manufacturer.screen"
    #     # # And I should see "orange.header" bullet         ######Not Feasible via Appium Automation Yet#########
    #     And I should see "eli.lilly.address"
    #     And I should see "close" button
    #     # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     When I tap on "unique.device.identifier" link
    #     Then I should see "unique.device.identifier.screen"
    #     # And I should see "orange.header" bullet         ######Not Feasible via Appium Automation Yet#########
    #     And I should see "close" button
    #     #And I should see "unique.device.identifier.number"
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     When I tap on "login.instruction" link
    #     Then I should see "login.instruction.screen" 
    #     And I should see "close" button
    #     # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #-----Verification of User Guide
    #     When I tap on "user.guide" link
    #     Then I should see "user.guide.pdf" screen 
    #     And I should see "pdf.content"
    #     When I tap on "back" button 
    #     Then I should see "about.mytempo" screen
    #     When I tap on "back" button
    #     Then I should see "welcome.to.tempotm" screen

    #     ##Swipe left to keep track screen
    #     When I swipe left "welcome.to.tempotm" screen
    #     And I swipe left "wireless.logging" screen
    #     And I tap on "i" icon
    #     Then I should see "about.mytempo" screen
    #     And I should see "mma.version"
    #     And I should see "back" button
    #     And I should see "customer.support" link
    #     And I should see "manufacturer" link
    #     And I should see "unique.device.identifier" link
    #     And I should see "login.instruction" link
    #     And I should see "user.guide" link
    #     #----Verification of Customer Support
    #     When I tap on "customer.support" link
    #     Then I should see "customer.support.screen"
    #     # And I should see "orange.header" bullet       ######Not Feasible via Appium Automation Yet#########
    #     And I should see "close" button
    #     And I should see "enquiry" text
    #     And I should see "lilly.tempo.support.number"
    #     And I Verify "lilly.tempo.support.number" text
    #     And "lilly.tempo.support.number" link should be enabled
    #     And I should see "pre.require.info" text
    #     And I Verify "pre.require.info" text
    #     When I swipe down
    #     Then I should see "my.tempo.app.version"
    #     And I should see "hardware.model"
    #     And I should see "android.version"
    #     #-----Verifying the Lilly Customer Care Contact number
    #     # When I tap on "lilly.tempo.support.number"
    #     # Then I should see lilly answer center contact number in dialing screen
    #     # When I activate the application
    #     # Then I should see "customer.support.screen"
    #     # When I tap on "lilly.tempo.support.number"
    #     # Then I should see lilly answer center contact number in dialing screen
    #     # When I tap on Call button
    #     # And I activate the application

    #      # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #----Verification of Manufacturer link
    #     When I tap on "manufacturer" link
    #     Then I should see "manufacturer.screen"
    #     # And I should see "orange.header" bullet           ######Not Feasible via Appium Automation Yet#########
    #     # And I should see "eli.lilly.address"
    #     # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #----Verification of Unique Device Identifier link
    #     When I tap on "unique.device.identifier" link
    #     Then I should see "unique.device.identifier.screen"
    #     # And I should see "orange.header" bullet           ######Not Feasible via Appium Automation Yet#########
    #     And I should see "close" button
    #     #And I should see "unique.device.identifier.number"
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #-----verification of Login Instruction link
    #     When I tap on "login.instruction" link
    #     Then I should see "login.instruction.screen"
    #     #####################Content Not updated ########################
    #     # And I Verify "login.instructions.getting.started.subtext" text
    #     # When I swipe down
    #     # Then I Verify "login.instructions.setting.up.account" text
    #     # And I Verify "login.instructions.setting.up.account.subtext" text
    #     # And I should see "orange.header" bullet       ######Not Feasible via Appium Automation Yet#########
    #     And I should see "close" button
    #     # When I tap on "done" button  #not present in this build
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #----Verifiaction of User Guide
    #     When I tap on "user.guide" link
    #     Then I should see "user.guide.pdf" screen 
        
    #     When I tap on "open.source.licenses" link
    #     Then I should see "open.source.licenses.screen" screen  
    #     When I tap on "back" button 
    #     Then I should see "about.mytempo" screen

    #     When I tap on "back" button
    #     Then I should see "welcome.to.tempotm" screen
    #     ##Swipe left to till end
    #     When I swipe left "welcome.to.tempotm" screen
    #     And I swipe left "wireless.logging" screen
    #     And I swipe left "keep.track.of.your.day" screen
    #     And I tap on "i" icon
    #     Then I should see "about.mytempo" screen
    #     And I should see "mma.version"
    #     And I should see "back" button
    #     And I should see "customer.support" link
    #     And I should see "manufacturer" link
    #     And I should see "unique.device.identifier" link
    #     And I should see "login.instruction" link
    #     And I should see "user.guide" link
    #     #------Verification of Customer Support
    #     When I tap on "customer.support" link
    #     Then I should see "customer.support.screen"
    #     # And I should see "orange.header" bullet           ######Not Feasible via Appium Automation Yet#########
    #     And I should see "close" button
    #     And I should see "enquiry" text
    #     And I should see "lilly.tempo.support.number"
    #     And I Verify "lilly.tempo.support.number" text
    #     And I should see "lilly.tempo.support.number" link is enabled
    #     And I should see "pre.require.info" text
    #     And I Verify "pre.require.info" text
    #     When I swipe down
    #     Then I should see "my.tempo.app.version"
    #     And I should see "hardware.model"
    #     And I should see "android.version"
    #     #-----Verifying the Lilly Customer Care Contact number
    #     # When I tap on "lilly.tempo.support.number"
    #     # Then I should see lilly answer center contact number in dialing screen
    #     # When I activate the application
    #     # Then I should see "customer.support.screen"
    #     # When I tap on "lilly.tempo.support.number"
    #     # Then I should see lilly answer center contact number in dialing screen
    #     # When I tap on Call button
    #     # And I activate the application
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #---Verification of Manufacturer link
    #     When I tap on "manufacturer" link
    #     Then I should see "manufacturer.screen"
    #     # And I should see "orange.header" bullet           ######Not Feasible via Appium Automation Yet#########
    #     # And I should see "eli.lilly.address"
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
        
    #     #----verification of Login Instruction link
    #     When I tap on "login.instruction" link
    #     Then I should see "login.instruction.screen"
    #     ######Content Not updated #############
    #     # And I Verify "login.instructions.getting.started.subtext" text
    #     # When I swipe down
    #     # Then I Verify "login.instructions.setting.up.account" text
    #     # And I Verify "login.instructions.setting.up.account.subtext" text
    #     And I should see "close" button
    #     # And I should see "orange.header" bullet           ######Not Feasible via Appium Automation Yet#########
    #     And I should see "close" button
    #     When I tap on "close" button
    #     Then I should see "about.mytempo" screen
    #     #----Verification of User Guide
    #     When I tap on "user.guide" link
    #     Then I should see "user.guide.pdf" screen 
    #     When I tap on "open.source.licenses" link
    #     Then I should see "open.source.licenses.screen" screen  
       
    #     When I tap on "back" button 
    #     Then I should see "about.mytempo" screen

    #     When I tap on "back" button
    #     Then I should see "welcome.to.tempotm" screen

