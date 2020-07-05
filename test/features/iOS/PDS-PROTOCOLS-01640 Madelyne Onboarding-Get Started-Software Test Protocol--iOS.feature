#---------- SRS Covered MAD10-SYS-2512,MAD10-SYS-2513,MAD10-SYS-2343,MAD10-MMA_SRS-231,MAD10-MMA_SRS-16
#---------- MAD10-MMA_SRS-17,MAD10-MMA_SRS-18,MAD10-MMA_SRS-19,MAD10-MMA_SRS-63,MAD10-MMA_SRS-96
#---------- MAD10-MMA_SRS-517,MAD10-MMA_SRS-515,MAD10-MMA_SRS-67
#---------- Version 1
Feature: MADELYNE(MMA) ONBOARDING GET STARTED SOFTWARE TEST PROTOCOL FOR IOS
        #PRECONDITIONS:
        # Make sure that the iOS/Android device is connected to the internet.
        # Make sure that that user has installed Madelyne MMA App as per section 6.1.
        # Make sure that the MMA App displays “Let’s Get Started” screen.

        @SmokeTest
        Scenario: ONBOARDING GET STARTED SOFTWARE TEST PROTOCOL FOR IOS
                Given I launch the Madelyne application
                Then I see "welcome.to.tempotm" screen
                And I should see "lets.get.started" button
                And I should see "i.already.have.an.account" button
                When I swipe left "welcome.to.temptm" screen
                Then I should see "wireless.logging" screen
                When I swipe left "wireless.logging" screen
                Then I should see "keep.track.of.your.day" screen
                When I swipe left "keep.track.of.your.day" screen
                Then I should see "see.your.progress" screen
                When I swipe left "see.your.progress" screen
                Then I should see "see.your.progress" screen
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
                And I should see "i.have.read.and.agree.instruction" text
                And I should see "agree.and.continue" button
                And I should see "do.not.agree" button
                When I tap on "do.not.agree" button
                Then I should see "welcome.to.tempotm" screen
                When I tap on "i.already.have.an.account" button
                Then I should see "login.to.your.account" screen
                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen
                When I tap on "i" icon
                Then I should see "about.mytempo" screen
                #Customer Support
                When I tap on "customer.support" link
                And I swipe down
               # When I tap on "lilly.tempo.support.number"
                # Then I should see "contact" pop-up
                # And I should see "call" button
                # And I should see "cancel" button
                # When I tap on "cancel" button
                # Then I should see "customer.support.screen"
                And I tap on "done" button
                Then I should see "about.mytempo" screen

                #Manufacturer link
                When I tap on "manufacturer" link
                And I tap on "done" button
                Then I should see "about.mytempo" screen

                #Unique Device Identifier
                When I tap on "unique.device.identifier" link
                And I tap on "done" button
                Then I should see "about.mytempo" screen

                #Login Instructions
                When I tap on "login.instruction" link
                And I tap on "done" button
                Then I should see "about.mytempo" screen

                #User Guide
                When I tap on "user.guide" link
                Then I should see "user.guide.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen

        @RegressionTest
        Scenario:Regression Test
                Given I launch the Madelyne application
                Then I should see "welcome.to.tempotm" screen
                And I should see "lets.get.started" button
                And I should see "i.already.have.an.account" button
                When I swipe left "welcome.to.temptm" screen
                Then I should see "wireless.logging" screen
                When I swipe left "wireless.logging" screen
                Then I should see "keep.track.of.your.day" screen
                When I swipe left "keep.track.of.your.day" screen
                Then I should see "see.your.progress" screen
                When I swipe left "see.your.progress" screen
                Then I should see "see.your.progress" screen
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
                When I should see "i.have.read.and.agree.instruction" text
                Then I should see "agree.and.continue" button
                And I should see "do.not.agree" button
                When I tap on "do.not.agree" button
                Then I should see "welcome.to.tempotm" screen
                When I tap on "i.already.have.an.account" button
                Then I should see "login.to.your.account" screen
                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen
                When I tap on "lets.get.started" button
                Then I should see "terms.and.privacy" screen
                And I should see "i.have.read.and.agree.instruction" text
                And I should see "agree.and.continue" button
                And I should see "do.not.agree" button
                When I tap on "do.not.agree" button
                Then I should see "welcome.to.tempotm" screen
                When I tap on "i.already.have.an.account" button
                Then I should see "login.to.your.account" screen
                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen
                When I tap on "i" icon
                Then I should see "about.mytempo" screen
                
                When I tap on "customer.support" link
                Then I should see "customer.support.screen"
                And I should see "done" button
                # When I tap on "lilly.tempo.support.number"
                # Then I should see "contact" pop-up
                # And I should see "call" button
                # And I should see "cancel" button
                # When I tap on "cancel" button
                # Then I should see "customer.support.screen"
                And I tap on "done" button
                Then I should see "about.mytempo" screen
                When I tap on "manufacturer" link
                Then I should see "manufacturer.screen"
                And I should see "done" button
                When I tap on "done" button
                Then I should see "about.mytempo" screen
                When I tap on "unique.device.identifier" link
                Then I should see "unique.device.identifier.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen
                When I tap on "login.instruction" link
                Then I should see "login.instruction.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen
                # When I tap on "user.guide" link
                # Then I should see "user.guide.screen"
                # When I tap on "done" button
                # Then I should see "about.mytempo" screen
                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen

        @onboardingGetStarted
        Scenario: Verification of welcome to tempo screen
                Given I launch the Madelyne application
                Then I see "welcome.to.tempotm" screen
                #1.Welcome to TempoTM screen
                When I swipe left "welcome.to.temptm" screen
                Then I should see "wireless.logging" screen
                
                #2.Wireless Logging screen
                When I swipe left "wireless.logging" screen
                Then I should see "keep.track.of.your.day" screen
                
                #3.Keep track Your Day Screen
                When I swipe left "keep.track.of.your.day" screen
                Then I should see "see.your.progress" screen
                
                #4.See your progress
                When I swipe left "see.your.progress" screen
                Then I should see "see.your.progress" screen
                
                #swipe Right Operation
                #1.See Your Progess Screen
                When I swipe right "see.your.progress" screen
                Then I should see "keep.track.of.your.day" screen
                #2.Keep Track Of Your Day screen
                When I swipe right "keep.track.of.your.day" screen
                Then I should see "wireless.logging" screen
                #3.Wireless Logging
                When I swipe right "wireless.logging" screen
                Then I should see "welcome.to.tempotm" screen
                #4.Welcome To TempTM screen
                When I swipe right "welcome.to.tempotm" screen
                Then I should see "welcome.to.tempotm" screen
               
               
                When I tap on "lets.get.started" button
                Then I should see "terms.and.privacy" screen
                
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

        @onboardingAboutTempo
        Scenario: Going till welcome to tempo screen
                # PRE-CONDITIONS:
                # •Make sure that Madelyne MMA is installed on the iOS/Android device as per section 6.1.
                # •Make sure that device is not connected to internet.
                Given I launch the Madelyne application
                Then I should see "welcome.to.tempotm" screen
                When I tap on "i" icon
                Then I should see "about.mytempo" screen
                When I tap on "customer.support" link
                Then I should see "customer.support.screen"
                # When I tap on "lilly.tempo.support.number"
                # Then I should see "contact" pop-up
                # And I should see "call" button
                # And I should see "cancel" button
                # When I tap on "cancel" button
                # Then I should see "customer.support.screen"
                And I tap on "done" button
                Then I should see "about.mytempo" screen
                When I tap on "manufacturer" link
                Then I should see "manufacturer.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "unique.device.identifier" link
                Then I should see "unique.device.identifier.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "login.instruction" link
                Then I should see "login.instruction.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "user.guide" link
                Then I should see "user.guide.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen
                When I swipe left "welcome.to.tempotm" screen
                And I tap on "i" button
                Then I should see "about.mytempo" screen

                When I tap on "customer.support" link
                Then I should see "customer.support.screen"
                # When I tap on "lilly.tempo.support.number"
                # Then I should see "contact" pop-up
                # And I should see "call" button
                # And I should see "cancel" button
                # When I tap on "cancel" button
                # Then I should see "customer.support.screen"
                And I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "manufacturer" link
                Then I should see "manufacturer.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "unique.device.identifier" link
                Then I should see "unique.device.identifier.screen"
        
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "login.instruction" link
                Then I should see "login.instruction.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "user.guide" link
                Then I should see "user.guide.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen
                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen

                When I swipe left "welcome.to.tempotm" screen
                And I swipe left "wireless.logging" screen
                And I tap on "i" icon
                Then I should see "about.mytempo" screen
                
                When I tap on "customer.support" link
                Then I should see "customer.support.screen"
                # When I tap on "lilly.tempo.support.number"
                # Then I should see "contact" pop-up
                # And I should see "call" button
                # And I should see "cancel" button
                # When I tap on "cancel" button
                # Then I should see "customer.support.screen"
                And I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "manufacturer" link
                Then I should see "manufacturer.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "unique.device.identifier" link
                Then I should see "unique.device.identifier.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "login.instruction" link
                Then I should see "login.instruction.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "user.guide" link
                Then I should see "user.guide.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen
                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen

                When I swipe left "welcom.to.tempotm" screen
                And I swipe left "wireless.logging" screen
                And I swipe left "keep.track.of.your.day" screen
                And I tap on "i" icon
                Then I should see "about.mytempo" screen
                
                When I tap on "customer.support" link
                Then I should see "customer.support.screen"
                # When I tap on "lilly.tempo.support.number"
                # Then I should see "contact" pop-up
                # And I should see "call" button
                # And I should see "cancel" button
                # When I tap on "cancel" button
                # Then I should see "customer.support.screen"
                And I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "manufacturer" link
                Then I should see "manufacturer.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "unique.device.identifier" link
                Then I should see "unique.device.identifier.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen

                When I tap on "login.instruction" link
                Then I should see "login.instruction.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen
                When I tap on "user.guide" link
                Then I should see "user.guide.screen"
                When I tap on "done" button
                Then I should see "about.mytempo" screen
                When I tap on "back" button
                Then I should see "welcome.to.tempotm" screen
