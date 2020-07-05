#---------- SRS Covered MAD10-MMA-SRS-2,MAD10-MMA-SRS-3,MAD10-MMA-SRS-4,MAD10-MMA-SRS-5,MAD10-MMA-SRS-8,MAD10-MMA-SRS-9,MAD10-MMA-SRS-39
#---------- Version 0 
Feature: MADELYNE- ONBOARDING– PERSONAL INFORMATION- SOFTWARE TEST PROTOCOL

# PRE-CONDITIONS:
# Make sure that the iOS and Android device is connected to the internet.
# Make sure that the user has launched Madelyne MMA App and agreed on Terms and Privacy screen as per section 6.1.
# Make sure that the MMA displays “Create Account” screen.
# Make sure to use New "emailaddress" and New "password" for new account creation

@Precondition
Scenario: Navigating to Create Account Screen

Given I launch the Madelyne application
And I should see "welcome.to.tempotm" screen
When I tap on "lets.get.started" button
And I tap "agree.and.continue" button
Then I should see "create.account" screen

@PersonalInformation
Scenario: Verification of Personal Information Screen

Given I should see "create.account" screen
When I enter "emailaddress" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
And I Verify "verify.email" text
When I should connect to email for registration verification
Then I verify email
# And I should see "your.email.has.been.verified" toast message ## cannot be automated
And I should see "personal.information" screen
And I Verify "personal.information" text


@PersonalInformation
Scenario Outline: Entering Data in First Name field

When I enter "<FirstName>" into "first.name" field
Then I should see "<FirstName>" in "first.name" field
And I should see "next" button is disabled

Examples:
| FirstName                       | 
| 100.characters                  |
| 101.characters                  | 
| text.with.special.characters    | 
| numerical.characters            | 
| international.characters        | 
| alphabets                       | 

@PersonalInformation
Scenario Outline: Entering Data in Last Name field

When I enter "<LastName>" into "last.name" field
Then I should see "<LastName>" in "last.name" field
And I should see "next" button is disabled

Examples:
| LastName                        | 
| 100.characters                  |
| 101.characters                  | 
| text.with.special.characters    | 
| numerical.characters            | 
| international.characters        | 
| alphabets                       | 


@PersonalInformation
Scenario: Verifying Date of Birth field

When I tap "date.of.birth" field
Then I should see "date.picker" 
And I should see "set.popup" button  
And I should see "cancel.calander" button
# And I should see current date is highlighted                                   ## cannot be automated
When I tap on "cancel.calander" button
Then I should see "personal.information" screen
       
@PersonalInformation
Scenario: Verifying Date of Birth field with Age less than 18 years

When I tap "date.of.birth" field
And I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I select the "less.than.18.years" in "date.picker.year" field
And I tap on "set.popup" button 
Then I should see "less.than.18.years.date.of.birth" in "date.of.birth" field
And I should see "less.than.18.years.date.of.birth" in "date.of.birth" field in MM-DD-YYYY format
And I should see "must.be.18.years.or.older" errormessage
And I should see "next" button is disabled

@PersonalInformation
Scenario Outline: Verifying Date of Birth field with positive cases

When I tap "date.of.birth" field
And I select the "<year>" in "date.picker.year" field
And I tap on "set.popup" button
Then I should see "<VerifyYear>" in "date.of.birth" field
And I should see "<VerifyYear>" in "date.of.birth" field in MM-DD-YYYY format
And I should see "next" button is enabled

Examples:
| year                  | VerifyYear                          |
| equal.to.18.years     | equal.to.18.years.date.of.birth     |
| greater.than.18.years | greater.than.18.years.date.of.birth |


@PersonalInformation
Scenario: Verification of Empty First Name field

When I clear "first.name" field
Then I should see "next" button is disabled

@PersonalInformation
Scenario Outline: Entering Data in First Name field

When I enter "<FirstName>" into "first.name" field
Then I should see "<FirstName>" in "first.name" field
And I should see "next" button is enabled

