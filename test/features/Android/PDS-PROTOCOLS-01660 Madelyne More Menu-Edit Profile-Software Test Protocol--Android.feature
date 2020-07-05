#---------- SRS Covered MAD10-MMA_SRS-3,MAD10-MMA_SRS-4,MAD10-MMA_SRS-5,MAD10-MMA_SRS-197,MAD10-MMA_SRS-446
#---------- Version 0
Feature: MADELYNE MORE MENU – EDIT PROFILE - SOFTWARE TEST PROTOCOL ANDROID
	#Preconditions
	#Date & Time – 24-Hour Time = disabled; Set Automatically = enabled; Time Zone = EST
	#Language & Region – Language = English; Region = United States; Calendar = Gregorian
	# Make sure that Madelyne MMA is installed on the iOS/Android device as per section 6.1
	# Make sure that user is registered successfully on MMA App as per section 6.2 
	# Make sure that Device is connected to internet.
	# Make sure that user navigated till home page as per section 6.4
	
	@Precondition
	Scenario: Going to home screen
		Given I launch the Madelyne application
		When I turn OFF Bluetooth
		And I tap on "lets.get.started" button
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
		Then I verify email
		And I should see "personal.information" screen
		And I Verify "personal.information" text
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
		Then I should see "my.insulin1" screen
		When I tap on "mealtime.insulin.toggle" button
		And I tap on "long-acting.insulin.toggle" button
		And I tap on "next" button
		Then I should see "confirm.insulin.type" pop-up
		When I tap on "ok.popup" button
		Then I should see "partner.sharing.code" screen
		When I tap on "i.do.not.have.a.partner.sharing.code" button
		Then I should see "account.setup" screen
		And I should see "continue" button
		When I tap on "continue" button
		Then I should see "connect.smart" screen
		When I tap on "squire.skip" button
		Then I should see "connect.blood.sugar.meter" screen
		And I should see "bgm.skip" button
		When I tap on "bgm.skip" button
		Then I should see "home" screen
		And I should see "home.screen.popup" pop-up
        And I should see "this.is.where.you.will.see" text
		And I should see "home.next" button
		And I should see "home.close" button
		When I tap on "home.close" button
		Then I should see "turn.on.your.bluetooth" pop-up
		When I tap on "not.now" button
		Then I should see "connect.your.devices" pop-up
		When I tap on "not.now" button
		Then I should see "home" screen
        

	@MoreMenuScreen
	Scenario: Verifying More Menu screen
		Given I should see "home" screen
		When I tap on "more" option
		Then I should see "more" screen
		## And I should see "orange.header"	  #can't automate image							############# Not Feasible via Appium Automation Yet#############
		##And I should see the "profile.icon"	#can't automate image					############# Not Feasible via Appium Automation Yet#############
		And I should see the "profile.name"
		And I should see "emailaddress" in "e-mail" field
		And I should see "edit" button
		And I Verify "edit" text
		And I should see "my.devices" link
		And I Verify "my.devices" text
		And I should see "my.insulin" link
		And I Verify "my.insulin" text
		And I should see "blood.sugar.target.range" link
		And I Verify "blood.sugar.target.range" text
		And I should see "about.diabetes" link
		And I Verify "about.diabetes" text
		And I should see "prime.air.shot" link
		And I Verify "prime.air.shot" text
		And I should see "schedule.and.reminders" link
		And I Verify "schedule.and.reminders" text
		And I should see "notification.settings" link
		And I Verify "notification.settings" text
		And I should see "login.and.security.option" link
		And I Verify "login.and.security.option" text
		When I swipe down
		Then I should see "data.sharing" link
		And I Verify "data.sharing" text
		And I should see "quick.share" link
		And I Verify "quick.share" text
		And I should see "customer.support" link
		And I Verify "customer.support" text
		And I should see "terms.and.privacy.more.menu" link
		And I Verify "terms.and.privacy.more.menu" text
		And I should see "about.mytempo" link
		And I Verify "about.mytempo" text
		And I should see "home.icon"
		And I should see "progress.icon"
		And I should see "new.entry.icon"
		And I should see "logbook.icon"
		And I should see "more.icon"

    @Precondition
	Scenario: Going till edit profile screen
		Given I tap on "more" option
		Then I should see "more" screen
		When I tap on "edit" button
		Then I should see "edit.profile" screen
		And I Verify "edit.profile" text

	@EditProfileScreen
	Scenario:Verfication of edit profile screen
		Given I should see "edit.profile" screen
		And I Verify "edit.profile" text
		And I should see "back" button
		And I should see "personal.first.name" in "edit.screen.first.name" field
		And I should see "personal.last.name" in "edit.screen.last.name" field
		And I should see "personal.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "save.edit.screen" button
		And I Verify "save.edit.screen" text
		When I tap "back" button
		Then I should see "more.menu" screen
		When I tap "edit" button
		Then I should see "edit.profile" screen


