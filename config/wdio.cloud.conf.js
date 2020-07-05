const path = require('path');
const config = require('./wdio.conf').config;
const fileutils = require('../test/utils/fileoperations');
// ============
// Capabilities
// ============
const caps = fileutils.readMobileCaps()[0] || {};
const {
  browserName, deviceName, appiumVersion, platformVersion, platformName, automationName,
  app,udid
} = caps

config.capabilities = [
  {
    // The defaults you need to have in your config
    browserName: process.env.BROWSER_NAME || browserName,
    appiumVersion: process.env.APPIUM_VERSION || appiumVersion,
    deviceName: process.env.DEVICE_NAME || deviceName,
    platformVersion: process.env.PLATFORM_VERSION || platformVersion,
    platformName: process.env.PLATFORM_NAME || platformName,
    automationName: process.env.AUTOMATION_NAME || automationName,
    autoGrantPermissions: true,
    autoAcceptAlerts:true,
    udid: process.env.DEVICE_UUID || udid,
    unexpectedAlertBehaviour:true,
    locationServicesAuthorized:true,
    // newCommandTimeout: 180,
    newCommandTimeout: 2000,
    app: path.join(process.cwd(), process.env.APP_PATH || app),
    useNewWDA: true,
    noReset: true,
    clearSystemFiles: true,


    // automationName: "uiautomator2",
    metadata: {
      browser: {
        name: 'chrome',
        version: '58',
      },
      device: deviceName,
      platform: {
        name: platformName,
        version: platformVersion,
      },
    },
  },
];
config.services = ['selenium-standalone', 'appium'];
config.appium = {
  args: {
    address: '0.0.0.0',
    commandTimeout: '7200',
    sessionOverride: true,
    debugLogSpacing: true,
    platformName: 'android',
  },
};
config.port = 4728;
exports.config = config;
