Feature: MADELYNE MORE MENU – TERMS AND PRIVACY, HELP AND ABOUT MYTEMPO- SOFTWARE TEST PROTOCOL

# PRE-CONDITIONS:

# Make sure that Madelyne MMA is installed on the iOS/Android device as per section 6.1
# Make sure the user is registered successfully on MMA App as per section 6.2.
# Make sure that Device is connected to internet.
# Make sure that user is navigated to home screen as per section 6.4.

@Precondition
Scenario: Navigating to Home Screen

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
When I tap on "i.do.not.have.a.partner.sharing.code" button
Then I should see "account.setup" screen
And I Verify "account.setup" text
And I should see "continue" button
And I Verify "continue" text
When I tap on "continue" button
Then I should see "connect.smart" screen
And I Verify "connect.smart" text
When I tap on "squire.skip" button
Then I should see "connect.blood.sugar.meter" screen
And I Verify "connect.blood.sugar.meter" text
And I should see "bgm.skip" button
And I Verify "bgm.skip" text
When I tap on "bgm.skip" button
Then I should see "home" screen
And I should see "home.screen.popup" pop-up
And I should see "this.is.where.you.will.see" text
And I should see "home.next" button
And I should see "home.close" button
When I tap on "home.close" button
And I disable Bluetooth Notification pop-up
And I handle Connect Your Devices pop-up
And I tap on "home" option
Then I should see "home" screen

@TermsAndPrivacy
Scenario: Verification of More Menu - Terms and Privacy Screen

#Pre-Conditions
#  Make sure that Madelyne MMA is installed on the iOS/Android device as per section 6.1
#  Make sure the user is registered successfully on MMA App as per section 6.2.
#  Make sure that Device is connected to internet.
#  Make sure that user is navigated to home page as per section 6.4.
#--------- Setting for privacy and legal process
Given I should see "home" screen
When I tap on "more" option
And I Swipe Down "about.my.tempo" 
And I tap on "terms.and.privacy.more.menu"
Then I should see "terms.and.conditions" screen

##Terms of Use link
When I tap on "terms.of.use" link
Then I should see "x.close" button
#And I should see "orange.header.bullet"  # colors cannot be automated
And I should see "terms.of.use.text"
And I should see "terms.of.use.content" text
When I tap on "x.close" button

##Privacy Statement link
And I tap on "privacy.statement" link
Then I should see "x.close" button
#And I should see "orange.header.bullet"  # colors cannot be automated
And I should see "privacy.statement.text"
And I should see "privacy.statement.content" text
When I tap on "x.close" button
                   
##Third Party Notices
And I tap on "third.party.notices" link
Then I should see "x.close" button
#And I should see "orange.header.bullet"  # colors cannot be automated
When I wait for "10" seconds
Then I should see "third.party.notices.text"
And I should see "third.party.notices.content.1" text
And I should see "third.party.notices.content.2" text
When I tap on "x.close" button
And I tap on "back" button
Then I should see "more.menu" screen
When I tap on "home" option 
Then I should see "home" screen

###-------Following cannot be automated-----------------####

# When I turn off Internet connection
# And I navigate back to MMA app
# Then I should see "more.menu" screen
# When I tap on "terms.and.privacy.more.menu"
# Then I should see "terms.and.conditions" screen


# ##Terms of Use link
# When I tap on "terms.of.use" link
# Then I should see "x.close" button
# #And I should see "orange.header.bullet"  # colors cannot be automated
# And I should see "terms.of.use.text"
# And I should see "terms.of.use.content" text
# When I tap on "x.close" button

# ##Privacy Statement link
# And I tap on "privacy.statement" link
# Then I should see "x.close" button
# #And I should see "orange.header.bullet"  # colors cannot be automated
# And I should see "privacy.statement.text"
# And I should see "privacy.statement.content" text
# When I tap on "x.close" button
                   
