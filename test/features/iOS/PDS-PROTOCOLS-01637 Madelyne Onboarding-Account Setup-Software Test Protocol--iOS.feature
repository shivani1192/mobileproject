#---------- SRS Covered MAD10-SYS-2362,MAD10-SYS-2403,MAD10-SYS-2359,MAD10-SYS-2579,MAD10- MMA_SRS-2,MAD10- MMA_SRS-6,MAD10- MMA_SRS-7,
#---------- MAD10- MMA_SRS-66,MAD10- MMA_SRS-77,MAD10- MMA_SRS-78,MAD10- MMA_SRS-79,MAD10- MMA_SRS-384,MAD10-MMA_SRS-426,MAD10-MMA_SRS-427,
#---------- MAD10-MMA_SRS-428,MAD10-MMA_SRS-429,MAD10-MMA_SRS-430
#---------- Version 1
Feature: MADELYNE-ONBOARDING – ACCOUNT SETUP - SOFTWARE TEST PROTOCOL
  #Scenario: ONBOARDING – EMAIL – PASSWORD
  # PRE-CONDITIONS:
  # Make sure that the iOS/Android device is connected to the internet.
  # Make sure that that user has installed Madelyne MMA App as per section 6.1.
  @Precondition
  Scenario:Going until Create Account screen
    Given I launch the Madelyne application
    # And I set deviceformat to 12 hour
    # And I enable set automatically in device settings
    When I tap on "lets.get.started" button
    And I tap on "agree.and.continue" button
    Then I should see "create.account" screen

  @SmokeTest
  Scenario Outline:Verfication of emailaddress
    When I enter "<emailaddress>" into "emailaddress" field
    And I enter "<password>" into "password" field
    Then I should see "<emailaddress>" accepted in "emailaddress" field
    And I should see "<password>" masked in "password" field
    When I tap on "eye" icon
    Then I should see "<password>" accepted in "unmaskedpassword" field
    And I should see "<password>" unmasked in "unmaskedpassword" field
    When I tap on "eye" icon
    Examples:
      | emailaddress          | password         |
      | emailaddress.255chars | password.72chars |
      | emailaddress.valid    | password.valid   |

  @CreateAccount
  Scenario:Verfication of Create Account Screen
    Given I should see "create.account" screen
    And I should see "back" button is enabled
    And I should see "next" button is disabled
    #And I should see "progress.bar" with "9%" completed    ##images Cannot be automated##
    And I should see "emailaddress" field
    And I should see "password" field
    And I should see "password.description" text
    And I should see "i.already.have.an.account" text

  #-----Enter 255 characters in Email Address field-----
  @Acceptance
  Scenario Outline:Verfication of emailaddress
    When I enter "<emailaddress>" into "emailaddress" field

    And I enter "<password>" into "password" field

    Then I should see "<password>" masked in "password" field
    When I tap on "eye" icon
    Then I should see "<password>" <acceptance> in "unmaskedpassword" field
    And I should see "<password>" unmasked in "unmaskedpassword" field
    When I tap on "eye" icon
    And I clear "emailaddress" field
    And I clear "password" field
    Examples:
      | emailaddress          | password         | acceptance |
      | emailaddress.255chars | password.72chars | accepted   |
      | emailaddress.256chars | password.73chars | unaccepted |

  @InvalidEmailAndPasswords
  Scenario Outline:Verfication of invalid emailaddress and invalid passwords
    When I enter "<emailaddress>" into "emailaddress" field
    Then I should see "<emailaddresserrormessage>"
    When I enter "<password>" into "password" field
    Then I should see "<passworderrormessage>"

    And I should see "<password>" masked in "password" field
    When I tap on "eye" icon
    Then I should see "<password>" unmasked in "unmaskedpassword" field
    When I tap on "eye" icon
    Then I should see "next" button is disabled
    And I clear "emailaddress" field
    And I clear "password" field
    Examples:
      | emailaddress            | password            | emailaddresserrormessage          | passworderrormessage                         |
      | emailaddress.invalid    | password.invalid    | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |
      | emailaddress.invalid.1  | password.invalid.1  | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |
      | emailaddress.invalid.2  | password.invalid.3  | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |
      | emailaddress.invalid.5  | password.invalid.5  | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |
      | emailaddress.invalid.8  | password.invalid.8  | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |
      | emailaddress.invalid.12 | password.invalid.12 | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |

  @ValidEmailAndPasswords
  Scenario Outline:Verfication of valid emailaddress and valid passwords
    When I enter "<emailaddress>" into "emailaddress" field
    And I enter "<password>" into "password" field

    Then I should see "<password>" masked in "password" field
    When I tap on "eye" icon
    Then I should see "<password>" unmasked in "unmaskedpassword" field
    When I tap on "eye" icon
    Then I should see "next" button is enabled
    And I clear "emailaddress" field
    And I clear "password" field
    Examples:
      | emailaddress          | password          |
      | emailaddress.valid    | password.valid    |
      | emailaddress.valid.1  | password.valid.1  |
      | emailaddress.valid.2  | password.valid.2  |
      | emailaddress.valid.3  | password.valid.3  |
      | emailaddress.valid.4  | password.valid.4  |
      | emailaddress.valid.5  | password.valid.6  |
      | emailaddress.valid.7  | password.valid.7  |
      | emailaddress.valid.8  | password.valid.9  |
      | emailaddress.valid.10 | password.valid.10 |

  @RegressionTest
  Scenario Outline:Verfication of emailaddress
    When I enter "<emailaddress>" into "emailaddress" field
    And I enter "<password>" into "password" field
    Then I should see "<password>" masked in "password" field
    When I tap on "eye" icon
    Then I should see "<password>" <acceptance> in "unmaskedpassword" field
    And I should see "<password>" unmasked in "unmaskedpassword" field
    When I tap on "eye" icon
    And I clear "emailaddress" field
    And I clear "password" field
    Examples:
      | emailaddress          | password         | acceptance |
      | emailaddress.255chars | password.72chars | accepted   |
      | emailaddress.256chars | password.73chars | unaccepted |

  @RegressionTest
  Scenario Outline:Verfication of invalid emailaddress and invalid passwords
    When I enter "<emailaddress>" into "emailaddress" field
    Then I should see "<emailaddresserrormessage>"
    When I enter "<password>" into "password" field
    Then I should see "<passworderrormessage>"
    And I should see "<password>" masked in "password" field
    When I tap on "eye" icon
    Then I should see "<password>" unmasked in "unmaskedpassword" field
    When I tap on "eye" icon
    Then I should see "next" button is disabled
    And I clear "emailaddress" field
    And I clear "password" field
    Examples:
      | emailaddress           | password           | emailaddresserrormessage          | passworderrormessage                         |
      | emailaddress.invalid   | password.invalid   | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |
      | emailaddress.invalid.1 | password.invalid.1 | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |
      | emailaddress.invalid.2 | password.invalid.2 | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |
      | emailaddress.invalid.5 | password.invalid.5 | this.is.not.a.valid.email.address | password.must.contain.at.least.10.characters |


  @RegressionTest
  Scenario Outline:Verfication of valid emailaddress and valid passwords
    When I enter "<emailaddress>" into "emailaddress" field
    And I enter "<password>" into "password" field
    Then I should see "<password>" masked in "password" field
    When I tap on "eye" icon
    Then I should see "<password>" unmasked in "unmaskedpassword" field
    When I tap on "eye" icon
    Then I should see "next" button is enabled
    And I clear "emailaddress" field
    And I clear "password" field
    Examples:
      | emailaddress         | password         |
      | emailaddress.valid   | password.valid   |
      | emailaddress.valid.1 | password.valid.1 |
      | emailaddress.valid.2 | password.valid.2 |

  @Precondition
  Scenario:Creating Account and Email verfication
    When I clear "emailaddress" field
    And I clear "password" field
    When I enter "emailaddress.valid.11.precondition" into "emailaddress" field

    #-----Enter valid password-----
    And I enter "password.valid.10" into "password" field
    When I tap on "eye" icon
    Then I should see "password.valid.10" unmasked in "unmaskedpassword" field
    When I tap on "eye" icon
    Then I should see "next" button is enabled
    #-----Tap on Next-----
    When I tap on "next" button
    And I wait for "25" seconds
    Then I should see "verify.email" screen
    And I should connect to email for registration verification
    And I store previous link
    When I tap on "resend.verification.email" link
    And I wait for "25" seconds
    And I should connect to email for resend registration verification
    Then I verify previous email
    And I verify email
    And I wait for "25" seconds
    # And I should see "your.email.verified.toastmessage" ##images cannot be automated##
    #####wait and do after 30 days without tapping on the link
    # When I tap on "next" button
    # And I wait for recording
    #  Then I should connect to email for registration verification
    # And I store previous link
    #  And I should connect to email for resend registration verification
    # And  I verify previous email
    # And I tap on "resend.verification.email" link
    # And I wait for recording
    # And I should see "verify.email" screen
    # And I should see "waiting.for.verfication.toastmessage"  ##images cannot be automated##
    # And I should connect to email for resend registration verification
    # Then I verify previous email
    # And I verify email
    # And I wait for recording
    ###########################
    Then I should see "personal.information" screen
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
    # And I relaunch the app
    Then I should see "account.setup" screen
    When I tap "continue" button
    # And I relaunch the app
    Then I should see "tempo.smart" screen
    When I tap "squire.skip" button
    # And I relaunch the app
    Then I should see "connect.blood.sugar.meter" screen
    When I tap "bgm.skip" button
    And I relaunch the app
    And I handle Bluetooth Notification pop-up
    And I handle Notification pop-up
    And I handle ok button
    Then I should see "home" screen