Examples:
| FirstName                       | 
| alphanumeric.characters         |
| special.characters              | 

@PersonalInformation
Scenario: Verification of Empty Last Name field

When I clear "last.name" field
Then I should see "next" button is disabled

@PersonalInformation
Scenario Outline: Entering Data in Last Name field

When I enter "<LastName>" into "last.name" field
Then I should see "<LastName>" in "last.name" field
And I should see "next" button is enabled

Examples:
| LastName                       | 
| alphanumeric.characters        |
| special.characters             |

@PersonalInformation
Scenario: Verification of Empty First Name field

When I clear "first.name" field
And I enter "space" into "first.name" field
Then I should see "space" in "first.name" field
And I should see "next" button is disabled

@PersonalInformation
Scenario: Verification of Empty Last Name field

When I clear "first.name" field
And I enter "alphabets" into "first.name" field
And I enter "space" into "last.name" field
Then I should see "alphabets" in "first.name" field
And I should see "space" in "last.name" field
Then I should see "next" button is disabled

@PersonalInformation
Scenario: Entering Data in Last Name field 

When I clear "last.name" field
And I enter "alphabets" into "last.name" field
Then I should see "alphabets" in "last.name" field

@SmokeTest
Scenario: Smoke Test for Personal Information

When I enter "emailaddress" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
And I Verify "verify.email" text
When I should connect to email for registration verification
Then I verify email
And I should see "personal.information" screen
When I enter "alphanumeric.special.characters" into "first.name" field
And I enter "alphanumeric.special.characters" into "last.name" field
And I tap "date.of.birth" field
Then I should see "date.picker"
And I should see "set.popup" button 
And I should see "cancel.calander" button
When I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I select the "greater.than.18.years" in "date.picker.year" field
And I tap on "set.popup" button
Then I should see "alphanumeric.special.characters" in "first.name" field
And I should see "alphanumeric.special.characters" in "last.name" field
And I should see "greater.than.18.years.date.of.birth" in "date.of.birth" field
And I should see "greater.than.18.years.date.of.birth" in "date.of.birth" field in MM-DD-YYYY format
And I should see "next" button is enabled

@RegressionTest
Scenario: Regression Test for Personal Information

When I enter "emailaddress" into "emailaddress" field
And I enter "password" into "password" field
And I tap "next" button
Then I should see "verify.email" screen
And I Verify "verify.email" text
When I should connect to email for registration verification
Then I verify email
And I should see "personal.information" screen
When I enter "international.characters" into "first.name" field
And I enter "alphanumeric.special.characters" into "last.name" field
Then I should see "international.characters" in "first.name" field
And I should see "alphanumeric.special.characters" in "last.name" field
And I should see "next" button is disabled
When I enter "international.characters" into "last.name" field
And I enter "alphanumeric.special.characters" into "last.name" field
And I tap "date.of.birth" field
Then I should see "date.picker"
And I should see "set.popup" button 
And I should see "cancel.calander" button
When I tap on "cancel.calander" button
Then I should see "personal.information" screen
When I tap "date.of.birth" field
And I select the "month" in "date.picker.month" field
And I select the "date" in "date.picker.date" field
And I select the "less.than.18.years" in "date.picker.year" field
And I tap on "set.popup" button
Then I should see "less.than.18.years.date.of.birth" in "date.of.birth" field
And I should see "less.than.18.years.date.of.birth" in "date.of.birth" field in MM-DD-YYYY format
And I should see "must.be.18.years.or.older" errormessage
And I should see "next" button is disabled
When I tap "date.of.birth" field
And I select the "greater.than.18.years" in "date.picker.year" field
And I tap on "set.popup" button 
Then I should see "greater.than.18.years.date.of.birth" in "date.of.birth" field
And I should see "greater.than.18.years.date.of.birth" in "date.of.birth" field in MM-DD-YYYY format
And I should see "next" button is enabled

@Precondition
Scenario: Verification of Next button

When I tap on "next" button
Then I should see "my.insulin" screen
