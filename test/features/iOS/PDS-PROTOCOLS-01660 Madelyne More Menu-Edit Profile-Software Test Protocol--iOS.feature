#---------- SRS Covered MAD10-MMA_SRS-3,MAD10-MMA_SRS-4,MAD10-MMA_SRS-5,MAD10-MMA_SRS-197,MAD10-MMA_SRS-446
#---------- Version 1
Feature: MADELYNE MORE MENU – EDIT PROFILE - SOFTWARE TEST PROTOCOL
	#Preconditions
	#Date & Time – 24-Hour Time = disabled; Set Automatically = enabled; Time Zone = EST
	#Language & Region – Language = English; Region = United States; Calendar = Gregorian
	#Make sure the Device is connected to internet.
	#On the Device, the date and time shall be the current one.
	#Make sure that user navigated till home page as per section 6.4
	@Precondition
	Scenario: Going to home screen
		Given I launch the Madelyne application
        When I tap "lets.get.started" button
        And I tap "agree.and.continue" button
        Then I should see "acknowledge" screen
        When I tap on "i.understand" button
        Then I should see "create.account" screen
        When I enter "emailaddress" into "emailaddress" field
        And I enter "password" into "password" field
        And I tap "next" button
        And I wait for "1" minutes
        Then I should see "verify.email" screen
        And I Verify "verify.email" text
        When I should connect to email for registration verification
        Then I verify email
        And I should see "personal.information" screen
        And I Verify "personal.information" text
        When I enter "first.name" into "first.name" field
        And I enter "last.name" into "last.name" field
        And I tap "date.of.birth" field
        And I tap on "year" button
        And I select "year"
        And I select "month"
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
        And I Verify "partner.sharing.code" text
        When I tap "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap "continue" button
        Then I should see "tempo.smart" screen
        When I tap "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap "bgm.skip" button
        Then I should see "welcome.to.mytempo" screen
        When I tap on "start" button
        Then I should see "home.and.recent.entries" screen
        When I tap on "next" button
        Then I should see "auto.logged.entries" screen
        When I tap on "next" button
        Then I should see "mark.entry.as.prime" screen
        When I tap on "next" button
        Then I should see "set.reminders.onboarding" screen
        When I tap on "next" button
        Then I should see "you.are.ready" screen
        When I tap on "go.to.home" button
        And I handle Bluetooth Notification pop-up
        And I handle Notification pop-up
        And I tap on "not.now.button"
        Then I should see "home" selected

	@Precondition
	Scenario: Going till edit profile screen
		Given I tap on "more" option
		Then I should see "more.menu" screen
		When I tap on "edit" button
		Then I should see "edit.profile" screen
		And I Verify "edit.profile" text
		When I tap on "back" button
		And I tap on "edit" button
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
		And I should see "save" button is enabled

		When I tap "edit.screen.last.name" field
		And I clear "edit.screen.last.name" field
		And I enter "<LastName>" into "edit.screen.last.name" field
		Then I should see "<LastName>" in "edit.screen.last.name" field
		And I should see "save" button is enabled

		Examples:
			| FirstName                              | LastName                               |
			| 100.characters                         | 100.characters                         |
			| 101.characters                         | 101.characters                         |
			| text.with.special.characters           | text.with.special.characters           |
			| numerical.characters                   | numerical.characters                   |
			| international.characters               | international.characters               |
			| special.characters.except.space.hyphen | special.characters.except.space.hyphen |
			| alphabets.e.g.1                        | alphabets.e.g.1                        |
			| alphabets.e.g.2                        | alphabets.e.g.2                        |
			| alphabets.e.g.3                        | alphabets.e.g.3                        |
			| alphabets.e.g.4                        | alphabets.e.g.4                        |

	#######-- Spaces could be entered only by automation,manually it is unable to enter --########
	# |space                                 |space                                   |
	###############################################################

	@DateOfBirthField
	Scenario: Verfication of date of birth field

		Given I should see "edit.profile" screen
		When I tap "edit.screen.date.of.birth" field
		Then I should see "date.picker"
		And I should see "done" button
		When I tap on "done" button
		Then I should see "edit.profile" screen

	@DateOfBirthField
	Scenario: Entering Date of birth less than 18 years
		When I tap "edit.screen.date.of.birth" field
		And I select "less.than.18.years" in "year" List
		And I tap "done" button
		Then I should see "less.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save" button is disabled
		And I should see "must.be.18.years.or.older" errormessage

	@DateOfBirthField
	Scenario Outline: Entering Date of birth
		When I tap "edit.screen.date.of.birth" field
		And I select "<year>" in "year" List
		And I tap "done" button
		Then I should see "<VerifyYear>" in "edit.screen.date.of.birth" field
		And I should see "<VerifyYear>" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save" button is enabled
		Examples:
			| year                  | VerifyYear                          |
			| equal.to.18.years     | equal.to.18.years.date.of.birth     |
			| greater.than.18.years | greater.than.18.years.date.of.birth |

	@Combinations
	Scenario: Entering different combinitions in first name,last name & date of birth field

		When I tap on "save" button
		Then I should see "more.menu" screen
		And I should see "alphabets.e.g.4" and "alphabets.e.g.4" in "profile.name"
		When I tap on "edit" button
		Then I should see "edit.profile" screen

		When I clear "edit.screen.first.name" field
		Then I should see empty "edit.screen.first.name" field
		When I clear "edit.screen.last.name" field
		Then I should see empty "edit.screen.last.name" field
		When I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "less.than.18.years" in "year" List
		And I tap "done" button
		Then I should see "must.be.18.years.or.older" errormessage
		And I should see "save" button is disabled

		#######-- Spaces could be entered only by automation,manually it is unable to enter --########
		# When I clear "edit.screen.first.name" field
		# And I enter "space" into "edit.screen.first.name" field
		# And I clear "edit.screen.last.name" field
		# And I enter "space" into "edit.screen.last.name" field
		# And I tap outside "edit.screen.last.name" field
		# And I tap "edit.screen.date.of.birth" field
		# And I select "future.year" in "year" List
		# And I tap "done" button
		# Then I should see "space" in "edit.screen.first.name" field
		# And I should see "space" in "edit.screen.last.name" field
		# And I should see "must.be.18.years.or.older" errormessage
		# And I should see "save" button is disabled
		###############################################################

		When I tap "edit.screen.first.name" field
		And I clear space
		And I enter "valid.first.name" into "edit.screen.first.name" field
		And I tap "edit.screen.last.name" field
		And I clear space
		And I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "less.than.18.years" in "year" List
		And I tap "done" button
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see empty "edit.screen.last.name" field
		And I should see "must.be.18.years.or.older" errormessage
		And I should see "save" button is disabled

		When I clear "edit.screen.first.name" field
		And I enter "valid.first.name" into "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		And I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "less.than.18.years" in "year" List
		And I tap "done" button
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "must.be.18.years.or.older" errormessage
		And I should see "save" button is disabled

		When I clear "edit.screen.first.name" field
		And I enter "valid.first.name" into "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "greater.than.18.years" in "year" List
		And I tap "done" button
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see empty "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "save" button is disabled

		When I clear "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		And I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "less.than.18.years" in "year" List
		And I tap "done" button
		Then I should see empty "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "must.be.18.years.or.older" errormessage
		And I should see "save" button is disabled

		When I clear "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		And I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "greater.than.18.years" in "year" List
		And I tap "done" button
		Then I should see empty "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save" button is disabled

		When I clear "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "greater.than.18.years" in "year" List
		And I tap "done" button
		Then I should see empty "edit.screen.first.name" field
		And I should see empty "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save" button is disabled

		When I clear "edit.screen.first.name" field
		And I enter "valid.first.name" into "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		And I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "greater.than.18.years" in "year" List
		And I tap "done" button
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save" button is enabled

		When I tap on "back" button
		And I tap on "edit" button
		Then I should see "edit.profile" screen
		And I should see "alphabets.e.g.4" in "edit.screen.first.name" field
		And I should see "alphabets.e.g.4" in "edit.screen.last.name" field
		And I should see "personal.date.of.birth" in "edit.screen.date.of.birth" field

		When I clear "edit.screen.first.name" field
		And I enter "valid.first.name" into "edit.screen.first.name" field
		And I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		And I tap outside "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "greater.than.18.years" in "year" List
		And I tap "done" button
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save" button is enabled

		When I tap on "save" button
		And I tap on "edit" button
		Then I should see "edit.profile" screen
		And I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format

	@ValidDataEntry
	Scenario: Entering valid data in first name,last name and date of birth field

		When I clear "edit.screen.first.name" field
		And I enter "valid.first.name" into "edit.screen.first.name" field
		Then I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see "save" button is enabled
		When I tap on "save" button
		And I tap on "edit" button
		Then I should see "edit.profile" screen
		And I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format


		When I clear "edit.screen.last.name" field
		And I enter "valid.last.name" into "edit.screen.last.name" field
		Then I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "save" button is enabled
		When I tap on "save" button
		And I tap on "edit" button
		Then I should see "edit.profile" screen
		And I should see "valid.first.name" in "edit.screen.first.name" field
		And I should see "valid.last.name" in "edit.screen.last.name" field
		And I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format

		When I tap "edit.screen.date.of.birth" field
		And I select "equal.to.18.years" in "year" List
		And I select "month" in "month" List
		And I select "date" in "date" List
		And I tap "done" button
		Then I should see "equal.to.18.years.date.of.birth" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save" button is enabled
	
		When I tap on "save" button
		Then I should see "more.menu" screen
		When I tap on "edit" button
		Then I should see "edit.profile" screen

	@SmokeTest
	Scenario:Verfication of First,last and Date of birth fields
		When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		And I enter "100.characters" into "edit.screen.first.name" field
		Then I should see "100.characters" in "edit.screen.first.name" field
		And I should see "save" button is enabled
		When I clear "edit.screen.last.name" field
		And I enter "100.characters" into "edit.screen.last.name" field
		Then I should see "100.characters" in "edit.screen.last.name" field
		And I should see "save" button is enabled
		When I tap "edit.screen.date.of.birth" field
		And I select "greater.than.18.years" in "year" List
		And I select "month" in "month" List
		And I select "date" in "date" List
		And I tap "done" button
		Then I should see "greater.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save" button is enabled

		When I tap "edit.screen.first.name" field
		And I clear "edit.screen.first.name" field
		And I enter "edit.first.name" into "edit.screen.first.name" field
		And I tap outside "edit.screen.last.name" field
		Then I should see "edit.first.name" in "edit.screen.first.name" field
		When I tap "edit.screen.last.name" field
		And I clear "edit.screen.last.name" field
		And I enter "edit.last.name" into "edit.screen.last.name" field
		Then I should see "edit.last.name" in "edit.screen.last.name" field
		When I tap "edit.screen.date.of.birth" field
		And I select "edit.year" in "year" List
		And I select "month" in "month" List
		And I select "date" in "date" List
		And I tap "done" button
		Then I should see "edit.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save" button is enabled
		When I tap "save" button

		Then I should see "more.menu" screen
		And I should see "profile.name" text
		And I should see "personal.first.name" and "personal.last.name" in "profile.name"
		And I tap on "edit" button

	@RegressionTest
	Scenario:Regressiontest
		Given I should see "edit.profile" screen
		And I should see "back" button
		And I should see "personal.first.name" in "edit.screen.first.name" field
		And I should see "personal.last.name" in "edit.screen.last.name" field
		And I should see "personal.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "save" button
		When I tap "back" button
		Then I should see "more.menu" screen
		When I tap "edit" button
		Then I should see "edit.profile" screen
	@RegressionTest
	Scenario Outline: Enter Data in First Name field
		When I clear "edit.screen.first.name" field
		And I enter "<FirstName>" into "edit.screen.first.name" field
		Then I should see "<FirstName>" in "edit.screen.first.name" field
		And I should see "save" button is enabled
		When I clear "edit.screen.last.name" field
		And I enter "<LastName>" into "edit.screen.last.name" field
		Then I should see "<LastName>" in "edit.screen.last.name" field
		And I should see "save" button is enabled
		Examples:
			| FirstName      | LastName                 |
			| 100.characters | numerical.characters     |
			| 101.characters | international.characters |

	@RegressionTest
	Scenario: Age less than 18 years
		When I tap "edit.screen.date.of.birth" field
		And I select "less.than.18.years" in "year" List
		And I select "month" in "month" List
		And I select "date" in "date" List
		And I tap "done" button
		And I should see "less.than.18.years.date.of.birth" in "edit.screen.date.of.birth" field
		And I should see "edit.screen.date.of.birth" in MM-DD-YYYY format
		And I should see "save" button is disabled
		And I should see "must.be.18.years.or.older" errormessage
	@RegressionTest
	Scenario Outline: Date of birth field positive Cases
		When I tap "edit.screen.date.of.birth" field
		And I select "<year>" in "year" List
		And I tap "done" button
		Then I should see "<VerifyYear>" in "edit.screen.date.of.birth" field
		And I should see "<VerifyYear>" in "edit.screen.date.of.birth" field in MM-DD-YYYY format
		And I should see "save" button is enabled
		Examples:
			| year                  | VerifyYear                          |
			| equal.to.18.years     | equal.to.18.years.date.of.birth     |
			| greater.than.18.years | greater.than.18.years.date.of.birth |

	@Precondition
	Scenario: Tap on save
		When I tap on "edit.screen.first.name" field
		And I clear space
		And I tap on "edit.screen.last.name" field
		And I clear space
		And I enter "edit.profile.first.name" into "edit.screen.first.name" field
		And I enter "edit.profile.last.name" into "edit.screen.last.name" field
		And I tap "edit.screen.date.of.birth" field
		And I select "greater.than.18.years" in "year" List
		And I tap on "done" button
		And I tap on "save" button
		Then I should see "more.menu" screen
		And I should see "profile.name" text
		And I should see "personal.first.name" and "personal.last.name" in "profile.name"

	@Precondition
	Scenario:Logging out from Application
		When I tap on "more" icon
		And I tap on "login.and.security.option"
		And I handle Logout button
		Then I should see "login.to.your.account" screen
