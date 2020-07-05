const path = require('path');
const config = require('./wdio.conf').config;
const fileutils = require('../test/utils/fileoperations');
// ============
// Capabilities
// ============
const caps = fileutils.readMobileCaps()[27] || {};
const {
  browserName, deviceName, appiumVersion, platformVersion, platformName, deviceOrientation,
  app
} = caps
config.capabilities = [
  {
    // The defaults you need to have in your config
    
    // appiumVersion :'1.13.0',
    // deviceName :'Samsung Galaxy Tab S3 GoogleAPI Emulator',
    // deviceOrientation : 'portrait',
    // browserName : '',
    // platformVersion : '8.1',
    // platformName : 'Android',
    // app : 'sauce-storage:mytempo.apk',
    
    browserName :"",
    appiumVersion: "1.17.1",
    deviceOrientation :"portrait",
    deviceName: "Samsung Galaxy S9 WQHD GoogleAPI Emulator",
    platformVersion: "9.0",
    platformName: "Android",
    // automationName: automationName,
    autoGrantPermissions: true,
   // autoAcceptAlerts: true,
    //udid: udid,
    unexpectedAlertBehaviour: true,
    locationServicesAuthorized: true,
    // newCommandTimeout: 180,
    newCommandTimeout: 2000,
   //app: "sauce-storage:Tempo.apk",
   app: "https://github.com/shivani1192/mobileproject/blob/master/apps/Tempo_2.0.15.apk?raw=true",
    useNewWDA: true,
    noReset: true,
    clearSystemFiles: true,


    //// automationName: "uiautomator2",
    //  metadata: {
    //    browser: {
    //      name: 'chrome',
    //      version: '58',
    //    },
    //   device: deviceName,
    //   platform: {
    //     name: platformName,
    //     version: platformVersion,
    //   },
    // },
  },
];

config.browserName='';

config.services = [{services:'sauce'}];
config.user = 'shivani1192';
  config.key = '6f636567-dcf3-44c6-a822-6b593960f4a0';
 // config.sauceConnect = true;
/* config.appium = {
    args: {
      commandTimeout: '7200',
      deviceName: "Samsung_Galaxy_S9_free",
      udid: "eSamsung_Galaxy_S9_free",
      platformName: "android",
      plateformVersion: "10.0",
      appPackage: "com.lilly.ddcs.madelyne",
      appActivity: "com.lilly.ddcs.madelyne.feature.onboarding.main.OnBoardingActivity",
      app: "Tempo_2.0.15.apk"
  
    },
    
  };*/
  //config.port = 4723;
exports.config = config;
