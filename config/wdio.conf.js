const defaultTimeoutInterval = process.env.DEBUG ? 15 * 60 * 1000 : 9000000;
const fileutils = require("../test/utils/fileoperations");
const platform = 'android';
const fs = require("fs");
const { removeSync } = require("fs-extra");
const nodemailer = require("nodemailer");
const mobileactions = require("../test/helpers/mobileactions");
exports.config = {
  //
  // ==================
  // Specify Test Files
  // ==================
  //
  specs: [
    // ==================
    // iOS Features
    // ==================
    // './test/features/iOS/PDS-PROTOCOLS-01640 Madelyne Onboarding-Get Started-Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01637 Madelyne Onboarding-Account Setup-Software Test Protocol--iOS.feature',
    //'./test/features/iOS/PDS-PROTOCOLS-01642 Madelyne Onboarding-Personal Information-Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01643 Madelyne Onboarding-Set Your Schedule-Software Test Protocol-12 Hour Format--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01643 Madelyne Onboarding-Set Your Schedule-Software Test Protocol-24 Hour Format--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01660 Madelyne More Menu-Edit Profile-Software Test Protocol--iOS.feature',
    //'./test/features/iOS/PDS-PROTOCOLS-01647 Madelyne More Menu-Terms and Privacy, Help and About Tempo--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01658 Madelyne More Menu-Schedule and Reminders-Software Test Protocol-12 Hour Format--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01658 Madelyne More Menu-Schedule and Reminders-Software Test Protocol-24 Hour Format--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01646 Madelyne More Menu-Login and Security-Software Test Protocol--iOS.feature',
    //'./test/features/iOS/PDS-PROTOCOLS-01661 Madelyne More Menu-Prime, Blood Sugar Target Range, About Diabetes And Notification Settings--iOS.feature',
    //  './test/features/iOS/PDS-PROTOCOLS-01649 Madelyne_MMA_User_Authentication_Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01667 Madelyne Logbook New Entry Blood Sugar--iOS.feature',
    //'./test/features/iOS/PDS-PROTOCOLS-01666 Madelyne  Progress--iOS.feature'
    // './test/features/iOS/PDS-PROTOCOLS-01685 Madelyne_MMA_Internationalization_Language--iOS.feature',
    //   './test/features/iOS/PDS-PROTOCOLS-01668 Madelyne_MMA_iOS_Logbook_New Entry_Enter Carbs.feature'
    // ==================
    // Android Features
    // ==================
    // './test/features/Android/PDS-PROTOCOLS-01640 Madelyne Onboarding-Get Started-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01637 Madelyne Onboarding-Account Setup-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01642 Madelyne Onboarding-Personal Information-Software Test Protocol--Android.feature',
    //  './test/features/Android/PDS-PROTOCOLS-01660 Madelyne More Menu-Edit Profile-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01647 Madelyne More Menu-Terms and Privacy, Help and About Tempo--Android.feature',`
    // './test/features/Android/PDS-PROTOCOLS-01646 Madelyne More Menu-Login and Security-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01656 Madelyne Onboarding- Set Your Schedule -Software Test Protocol-12 Hour Format--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01656 Madelyne Onboarding- Set Your Schedule -Software Test Protocol-24 Hour Format--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01657 Madelyne More Menu-Schedule and Reminders-Software Test Protocol-12 Hour Format--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01657 Madelyne More Menu-Schedule and Reminders-Software Test Protocol-24 Hour Format--Android.feature',
    //  './test/features/Android/PDS-PROTOCOLS-01649 Madelyne_MMA_User_Authentication_Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01661 Madelyne More Menu-Prime, Blood Sugar Target Range, About Diabetes And Notification Settings--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01656 Madelyne Onboarding- Set Your Schedule -Software Test Protocol-12 Hour Format--Android.feature',
    // "./test/features/android_tags/PDS-PROTOCOLS-01656 Madelyne Onboarding- Set Your Schedule -Software Test Protocol-24 Hour Format--Android.feature",
    // "./test/features/android_tags/PDS-PROTOCOLS-01657 Madelyne More Menu-Schedule and Reminders-Software Test Protocol-12 Hour Format--Android.feature",
    // './test/features/android_tags/PDS-PROTOCOLS-01657 Madelyne More Menu-Schedule and Reminders-Software Test Protocol-24 Hour Format--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01667 Madelyne Logbook New Entry Blood Sugar--Android.feature',
    //'./test/features/iOS/PDS-PROTOCOLS-01666 Madelyne  Progress--Android.feature'
    // './test/features/Android/PDS-PROTOCOLS-01669 Madelyne_MMA_Android_Logbook_New Entry_Enter Carbs.feature'
    // './test/features/Android/PDS-PROTOCOLS-01679 Madelyne_MMA_Android_Log Book_Tap to Enter.feature'
    // './test/features/Android/PDS-PROTOCOLS-01685 Madelyne_MMA_Internationalization_Language.feature'
    // './test/features/Android/PDS-PROTOCOLS-01675 Madelyne_MMA_Android_Logbook_New Entry_Health Factors.feature',//completed
    // './test/features/Android/PDS-PROTOCOLS-01671 Madelyne_MMA_Android_Logbook_New Entry_Long-Acting Insulin.feature',
    // './test/features/Android/PDS-PROTOCOLS-01669 Madelyne Logbook New Entry Enter Carbs--Android.feature',//completed
    // './test/features/Android/PDS-PROTOCOLS-01673 Madelyne_MMA_Android_Logbook_New Entry_Mealtime Insulin.feature',//completed
    // './test/features/android_tags/PDS-PROTOCOLS-01685 Madelyne_MMA_Internationalization_Language--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01677 Madelyne_MMA_Android_Home Screen_Manual Entry.feature',
    //=================
    // Android Tags Features
    // ================
    // './test/features/android_tags/PDS-PROTOCOLS-01640 Madelyne Onboarding-Get Started-Software Test Protocol--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01637 Madelyne Onboarding-Account Setup-Software Test Protocol--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01642 Madelyne Onboarding-Personal Information-Software Test Protocol--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01656 Madelyne Onboarding- Set Your Schedule -Software Test Protocol-12 Hour Format--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01656 Madelyne Onboarding- Set Your Schedule -Software Test Protocol-24 Hour Format--Android.feature'
    // './test/features/android_tags/PDS-PROTOCOLS-01660 Madelyne More Menu-Edit Profile-Software Test Protocol--Android.feature',
    // './test/features/android_tags/PDS_PROTOCOLS_01644 Madelyne Onboarding-MMA Terms And Privacy Software Test Protocol--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01646 Madelyne More Menu-Login and Security-Software Test Protocol--Android.feature'
    // './test/features/android_tags/PDS-PROTOCOLS-01657 Madelyne More Menu-Schedule and Reminders-Software Test Protocol-12 Hour Format--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01657 Madelyne More Menu-Schedule and Reminders-Software Test Protocol-24 Hour Format--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01661 Madelyne More Menu-Prime, Blood Sugar Target Range, About Diabetes And Notification Settings--Android.feature'
    // './test/features/android_tags/PDS-PROTOCOLS-01649 Madelyne_MMA_User_Authentication_Software Test Protocol--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01666 Madelyne  Progress--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01647 Madelyne More Menu-Terms and Privacy, Help and About Tempo--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01667 Madelyne Logbook New Entry Blood Sugar--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01669 Madelyne Logbook New Entry Enter Carbs--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01685 Madelyne MMA Internationalization Language--Android.feature',
    // "./test/features/android_tags/PDS-PROTOCOLS-01671 Madelyne MMA Logbook New Entry Long-Acting Insulin--Android.feature",
    // './test/features/android_tags/PDS-PROTOCOLS-01673 Madelyne MMA Logbook New Entry Mealtime Insulin--Android.feature'
    // './test/features/android_tags/PDS-PROTOCOLS-01675 Madelyne MMA Logbook New Entry Health Factors--Android.feature',
    // './test/features/android_tags/PDS-PROTOCOLS-01677 Madelyne More Menu MMA HomeScreen Manual Entry Protocol--Android.feature'
    //// =================
    //// Android R2 Features
    //// ================
    // './test/features/Android/PDS-DHF-DMR-01652 Madelyne-MMA-QuickShare Progress Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-DHF-DMR-01653 Madelyne-MMA-QuickShare More Menu Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01637 Madelyne Onboarding-Account Setup-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01640 Madelyne Onboarding-Get Started-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01642 Madelyne Onboarding-Personal Information-Software Test Protocol--Android.feature',
     './test/features/Android/PDS-PROTOCOLS-01644 Madelyne Onboarding MMA Terms And Privacy Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01646 Madelyne More Menu-Login and Security-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01647 Madelyne More Menu-Terms and Privacy, Help and About MyTempo--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01649 Madelyne_MMA_User_Authentication_Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01660 Madelyne More Menu-Edit Profile-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01661 Madelyne More Menu-Prime, Blood Sugar Target Range, About Diabetes And Notification Settings--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01667 Madelyne Logbook New Entry Blood Sugar--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01669 Madelyne Logbook New Entry Enter Carbs--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01671 Madelyne MMA Logbook New Entry Long-Acting Insulin--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01673 Madelyne_MMA_Logbook_New Entry_Mealtime Insulin--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01675 Madelyne MMA Logbook New Entry Health Factors--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01677 Madelyne More Menu MMA HomeScreen Manual Entry Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01683 Madelyne  Progress Menu--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01685 Madelyne MMA Internationalization Language--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-01904 Madelyne_MMA_DataSharing_HCP_Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-02032 Madelyne Onboarding-My Insulin-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-02033 Madelyne More Menu-My Insulin-Software Test Protocol--Android.feature',
    // './test/features/Android/PDS-PROTOCOLS-02062 Madelyne More Menu-My Reminders-Software Test Protocol--Android.feature',
    //// =================
    //// iOS R2 Features
    //// =================
    // './test/features/iOS/PDS_PROTOCOLS_01644_Onboarding_MMA_Terms_And_Privacy_Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS_PROTOCOLS_1661_Madelyne Prime Blood Sugar Target Range Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-DHF-DMR-01652 Madelyne MMA QuickShare More Menu Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-DHF-DMR-01652 Madelyne-MMA-QuickShare Progress Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01637 Madelyne Onboarding-Account Setup-Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01640 Madelyne Onboarding-Get Started-Software Test Protocol--iOS.feature',
    //'./test/features/iOS/PDS-PROTOCOLS-01642 Madelyne Onboarding-Personal Information-Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01646 Madelyne More Menu-Login and Security-Software Test Protocol--iOS .feature',
    // './test/features/iOS/PDS-PROTOCOLS-01647 Madelyne More Menu-Terms and Privacy, Help and About Tempo--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01649 Madelyne_MMA_User_Authentication_Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01660 Madelyne More Menu-Edit Profile-Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01666 Madelyne Logbook New Entry Blood Sugar--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01666 Madelyne Progress Menu--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01668 Madelyne_MMA_Logbook_New Entry_Enter Carbs--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01671 Madelyne MMA Logbook New Entry Long-Acting Insulin--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01672 Madelyne MMA Logbook New Entry Mealtime Insulin--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01674 Madelyne MMA Logbook New Entry Health Factors--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01676 Madelyne MMA Home Screen Manual Entry Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01685 Madelyne MMA_Internalisation_Language--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-01904 Madelyne_MMA_DataSharing_HCP_Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-02032 Madelyne Onboarding-My Insulin-Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-02033 Madelyne More Menu-My Insulin - Software Test Protocol--iOS.feature',
    // './test/features/iOS/PDS-PROTOCOLS-02062 Madelyne MMA_iOS_More Menu-My Reminder-Software Test Protocol.feature',
    //// =================
    //// Sample Test Features
    //// ================
    // './test/features/iOS/testios.feature'
  ],

  // Patterns to exclude.
  exclude: [
    // 'path/to/excluded/files'
  ],
//user id and access key from sauce account
  

  maxInstances: 10,
  //
  
  // ===================
  // Test Configurations
  // ===================
  // Define all options that are relevant for the WebdriverIO instance here
  sync: true,
  //
  // Level of logging verbosity: silent | verbose | command | data | result | error
  logLevel: "result",
  logOutput: "./test/reports/cucumber-json/",
  //
  // Enables colors for log output.
  coloredLogs: true,
  //
  // Warns when a deprecated command is used
  deprecationWarnings: true,
  //
  // If you only want to run your tests until a specific amount of tests have failed use
  // bail (default is 0 - don't bail, run all tests).
  bail: 0,
  //
  // Saves a screenshot to a given path if a command fails.
  screenshotPath: "./test/reports/errorShots/",
  //
  // Set a base URL in order to shorten url command calls. If your `url` parameter starts
  // with `/`, the base url gets prepended, not including the path portion of your baseUrl.
  // If your `url` parameter starts without a scheme or `/` (like `some/path`), the base url
  // gets prepended directly.
  // baseUrl: 'http://localhost',
  //
  // Default timeout for all waitFor* commands.
  waitforTimeout: 100000,
  //
  // Default timeout in milliseconds for request
  // if Selenium Grid doesn't send response
  //   connectionRetryTimeout: 90000,
   capabilities: [{

     browserName:'',
     platformName: 'Android',
     platformVersion: '9.0',
     deviceName: 'Samsung Galaxy S9 WQHD GoogleAPI Emulator',
     appiumVersion:'1.17.1',
    
     deviceOrientation:'portrait',
     app: 'sauce-storage:Tempo.apk',
     autoGrantPermissions:true,
    
 }
  ],
services:['sauce'],
//'appium',
user: 'shivani1192',
key: '6f636567-dcf3-44c6-a822-6b593960f4a0',



  connectionRetryTimeout: 1200000,
  // Default request retries count
  connectionRetryCount: 3,
  //
  // Initialize the browser instance with a WebdriverIO plugin. The object should have the
  // plugin name as key and the desired plugin options as properties. Make sure you have
  // the plugin installed before running any tests. The following plugins are currently
  // available:
  // WebdriverCSS: https://github.com/webdriverio/webdrivercss
  // WebdriverRTC: https://github.com/webdriverio/webdriverrtc
  // Browserevent: https://github.com/webdriverio/browserevent
  // plugins: {
  //     webdrivercss: {
  //         screenshotRoot: 'my-shots',
  //         failedComparisonsRoot: 'diffs',
  //         misMatchTolerance: 0.05,
  //         screenWidth: [320,480,640,1024]
  //     },
  //     webdriverrtc: {},
  //     browserevent: {}
  // },
  //
  //
  // Framework you want to run your specs with.
  // The following are supported: Mocha, Jasmine, and Cucumber
  // see also: http://webdriver.io/guide/testrunner/frameworks.html
  //
  //
  specFileRetries: 1,
  //
  //
  // Make sure you have the wdio adapter package for the specific framework installed
  // before running any tests.
  framework: "cucumber",
  cucumberOpts: {
    require: [
      "./test/stepDefinitions/given.js",
      "./test/stepDefinitions/when.js",
      "./test/stepDefinitions/then.js"
    ], // <string[]> (file/dir) require files before executing features
    backtrace: true, // <boolean> show full backtrace for errors
    compiler: ["js:babel-core/register"], // <string[]> filetype:compiler used for processing required features
    failAmbiguousDefinitions: true, // <boolean< Treat ambiguous definitions as errors
    dryRun: false, // <boolean> invoke formatters without executing steps
    failFast: false, // <boolean> abort the run on first failure
    ignoreUndefinedDefinitions: false, // <boolean> Enable this config to treat
    // undefined definitions as warnings
    name: [], // <string[]> ("extension:module") require files with the given EXTENSION
    snippets: true, // <boolean> hide step definition snippets for pending steps
    format: ["pretty"], // <string[]> (type[:path]) specify the output format, optionally supply PATH to redirect formatter output (repeatable)
    colors: true, // <boolean> disable colors in formatter output
    source: false, // <boolean> hide source uris
    profile: [], // <string[]> (name) specify the profile to use
    strict: true, // <boolean> fail if there are any undefined or pending steps
    ////// Tag Expressions //////
    // <string> (expression) only execute the features or scenarios with tags matching the expression, see https://docs.cucumber.io/tag-expressions/
    ///// All Features /////
    ///// Smoke Test :
    // tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    //tagExpression:  "@Precondition or @RegressionTest",

    ///// Set Your Schedule (SYS) 12 Hour Format /////
    ///// Smoke Test :
    // tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression:  "@Precondition or @BreakfastSYS12hr or @LunchSYS12hr or @DinnerSYS12hr or @BedtimeSYS12hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Set Your Schedule (SYS) 24 Hour Format /////
    ///// Smoke Test :
    // tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @BreakfastSYS24hr or @LunchSYS24hr or @DinnerSYS24hr or @BedtimeSYS24hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Schedule and Reminders (SAR) 12 Hour Format /////
    ///// Smoke Test :
    // tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    //  tagExpression:  "@Precondition or @BreakfastSAR12hr or @LunchSAR12hr or @DinnerSAR12hr or @BedtimeSAR12hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Schedule And Reminders (SAR) 24 Hour Format /////
    ///// Smoke Test :
    //tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @BreakfastSAR24hr or @LunchSAR24hr or @DinnerSAR24hr or @BedtimeSAR24hr",
    ///// Precondition :
    //  tagExpression:  "@Preconditione" ,

    ///// Account Setup R2/////
    ///// Smoke Test :
    // tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @CreateAccount or @Acceptance or @InvalidEmailAndPasswords or @ValidEmailAndPasswords",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Personal Information R2/////
    ///// Smoke Test :
    //  tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    //tagExpression: "@Precondition or @PersonalInformation",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Edit Profile R2 iOS/////
    ///// Smoke Test :
    //  tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @FirstNameAndLastName or @DateOfBirthField or @Combinations or @EmptyFieldVerification or @ValidDataEntry",
    ///// Precondition :
     tagExpression:  "@Precondition" ,

    ///// Edit Profile R2 Android/////
    ///// Smoke Test :
    //  tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @MoreMenuScreen or @EditProfileScreen or @FirstNameAndLastName or @DateOfBirthField or @Combinations or @EmptyFieldVerification or @ValidDataEntry",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    /////Terms and Privacy/////
    ///// Smoke Test :
    //  tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @MoreMenuScreen or @TermsAndPrivacy or @Help or @AboutTempo",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    /////Terms and Privacy - More Menu R2 Android/////
    ///// Smoke Test :
    //  tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @TermsAndPrivacy or @CustomerSupport or @AboutMyTempo",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    /////Terms and Privacy - Onboarding/////
    ///// Smoke Test :
    //  tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @OnboardingTermasandPrivacy",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Login and security/////
    ///// Smoke Test :
    // tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    // // / Complete Feature :
    // tagExpression: "@Precondition or @LoginAndSecurity",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Schedule And Reminders (SAR) 12 Hour Format /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @BreakfastSAR12hr or @LunchSAR12hr or @DinnerSAR12hr or @BedtimeSAR12hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,
    // tagExpression:  "@Precondition or @LoginAndSecurity" ,or @BloodsugarAddLNE24hr
    // tagExpression:  "@Precondition or @BloodsugarAddLNE24hr " ,

    ///// Logbook New Entry Blood Sugar /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @BloodsugarAddLNE24hr or @BloodsugarAddLNE12hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Logbook New Entry Blood Sugar R2 /////
    ///// Smoke Test :
    //  tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @BloodsugarAddLNE24hr or @BloodsugarAddLNE12hr or @BloodsugarDeleteLNE",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Logbook New Entry carbs /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @CarbsAddLNE24hr or @CarbsAddLNE12hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Logbook New Entry carbs  R2/////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @CarbsAddLNE24hr or @CarbsAddLNE12hr or @DeleteCarbsEntry",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Internationalization Language R2 /////
    ///// Smoke Test :
    //  tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    //  tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @LanguageEnglish",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// User Authentication /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: " @CreatingMail or @LoginToAccount or @LoginDisabled or @LoginButton or @LogginIn or @MultipleLogin or @OtherDeviceCredentials",

    ///// User Authentication R2 Android/////
    ///// Smoke Test :
     //tagExpression: "@SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@CreatingMail or @LoginToAccount or @LoginButton or @LogingIn or @MultipleLogin or @OtherDeviceCredentials",

    ///// Get Started R2/////
    ///// Smoke Test :
    // tagExpression: "@SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@OnboardingGetStarted or @OnboardingAboutTempo",

    ///// Prime Blood/////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @BloodSugarTargetRange or @AboutDiabetes or @NotificationSettings or @ScheduleAndReminders",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Prime Blood R2 Android/////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @PrimeAirShot or @BloodSugarTargetRange or @AboutDiabetes or @NotificationSettings or @MyReminders or @LoginAndSecurity",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Progress R2 iOS /////
    ///// Smoke Test :
    // tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Progress-No Data,Dataframework,ProgressView,Visualization
    // tagExpression: "@Precondition or @Progress",
    ///Progress-DateVerification
    // tagExpression : '@DateVerfication',
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Progress R2 Android/////
    ///// Smoke Test :
    // tagExpression:  "@Precondition or @SmokeTest" ,
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    //tagExpression: "@Precondition or @Progress or @Dataframework or @ProgressView or @DateVerfication or @Visualization",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Enter LongActing Insulin /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @LongactingInsulin12hr or @LongactingInsulin24hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Enter LongActing Insulin R2 /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @LongactingInsulin12hr or @LongactingInsulin24hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Enter Mealtime Insulin R2/////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @MealtimeInsulin12hr or @MealtimeInsulin24hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Enter Health Factors R2/////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @HealthFactors12hr or @HealthFactors24hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Enter Health Factors  R2 /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    // // / Complete Feature :
    // tagExpression: "@Precondition or @HealthFactors12hr or @HealthFactors24hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Home Screen Manual Entry /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @ManualEntry",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Home Screen Manual Entry iOS R2 /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @ManualEntryBreakfast or @ManualEntryLunch",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Quick Share more menu R2 /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ////// Complete Feature :
    // tagExpression: "@Precondition or @QuickShareMoreMenu",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Quick Share Progress R2 /////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @QuickShareProgress",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Onboarding-My Insulin iOS/////
    ///// Smoke Test :
    // tagExpression: "@SmokeTest",
    ///// Regression Test :
    // tagExpression: "@RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@SelectBothInsulin or @SelectLongActingOnly or @SelectMealtimeOnly or @DontSelect",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    ///// Onboarding-My Insulin Android/////
    ///// Smoke Test :
    // tagExpression: "@SmokeTest",
    ///// Regression Test :
    // tagExpression: "@RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@SelectBothInsulin or @SelectLongActingOnly or @DontSelect or @SelectMealtimeOnly",
    ///// Precondition :
    //// tagExpression:  "@Precondition" ,

    ///// More Menu-My Insulin/////
    // ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @InsulinSelections or @AdjustReminders",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,
    //////////More Menu-My Reminders R2 ////////
    ///// Smoke Test :
    // tagExpression: "@Precondition or @SmokeTest",
    ///// Regression Test :
    // tagExpression:  "@Precondition or @RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@Precondition or @MealtimeInsulin12hr or @LongActingInsulin12hr or @MealtimeAndLongActing24hr",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,
    ///// Scenario-1:More Menu â€“ My Reminders - Mealtime Insulin-12 hours :
    //  tagExpression: "@Precondition or @MealtimeInsulin12hr",
    ///// Scenario-2:More Menu â€“ My Reminders - Long Acting Insulin-12 hours :
    //  tagExpression: "@Precondition or @LongActingInsulin12hr",
    ///// Scenario-3:More Menu â€“ My Reminders- Both types of insulin selected - 24 Hours :
    //  tagExpression: "@Precondition or @MealtimeAndLongActing24hr",
    ///// Scenario-5:More Menu â€“ My Reminders- Both types of insulin selected - 24 Hours :
    //  tagExpression: "@MyReminderNotifications",

    ///// Data-Sharing-HCP /////
    ///// Smoke Test :
    // tagExpression: "@SmokeTest",
    ///// Regression Test :
    // tagExpression: "@RegressionTest",
    ///// Complete Feature :
    // tagExpression: "@DataSharing-DoNotConsent or @DataSharing-SkipOnboarding or @DataSharing-AgreeandContinue-MultiplePartners",
    ///// Precondition :
    // tagExpression:  "@Precondition" ,

    timeout: defaultTimeoutInterval, // <number> timeout for step definitions
    tagsInTitle: false, // <boolean> add cucumber tags to feature or scenario name
    snippetSyntax: undefined // <string> specify a custom snippet syntax
    // tags: [`@onBoarding"&~@regressionTest`] ,
    // keepAlive: false
  },
  //
  // Test reporter for stdout.
  // The only one supported by default is 'dot'
  // see also: http://webdriver.io/guide/reporters/dot.html
  reporters: ["spec", "allure", "json", "multiple-cucumber-html"],
  reporterOptions: {
    junit: { outputDir: "./test/reports/junit-results/" },
    json: { outputDir: "./test/reports/json-results/" },
    allure: {
      outputDir: "./test/reports/allure-results/",
      disableWebdriverStepsReporting: false,
      useCucumberStepReporter: true,
      disableWebdriverScreenshotsReporting: false
    },
    htmlReporter: {
      jsonFolder: "./test/reports/cucumber-json/",
      reportFolder: "./test/reports/htmlreports/",
      openReportInBrowser: true,
      disableLog: false,
      displayDuration: true,
      saveCollectedJSON: false,
      pageTitle: "Cucumber HTML Report",
      customData: {
        title: "Run info",
        data: [
          { label: "Project", value: "Madelyne MMA" },
          { label: "Release", value: "1" },
          { label: "Execution Date", value: new Date(Date.now()) }
          // {label: 'Execution End Time', value: new Date(Date.now())}
        ]
      }
      // ... other options, see Options
    }
  },
  //
  // =====
  // Hooks
  // =====
  // WebdriverIO provides several hooks you can use to interfere with the test
  //   process in order to enhance
  // it and to build services around it. You can either apply a
  //   single function or an array of
  // methods to it. If one of them returns with a promise,
  //   WebdriverIO will wait until that promise got
  // resolved to continue.
  /**
   * Gets executed once before all workers get launched.
   * @param {Object} config wdio configuration object
   * @param {Array.<Object>} capabilities list of capabilities details
   */
  onPrepare() {
    switch (platform) {
      case "android":
        console.log("Starting Madelyne App tests On Android Device");
        break;
      case "ios":
        console.log("Starting Madelyne App tests On iOS Device");
        break;
    }
    removeSync("./test/reports/htmlreports/features");
  },
  /**
   * Gets executed just before initialising the webdriver session and test framework.
   * It allows you
   * to manipulate configurations depending on the capability or spec.
   * @param {Object} config wdio configuration object
   * @param {Array.<Object>} capabilities list of capabilities details
   * @param {Array.<String>} specs List of spec file paths that are to be run
   */
  // beforeSession: function (config, capabilities, specs) {
  // },
  /**
   * Gets executed before test execution begins. At this point you can access to all global
   * variables like `browser`. It is the perfect place to define custom commands.
   * @param {Array.<Object>} capabilities list of capabilities details
   * @param {Array.<String>} specs List of spec file paths that are to be run
   */
  before() {
    /**
     * Setup the Chai assertion framework
     */
    // eslint-disable-next-line global-require
    const chai = require("chai");
    global.expect = chai.expect;
    global.assert = chai.assert;
    global.should = chai.should();
  },
  /**
   * Runs before a WebdriverIO command gets executed.
   * @param {String} commandName hook command name
   * @param {Array} args arguments that command would receive
   */
  // beforeCommand: function (commandName, args) {
  // },
  /**
   * Hook that gets executed before the suite starts
   * @param {Object} suite suite details
   */
  // beforeSuite: function (suite) {
  // },
  /**
   * Function to be executed before a test (in Mocha/Jasmine) or a step (in Cucumber) starts.
   * @param {Object} test test details
   */
  // beforeTest: function (test) {
  // },
  /**
   * Hook that gets executed _before_ a hook within the suite starts (e.g. runs before calling
   * beforeEach in Mocha)
   */
  // beforeHook: function () {
  // },
  /**
   * Hook that gets executed _after_ a hook within the suite starts (e.g. runs after calling
   * afterEach in Mocha)
   */
  // afterHook: function () {
  // },
  /**
   * Function to be executed after a test (in Mocha/Jasmine) or a step (in Cucumber) starts.
   * @param {Object} test test details
   */
  afterTest(test) {
    // if test passed, ignore, else take and save screenshot.
    if (test.passed) {
      return;
    }
    console.log("Here : " + test.name);
    // get current test title and clean it, to use it as file name
    const filename = encodeURIComponent(test.title.replace(/\s+/g, "-"));
    // build file path
    const filePath = `${this.screenshotPath + filename}.png`;
    // save screenshot
    browser.saveScreenshot(filePath);
    console.log("\n\tScreenshot location:", filePath, "\n");
  },
  /**
   * Hook that gets executed after the suite has ended
   * @param {Object} suite suite details
   */
  // afterSuite: function (suite) {
  // },
  /**
   * Runs after a WebdriverIO command gets executed
   * @param {String} commandName hook command name
   * @param {Array} args arguments that command would receive
   * @param {Number} result 0 - command success, 1 - command error
   * @param {Object} error error object if any
   */
  // afterCommand: function (commandName, args, result, error) {
  // },
  /**
   * Gets executed after all tests are done. You still have access to all global variables from
   * the test.
   * @param {Number} result 0 - test pass, 1 - test fail
   * @param {Array.<Object>} capabilities list of capabilities details
   * @param {Array.<String>} specs List of spec file paths that ran
   */
  // after: function (result, capabilities, specs) {
  // },
  /**
   * Gets executed right after terminating the webdriver session.
   * @param {Object} config wdio configuration object
   * @param {Array.<Object>} capabilities list of capabilities details
   * @param {Array.<String>} specs List of spec file paths that ran
   */
  // afterSession: function (config, capabilities, specs) {
  // },
  /**
   * Gets executed after all workers got shut down and the process is about to exit.
   * @param {Object} exitCode 0 - success, 1 - fail
   * @param {Object} config wdio configuration object
   * @param {Array.<Object>} capabilities list of capabilities details
   */
  onComplete: function(exitCode, config, capabilities) {},
  // Cucumber specific hooks
  beforeFeature: function(feature) {
    console.log(feature.name + " is started");
    switch (feature.name) {
      case "MADELYNE-ONBOARDING â€“ ACCOUNT SETUP - SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress(
          "emailaddress.valid.11.precondition"
        );
        browser.pause(1000);
        break;
      case "MADELYNE-ONBOARDING â€“ ACCOUNT SETUP - SOFTWARE TEST PROTOCOL ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress(
          "emailaddress.valid.11.precondition"
        );
        browser.pause(1000);
        break;
      case "MADELYNE- ONBOARDINGâ€“ PERSONAL INFORMATION- SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress1");
        browser.pause(1000);
        break;
      case "MADELYNE MORE MENU â€“ EDIT PROFILE - SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE MORE MENU â€“ EDIT PROFILE - SOFTWARE TEST PROTOCOL ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MORE MENU â€“ LOGIN AND SECURITY - SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("registered.new.email");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("registered.new.email.1");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("new.email.to.login");
        browser.pause(1000);
        // mobileactions.replaceProperties('Registered.Confirm.New.Email','Registered.New.Email')
        // browser.pause(1000);
        break;
      case "Madelyne MMA Android Onboarding Set Your Schedule Software Test Protocol 12hrs Format":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Madelyne-MMA Android Onboarding Set Your Schedule Software Test Protocol 24hrs Format":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Verfication of MORE MENU â€“ PRIME, BLOOD SUGAR TARGET RANGE, ABOUT DIABETES AND NOTIFICATION SETTINGS - SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress2");
        browser.pause(1000);
        break;
      case "Madelyne MMA iOS Onboarding Set Your Schedule Software Test Protocol 12hrsFormat":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE PROGRESS MENU - SOFTWARE TEST PROTOCOL IOS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress1");
        browser.pause(1000);
        break;
      case "Madelyne MMA iOS Onboarding Set Your Schedule Software Test Protocol 24hrsFormat":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "More Menu â€“Schedule and Reminders Software Test Protocol- 12 Hour Format -- iOS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Madelyne-MMA iOS More Menu Schedule and Remainders Software Test Protocol 24hrsFormat":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Madelyne-MMA Android More Menu Schedule and Remainders Software Test Protocol 12hrsFormat":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Madelyne-MMA Android More Menu Schedule and Remainders Software Test Protocol 24hrsFormat":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE USER AUTHENTICATION â€“ SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("newregistered.email");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("unregistered.email");
        browser.pause(1000);
        break;
      case "MADELYNE MORE MENU â€“ TERMS AND PRIVACY, HELP AND ABOUT TEMPO- SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;

      case "MADELYNE MORE MENU â€“ TERMS AND PRIVACY, HELP AND ABOUT MYTEMPO- SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;

      case "MADELYNE More Menu â€“ My Insulin - Software Test Protocol":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE LOGBOOK NEW ENTRY BLOOD SUGAR SOFTWARE TEST PROTOCOL FOR IOS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE PROGRESS MENU - SOFTWARE TEST PROTOCOL ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress1");
        browser.pause(1000);
        break;
      case "MADELYNE LOGBOOK-NEW ENTRY-BLOOD SUGAR - SOFTWARE TEST PROTOCOL FOR ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE LOGBOOK- NEW ENTRY â€“ ENTER CARBS - SOFTWARE TEST PROTOCOL FOR ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE INTERNATIONALIZATION-LANGUAGE - SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE LOGBOOK- NEW ENTRY â€“ ENTER CARBS - SOFTWARE TEST PROTOCOL FOR ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE LOGBOOK- NEW ENTRY â€“ ENTER CARBS - SOFTWARE TEST PROTOCOL FOR IOS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "LOGBOOK- NEW ENTRY â€“ ENTER LONG ACTING INSULIN - SOFTWARE TEST PROTOCOL FOR ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "LOGBOOK- NEW ENTRY â€“ ENTER LONG ACTING INSULIN - SOFTWARE TEST PROTOCOL FOR IOS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "LOGBOOK - NEW ENTRY- MEALTIME INSULIN- SOFTWARE TEST PROTOCOL FOR ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE LOGBOOK- NEW ENTRY- MEALTIME INSULIN- SOFTWARE TEST PROTOCOL FOR IOS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "LOGBOOK - NEW ENTRY- HEALTH FACTORS - SOFTWARE TEST PROTOCOL-ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "LOGBOOK - NEW ENTRY- HEALTH FACTORS - SOFTWARE TEST PROTOCOL-IOS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE HOME SCREEN â€“ MANUAL ENTRY - SOFTWARE TEST PROTOCOL FOR ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE HOME SCREEN â€“ MANUAL ENTRY - SOFTWARE TEST PROTOCOL FOR IOS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE ONBOARDING â€“ TERMS AND PRIVACY- SOFTWARE TEST PROTOCOL":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Verfication of MORE MENU â€“ PRIME, BLOOD SUGAR TARGET RANGE, ABOUT DIABETES AND NOTIFICATION SETTINGS - SOFTWARE TEST PROTOCOL WITH TAGS":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "LOGBOOK - NEW ENTRY- MEALTIME INSULIN- SOFTWARE TEST PROTOCOL FOR ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "LOGBOOK - NEW ENTRY- HEALTH FACTORS - SOFTWARE TEST PROTOCOL-ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Madelyne-MMA Android More Menu Schedule and Reminders Software Test Protocol 12hrs Format":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Madelyne-MMA Android More Menu Schedule and Reminders Software Test Protocol 24 hrs Format":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Madelyne-MMA Android Quick Share â€“ More Menu -  Software Test Protocol":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "Madelyne-MMA iOS Quick Share â€“ More Menu -  Software Test Protocol":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;
      case "MADELYNE Quick Share â€“ Progress -  Software Test Protocol":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;

      case "MADELYNE Onboarding â€“ My Insulin - Software Test Protocol":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress1");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress2");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress3");
        browser.pause(1000);
        break;

      case "MADELYNE More Menu â€“ My Insulin - Software Test Protocol":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        break;

      case "MADELYNE MORE MENU - MY REMINDERS - SOFTWARE TEST PROTOCOL - ANDROID":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress2");
        browser.pause(1000);
        break;

      case "MADELYNE More menu â€“ My Reminders - Software Test Protocol for ios":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress2");
        browser.pause(1000);
        break;

      case "MADELYNE DATA SHARING â€“ HCP â€“ Software Test Protocol":
        mobileactions.incrementEmailAddress("emailaddress");
        browser.pause(1000);

        mobileactions.incrementEmailAddress("emailaddress1");
        browser.pause(1000);
        mobileactions.incrementEmailAddress("emailaddress2");
        browser.pause(1000);
        break;
      default:
        console.log("No Need To Increment");
    }
  },
  beforeScenario: function(scenario) {
    console.log(scenario.name + " is started");
    // browser.launch()
    browser.pause(1000);
  },
  // beforeStep: function (step) {
  // },
  /**
   * Function to be executed after step (in Cucumber) starts.
   * @param {Object} stepResult test details
   */
  afterScenario: function(scenario) {
    console.log(scenario.name + " is ended");
    // browser.closeApp();
  },
  afterFeature: function(feature) {
    console.log(feature.name + " is ended");
  }
};