# ##Third Party Notices
# And I tap on "third.party.notices" link
# Then I should see "x.close" button
# #And I should see "orange.header.bullet"  # colors cannot be automated
# And I should see "third.party.notices.text"
# And I should see "third.party.notices.content.1" text
# And I should see "third.party.notices.content.2" text
# When I tap on "x.close" button
# And I tap on "back" button
# Then I should see "more.menu" screen


@CustomerSupport
Scenario: Verification of More Menu - Customer Support Screen

#  PRE-CONDITIONS:
#  Make sure that Madelyne MMA is installed and launched on the iOS/Android device as per section 6.1.
#  Make sure the user is registered successfully on MMA App as per section 6.2.
#  Make sure that Device is connected to internet.
#  Make Sure that user is navigated till Home page of MMA App as per section 6.4.

Given I should see "home" screen
When I tap on "more.icon"
Then I should see "more.menu" screen

When I Swipe Down "about.my.tempo"

#------Steps for Lilly Customer Care Services----

And I tap on "customer.support" link
Then I should see "customer.support" screen
#And I should see "orange.header.bullet"  # colors cannot be automated
And I Verify "customer.support.text" text
# When I tap on "lilly.tempo.support.number"  ## unable to tap through automation
# Then I should see device dialling screen displayed with number
# When I tap on Call button
# Then I should see device allowed user to connect with customer support
# When I end the Call
# And I navigate to back application
# Then I should see "customer.support" screen
When I tap on "x.close" button
# And I tap on "back" button
Then I should see "more.menu" screen

When I tap on "home" option 
Then I should see "home" screen
    
@AboutMyTempo 
Scenario: Verification of More Menu - About myTempo Screen

#PRE-CONDITIONS:
#  “Madelyne MMA” App should be installed on iOS/Android device as per section 6.1.
#  Make Sure that User is registered successfully on MMA App as per section 6.2
#  Make sure the device is connected to internet.
#  On the device, the date and time shall be the current one.
#  Make sure that user is navigated till Home page of MMA App as per section 6.4
# Verification of Lilly MMA Complete Information

Given I should see "home" screen
When I tap on "more.icon"
Then I should see "more.menu" screen
When I Swipe Down "about.my.tempo" 
And I tap on "about.my.tempo" button
Then I should see "about.my.tempo.title" screen
And I Verify "about.my.tempo.title" text
When I tap on "customer.support" link
Then I should see "customer.support" screen
# When I tap on "lilly.tempo.support.number"  ## unable to tap through automation
# Then I should see device dialling screen displayed with number
# When I tap on Call button
# Then I should see device allowed user to connect with customer support
# When I end the Call
# And I navigate to back application
# Then I should see "customer.support" screen
When I tap on "x.close" button
      
#Manufacturer 
And I tap on "manufacturer" link
Then I should see "manufacturer.text" 
When I tap on "x.close" button

# Unique Device Identifier 
And I tap on "unique.device.identifier" link
Then I should see "unique.device.identifier.text" 
When I tap on "x.close" button

#Login Instructions
And I tap on "login.instructions" link
Then I should see "login.instructions.text" 
When I tap on "x.close" button

#User Guide
And I tap on "user.guide" link
And I wait for "5" seconds
Then I should see "user.guide.pdf" screen
And I should see "pdf.content"
When I tap on "back" button 
Then I should see "about.my.tempo.title"

###-------Following cannot be automated-----------------####

# When I turn off Internet connection
# And I navigate back to MMA app
# Then I should see "more.menu" screen
# When I tap on "about.my.tempo" button
# And I tap on "user.guide" link
# And I wait for "5" seconds
# Then I should see "user.guide.pdf" screen
# And I should see "pdf.content"

When I tap on "back" button
Then I should see "more.menu" screen

@SmokeTest
Scenario: Smoke Test for More Menu - Terms and Privacy , Help and About myTempo Screen

##Terms and Privacy
Given I should see "home" screen
When I tap on "more.icon"
And I Swipe Down "about.my.tempo" 
And I tap on "terms.and.privacy.more.menu"
Then I should see "terms.and.conditions" screen

