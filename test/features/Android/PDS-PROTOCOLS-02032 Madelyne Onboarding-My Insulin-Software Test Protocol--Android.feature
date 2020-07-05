
Feature:MADELYNE Onboarding – My Insulin - Software Test Protocol

@Precondition
Scenario:Navigate till My Insulin screen

        Given I launch the Madelyne application
        When I turn ON Bluetooth
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
        And I wait for "70" seconds
	Then I should see "verify.email" screen
	When I should connect to email for registration verification
	And I verify email
	Then I should see "personal.information" screen
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
    
@SmokeTest
Scenario: Smoke Test for My Insulin screen
        
        Given I should see "my.insulin1" screen
        When I tap "long-acting.insulin.toggle" button
        Then I should see "long-acting.insulin.toggle" button is enabled

        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        And I should see "confirm.insulin.type" title
        And I should see "you.have.selected.longacting" text
        And I should see "cancel" button
        And I should see "ok.popup" button

        When I tap "ok.popup" button
        Then I should see "partner.sharing.code" screen
        When I tap "back" button
        Then I should see "my.insulin1" screen

        When I tap "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled

        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        And I should see "you.have.selected.both" text
        When I tap "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap on "continue" button
        Then I should see "connect.smart" screen
        When I tap on "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap on "bgm.skip" button
        Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen

        When I tap on "more" option
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin1" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long-acting.insulin.toggle" button is enabled

        When I tap on "back" button
        Then I should see "more.menu" screen
		
@SelectBothInsulin
Scenario: Onboarding – My Insulin – Select both mealtime and long-acting insulins

        # PRE-CONDITIONS: 
        ## Make sure that the iOS / Android device is connected to the internet.
        ## Make sure that the user has registered successfully on MMA App as per section 6.2.
        ## Make sure that the user has navigated till “Personal Information” screen and filled all the details.
        
        Given I should see "my.insulin1" screen
        Then I Verify "my.insulin1" text
        And I should see "next" button
        And I should see "back" button
        # And I should see "progress.bar" with "36%" completed    ##Can't be automated
        And I should see "select.the.type.of.insulin" text
        And I should see "mealtime.insulin.text1" text
        And I should see "fast-acting.insulin.taken.immediately" text
        And I should see "mealtime.insulin.toggle" button
        And I should see "long-acting.insulin.text" text
        And I should see "long-acting.insulin.toggle" button
        And I should see "basal.insulin.that.works" text

        When I tap "back" button
        Then I should see "personal.information" screen
        When I tap "next" button
        Then I should see "my.insulin1" screen
        When I tap "mealtime.insulin.toggle" button
        And I tap "long-acting.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long-acting.insulin.toggle" button is enabled

        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        And I should see "confirm.insulin.type" title
        And I should see "you.have.selected.both" text
        And I should see "cancel" button
        And I should see "ok.popup" button
        # And I should see "ok.popup" button highlighted by default   ##Can't be automated

        When I tap "cancel" button
        Then I should see "my.insulin1" screen
        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        When I tap "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap on "continue" button
        Then I should see "connect.smart" screen
        When I tap on "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap on "bgm.skip" button
        Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen

        When I tap on "more" option
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin1" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long-acting.insulin.toggle" button is enabled

        When I tap on "back" button
        Then I should see "more.menu" screen


@SelectLongActingOnly
Scenario: Onboarding – My Insulin - Select only Long-Acting insulin type

        ## PRE-CONDITIONS: 
        ## Make sure that the iOS / Android device is connected to the internet.
        ## Make sure that the user has registered successfully on MMA App as per section 6.2.
        ## Make sure that the user has navigated till “Personal Information” screen and filled all the details.

        Given I should see "my.insulin1" screen
        When I tap "long-acting.insulin.toggle" button
        Then I should see "long-acting.insulin.toggle" button is enabled
       
        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        And I should see "confirm.insulin.type" title
        And I should see "you.have.selected.longacting" text
        And I should see "cancel" button
        And I should see "ok.popup" button

        When I tap "cancel" button
        Then I should see "my.insulin1" screen
        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        When I tap "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap on "continue" button
        Then I should see "connect.smart" screen
        When I tap on "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap on "bgm.skip" button
        Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen

        When I tap on "more" option
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin1" screen
        And I should see "long-acting.insulin.toggle" button is enabled

        When I tap on "back" button
        Then I should see "more.menu" screen