@FirstNameAndLastName
		Scenario: Do not enter anyting in First Name & Last Name field
		When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		Then I should see empty "edit.screen.first.name" field
		And I should see "save" button is disabled

		When I tap "edit.screen.last.name" field
		And I clear "edit.screen.last.name" field
		Then I should see empty "edit.screen.last.name" field
		And I should see "save" button is disabled


	@FirstNameAndLastName
	Scenario Outline: Data entry in first name and last name field
		When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		And I enter "<FirstName>" into "edit.screen.first.name" field
		Then I should see "<FirstName>" in "edit.screen.first.name" field
		And I should see "save.edit.screen" button is enabled
		
		When I tap "edit.screen.last.name" field
		And I clear "edit.screen.last.name" field
		And I enter "<LastName>" into "edit.screen.last.name" field
		Then I should see "<LastName>" in "edit.screen.last.name" field
		And I should see "save.edit.screen" button is enabled

        Examples:
			| FirstName                            | LastName                               |
			| 100.characters                       | 100.characters                         |
			| 101.characters                       | 101.characters                         |
			|text.with.special.characters          |text.with.special.characters            |
			|numerical.characters                  |numerical.characters                    |
			|international.characters              |international.characters                |
			|special.characters.except.space.hyphen|special.characters.except.space.hyphen  |
			|alphabets.e.g.1                       |alphabets.e.g.1                         |
			|alphabets.e.g.2                       |alphabets.e.g.2                         |
			|alphabets.e.g.3                       |alphabets.e.g.3                         |
			|alphabets.e.g.4                       |alphabets.e.g.4                         |
			|space                                 |space                                   |
			|alphabets.e.g.1                       |alphabets.e.g.4                         |
			

    @DateOfBirthField
	Scenario: Verfication of date of birth field
        When I tap "edit.screen.date.of.birth" field
		Then I should see "set.popup" button
		And I should see "cancel.calander" button
		When I tap "cancel.calander" button
		Then I should see "personal.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.profile" screen
		
	@DateOfBirthField
	Scenario: Entering Date of birth less than 18 years
		When I tap "edit.screen.date.of.birth" field
		And I select the "less.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "less.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save.edit.screen" button is disabled
		And I should see "must.be.18.years.or.older" errormessage

    @DateOfBirthField
	Scenario Outline: Entering Date of birth
		When I tap "edit.screen.date.of.birth" field
		And I select the "<year>" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "<VerifyYear>" in "edit.screen.date.of.birth" field
		And I should see "<VerifyYear>" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save.edit.screen" button is enabled
		
		Examples:
			| year                  | VerifyYear                          |
			| equal.to.18.years     | equal.to.18.years.date.of.birth     |
			| greater.than.18.years | greater.than.18.years.date.of.birth |
        
	@SaveEditDetails
	Scenario: Save details
		When I tap "save.edit.screen" button
		Then I should see "more.menu" screen
		And I should see "valid.edit.first.name1" and "valid.edit.last.name1" in "profile.name"
		
	@Combinations
	Scenario: Entering different combinations in first name,last name & date of birth field
		
		When I tap "edit" button
		Then I should see "edit.profile" screen
        And I should see "alphabets.e.g.1" in "edit.screen.first.name" field
		And I should see "alphabets.e.g.4" in "edit.screen.last.name" field
        #First & Last Name field empty and DOB less than 18 years
		When I clear "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I hide device keyboard
		And I tap "edit.screen.date.of.birth" field
		And I select the "less.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see empty "edit.screen.first.name" field
		And I should see empty "edit.screen.last.name" field
		And I should see "must.be.18.years.or.older" errormessage
		And I should see "save.edit.screen" button is disabled

		#Space in First & Last Name field & future date in DOB field
		When I clear "edit.screen.first.name" field
		And I enter "space" into "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "space" into "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "future.year" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "space" in "edit.screen.first.name" field
		And I should see "space" in "edit.screen.last.name" field
		And I should see "must.be.18.years.or.older" errormessage
		And I should see "save.edit.screen" button is disabled
		
        #-----Enter First Name valid,Last Name invalid & invalid DOB-----
		#Invalid means do not enter any value
		When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		And I enter "valid.first.name" into "edit.screen.first.name" field
		And I tap "edit.screen.last.name" field
		And I clear "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "less.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see empty "edit.screen.last.name" field
		And I should see "must.be.18.years.or.older" errormessage
		And I should see "save.edit.screen" button is disabled
		
        #-----Enter First Name valid,Last Name valid & invalid DOB-----
		When I clear "edit.screen.first.name" field
		And I enter "valid.first.name" into "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "less.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "must.be.18.years.or.older" errormessage
		And I should see "save.edit.screen" button is disabled
		
        #-----Enter First Name valid,Last Name invalid & valid DOB-----
		When I clear "edit.screen.first.name" field
		And I enter "valid.first.name" into "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "greater.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see empty "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is disabled
		
        #-----Enter First Name invalid,Last Name valid & invalid DOB-----
		When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "less.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see empty "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "must.be.18.years.or.older" errormessage
		And I should see "save.edit.screen" button is disabled
		
        #-----Enter First Name invalid,Last Name valid & valid DOB-----
		When I clear "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "greater.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see empty "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is disabled
		
        #-----Enter First Name invalid,Last Name invalid & valid DOB-----
		When I clear "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "greater.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see empty "edit.screen.first.name" field
		And I should see empty "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is disabled

		 #-----Enter First Name valid,Last Name valid & valid DOB-----
		When I clear "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.first.name1" into "edit.screen.first.name" field
		And I hide device keyboard 
		And I enter "valid.last.name1" into "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "greater.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "valid.first.name1" in "edit.screen.first.name" field
		And I should see "valid.last.name1" in "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is enabled

		When I tap on "back" button
		And I tap on "edit" button
		Then I should see "edit.profile" screen
		And I should see "alphabets.e.g.1" in "edit.screen.first.name" field
		And I should see "alphabets.e.g.4" in "edit.screen.last.name" field
		

    @ValidDataEntry
	Scenario: Entering valid data in first name,last name and date of birth field
	
		#Enter First Name valid,Last Name valid & valid DOB & save.edit.screen
		When I clear "edit.screen.first.name" field
		And I enter "valid.edit.first.name" into "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.edit.last.name" into "edit.screen.last.name" field
		And I hide device keyboard 
		And I tap "edit.screen.date.of.birth" field
		And I select the "valid.edit.year" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "valid.edit.first.name" in "edit.screen.first.name" field
		And I should see "valid.edit.last.name" in "edit.screen.last.name" field
		And I should see "valid.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is enabled

		When I tap "save.edit.screen" button
		Then I should see "more.menu" screen
		And I should see "valid.edit.first.name" and "valid.edit.last.name" in "profile.name"
		When I tap "edit" button
		Then I should see "edit.profile" screen
		#Edit First Name & save.edit.screen
		
		When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		And I enter "edit.first.name" into "edit.screen.first.name" field
		Then I should see "edit.first.name" in "edit.screen.first.name" field
		And I should see "save.edit.screen" button is enabled
		When I tap "save.edit.screen" button
		Then I should see "more.menu" screen

		#-----Edit Last Name & save.edit.screen-----
		
		When I tap "edit" button
		Then I should see "edit.profile" screen
		When I clear "edit.screen.last.name" field
		And I enter "edit.last.name" into "edit.screen.last.name" field
		Then I should see "edit.last.name" in "edit.screen.last.name" field
		And I should see "save.edit.screen" button is enabled
		When I tap "save.edit.screen" button
		Then I should see "more.menu" screen
		
		#-----Edit DOB & save.edit.screen-----
		
		When I tap "edit" button
		Then I should see "edit.profile" screen
		When I tap "edit.screen.date.of.birth" field
		And I select the "edit.year" in "date.picker.year" field
		And I select the "month" in "date.picker.month" field
		And I select the "date" in "date.picker.date" field
		And I tap "set.popup" button
		Then I should see "edit.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is enabled
	

    @SmokeTest
	Scenario:Verification of First,last and Date of birth fields
		When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		And I enter "100.characters" into "edit.screen.first.name" field
		Then I should see "100.characters" in "edit.screen.first.name" field
		And I should see "save.edit.screen" button is enabled
		When I clear "edit.screen.last.name" field
		And I enter "100.characters" into "edit.screen.last.name" field
		Then I should see "100.characters" in "edit.screen.last.name" field
		And I should see "save.edit.screen" button is enabled
		When I tap "edit.screen.date.of.birth" field
		And I select the "greater.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is enabled

        When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		And I enter "edit.first.name" into "edit.screen.first.name" field
		# And I tap outside "edit.screen.last.name" field
		Then I should see "edit.first.name" in "edit.screen.first.name" field
		When I tap "edit.screen.last.name" field
		And I clear "edit.screen.last.name" field
		And I enter "edit.last.name" into "edit.screen.last.name" field
		Then I should see "edit.last.name" in "edit.screen.last.name" field
		When I tap "edit.screen.date.of.birth" field
		And I select the "edit.year" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "edit.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is enabled
        
    @RegressionTest
	Scenario:Regressiontest
		Given I should see "edit.profile" screen
		And I should see "back" button
		And I should see "personal.first.name" in "edit.screen.first.name" field
		And I should see "personal.last.name" in "edit.screen.last.name" field
		And I should see "personal.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "save.edit.screen" button
		When I tap "back" button
		Then I should see "more" screen
		When I tap "edit" button
		Then I should see "edit.profile" screen
	@RegressionTest
	Scenario Outline: Enter Data in First Name field
		When I clear "edit.screen.first.name" field
		And I enter "<FirstName>" into "edit.screen.first.name" field
		Then I should see "<FirstName>" in "edit.screen.first.name" field
		And I should see "save.edit.screen" button is enabled
		When I clear "edit.screen.last.name" field
		And I enter "<LastName>" into "edit.screen.last.name" field
		Then I should see "<LastName>" in "edit.screen.last.name" field
		And I should see "save.edit.screen" button is enabled
		Examples:
			| FirstName      | LastName                 |
			| 100.characters | numerical.characters     |
			| 101.characters | international.characters |

    @RegressionTest
	Scenario: Age less than 18 years
		When I tap "edit.screen.date.of.birth" field
		And I select the "less.than.18.years" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "less.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save.edit.screen" button is disabled
		And I should see "must.be.18.years.or.older" errormessage
	@RegressionTest
	Scenario Outline: Date of birth field positive Cases
		When I tap "edit.screen.date.of.birth" field
		And I select the "<year>" in "date.picker.year" field
		And I tap "set.popup" button
		Then I should see "<VerifyYear>" in "edit.screen.date.of.birth" field
		And I should see "<VerifyYear>" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save.edit.screen" button is enabled
		Examples:
			| year                  | VerifyYear                          |
			| equal.to.18.years     | equal.to.18.years.date.of.birth     |
			| greater.than.18.years | greater.than.18.years.date.of.birth |

    @Precondition
    Scenario: Tap on save
		
        When I tap on "edit.screen.first.name" field
        And I clear "edit.screen.first.name" field
        And I tap on "edit.screen.last.name" field
        And I clear "edit.screen.last.name" field
        And I enter "valid.edit.first.name" into "edit.screen.first.name" field
        And I enter "valid.edit.last.name" into "edit.screen.last.name" field
        And I tap "edit.screen.date.of.birth" field
        And I select the "greater.than.18.years" in "date.picker.year" field
        And I tap on "set.popup" button
        And I tap on "save.edit.screen" button
        Then I should see "more" screen
		
    @Precondition
	Scenario:Logging out from Application
        When I tap on "more" option
		Then I should see "more" screen
        When I tap on "login.and.security.option"
		And I tap on "logout" button
		Then I should see "login.to.your.account" screen