##Terms of Use link
When I tap on "terms.of.use" link
Then I should see "terms.of.use.text"
When I swipe down
And I tap on "x.close" button

        
##Privacy Statement link
And I tap on "privacy.statement" link
Then I should see "privacy.statement.text"
When I swipe down
And I tap on "x.close" button

##Third Party Notices
And I tap on "third.party.notices" link
Then I should see "third.party.notices.text"
When I wait for "10" seconds
And I tap on "x.close" button     
And I tap on "back" button
Then I should see "more.menu" screen

##Customer Support
When I Swipe Down "about.my.tempo" 
And I tap on "customer.support" link
Then I should see "customer.support" screen
When I tap on "x.close" button
Then I should see "more.menu" screen

##About my Tempo
When I Swipe Down "about.my.tempo" 
And I tap on "about.my.tempo" button
Then I should see "about.my.tempo.title" screen
        
##Customer Support
When I tap on "customer.support" link
Then I should see "customer.support" screen
When I tap on "x.close" button
Then I should see "about.my.tempo.title"
        
#Manufacturer 
When I tap on "manufacturer" link
Then I should see "manufacturer.text"
When I tap on "x.close" button

# Unique Device Identifier 
And I tap on "unique.device.identifier" link
Then I should see "unique.device.identifier.text" 
When I tap on "x.close" button


#Login Instructions
And I tap on "login.instructions" link
Then I should see "login.instructions.text" 
When I swipe down
Then I should see "x.close" button
When I tap on "x.close" button

#User Guide
And I tap on "user.guide" link
And I wait for "5" seconds
Then I should see "user.guide.pdf" screen
When I tap on "back" button 
Then I should see "about.my.tempo.title"

When I tap on "back" button
Then I should see "more.menu" screen


@RegressionTest
Scenario: Regression Test for More Menu - Terms and Privacy , Help and About myTempo Screen

Given I should see "home" screen
When I tap on "more.icon"
And I Swipe Down "about.my.tempo" 
And I tap on "terms.and.privacy.more.menu"
Then I should see "terms.and.conditions" screen

##Terms of Use link
When I tap on "terms.of.use" link
Then I should see "terms.of.use.text"
When I swipe down
And I tap on "x.close" button
Then I should see "terms.and.conditions" screen
        
##Privacy Statement link
When I tap on "privacy.statement" link
Then I should see "privacy.statement.text"
When I swipe down
And I tap on "x.close" button
Then I should see "terms.and.conditions" screen            
        
##Third Party Notices
When I tap on "third.party.notices" link
Then I should see "third.party.notices.text"
When I wait for "10" seconds
And I tap on "x.close" button
Then I should see "terms.and.conditions" screen          
When I tap on "back" button
Then I should see "more.menu" screen

##Customer Support
When I Swipe Down "about.my.tempo"
And I tap on "customer.support" link
Then I should see "customer.support" screen
When I tap on "x.close" button
Then I should see "more.menu" screen

##About Tempo
When I Swipe Down "about.my.tempo" 
And I tap on "about.my.tempo" button
Then I should see "about.my.tempo.title"
   

##Customer Support
When I tap on "customer.support" link
Then I should see "customer.support" screen
When I tap on "x.close" button
Then I should see "about.my.tempo.title" screen

#Manufacturer link
When I tap on "manufacturer" link
Then I should see "manufacturer.text"
When I tap on "x.close" button

# Unique Device Identifier 
And I tap on "unique.device.identifier" link
Then I should see "unique.device.identifier.text"
When I tap on "x.close" button

#Login Instructions
And I tap on "login.instructions" link
Then I should see "login.instructions.text"
When I swipe down
Then I should see "x.close" button
When I tap on "x.close" button

#User Guide
And I tap on "user.guide" link
And I wait for "5" seconds
Then I should see "user.guide.pdf" screen
And I should see "pdf.content"
When I tap on "back" button 
Then I should see "about.my.tempo.title"

When I tap on "back" button
Then I should see "more.menu" screen


@Precondition
Scenario: Loging out of Application

Given I should see "more.menu" screen
When I tap on "login.and.security.option"
And I tap "logout" button
Then I should see "login.to.your.account" screen