@DontSelect
Scenario:Onboarding – My Insulin - Not selected at least one insulin type
        # PRE-CONDITIONS: 

        # Make sure that the iOS / Android device is connected to the internet.
        # Make sure that the user has registered successfully on MMA App as per section 6.2.
        # Make sure that the user has navigated till “Personal Information” screen and filled all the details.

        Given I should see "my.insulin1" screen

        When I tap "next" button
        Then I should see "insulin.selection" pop-up
        And I should see "insulin.selection.text" text
        And I should see "you.must.select.atleast.one" text
        And I should see "ok.popup" button

        When I tap "ok.popup" button
        Then I should see "my.insulin1" screen

        When I tap "long-acting.insulin.toggle" button
        Then I should see "long-acting.insulin.toggle" button is enabled
       
        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        When I tap "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap on "continue" button
        Then I should see "connect.smart" screen
        When I tap on "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap on "bgm.skip" button
        Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen

        When I tap on "more" option
        Then I should see "more.menu" screen
      

@SelectMealtimeOnly
Scenario: Onboarding – My Insulin - Select only Mealtime insulin type
        # PRE-CONDITIONS: 
        
        # Make sure that the iOS / Android device is connected to the internet.
        # Make sure that the user has registered successfully on MMA App as per section 6.2.
        # Make sure that the user has navigated till “Personal Information” screen and filled all the details.
        
        Given I should see "my.insulin1" screen
        When I tap "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled

        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        And I should see "confirm.insulin.type" title
        And I should see "you.have.selected.mealtime" text
        And I should see "cancel" button
        And I should see "ok.popup" button

        When I tap "cancel" button
        Then I should see "my.insulin1" screen
        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        When I tap "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap on "continue" button
        Then I should see "connect.smart" screen
        When I tap on "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap on "bgm.skip" button
        Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen

        When I tap on "more" option
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin1" screen
        And I should see "mealtime.insulin.toggle" button is enabled

        When I tap on "back" button
        Then I should see "more.menu" screen

@RegressionTest
Scenario: Regresssion Test for My Insulin screen

        Given I should see "my.insulin1" screen
        When I tap "next" button
        Then I should see "insulin.selection" pop-up
        And I should see "insulin.selection.text" text
        And I should see "you.must.select.atleast.one" text
        And I should see "okay.popup" button

        When I tap "okay.popup" button
        Then I should see "my.insulin1" screen

        When I tap "mealtime.insulin.toggle" button
        Then I should see "mealtime.insulin.toggle" button is enabled
        
        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        And I should see "confirm.insulin.type" title
        And I should see "you.have.selected.mealtime" text
        And I should see "cancel" button
        And I should see "ok.popup" button

        When I tap "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "back" button
        Then I should see "my.insulin1" screen
        When I tap "long-acting.insulin.toggle" button
        Then I should see "long-acting.insulin.toggle" button is enabled

        When I tap "next" button
        Then I should see "confirm.insulin" pop-up
        And I should see "you.have.selected.both" text
        When I tap "ok.popup" button
        Then I should see "partner.sharing.code" screen

        When I tap on "i.do.not.have.a.partner.sharing.code" button
        Then I should see "account.setup" screen
        When I tap on "continue" button
        Then I should see "connect.smart" screen
        When I tap on "squire.skip" button
        Then I should see "connect.blood.sugar.meter" screen
        When I tap on "bgm.skip" button
        Then I should see "home" screen

        When I tap on "home.next" button
        And I wait for "1" seconds
        Then I should see "recent.entries" title
        And I should see "view.more" link

        When I tap on "not.now1" button
        Then I should see "connect.your.devices" pop-up

        When I tap on "not.now" button
        Then I should see "home" screen

        When I tap on "more" option
        Then I should see "more.menu" screen
        When I tap on "my.insulin" option
        Then I should see "my.insulin1" screen
        And I should see "mealtime.insulin.toggle" button is enabled
        And I should see "long-acting.insulin.toggle" button is enabled

        When I tap on "back" button
        Then I should see "more.menu" screen

 @Precondition
 Scenario: Logging out of Application

        When I tap on "login.and.security.option"
        And I tap on "logout" button
        Then I should see "login.to.your.account" screen