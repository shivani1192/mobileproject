const { Given, When } = require("cucumber");
const fs = require("fs");
var webdriverjs = require("webdriverjs");
const https = require("https");
const open = require("open");
const timeOutinMs = 5000;
const moment = require("moment");
const assert = require("assert");
const screenshotPath = "./test/reports/errorShots/";
const fileutils = require("../utils/fileoperations");
const mobileElementAction = require("../helpers/mobileElementActions");
const mobileactions = require("../helpers/mobileactions");
var emailUtils = require("../utils/emailConfiguration");
const utils = require("../utils/genericutilities");
const contentful = require("../services/contentful");
const verifyEmail = require("../services/janrain/verificationCode");
const deviceName = fileutils.readMobileCaps()[0].deviceName;
const platform = fileutils.readMobileCaps()[0].platformName.toLowerCase();
const caps = fileutils.readMobileCaps()[0] || {};
const {
  bundleid,
  appActivity,
  appPackage,
  safaribrowserbundleid,
  settingsApp,
  platformVersion
} = caps;
fileutils.logConsoleOutput();
var ifunc = 0;
var Horseman = require("node-horseman");
var horseman = new Horseman();
Given(/^I launch the Madelyne application$/, async () => {
  try {
    switch (platform) {
      case "android":
        try {
          // // perform operation on android
          // driver.setImplicitTimeout(5000)
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "login.to.your.account"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            console.log("Login Screen is displayed");
            browser
              .element(`${fileutils.readPropertyFile(platform, "back")}`)
              .click();
          }
        } catch (e) {
          console.log("Already In Tempo Screen");
          // //browser.saveScreenshot();
        }
        ////browser.saveScreenshot();
        break;
      case "ios":
        try {
          const exists2 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "turnon.your.bluetooth"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
        }
                  
          catch(e){
            try{

              const exists2 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "connect.your.devices"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
          
          if (exists2) {
            browser
              .element(
                `${fileutils.readPropertyFile(platform, "not.now.button")}`
              )
              .click();

             
          }
          try{
            const exists2 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "auto.logged.entries"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if(exists2){
            browser
            .element(
              `${fileutils.readPropertyFile(platform, "ok")}`
            )
            .click();
            }
          }
          catch(e){



          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, "more")}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            browser
              .element(`${fileutils.readPropertyFile(platform, "more")}`)
              .click();
            mobileactions.swipeDown(0.95);
            browser
              .element(
                `${fileutils.readPropertyFile(
                  platform,
                  "login.and.security.option"
                )}`
              )
              .click();
            browser
              .element(`${fileutils.readPropertyFile(platform, "logout")}`)
              .click();
            browser.launch();
            browser.pause(2000);
            const exists3 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "login.to.your.account"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists3) {
              console.log("Login Screen is displayed");
              browser
                .element(`${fileutils.readPropertyFile(platform, "back")}`)
                .click();
            }
          }
        }
        } catch (ee) {
          try {
            // perform operation on android
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "login.to.your.account"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists1) {
              console.log("Login Screen is displayed");
              browser
                .element(`${fileutils.readPropertyFile(platform, "back")}`)
                .click();
            }
          } catch (e) {
            console.log("Already In Tempo Screen");
            //browser.saveScreenshot();
          }
        }
      }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Go to Tempo Screen", e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I "([^"]*)" alerts$/, async action => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android
        break;
      case "ios":
        if (action === "accept") {
          browser.waitUntil(
            () => browser.alertAccept(),
            timeOutinMs,
            "Error: Element not found"
          );
          console.log("Allow Push Notifications");
        } else {
          browser.waitUntil(
            () => browser.alertDismiss(),
            timeOutinMs,
            "Error: Element not found"
          );
          console.log("Dismissed Push Notifications");
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot click on alerts");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I verify email$/, async () => {
  try {
    fs.readFile(
      "./test/testdata/codeforregscreen.txt",
      "utf-8",
      (err, data) => {
        if (err) {
          console.error(err);
        }
        browser.pause(1000);
        horseman.open(data);
      }
    );
    browser.pause(15000);
    ////browser.saveScreenshot();
  } catch (e) {
    console.error("Unable to open the URL specified", e);
    return assert.strictEqual(platform, "", e);
    //browser.saveScreenshot();
  }
});
Given(/^I verify "([^"]*)" "([^"]*)"$/, async (content, contentType) => {
  try {
    const exists = browser.waitUntil(
      () => browser.element("//XCUIElementTypeTextView").isVisible(),
      timeOutinMs,
      "Error: Element not found"
    );
    if (exists) {
      let text = await contentful.initialize(contentType, content);
      text = text.replace(/[\n\r]/g, "");
      browser.pause(1000);
      console.log(`Message displayed: ${text}\n\n`);
      ////browser.saveScreenshot();
    }
  } catch (e) {
    console.error(`Cannot fetch contentful data: ${e}`);
  }
});
Given(/^I verify "([^"]*)" screen$/, async screen => {
  try {
    switch (platform) {
      case "android":
        // android code here----
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.element("//XCUIElementTypeTextView").isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const contentfulterms = await contentful.termsOfUse(
            "legalContent",
            "terms-US-en_US"
          );
          const contentfulprivacy = await contentful.privacy(
            "legalContent",
            "privacy-US-en_US"
          );
          let text = appconfig.verifyTextFromConfig(screen);
          text = text.replace("{terms}", contentfulterms);
          text = text.replace("{privacy}", contentfulprivacy);
          text = text.replace(/["']/g, "");
          console.log(`Message displayed: ${text}`);
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`Cannot fetch contentful data: ${e}`);
    //browser.saveScreenshot();
  }
});
Given(/^I enroll a new user$/, async () => {
  try {
    preRegFormCall.api();
  } catch (e) {
    console.error(`Cannot enroll the user: ${e}`);
  }
});
Given(/^I enroll a new user for registration$/, async () => {
  try {
    verifyEmail.api();
  } catch (e) {
    console.error(`Cannot enroll the user: ${e}`);
  }
});
Given(/^I verify email of a new user$/, async () => {
  try {
    const result = await verifyEmail.api();
    console.log("---Postman API Verification ---");
    console.log(result);
  } catch (e) {
    console.error(`Cannot verify the user: ${e}`);
  }
});
Given(/^I verify primary device$/, async () => {
  try {
    const jwttoken = await fileutils.readFile();
    const primarydevice = await primaryDevice.getPrimaryDeviceApi(jwttoken);
    console.log(primarydevice);
  } catch (e) {
    console.error(`Cannot verify the user: ${e}`);
  }
});
Given(/^I fetch auth token$/, async () => {
  try {
    const token = await authToken.api();
    const access = await accesstoken.authTokenapi(token);
    const jwt = await jwtToken.jwtTokenapi(access);
    await configdata.getconfigservices(jwt);
  } catch (e) {
    console.error(`Cannot fetch jwt token: ${e}`);
  }
});
Given(/^I set current device as Primary Device$/, async () => {
  try {
    const token = await fileutils.readFile();
    const device = await primary.setPrimaryDevice(token);
    console.log(device);
    const appData = await appSettings.getAppSettings(token);
    console.log(appData);
  } catch (e) {
    console.error(`Cannot set primary device: ${e}`);
  }
});
Given(/^I see the "([^"]*)" screen$/, async object => {
  try {
    switch (platform) {
      case "android":
        const check = browser.waitUntil(
          () =>
            browser
              .element(`~${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (check) {
          console.log(`${object} screen is displayed`);
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element(`~${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          console.log(`${object} screen is displayed`);
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I force touch the "([^"]*)"$/, async object => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android element
        break;
      case "ios":
        await browser.execute("mobile:pressButton", { name: "home" });
        console.log("Closed the App");
        browser.pause(8000);
        const el1 = browser.element("~Vega");
        el1.click();
        console.log("Tap the App");
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` - Cannot click on ${object}`);
    console.log(e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I activate the application$/, async () => {
  try {
    switch (platform) {
      case "android":
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
        }
        console.log(" Launched application ");
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.execute("mobile: activateApp", { bundleId: bundleid }),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log(" Launched application ");
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Activate Application");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I go back to the application$/, async () => {
  try {
    switch (platform) {
      case "android":
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
          console.log(browser.getCurrentPackage());
        }
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.execute("mobile: activateApp", { bundleId: bundleid }),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log(" Launched application ");
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot go back to application");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I should be able to edit "([^"]*)"$/, async object => {
  try {
    let xpath;
    let levelText;
    switch (platform) {
      case "android":
        // perform operation on android element
        break;
      case "ios":
        xpath = fileutils.readPropertyFile(platform, object);
        xpath = `${xpath}[${String(3)}]`;
        browser.element(xpath).click();
        levelText = browser.element(xpath).getText();
        console.log(`\n Edited Slider value : ${levelText}`);
        ////browser.saveScreenshot();
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`\n Cannot click on ${object}${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I terminate the app$/, async () => {
  try {
    switch (platform) {
      case "android":
        const exists1 = browser.waitUntil(
          () => browser.closeApp(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists1) {
          console.log(" Application is terminated ");
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.reset(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log(" Application is terminated ");
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot terminate app");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I relaunch the app again$/, async () => {
  try {
    switch (platform) {
      case "android":
        const exists1 = browser.waitUntil(
          () => browser.launch(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists1) {
          console.log(" Application is launched ");
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        ifunc = 0;
        const exists = browser.waitUntil(
          () => browser.launch(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log(" Application is launched ");

          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch app");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I relaunch the app$/, async () => {
  try {
    switch (platform) {
      case "android":
        const exists1 = browser.waitUntil(
          () => browser.launch(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists1) {
          console.log(" Application is launched ");
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        ifunc = 0;
        const exists = browser.waitUntil(
          () => browser.launch(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log(" Application is launched ");
          const exists2 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "turnon.your.bluetooth"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists2) {
            browser
              .element(
                `${fileutils.readPropertyFile(platform, "not.now.button")}`
              )
              .click();
          }
          try{
            const exists2 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "auto.logged.entries"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if(exists2){
            browser
            .element(
              `${fileutils.readPropertyFile(platform, "ok")}`
            )
            .click();
          }
        }
          catch(e){
            console.log("Auto logged popup not found")
          }
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch app");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I launch device Settings$/, async () => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.execute("mobile: launchApp", { bundleId: settingsApp }),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log("Launched Settings application ");
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch Settings app" + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I close device Settings$/, async () => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.execute("mobile: launchApp", { bundleId: settingsApp }),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log("Launched Settings application ");
          ////browser.saveScreenshot();
        }
        browser.execute("mobile: terminateApp", { bundleId: settingsApp });
        console.log("Close Settings application ");
        ////browser.saveScreenshot();
        // }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("cannot close Device Settings" + e);
    //browser.saveScreenshot();
    //return assert.strictEqual(platform, 'ios', 'Cannot launch Settings app');
  }
});
Given(/^I select Vega Application$/, async () => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element("//XCUIElementTypeStaticText[@name='Vega']")
              .click(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log("Opened Vega Settings");
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch Vega Settings");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", "Cannot launch Vega Settings");
  }
});
Given(/^I select Notifications$/, async () => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element("//XCUIElementTypeStaticText[@name='Notifications']")
              .click(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log("Opened Notifications Settings");
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch Notifications Settings");
    //browser.saveScreenshot();
    return assert.strictEqual(
      platform,
      "ios",
      "Cannot launch Notifications Settings"
    );
  }
});
Given(/^I should see Allow Notifications is set "([^"]*)"$/, async value => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element("//XCUIElementTypeSwitch[@name='Allow Notifications']")
              .isVisible(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          const alertValue = browser
            .element("//XCUIElementTypeSwitch[@name='Allow Notifications']")
            .getValue();
          if (alertValue === value) {
            console.log("Notifications is turned off");
          } else {
            console.log("Notifications is turned on");
          }
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch Vega Settings");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", "Cannot launch Vega Settings");
  }
});
Given(/^I update acceptance version for Terms and Privacy$/, async () => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android
        break;
      case "ios":
        const entryID = await contentful.getentryID();
        let acceptanceversion = await contentful.getAcceptanceversion();
        acceptanceversion += 1;
        await contentful.updateTermsVersion(entryID, acceptanceversion);
        await contentful.publishcontent(entryID);
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch Vega Settings");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", "Cannot launch Vega Settings");
  }
});
Given(/^I verify email from mobile browser$/, async () => {
  try {
    fs.readFile(
      "./test/testdata/codeforregscreen.txt",
      "utf-8",
      (err, data) => {
        if (err) {
          console.error(err);
        }
        browser.startActivity(
          "com.android.chrome",
          "com.google.android.apps.chrome.Main",
          "com.android.chrome",
          "org.chromium.chrome.browser.ChromeTabbedActivity",
          "android.intent.action.MAIN",
          "android.intent.category.LAUNCHER",
          "",
          null,
          false
        );
        browser.url(data);
      }
    );
    browser.pause(15000);
    ////browser.saveScreenshot();
  } catch (e) {
    console.error("Unable to open the URL specified", e);
  }
});
Given(/^I should see "([^"]*)" as "([^"]*)" in bar$/, async (value, object) => {
  try {
    let range = browser
      .element(`${fileutils.readPropertyFile(platform, object)}`)
      .getText();
    let checkValue = `${fileutils.readPropertyFile("data", value)}`;
    if (range == checkValue) {
      console.log(checkValue + " is displayed as " + object + " in bar");
    } else {
      console.log(checkValue + " is not displayed as " + object + " in bar");
    }
  } catch (e) {
    console.error(`Cannot fetch contentful data: ${e}`);
  }
});
Given(/^I store previous link$/, async () => {
  try {
    switch (platform) {
      case "android":
        fs.readFile(
          "./test/testdata/codeforregscreen.txt",
          "utf-8",
          (err, data) => {
            if (err) {
              console.error(err);
            }
            fs.writeFile(
              "./test/testdata/original.txt",
              data,
              { flag: "w" },
              err2 => {
                if (err2) throw err2;
                console.log("original text has been copied");
              }
            );
          }
        );
        ////browser.saveScreenshot();
        break;
      case "ios":
        fs.readFile(
          "./test/testdata/codeforregscreen.txt",
          "utf-8",
          (err, data) => {
            if (err) {
              console.error(err);
            }
            fs.writeFile(
              "./test/testdata/original.txt",
              data,
              { flag: "w" },
              err2 => {
                if (err2) throw err2;
                console.log("original text has been copied");
              }
            );
          }
        );
        ////browser.saveScreenshot();
        break;
    }
  } catch (e) {
    console.error("Unable to open the URL specified", e);
  }
});
Given(/^I verify previous email$/, async () => {
  try {
    switch (platform) {
      case "android":
        console.log("verifying previous mail");
        fs.readFile("./test/testdata/original.txt", "utf-8", (err, data) => {
          if (err) {
            console.error(err);
          }
          browser.pause(1000);
          horseman.open(data);
          browser.pause(15000);
        });
        ////browser.saveScreenshot();
        break;
      case "ios":
        console.log("verifying previous mail");
        fs.readFile("./test/testdata/original.txt", "utf-8", (err, data) => {
          if (err) {
            console.error(err);
          }
          browser.pause(1000);
          horseman.open(data);
          browser.pause(15000);
        });
        break;
    }
  } catch (e) {
    console.error("Unable to open the URL specified", e);
  }
});
Given(/^I set deviceformat to 24 hour$/, async function() {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Use 24-hour format");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists1) {
              let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.auto.toggle")).getAttribute('checked')
              if (autoToggle == 'false') {
                console.log("Automatic 24-hour format already disabled");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.auto.toggle")).click();
                console.log("Automatic 24-hour format disabled");
              }
              let value1 = browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.24hour.toggle")).getAttribute('checked')
              if (value1 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            break;

            case "OnePlus7Pro":
             
                    browser.startActivity("com.android.settings", "com.android.settings.Settings");
                    browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.search")).click();
                    browser.pause(500)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Use 24-hour format");
                    browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
           
                    const exists28 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                    if (exists28) {
                      let autoToggle = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.locale.default")).getAttribute('checked')
                      if (autoToggle == 'false') {
                        console.log("Automatic 24-hour format already disabled");
                      }
                      else {
                        browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.locale.default")).click();
                        console.log("Automatic 24-hour format disabled");
                      }
                      let value8 = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.24hour.toggle.10")).getAttribute('checked')
                      if (value8 == 'false') {
                        browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.24hour.toggle.10")).click();
                        console.log("Changed to 24 Hour Format")
                      }
                      else {
                        console.log('Already in 24 Hour Format');
                      }
       
                    }
                    break;
          case "motoZ2":
            console.log("using motoZ2")
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (browser.element(fileutils.readPropertyFile(platform, "setting.system")).isVisible()) {
              browser.element(fileutils.readPropertyFile(platform, "setting.system")).click();
            }
            if (browser.element(fileutils.readPropertyFile(platform, "settings.date.time")).isVisible()) {
              browser.element(fileutils.readPropertyFile(platform, "settings.date.time")).click();
            }
            else {
              console.error('date & time is not visible');
            }
            const exists2 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists2) {
              let value2 = browser.element(fileutils.readPropertyFile(platform, "motoZ2.settings.24hour.toggle")).getAttribute('checked')
              if (value2 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "motoZ2.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            break;
          case "motog6":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.searchbox")).setValue("Use 24-hour format");
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists3 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists3) {
              let value3 = browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).getAttribute('checked')
              if (value3 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            break;
          case "lgk8":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.searchbox")).setValue("Use 24-hour format");
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists4 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists4) {
              let value4 = browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.24hour.toggle")).getAttribute('checked')
              if (value4 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
              browser.pressKeycode(4);
            }
            browser.pause(3000);
            break;
          case "samsung-sm-j327a":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            mobileactions.checkIfVisibleWithScrollDown(browser.element(fileutils.readPropertyFile(platform, "settings.general.management")), 4)
            browser.pause(1000);
            if (browser.element(fileutils.readPropertyFile(platform, "settings.general.management")).isVisible()) {
              browser.element(fileutils.readPropertyFile(platform, "settings.general.management")).click();
            }
            if (browser.element(fileutils.readPropertyFile(platform, "settings.date.and.time")).isVisible()) {
              browser.element(fileutils.readPropertyFile(platform, "settings.date.and.time")).click();
            }
            else {
              console.error('date & time is not visible');
            }
            const exists5 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists5) {
              let value5 = browser.element(fileutils.readPropertyFile(platform, "samsung.settings.24hour.toggle")).getAttribute('checked')
              if (value5 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            break;
          case "ZTE":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "zte.search.settings")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "zte.searchbox.settings")).setValue("Use 24-hour format");
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists6 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists6) {
              let value6 = browser.element(fileutils.readPropertyFile(platform, "zte.24hour.toggle")).getAttribute('checked')
              if (value6 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "zte.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            break;
          case "samsungS9plus":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.searchbox")).setValue("Use 24-hour format");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists7 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists7) {
              let value7 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).getAttribute('checked')
              if (value7 == 'false') {
                console.log("Already automatic date.and time is in disabled state");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).click();
                console.log('changed to  Automatic.date.and.time. is disabled state ');
              }

              browser.pause(500)
              value7 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).getAttribute('checked')
              if (value7 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            break;
          case "samsungS9":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.searchbox")).setValue("Use 24-hour format");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists10 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists10) {
              let value10 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).getAttribute('checked')
              if (value10 == 'false') {
                console.log("Already automatic date.and time is in disabled state");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).click();
                console.log('changed to  Automatic.date.and.time. is disabled state ');
              }

              browser.pause(500)
              value10 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).getAttribute('checked')
              if (value10 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            break;
          case "Pixel3":
            switch(platformVersion){
              case "10":
                  browser.startActivity("com.android.settings", "com.android.settings.Settings");
                  browser.pause(2000)
                  browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
                  browser.pause(2000)
                  browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Use 24-hour format");
                  browser.pause(2000)
                  browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
                 
                  const exists08 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                  if (exists08) {
                    let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel3.locale.default")).getAttribute('checked')
                    if (autoToggle == 'false') {
                      console.log("Automatic 24-hour format already disabled");
                    }
                    else {
                      browser.element(fileutils.readPropertyFile(platform, "pixel3.locale.default")).click();
                      console.log("Automatic 24-hour format disabled");
                    }
                    let value8 = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle.10")).getAttribute('checked')
                    if (value8 == 'false') {
                      browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle.10")).click();
                      console.log("Changed to 24 Hour Format")
                    }
                    else {
                      console.log('Already in 24 Hour Format');
                    }
     
                  }
                  break;

              case "9":
                  browser.startActivity("com.android.settings", "com.android.settings.Settings");
                  browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Use 24-hour format");
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
                  const exists18 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                  if (exists18) {
                    let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.auto.toggle")).getAttribute('checked')
                    if (autoToggle == 'false') {
                      console.log("Automatic 24-hour format already disabled");
                    }
                    else {
                      browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.auto.toggle")).click();
                      console.log("Automatic 24-hour format disabled");
                    }
                    let value8 = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle")).getAttribute('checked')
                    if (value8 == 'false') {
                      browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle")).click();
                      console.log("Changed to 24 Hour Format")
                    }
                    else {
                      console.log('Already in 24 Hour Format');
                    }
     
                  }
                  break

            }
           
            break;
          case "LGG7ThinQ":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.search.settings")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.search.query.settings")).setValue("Use 24-hour format");
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists9 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists9) {
              let value9 = browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.24hour.toggle")).getAttribute('checked')
              if (value9 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            break;
          default: break;
        }
        while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        try {
          const exists = browser.waitUntil(
            () =>
              browser.execute("mobile: launchApp", { bundleId: settingsApp }),
            timeOutinMs,
            "Error: App not found"
          );
          if (exists) {
            console.log("Launched Settings application ");
            ////browser.saveScreenshot();
          }
          browser.pause(1000);
          browser.execute("mobile: terminateApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          mobileactions.mobileScroll("up");
          let search = browser.element(
            `${fileutils.readPropertyFile(platform, "settings.search")}`
          );
          search.click();
          const exists0 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "settings.search")}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists0) {
            search.setValue("Date & Time");
            browser.pause(2000);
            browser.element("~Date & Time").click();
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "settings.24hour")}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists1) {
              let value = browser
                .element(
                  fileutils.readPropertyFile(platform, "settings.24hour")
                )
                .getAttribute("value");
              console.log(value);
              if (value == 1) {
                console.log("Already in 24 Hour Format");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              }
            }
          }
          browser.execute("mobile: activateApp", { bundleId: bundleid });
          browser.pause(3000);
          try {
            const exists12 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "turnon.your.bluetooth"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists12) {
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "not.now.button")}`
                )
                .click();
            }
          } catch (e) {
            try {
              const exists1 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "login.to.your.account"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists1) {
                console.log("Login Screen is displayed");
                browser
                  .element(`${fileutils.readPropertyFile(platform, "Back")}`)
                  .click();
              }
            } catch (e) {
              console.log("Already In Tempo Screen");
            }
          }
        } catch (e) {
          console.error("Cannot set Device format", e);
          //browser.saveScreenshot();
        }
        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error("Cannot set Device format", e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I set deviceformat to 12 hour$/, async function() {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Use 24-hour format");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists1) {
              let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.auto.toggle")).getAttribute('checked')
              if (autoToggle == 'false') {
                console.log("Automatic 24-hour format already disabled");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.auto.toggle")).click();
                console.log("Automatic 24-hour format disabled");
              }
              let value1 = browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.24hour.toggle")).getAttribute('checked')
              if (value1 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
              browser.pressKeycode(4);
            }
            browser.pause(3000);
            break;

            case "OnePlus7Pro":
             
                    browser.startActivity("com.android.settings", "com.android.settings.Settings");
                    browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.search")).click();
                    browser.pause(500)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Use 24-hour format");
                    browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
           
                    const exists28 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                    if (exists28) {
                      let autoToggle = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.locale.default")).getAttribute('checked')
                      if (autoToggle == 'false') {
                        console.log("Automatic 24-hour format already disabled");
                      }
                      else {
                        browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.locale.default")).click();
                        console.log("Automatic 24-hour format disabled");
                      }
                      let value8 = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.24hour.toggle.10")).getAttribute('checked')
                      if (value8 == 'true') {
                        browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.24hour.toggle.10")).click();
                        console.log("Changed to 12 Hour Format")
                      }
                      else {
                        console.log('Already in 12 Hour Format');
                      }
       
                    }
                    break;

          case "motoZ2":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (browser.element(fileutils.readPropertyFile(platform, "setting.system")).isVisible()) {
              browser.element(fileutils.readPropertyFile(platform, "setting.system")).click();
            }
            if (browser.element(fileutils.readPropertyFile(platform, "settings.date.time")).isVisible()) {
              browser.element(fileutils.readPropertyFile(platform, "settings.date.time")).click();
            }
            else {
              console.error('date & time is not visible');
            }
            const exists2 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists2) {
              let value2 = browser.element(fileutils.readPropertyFile(platform, "motoZ2.settings.24hour.toggle")).getAttribute('checked')
              if (value2 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "motoZ2.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
              browser.pressKeycode(4);
            }
            browser.pause(3000);
            break;
          case "motog6":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.searchbox")).setValue("Use 24-hour format");
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists3 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists3) {
              let value3 = browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).getAttribute('checked')
              if (value3 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            break;
          case "lgk8":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.searchbox")).setValue("Use 24-hour format");
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists4 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists4) {
              let value4 = browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.24hour.toggle")).getAttribute('checked')
              if (value4 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            break;
          case "samsung-sm-j327a":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            mobileactions.checkIfVisibleWithScrollDown(browser.element(fileutils.readPropertyFile(platform, "settings.general.management")), 4)
            browser.pause(1000);
            if (browser.element(fileutils.readPropertyFile(platform, "settings.general.management")).isVisible()) {
              browser.element(fileutils.readPropertyFile(platform, "settings.general.management")).click();
            }
            if (browser.element(fileutils.readPropertyFile(platform, "settings.date.and.time")).isVisible()) {
              browser.element(fileutils.readPropertyFile(platform, "settings.date.and.time")).click();
            }
            else {
              console.error('date & time is not visible');
            }
            const exists5 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists5) {
              let value5 = browser.element(fileutils.readPropertyFile(platform, "samsung.settings.24hour.toggle")).getAttribute('checked')
              if (value5 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            break;
          case "ZTE":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "zte.search.settings")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "zte.searchbox.settings")).setValue("Use 24-hour format");
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists6 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists6) {
              let value6 = browser.element(fileutils.readPropertyFile(platform, "zte.24hour.toggle")).getAttribute('checked')
              if (value6 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "zte.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            break;
          case "samsungS9plus":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.searchbox")).setValue("Use 24-hour format");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists7 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists7) {
              let value7 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).getAttribute('checked')
              if (value7 == 'false') {
                console.log("Already automatic date.and time is in disabled state");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).click();
                console.log('changed to  Automatic.date.and.time. is disabled state ');
              }

              browser.pause(500)
              value7 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).getAttribute('checked')
              if (value7 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            break;
          case "samsungS9":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.searchbox")).setValue("Use 24-hour format");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists10 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists10) {
              let value10 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).getAttribute('checked')
              if (value10 == 'false') {
                console.log("Already automatic date.and time is in disabled state");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).click();
                console.log('changed to  Automatic.date.and.time. is disabled state ');
              }

              browser.pause(500)
              value10 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).getAttribute('checked')
              if (value10 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            break;
          case "Pixel3":
              switch(platformVersion){
                case "10":
                    browser.startActivity("com.android.settings", "com.android.settings.Settings");
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Use 24-hour format");
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
           
                    const exists28 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                    if (exists28) {
                      let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel3.locale.default")).getAttribute('checked')
                      if (autoToggle == 'false') {
                        console.log("Automatic 24-hour format already disabled");
                      }
                      else {
                        browser.element(fileutils.readPropertyFile(platform, "pixel3.locale.default")).click();
                        console.log("Automatic 24-hour format disabled");
                      }
                      let value8 = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle.10")).getAttribute('checked')
                      if (value8 == 'true') {
                        browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle.10")).click();
                        console.log("Changed to 12 Hour Format")
                      }
                      else {
                        console.log('Already in 12 Hour Format');
                      }
       
                    }
                    break;
                  case "9":
                      browser.startActivity("com.android.settings", "com.android.settings.Settings");
                      browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Use 24-hour format");
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
                      browser.pause(1000);
                     
                      const exists8 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                      if (exists8) {
                        let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.auto.toggle")).getAttribute('checked')
                        if (autoToggle == 'false') {
                          console.log("Automatic 24-hour format already disabled");
                        }
                        else {
                          browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.auto.toggle")).click();
                          console.log("Automatic 24-hour format disabled");
                        }
                        let value8 = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle")).getAttribute('checked')
                        if (value8 == 'true') {
                          browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle")).click();
                          console.log("Changed to 12 Hour Format")
                        }
                        else {
                          console.log('Already in 12 Hour Format');
                        }
         
                      }
                      break;  
              }
            break;
          case "LGG7ThinQ":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.search.settings")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.search.query.settings")).setValue("Use 24-hour format");
            browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
            const exists9 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists9) {
              let value9 = browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.24hour.toggle")).getAttribute('checked')
              if (value9 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            break;
          default: break;
        }
        while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        try {
          const exists = browser.waitUntil(
            () =>
              browser.execute("mobile: launchApp", { bundleId: settingsApp }),
            timeOutinMs,
            "Error: App not found"
          );
          if (exists) {
            console.log("Launched Settings application ");
            ////browser.saveScreenshot();
          }
          browser.pause(1000);
          browser.execute("mobile: terminateApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          mobileactions.mobileScroll("up");
          let search = browser.element(
            `${fileutils.readPropertyFile(platform, "settings.search")}`
          );
          search.click();
          const exists0 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "settings.search")}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists0) {
            search.setValue("Date & Time");
            browser.pause(1000);
            browser.element("~Date & Time").click();
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "settings.24hour")}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists1) {
              let value = browser
                .element(
                  fileutils.readPropertyFile(platform, "settings.24hour")
                )
                .getAttribute("value");
              console.log(value);
              if (value == 1) {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
            }
          }
          browser.execute("mobile: activateApp", { bundleId: bundleid });
          browser.pause(3000);
          try {
            const exists22 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "turnon.your.bluetooth"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists22) {
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "not.now.button")}`
                )
                .click();
            }
          } catch (e) {
            try {
              const exists1 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "login.to.your.account"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists1) {
                console.log("Login Screen is displayed");
                browser
                  .element(`${fileutils.readPropertyFile(platform, "Back")}`)
                  .click();
              }
            } catch (e) {
              console.log("Already In Tempo Screen");
            }
          }
        } catch (e) {
          console.error("Cannot set Device format", e);
          //browser.saveScreenshot();
        }

        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error("Cannot set Device format", e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I handle Logout button$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code here----
        break;
      case "ios":
        ifunc++;
        console.log(ifunc);
        if (ifunc === 1) {
          const xpath = '(//XCUIElementTypeButton[@name="Logout"])';
          const exists = browser.waitUntil(
            () => browser.element(`${xpath}`).isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            browser.element(`${xpath}`).click();
            console.log("Clicked on Logout");
          }
        } else {
          const xpath = '(//XCUIElementTypeButton[@name="Logout"])';
          const exists = browser.waitUntil(
            () => browser.element(`${xpath}[${ifunc}]`).isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            browser.element(`${xpath}[${ifunc}]`).click();
            console.log("Clicked on Logout");
          }
        }
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Logout" + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I verify forgot password email$/, async () => {
  try {
    fs.readFile(
      "./test/testdata/urlforforgotpassword.txt",
      "utf-8",
      (err, data) => {
        if (err) {
          console.error(err);
        }
        (async () => {
          console.log("opens in browser");
          // Opens the url in the default browser
          await open(data, { app: "safari" });
        })();
      }
    );
    browser.pause(15000);
    ////browser.saveScreenshot();
  } catch (e) {
    console.error("Unable to open the URL specified", e);
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I verify forgot password previous email$/, async () => {
  try {
    fs.readFile("test/testdata/servicesData.txt", "utf-8", (err, data) => {
      if (err) {
        console.error(err);
      }
      (async () => {
        // Opens the url in the default browser
        await open(data, { app: "safari" });
      })();
    });
    browser.pause(15000);
    ////browser.saveScreenshot();
  } catch (e) {
    console.error("Unable to open the URL specified", e);
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I store previous password link$/, async () => {
  try {
    switch (platform) {
      case "android":
        fs.readFile(
          "./test/testdata/urlforforgotpassword.txt",
          "utf-8",
          (err, data) => {
            if (err) {
              console.error(err);
            }
            fs.writeFile(
              "test/testdata/servicesData.txt",
              data,
              { flag: "w" },
              err2 => {
                if (err2) throw err2;
                console.log("original text has been copied");
              }
            );
          }
        );
        ////browser.saveScreenshot();
        break;
      case "ios":
        fs.readFile(
          "./test/testdata/urlforforgotpassword.txt",
          "utf-8",
          (err, data) => {
            if (err) {
              console.error(err);
            }
            fs.writeFile(
              "test/testdata/servicesData.txt",
              data,
              { flag: "w" },
              err2 => {
                if (err2) throw err2;
                console.log("original text has been copied");
              }
            );
          }
        );
        ////browser.saveScreenshot();
        break;
    }
  } catch (e) {
    console.error("Unable to open the URL specified", e);
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I set device time as "([^"]*)"$/, async time => {
  try {
    switch (platform) {
      case 'android':
        let hour1 = time.split(':')[0];
        let min1 = (time.split(':')[1]).split(' ')[0]
        let amorpm1 = (time.split(':')[1]).split(' ')[1]
        switch (deviceName) {
          case 'Pixel2xl':
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Date & time");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.date.time")).click();
            const exists = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists) {
              let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.auto.toggle")).getAttribute('checked')
              if (autoToggle == 'false') {
                console.log("Automatic 24-hour format already disabled");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.auto.toggle")).click();
                console.log("Automatic 24-hour format disabled");
              }
              let value = browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.24hour.toggle")).getAttribute('checked')
              if (value == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
              value = browser.element(fileutils.readPropertyFile(platform, "automatic.dateandtime")).getAttribute('checked')
              if (value == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "automatic.dateandtime")).click();
                console.log("set time")
              }
              else {
                console.log('already in automatic date and time in off state');
              }
              browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "hour.setting").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "minute.setting").replace("15", min1);
              browser.element(minutesdata).click();
              if (amorpm1 == 'AM') {
                let AMdata = fileutils.readPropertyFile(platform, "am.setting").replace("AM", amorpm1);
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "pm.setting").replace("PM", amorpm1);
                console.log(PMdata);
                $(PMdata).click();
              }
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);
            }
            break;

            case "OnePlus7Pro":
                  browser.startActivity("com.android.settings", "com.android.settings.Settings");
                  browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.search")).click();
                  browser.pause(500)
                  browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Date & time");
                  browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.date.time")).click();
                  const exists13 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                  if (exists13) {
                    let autoToggle = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.automatic.dateandtime")).getAttribute('checked')
                    if (autoToggle == 'false') {
                      console.log("Automatic 24-hour format already disabled");
                    }
                    else {
                      browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.automatic.dateandtime")).click();
                      console.log("Automatic 24-hour format disabled");
                    }
                    let value = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.24hour.toggle.10")).getAttribute('checked')
                    if (value == 'true') {
                      browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.24hour.toggle.10")).click();
                      console.log("Changed to 12 Hour Format")
                    }
                    else {
                      console.log('Already in 12 Hour Format');
                    }
                    value = browser.element(fileutils.readPropertyFile(platform, "pixel3.network.provided.time")).getAttribute('checked')
                    if (value == 'true') {
                      browser.element(fileutils.readPropertyFile(platform, "pixel3.network.provided.time")).click();
                      console.log("set time")
                    }
                    else {
                      console.log('already in automatic date and time in off state');
                    }
                    browser.element(fileutils.readPropertyFile(platform, "pixel3.set.time")).click();
                     
                    let exists_hour = browser.waitUntil(
                      function() {
                        return browser
                          .element(fileutils.readPropertyFile(platform, "hour.setting"))
                          .isVisible();
                      },
                      timeOutinMs,
                      "Error: Element not found"
                    );
                    if(exists_hour)
                    {
                      let hourdata = fileutils.readPropertyFile(platform, "hour.setting").replace("12", hour1);
                      browser.element(hourdata).click();
                      let exists_min = browser.waitUntil(
                        function() {
                          return browser
                            .element(fileutils.readPropertyFile(platform, "minute.setting"))
                            .isVisible();
                        },
                        timeOutinMs,
                        "Error: Element not found"
                      );
                      if(exists_min)
                      {
                        let minutesdata = fileutils.readPropertyFile(platform, "minute.setting").replace("15", min1);
                        browser.element(minutesdata).click();
                        let exists_pm = browser.waitUntil(
                          function() {
                            return browser
                              .element(fileutils.readPropertyFile(platform, "pm.setting"))
                              .isVisible();
                          },
                          timeOutinMs,
                          "Error: Element not found"
                        );
                        if(exists_pm)
                        {
                          if (amorpm1 == 'AM') {
                            let AMdata = fileutils.readPropertyFile(platform, "am.setting").replace("AM", amorpm1);
                            browser.element(AMdata).click();
                          } else {
                            let PMdata = fileutils.readPropertyFile(platform, "pm.setting").replace("PM", amorpm1);
                           
                            $(PMdata).click();
                          }
                        }
                        browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
                        console.log("Device time changed to " + time);
                 
                      }
                    }
               
                }
                break;
          case 'LGG7ThinQ':
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.search.settings")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.search.query.settings")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.date.time.settings")).click();
            const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists1) {
              let value1 = browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.24hour.toggle")).getAttribute('checked')
              if (value1 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
              value1 = browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.automatic.timings")).getAttribute('checked')
              if (value1 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.automatic.timings")).click();
              }
              else {
                console.log('Already automatic date.and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "lgg7thinq.settings.hour.time").replace(12, hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "lgg7thinq.settings.minutes.time").replace(15, min1);
              browser.element(minutesdata).click();
              if (amorpm1 == 'AM') {
                let AMdata = fileutils.readPropertyFile(platform, "lgg7thinq.settings.am")
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "lgg7thinq.settings.pm")
                console.log(PMdata);
                $(PMdata).click();
              }
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);
            }
            break;
          case "samsungS9plus":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.searchbox")).setValue("Date and time");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "samsung.settings.automatic.date.and.time")).click();
            const exists7 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists7) {
              let value7 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).getAttribute('checked')
              if (value7 == 'false') {
                console.log("Already automatic date.and time is in disabled state");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).click();
                console.log('changed to  Automatic.date.and.time. is disabled state ');
              }

              browser.pause(500)
              value7 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).getAttribute('checked')
              if (value7 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
            }
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.time")).click();
            browser.pause(2000);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.hour.edit")).click();
            browser.pause(1000);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.hour.btn")).setValue(hour1);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.min.btn")).setValue(min1);
            // console.log(amorpm1)
            // let setamorpm=browser.element(fileutils.readPropertyFile(platform,"samsung.s9plus.setting.setamorpm")).getAttribute("text").indexOf(amorpm1)
            // console.log(setamorpm)
            // if(setamorpm>-1){
            //   browser.element(fileutils.readPropertyFile(platform,"samsung.am.pm.button")).click();
            //   browser.element(fileutils.readPropertyFile(platform, "samsungS9plus.Setting.Done")).click();
            // }
            // else{
            //   browser.element(fileutils.readPropertyFile(platform, "samsungS9plus.Setting.Done")).click();
            // }
            let setamorpm1 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.setamorpm")).getAttribute("text").replace(",", "").replace(" ", "");
            if (amorpm1 == 'AM') {
              if (browser.isVisible(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.am.btn"))) {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.am.btn")).click();
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.setamorpm")).click();
                console.log("clicked in AM ")
              }
            }
            else if (amorpm1 == 'PM') {
              {
                if (browser.isVisible(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.pm.btn"))) {
                  browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.pm.btn")).click();
                }
                else
                  browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.setamorpm")).click();
                console.log("clicked on PM")
              }
            }
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.done")).click();
            break;
          case "samsungS9":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.searchbox")).setValue("Date and time");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "samsung.settings.automatic.date.and.time")).click();
            const exists4 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists4) {
              let value4 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).getAttribute('checked')
              if (value4 == 'false') {
                console.log("Already automatic date.and time is in disabled state");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).click();
                console.log('changed to  Automatic.date.and.time. is disabled state ');
              }
              browser.pause(500)
              value4 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).getAttribute('checked')
              if (value4 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }

            }
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.time")).click();
            browser.pause(2000);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.hour.edit")).click();
            browser.pause(1000);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.hour.btn")).setValue(hour1);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.min.btn")).setValue(min1);
            // console.log(amorpm1)
            // let setamorpm=browser.element(fileutils.readPropertyFile(platform,"samsung.s9plus.setting.setamorpm")).getAttribute("text").indexOf(amorpm1)
            // console.log(setamorpm)
            // if(setamorpm>-1){
            //   browser.element(fileutils.readPropertyFile(platform,"samsung.am.pm.button")).click();
            //   browser.element(fileutils.readPropertyFile(platform, "samsungS9plus.Setting.Done")).click();
            // }
            // else{
            //   browser.element(fileutils.readPropertyFile(platform, "samsungS9plus.Setting.Done")).click();
            // }
            let setamorpm = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.setamorpm")).getAttribute("text").replace(",", "").replace(" ", "");
            if (amorpm1 == 'AM') {
              if (browser.isVisible(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.am.btn"))) {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.am.btn")).click();
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.setamorpm")).click();
                console.log("clicked in AM ")
              }
            }
            else if (amorpm1 == 'PM') {
              {
                if (browser.isVisible(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.pm.btn"))) {
                  browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.pm.btn")).click();
                }
                else
                  browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.setamorpm")).click();
                console.log("clicked on PM")
              }
            }
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.done")).click();
            break;
          case 'lgk8':
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.searchbox")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "settings.date.and.time")).click();
            const exists5 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists5) {
              let value5 = browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.24hour.toggle")).getAttribute('checked')
              if (value5 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
              value5 = browser.element(fileutils.readPropertyFile(platform, "lgk8.automatic.timings.settings")).getAttribute('checked')
              if (value5 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "lgk8.automatic.timings.settings")).click();
              }
              else {
                console.log('Already automatic date and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "lgk8.hour.settings").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "lgk8.minute.settings").replace("15", min1);
              browser.element(minutesdata).click();
              if (amorpm1 == 'AM') {
                let AMdata = fileutils.readPropertyFile(platform, "lgk8.settings.am")
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "lgk8.settings.pm")
                console.log(PMdata);
                $(PMdata).click();
              }
            }
            browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
            console.log("Device time changed to " + time);
            break;
          case 'ZTE':
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "zte.search.settings")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "zte.searchbox.settings")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "settings.date.and.time")).click();
            const exists3 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists3) {
              let value3 = browser.element(fileutils.readPropertyFile(platform, "zte.24hour.toggle")).getAttribute('checked')
              if (value3 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "zte.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
              value3 = browser.element(fileutils.readPropertyFile(platform, "zte.automatic.timings.settings")).getAttribute('checked')
              if (value3 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "zte.automatic.timings.settings")).click();
              }
              else {
                console.log('Already automatic date and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "zte.hour.settings").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "zte.minute.settings").replace("15", min1);
              browser.element(minutesdata).click();
              if (amorpm1 == 'AM') {
                let AMdata = fileutils.readPropertyFile(platform, "am.setting")
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "pm.setting")
                console.log(PMdata);
                $(PMdata).click();
              }
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);
            }
            break;
          case "motog6":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.searchbox")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "settings.date.time")).click();
            const exists6 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists6) {
              let value6 = browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).getAttribute('checked')
              if (value6 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
              value6 = browser.element(fileutils.readPropertyFile(platform, "motog6.automatic.timings.settings")).getAttribute('checked')
              if (value6 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.automatic.timings.settings")).click();
              }
              else {
                console.log('Already automatic date and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "motog6.hour.settings").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "motog6.minute.settings").replace("15", min1);
              browser.element(minutesdata).click();
              if (amorpm1 == 'AM') {
                let AMdata = fileutils.readPropertyFile(platform, "am.setting")
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "pm.setting")
                console.log(PMdata);
                $(PMdata).click();
              }
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);

            }
            break;
          case "motoZ2":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.searchbox")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "settings.date.time")).click();
            const exists10 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists10) {
              let value10 = browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).getAttribute('checked')
              if (value10 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).click();
                console.log("Changed to 12 Hour Format")
              }
              else {
                console.log('Already in 12 Hour Format');
              }
              value10 = browser.element(fileutils.readPropertyFile(platform, "motog6.automatic.timings.settings")).getAttribute('checked')
              if (value10 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.automatic.timings.settings")).click();
              }
              else {
                console.log('Already automatic date and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "motog6.hour.settings").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "motog6.minute.settings").replace("15", min1);
              browser.element(minutesdata).click();
              if (amorpm1 == 'AM') {
                let AMdata = fileutils.readPropertyFile(platform, "am.setting")
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "pm.setting")
                console.log(PMdata);
                $(PMdata).click();
              }
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);

            }
            break;
            case "Pixel3":
                switch(platformVersion){
                  case "10":
                    browser.startActivity("com.android.settings", "com.android.settings.Settings");
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Date & time");
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.date.time")).click();

                    const exists13 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                    if (exists13) {
                      let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel3.locale.default")).getAttribute('checked')
                      if (autoToggle == 'false') {
                        console.log("Automatic 24-hour format already disabled");
                      }
                      else {
                        browser.element(fileutils.readPropertyFile(platform, "pixel3.locale.default")).click();
                        console.log("Automatic 24-hour format disabled");
                      }
                      let value = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle.10")).getAttribute('checked')
                      if (value == 'true') {
                        browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle.10")).click();
                        console.log("Changed to 12 Hour Format")
                      }
                      else {
                        console.log('Already in 12 Hour Format');
                      }
                      value = browser.element(fileutils.readPropertyFile(platform, "pixel3.network.provided.time")).getAttribute('checked')
                      if (value == 'true') {
                        browser.element(fileutils.readPropertyFile(platform, "pixel3.network.provided.time")).click();
                        console.log("set time")
                      }
                      else {
                        console.log('already in automatic date and time in off state');
                      }
                      browser.element(fileutils.readPropertyFile(platform, "pixel3.set.time")).click();
                      let hourdata = fileutils.readPropertyFile(platform, "hour.setting").replace("12", hour1);
                      browser.element(hourdata).click();
                      let minutesdata = fileutils.readPropertyFile(platform, "minute.setting").replace("15", min1);
                      browser.element(minutesdata).click();
                      if (amorpm1 == 'AM') {
                        let AMdata = fileutils.readPropertyFile(platform, "am.setting").replace("AM", amorpm1);
                        browser.element(AMdata).click();
                      } else {
                        let PMdata = fileutils.readPropertyFile(platform, "pm.setting").replace("PM", amorpm1);
                       
                        $(PMdata).click();
                      }
                      browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
                      console.log("Device time changed to " + time);
                    }
                    break;
                  case "9":
                      browser.startActivity("com.android.settings", "com.android.settings.Settings");
                      browser.pause(2000)
                      browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
                      browser.pause(2000)
                      browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Date & time");
                      browser.pause(2000)
                      browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.date.time")).click();
                      const exists12 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                      if (exists12) {
                        let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.auto.toggle")).getAttribute('checked')
                        if (autoToggle == 'false') {
                          console.log("Automatic 24-hour format already disabled");
                        }
                        else {
                          browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.auto.toggle")).click();
                          console.log("Automatic 24-hour format disabled");
                        }
                        let value = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle")).getAttribute('checked')
                        if (value == 'true') {
                          browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle")).click();
                          console.log("Changed to 12 Hour Format")
                        }
                        else {
                          console.log('Already in 12 Hour Format');
                        }
                        value = browser.element(fileutils.readPropertyFile(platform, "automatic.dateandtime")).getAttribute('checked')
                        if (value == 'true') {
                          browser.element(fileutils.readPropertyFile(platform, "automatic.dateandtime")).click();
                          console.log("set time")
                        }
                        else {
                          console.log('already in automatic date and time in off state');
                        }
                        browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
                        let hourdata = fileutils.readPropertyFile(platform, "hour.setting").replace("12", hour1);
                        browser.element(hourdata).click();
                        let minutesdata = fileutils.readPropertyFile(platform, "minute.setting").replace("15", min1);
                        browser.element(minutesdata).click();
                        if (amorpm1 == 'AM') {
                          let AMdata = fileutils.readPropertyFile(platform, "am.setting").replace("AM", amorpm1);
                          browser.element(AMdata).click();
                        } else {
                          let PMdata = fileutils.readPropertyFile(platform, "pm.setting").replace("PM", amorpm1);
                         
                          $(PMdata).click();
                        }
                        browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
                        console.log("Device time changed to " + time);
                      }
                      break;
        }
      }
        while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        try {
          let hour = time.split(":")[0];
          let min = time.split(":")[1].split(" ")[0];
          let amorpm = time.split(":")[1].split(" ")[1];
          const exists = browser.waitUntil(
            () =>
              browser.execute("mobile: launchApp", { bundleId: settingsApp }),
            timeOutinMs,
            "Error: App not found"
          );
          if (exists) {
            console.log("Launched Settings application ");
            ////browser.saveScreenshot();
          }
          browser.pause(1000);
          browser.execute("mobile: terminateApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          mobileactions.mobileScroll("up");
          let search = browser.element(
            `${fileutils.readPropertyFile(platform, "settings.search")}`
          );
          search.click();
          const exists0 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "settings.search")}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists0) {
            search.setValue("Date & Time");
            browser.pause(1000);
            browser.element("~Date & Time").click();
            const exists10 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "settings.24hour")}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists10) {
              let value10 = browser
                .element(
                  fileutils.readPropertyFile(platform, "settings.24hour")
                )
                .getAttribute("value");
              if (value10 == 1) {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
            }
          }
          const exists11 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "settings.set.automatically"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists11) {
            let value11 = browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "settings.set.automatically"
                )
              )
              .getAttribute("value");
            if (value11 == 1) {
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "settings.set.automatically"
                  )
                )
                .click();
              console.log("already Changed to Automatic time ");
            } else {
              console.log("ready to change");
            }
            browser
              .element(fileutils.readPropertyFile(platform, "setting.time"))
              .click();
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "settings.hour"),
              hour
            );
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "settings.min"),
              min
            );
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "setting.am.pm"),
              amorpm
            );
          }
          browser.execute("mobile: activateApp", { bundleId: bundleid });
          browser.pause(3000);
          browser.pause(3000);
          try {
            if (browser.element(`${fileutils.readPropertyFile(platform, "time.zone.changed")}`).isVisible()) {
              
              browser
              .element(
                `${fileutils.readPropertyFile(platform, "ok")}`
              )
              .click();
              console.log("Clicked on time zone Pop-up");
            }
          } catch (e) {
            console.log("Pop-up not displayed");
          }
        } catch (e) {
          //}
          console.error("Cannot set Device format", e);
          //browser.saveScreenshot();
        }
        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error("Cannot set Device timings" + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I open browser do something$/, async () => {
  try {
    console.log("opened");
    horseman.open(
      "https://phoenix-gateway.iv.connectedcarecloud.com/user/complete-password-reset?code=3qeqck3m24djch&locale=en-US&workflow=madelyne"
    );
    horseman.type('//*[@id="newPassword"]', "hello12341");
    horseman.type('//*[@id="confirmPassword"]', "hello12341");
    horseman.click("/html/body/div/form/button");
  } catch (e) {
    console.error("Unable to open the URL specified" + e);
  }
});
Given(/^I Lock and unlock$/, async () => {
  try {
    browser.lock();
    browser.pause(10000);
    browser.unlock();
  } catch (e) {
    console.error("Unable to open the URL specified" + e);
  }
});
Given(/^I see "([^"]*)" screen$/, async object => {
  try {
    switch (platform) {
      case "android":
        browser.pause(5000);
        const exists1 = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists1) {
          let obj1 = object;
          console.log(`${object} is displayed`);
          obj1 = obj1.replace(/\./g, "_");
          const filePath = `${screenshotPath + obj1}.png`;
          browser.saveScreenshot(filePath);
        }
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          let obj = object;
          console.log(`${object} is displayed`);
          obj = obj.replace(/\./g, "_");
          const filePath = `${screenshotPath + obj}.png`;
          browser.saveScreenshot(filePath);
        }
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(
  /^I should see lilly answer center contact number in dialing screen$/,
  async () => {
    try {
      switch (platform) {
        case "android":
          switch (deviceName) {
            case "LGG7ThinQ":
              const exists1 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "lilly.answer.center.contact.number.dialingscreen.lgg7thinq"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists1) {
                console.log(
                  `Lilly Answer Center Contact Number is displayed in dailing screen`
                );
                ////browser.saveScreenshot();
              }
              break;
            case "Pixel2xl":
              const exists2 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "lilly.answer.center.contact.number.dialingscreen.pixel2xl"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists2) {
                console.log(
                  `Lilly Answer Center Contact Number is displayed in dailing screen`
                );
                ////browser.saveScreenshot();
              }
              break;
            case "samsungS9plus":
              const exists3 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "lilly.answer.center.contact.number.dialingscreen.samsungS9plus"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists3) {
                console.log(
                  `Lilly Answer Center Contact Number is displayed in dailing screen`
                );
                ////browser.saveScreenshot();
              }
              break;
            case "samsungS9":
              const exists5 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "lilly.answer.center.contact.number.dialingscreen.samsungs9"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists5) {
                console.log(
                  `Lilly Answer Center Contact Number is displayed in dailing screen`
                );
                ////browser.saveScreenshot();
              }
              break;
            case "pixel3":
              const exists6 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "lilly.answer.center.contact.number.dialingscreen.pixel3"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists6) {
                console.log(
                  `Lilly Answer Center Contact Number is displayed in dailing screen`
                );
                ////browser.saveScreenshot();
              }
              break;
            case "Oneplus":
              const exists7 = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "lilly.answer.center.contact.number.dialingscreen.oneplus"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists7) {
                console.log(
                  `Lilly Answer Center Contact Number is displayed in dailing screen`
                );
                ////browser.saveScreenshot();
              }
              break;
            default:
              const exists = browser.waitUntil(
                () =>
                  browser
                    .element(
                      `${fileutils.readPropertyFile(
                        platform,
                        "lilly.answer.center.contact.number.dialingscreen.android"
                      )}`
                    )
                    .isVisible(),
                timeOutinMs,
                "Element not found"
              );
              if (exists) {
                console.log(
                  `Lilly Answer Center Contact Number is displayed in dailing screen`
                );
                ////browser.saveScreenshot();
              }
              break;
          }
          break;
        case "ios":
          // not applicable for ios
          break;
        case "web":
          // web operation
          break;
        default:
          break;
      }
      return undefined;
    } catch (e) {
      console.error(`call is not displayed`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
Given(/^I should see remember me toggle button is enabled$/, async () => {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          //  case "samsungS9plus":
          //         const exists5 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, '')}`).click(), timeOutinMs, 'Element not found');
          //         if (exists5) {
          //           console.log(`Clicked on call`);
          //           ////browser.saveScreenshot();
          //             }
          //             break;
          case "samsungS9":
            const exists6 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "samsungs9.remember.me.toggle.on"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists6) {
              console.log(`remember me toggle button is enabled`);
              ////browser.saveScreenshot();
            }
            break;
          default:
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "remember.me.toggle.on"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists) {
              console.log(`remember me toggle button is enabled`);
              ////browser.saveScreenshot();
            }
            break;
        }
        break;
      case "ios":
      case "web":
        // web operation
        break;
      default:
        break;
    }
    return undefined;
  } catch (e) {
    console.error(`is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", `is not displayed`);
  }
});
Given(/^I should see remember me toggle button is disabled$/, async () => {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          //  case "samsungS9plus":
          //         const exists5 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, '')}`).click(), timeOutinMs, 'Element not found');
          //         if (exists5) {
          //           console.log(`Clicked on call`);
          //           ////browser.saveScreenshot();
          //             }
          //             break;
          case "samsungS9":
            const exists6 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "samsungs9.remember.me.toggle.off"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists6) {
              console.log(`remember me toggle button is disabled`);
              ////browser.saveScreenshot();
            }
            break;
          default:
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "remember.me.toggle.off"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists) {
              console.log(`remember me toggle button is disabled`);
              ////browser.saveScreenshot();
            }
            break;
        }
        break;
      case "ios":
      case "web":
        // web operation
        break;
      default:
        break;
    }
    return undefined;
  } catch (e) {
    console.error(e + ` is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", e + ` is not displayed`);
  }
});
Given(/^I enable remember me toggle button$/, async () => {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          //  case "samsungS9plus":
          //         const exists5 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, '')}`).click(), timeOutinMs, 'Element not found');
          //         if (exists5) {
          //           console.log(`Clicked on call`);
          //           ////browser.saveScreenshot();
          //             }
          //             break;
          case "samsungS9":
            const exists6 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "samsungs9.remember.me.toggle.off"
                    )}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists6) {
              console.log(`Remember me toggle button is enabled`);
              ////browser.saveScreenshot();
            }
            break;
          default:
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "remember.me.toggle.off"
                    )}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists) {
              console.log(`remember me toggle button is enabled`);
              ////browser.saveScreenshot();
            }
            break;
        }
        break;
      case "ios":
      case "web":
        // web operation
        break;
      default:
        break;
    }
    return undefined;
  } catch (e) {
    console.error(`${object} is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", `${object} is not displayed`);
  }
});
Given(/^I disable remember me toggle button$/, async () => {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          //  case "samsungS9plus":
          //         const exists5 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, '')}`).click(), timeOutinMs, 'Element not found');
          //         if (exists5) {
          //           console.log(`Clicked on call`);
          //           ////browser.saveScreenshot();
          //             }
          //             break;
          case "samsungS9":
            const exists6 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "samsungs9.remember.me.toggle.on"
                    )}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists6) {
              console.log(`remember me toggle button is disabled`);
              ////browser.saveScreenshot();
            }
            break;
          default:
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "remember.me.toggle.on"
                    )}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists) {
              console.log(`remember me toggle button is disabled`);
              ////browser.saveScreenshot();
            }
            break;
        }
        break;
      case "ios":
      case "web":
        // web operation
        break;
      default:
        break;
    }
    return undefined;
  } catch (e) {
    console.error(`${object} is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", `${object} is not displayed`);
  }
});
Given(/^I tap on Call button$/, async () => {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          case "LGG7ThinQ":
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "lgg7.call")}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists1) {
              console.log(`Clicked on call`);
              ////browser.saveScreenshot();
            }
            break;
          case "Pixel2xl":
            const exists2 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "pixel2xl.call")}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists2) {
              console.log(`Clicked on call`);
              ////browser.saveScreenshot();
            }
            break;
          case "samsung-sm-j327a":
            const exists3 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "samsung.call")}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists3) {
              console.log(`Clicked on call`);
              ////browser.saveScreenshot();
            }
            break;
          case "lgk8":
            const exists4 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "lgg7.call")}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists4) {
              console.log(`Clicked on call`);
              ////browser.saveScreenshot();
            }
            break;
          case "samsungS9plus":
            const exists5 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.call"
                    )}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists5) {
              console.log(`Clicked on call`);
              ////browser.saveScreenshot();
            }
            break;
          case "samsungS9":
            const exists6 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "samsungs9.call")}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists6) {
              console.log(`Clicked on call`);
              ////browser.saveScreenshot();
            }
            break;
          case "pixel3":
            const exists7 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "pixel3.call")}`
                  )
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists7) {
              console.log(`Clicked on call`);
              ////browser.saveScreenshot();
            }
            break;
          default:
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(`${fileutils.readPropertyFile(platform, "call")}`)
                  .click(),
              timeOutinMs,
              "Element not found"
            );
            if (exists) {
              console.log(`Clicked on call`);
              ////browser.saveScreenshot();
            }
            break;
        }
        break;
      case "ios":
        const xpath = fileutils.readPropertyFile(platform, object);
        const exists1 = browser.waitUntil(
          () => {
            const xpathcheck = fileutils.readPropertyFile(platform, object);
            if (xpathcheck.startsWith("/") || xpathcheck.startsWith("//")) {
              return $(
                fileutils.readPropertyFile(platform, object)
              ).isVisible();
            }
            return browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible();
          },
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists1) {
          if (xpath.startsWith("/") || xpath.startsWith("//")) {
            const buttonxpath = $(`${xpath}`);
            if (buttonxpath.isEnabled()) {
              console.log(`${"Clicking on "} ${object} `);
              buttonxpath.click();
            }
          } else {
            const buttonid = browser.element(`${xpath}`);
            if (buttonid.isEnabled()) {
              console.log(`${"Clicking on "} ${object} `);
              buttonid.click();
            }
          }
        }
        browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
    return undefined;
  } catch (e) {
    console.error(`${object} is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", `${object} is not displayed`);
  }
});
Given(/^I handle back button$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code here----
        break;
      case "ios":
        try {
          // perform operation on android
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, "back")}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          console.log("back is visible");
          if (exists1) {
            browser
              .element(`${fileutils.readPropertyFile(platform, "back")}`)
              .click();
            console.log("clicked on back");
          }
        } catch (e) {
          browser
            .element(`${fileutils.readPropertyFile(platform, "back.button")}`)
            .click();
          // browser.element(`${fileutils.readPropertyFile(platform, "back.button")}`).click()
          console.log("clicked on back button");
        }
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Logout" + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I handle back$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code here----
        break;
      case "ios":
        ifunc1 + 1;
        ifunc1++;
        console.log(ifunc1);
        if (ifunc1 === 2) {
          const xpath = '//XCUIElementTypeButton[@name="Back"]';
          const exists = browser.waitUntil(
            () => browser.element(`${xpath}`).isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            browser.element(`${xpath}`).click();
            console.log("Clicked on back");
          }
        } else {
          const xpath = '//XCUIElementTypeButton[@name="Back"]';
          const exists = browser.waitUntil(
            () => browser.element(`${xpath}[${ifunc1}]`).isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            browser.element(`${xpath}[${ifunc1}]`).click();
            console.log("Clicked on back");
          }
        }
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Logout" + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
// Given(/^I should see terms and privacy screen$/, async () => {
//   try {
//     switch (platform) {
//       case 'android':
//         try {
//           // perform operation on android
//           const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "terms.and.privacy")}`).isVisible(), timeOutinMs, 'Element not found');
//           if (exists1) {
//             console.log("terms.and.privacy")
//             browser.element(`${fileutils.readPropertyFile(platform, "agree.and.continue")}`).click()
//           }
//         }
//         catch (e) {
//           const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "tempo.notifications.title")}`).isVisible(), timeOutinMs, 'Element not found');
//           if (exists1) {
//             console.log("tempo popup is already displayed")
//           }
//         }
//         break;
//       case 'ios':
//         try {
//           // perform operation on android
//           const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "terms.and.privacy")}`).isVisible(), timeOutinMs, 'Element not found');
//           if (exists1) {
//             console.log("terms.and.privacy")
//             browser.element(`${fileutils.readPropertyFile(platform, "agree.and.continue")}`).click()
//           }
//         }
//         catch (e) {
//           const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "home")}`).isVisible(), timeOutinMs, 'Element not found');
//           if (exists1) {
//             console.log("home is displayed")
//           }
//         }
//         // }
//         ////browser.saveScreenshot();
//         break;
//       case 'web':
//         // perform operation on web
//         break;
//       default: break
//     }
//   } catch (e) {
//     console.error('Cannot Go to Tempo Screen', e);
//     ////browser.saveScreenshot();
//     return assert.strictEqual(platform, '', e);
//   }
// });
Given(/^I get device current time$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code here----
        break;
      case "ios":
        try {
          let time = browser.getDeviceTime("hh:mm A");
          console.log(time);
          console.log(moment(time).format("hh:mm A"));
        } catch (e) {
          console.log(e);
        }
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Get device Time" + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I should get the device time$/, async () => {
  try {
    switch (platform) {
      case "android":
        break;
      case "ios":
        try {
          let body = browser.getDeviceTime();
          console.log(body);
          const checkURL = body.match(
            /(\d{4})-(\d{2})-(\d{2})T(\d{2})\:(\d{2})\:(\d{2})[+-](\d{2})\:(\d{2})/
          );
          console.log(checkURL);
        } catch (e) {
          console.log(e);
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(" Cannot find date ");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I enable set automatically in device settings$/, async () => {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "pixel2xl.settings.search")
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.date.time"
                )
              )
              .click();
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists) {
              let value = browser
                .element(
                  fileutils.readPropertyFile(platform, "automatic.dateandtime")
                )
                .getAttribute("checked");
              if (value == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.dateandtime"
                    )
                  )
                  .click();
                console.log("Enabled automatic date and time");
              } else {
                console.log(
                  "already in automatic date and time in enabled state"
                );
              }
            }
            break;
          case "OnePlus7Pro":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "oneplus7pro.settings.search"
                )
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.date.time"
                )
              )
              .click();
            const exists2 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists2) {
              let value2 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "oneplus7pro.automatic.dateandtime"
                  )
                )
                .getAttribute("checked");
              if (value2 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "oneplus7pro.automatic.dateandtime"
                    )
                  )
                  .click();
                console.log("Enabled automatic date and time");
              } else {
                console.log(
                  "already in automatic date and time in enabled state"
                );
              }
            }
            break;
          case "lgg7thinq":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.search.settings"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.search.query.settings"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.date.time.settings"
                )
              )
              .click();
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists1) {
              let value1 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgg7thinq.settings.automatic.timings"
                  )
                )
                .getAttribute("checked");
              if (value1 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgg7thinq.settings.automatic.timings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date.and time is in enabled state"
                );
              }
            }
            break;
          case "samsungS9plus":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.search"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.searchbox"
                )
              )
              .setValue("Date and time");
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.settings.automatic.date.and.time"
                )
              )
              .click();
            const exists7 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists7) {
              let value7 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.automatic.date.and.time"
                  )
                )
                .getAttribute("checked");
              if (value7 == "true") {
                console.log(
                  "Already automatic date.and time is in enabled state"
                );
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .click();
                console.log(
                  "changed to  Automatic.date.and.time. is enabled state "
                );
              }
              browser.pause(500);
              break;
            }
        }
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        try {
          const exists = browser.waitUntil(
            () =>
              browser.execute("mobile: launchApp", { bundleId: settingsApp }),
            timeOutinMs,
            "Error: App not found"
          );
          if (exists) {
            console.log("Launched Settings application ");
            ////browser.saveScreenshot();
          }
          browser.pause(1000);
          browser.execute("mobile: terminateApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          mobileactions.mobileScroll("up");
          let search = browser.element(
            `${fileutils.readPropertyFile(platform, "settings.search")}`
          );
          search.click();
          const exists0 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "settings.search")}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists0) {
            search.setValue("Date & Time");
            browser.pause(2000);
            browser.element("~Date & Time").click();
            const exists11 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "settings.set.automatically"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists11) {
              let value11 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "settings.set.automatically"
                  )
                )
                .getAttribute("value");
              if (value11 == 1) {
                console.log("Already Enabled");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "settings.set.automatically"
                    )
                  )
                  .click();
                console.log("Enabled Set automatically");
              }
            }
          }
          browser.execute("mobile: activateApp", { bundleId: bundleid });
          browser.pause(3000);
          browser.pause(3000);
          try {
            if (browser.element(`${fileutils.readPropertyFile(platform, "time.zone.changed")}`).isVisible()) {
              
              browser
              .element(
                `${fileutils.readPropertyFile(platform, "ok")}`
              )
              .click();
              console.log("Clicked on time zone Pop-up");
            }
          } catch (e) {
            console.log("Pop-up not displayed");
          }
          const exists2 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "turnon.your.bluetooth"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists2) {
            browser
              .element(
                `${fileutils.readPropertyFile(platform, "not.now.button")}`
              )
              .click();
          }
        } catch (e) {
          console.log("no popup");
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(" Cannot find setting ");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I turn on Airplane mode$/, async function() {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            //mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "network.setting.system")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "network.setting.system")
                )
                .click();
            }
            if (
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "airplane.mode.toggle.off"
                  )
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "airplane.mode.toggle.off"
                  )
                )
                .click();
              console.log("airplanemode is enabled");
            }
            while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
              browser.pressKeycode(4);
            }
            break;
          case "pixel3":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            //mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "network.setting.system")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "network.setting.system")
                )
                .click();
            }
            if (
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "airplane.mode.toggle.off"
                  )
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "airplane.mode.toggle.off"
                  )
                )
                .click();
              console.log("airplanemode is made on");
            }
            break;
          case "samsungs9":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            //mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.connections")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.connections")
                )
                .click();
            }
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.flightmode")
                )
                .getText() == "Off"
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.flightmode")
                )
                .click();
              console.log("airplanemode is made on");
            } else {
              console.log("airplanemode is already made on");
            }
            break;
          case "samsungS9plus":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            //mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.connections")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.connections")
                )
                .click();
            }
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.flightmode")
                )
                .getText() == "Off"
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.flightmode")
                )
                .click();
              console.log("airplanemode is made on");
            } else {
              console.log("airplanemode is already made on");
            }
            break;
          default:
            break;
        }
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.execute("mobile: launchApp", { bundleId: settingsApp }),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log("Launched Settings application ");
          ////browser.saveScreenshot();
        }
        browser.pause(1000);
        browser.execute("mobile: terminateApp", { bundleId: settingsApp });
        browser.pause(1000);
        browser.execute("mobile: launchApp", { bundleId: settingsApp });
        if (
          browser
            .element(
              fileutils.readPropertyFile(platform, "setting.airplanemode")
            )
            .isVisible()
        ) {
          browser
            .element(
              fileutils.readPropertyFile(platform, "setting.airplanemode")
            )
            .click();
        } else {
          console.error("airplanemode is not found");
        }
        browser.execute("mobile: activateApp", { bundleId: bundleid });
        browser.pause(3000);
        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error("Cannot toggle airplane mode", e);
    //browser.saveScreenshot();
    assert.strictEqual(platform, "ios", "Cannot click on alerts");
  }
});
Given(/^I turn off Airplane mode$/, async function() {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            //mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "network.setting.system")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "network.setting.system")
                )
                .click();
            }
            if (
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "airplane.mode.toggle.on"
                  )
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "airplane.mode.toggle.on"
                  )
                )
                .click();
              console.log("airplanemode is made off");
            }
            break;
          case "pixel3":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            //mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "network.setting.system")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "network.setting.system")
                )
                .click();
            }
            if (
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "airplane.mode.toggle.off"
                  )
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "airplane.mode.toggle.off"
                  )
                )
                .click();
              console.log("airplanemode is made on");
            }
            break;
          case "samsungs9":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            //mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.connections")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.connections")
                )
                .click();
            }
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.flightmode")
                )
                .getText() == "On"
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.flightmode")
                )
                .click();
              console.log("airplanemode is made Off");
            } else {
              console.log("airplanemode is already made Off");
            }
            break;
            break;
          case "samsungS9plus":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            //mobileactions.swipeDown(0.95);
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.connections")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.connections")
                )
                .click();
            }
            browser.pause(1000);
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.flightmode")
                )
                .getText() == "Off"
            ) {
              console.log("airplanemode is already made OFF");
            } else {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "samsung.flightmode")
                )
                .click();
              console.log("airplanemode is made Off");
            }
            break;
          default:
            break;
        }
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.execute("mobile: launchApp", { bundleId: settingsApp }),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists) {
          console.log("Launched Settings application ");
          ////browser.saveScreenshot();
        }
        browser.pause(1000);
        browser.execute("mobile: terminateApp", { bundleId: settingsApp });
        browser.pause(1000);
        browser.execute("mobile: launchApp", { bundleId: settingsApp });
        if (
          browser
            .element(
              fileutils.readPropertyFile(platform, "setting.airplanemode")
            )
            .isVisible()
        ) {
          browser
            .element(
              fileutils.readPropertyFile(platform, "setting.airplanemode")
            )
            .click();
        } else {
          console.error("airplanemode is not found");
        }
        if (
          browser
            .element(fileutils.readPropertyFile(platform, "ok.nosim"))
            .isVisible()
        ) {
          browser
            .element(fileutils.readPropertyFile(platform, "ok.nosim"))
            .click();
        } else {
          console.error("popup is not found");
        }
        browser.execute("mobile: activateApp", { bundleId: bundleid });
        browser.pause(3000);
        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error("Cannot toggle airplane mode" + e);
    //browser.saveScreenshot();
    assert.strictEqual(platform, "ios", "Cannot click on alerts");
  }
});
Given(/^I should see "([^"]*)" text in progress screen$/, async object => {
  try {
    switch (platform) {
      case "android":
        let text1 = browser
          .element(fileutils.readPropertyFile(platform, object))
          .getText();
        //console.log(text1);
        let element = browser
          .element(fileutils.readPropertyFile(platform, object))
          .getAttribute("text");
        if (text1 === element) {
          console.log(text1 + " is displayed");
        }
        console.log(object + " is visible");
        ////browser.saveScreenshot();
        break;
      case "ios":
        let text = browser
          .element(fileutils.readPropertyFile(platform, object))
          .getAttribute("name");
        console.log(`${"Text Displayed is : "}${text}`);
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot find  " + object);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", " Cannot find" + object);
  }
});
Given(/^I launch browser$/, async () => {
  try {
    switch (platform) {
      case "android":
        let text1 = browser
          .element(fileutils.readPropertyFile(platform, object))
          .getText();
        //console.log(text1);
        let element = browser
          .element(fileutils.readPropertyFile(platform, object))
          .getAttribute("text");
        if (text1 === element) {
          console.log(text1 + " is displayed");
        }
        console.log(object + " is visible");
        ////browser.saveScreenshot();
        break;
      case "ios":
        try {
          browser.execute("mobile: terminateApp", { bundleId: "com.lnt.mad" });
          const exists = browser.waitUntil(
            () =>
              browser.execute("mobile: launchApp", {
                bundleId: safaribrowserbundleid
              }),
            timeOutinMs,
            "Error: App not found"
          );
          // const exists = browser.waitUntil(() => browser.execute('mobile: launchApp', { bundleId: safaribrowserlauncherbundleid }), timeOutinMs, 'Error: App not found');
          if (exists) {
            console.log("Launched Safari launcher application ");
            ////browser.saveScreenshot();
          }
          // console.log(browser.contexts())
          browser.pause(1000);
          //  browser.element("~launch safari").click();
          browser.pause(2000);
          // const views = browser.contexts()
          // console.log(browser.contexts())
          // const view=JSON.stringify(views).split('"')[5]
          // console.log(view)
          // browser.context(view);
          console.log("switched");
          // browser.url('com.apple.mobilesafari/https://www.google.co.in/?client=safari&channel=mac_bm')
          let input = $('//input[@name="q"]');
          input.click();
          input.setValue("hello");
        } catch (e) {
          console.log(e);
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot find  " + object);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", " Cannot find" + object);
  }
});
let url;
Given(/^I must be able to reset the password$/, async () => {
  fs.readFile(
    "./test/testdata/urlforforgotpassword.txt",
    "utf-8",
    (err, data) => {
      if (err) {
        console.error(err);
      }
      url = data;
    }
  );
  console.log(url);
  const exists = browser.waitUntil(
    () =>
      browser.execute("mobile: launchApp", { bundleId: safaribrowserbundleid }),
    timeOutinMs,
    "Error: App not found"
  );
  //const exists = browser.waitUntil(() => browser.execute('mobile: launchApp', { bundleId: safaribrowserlauncherbundleid }), timeOutinMs, 'Error: App not found');
  if (exists) {
    console.log("Launched Safari launcher application ");
    ////browser.saveScreenshot();
  }
  browser.pause(1000);
  // browser.element("~launch safari").click();
  browser.pause(2000);
  console.log(browser.contexts());
  const views = browser.contexts();
  const view = JSON.stringify(views).split('"')[5];
  console.log(view);
  browser.context(view);
  console.log("switched");
  console.log(url);
  browser.url(url);
  browser.pause(2000);
  let input = $('//input[@name="newPassword"]');
  input.setValue("hello12345");
  let input1 = $('//input[@name="confirmPassword"]');
  input1.setValue("hello12345");
  let submit = $('//button[@type="submit"]');
  submit.click();
  browser.launch();
  ////browser.saveScreenshot();
});
Given(/^I handle terms and privacy screen$/, async () => {
  try {
    switch (platform) {
      case "android":
        try {
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "terms.and.privacy")}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            console.log("Terms and Privacy screen is displayed");
            browser
              .element(
                `${fileutils.readPropertyFile(platform, "do.not.agree")}`
              )
              .click();
            const exists3 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "login.to.your.account"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists3) {
              console.log("Login to your account screen is now displayed");
            }
          }
        } catch (ee) {
          try {
            // perform operation on android
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "welcome.to.tempotm"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists1) {
              console.log("Welcome to tempo screen is displayed");
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "i.already.have.an.account"
                  )}`
                )
                .click();
              console.log("Login to your account screen is now displayed");
            }
          } catch (e) {
            console.log("Already in Login to your account screen");
          }
        }
        // browser.saveScreenshot();
        break;
      case "ios":
        try {
          // perform operation on android
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "terms.and.privacy")}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            console.log("terms.and.privacy");
            browser
              .element(
                `${fileutils.readPropertyFile(platform, "do.not.agree")}`
              )
              .click();
            console.log("Login to your account screen is now displayed");
            const exists2 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "login.to.your.account"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists2) {
              console.log("Already in login to your account screen");
            }
          }
        } catch (ee) {
          try {
            // perform operation on android
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "welcome.to.tempotm"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists1) {
              console.log("Welcome to tempo screen is displayed");
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "i.already.have.an.account"
                  )}`
                )
                .click();
              console.log("Login to your account screen is now displayed");
            }
          } catch (e) {
            console.log("Already in Login to your account screen");
          }
        }
        // }
        // browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Go to Tempo Screen", e);
    // browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I should see terms and privacy screen$/, async () => {
  try {
    switch (platform) {
      case "android":
        try {
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "agree.and.continue"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            console.log("Terms and Privacy screen is displayed");
            browser
              .element(
                `${fileutils.readPropertyFile(platform, "agree.and.continue")}`
              )
              .click();
            const exists3 = browser.waitUntil(
              () =>
                browser
                  .element(`${fileutils.readPropertyFile(platform, "home")}`)
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists3) {
              console.log("Home Screen is now displayed");
            }
          }
        } catch (ee) {
          try {
            // perform operation on android
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "tempo.notifications.title"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists1) {
              console.log("Tempo popup is already displayed");
            }
          } catch (e) {
            console.log("Already in Home Screen");
          }
        }
        ////browser.saveScreenshot();
        break;
      case "ios":
        try {
          // perform operation on android
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "terms.and.privacy")}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            console.log("terms.and.privacy");
            browser
              .element(
                `${fileutils.readPropertyFile(platform, "agree.and.continue")}`
              )
              .click();
            const exists3 = browser.waitUntil(
              () =>
                browser
                  .element(`${fileutils.readPropertyFile(platform, "home")}`)
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists3) {
              console.log("Home Screen is now displayed");
            }
          }
        } catch (ee) {
          try {
            // perform operation on android
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "tempo.notifications"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Element not found"
            );
            if (exists1) {
              console.log("Tempo popup is already displayed");
            }
          } catch (e) {
            console.log("Already in Home Screen");
          }
        }
        // }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Go to Tempo Screen", e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I navigate to settings date$/, async function() {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "pixel2xl.settings.search")
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Automatic date & time");
            browser
              .element(fileutils.readPropertyFile(platform, "automatic.time"))
              .click();
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.pixel2xl"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists1) {
              let autoToggle = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "automatic.date.toggle.pixel2xl"
                  )
                )
                .getAttribute("checked");
              if (autoToggle == "false") {
                console.log("Automatic date format already disabled");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.pixel2xl"
                    )
                  )
                  .click();
                console.log("Automatic date format disabled");
              }
              let value1 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "automatic.date.toggle.pixel2xl"
                  )
                )
                .getAttribute("checked");
              if (value1 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.pixel2xl"
                    )
                  )
                  .click();
                console.log("Automatic date format disabled");
              } else {
                console.log("Already in automatic date Format");
              }
            }
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "set.date.pixel2xl")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "set.date.pixel2xl")
                )
                .click();
            }
            break;
          case "LGG7ThinQ":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "lgthinq.settings.search")
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgthinq.settings.searchbox"
                )
              )
              .setValue("Set automatically");
            browser
              .element(
                fileutils.readPropertyFile(platform, "lgthinq.automatic.time")
              )
              .click();
            const exists2 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.lgthinq"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists2) {
              let autoToggle = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "automatic.date.toggle.lgthinq"
                  )
                )
                .getAttribute("checked");
              if (autoToggle == "false") {
                console.log("Automatic date format already disabled");
                browser.pause(2000);
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.lgthinq"
                    )
                  )
                  .click();
                console.log("Automatic date format disabled");
                browser.pause(2000);
              }
              let value2 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "automatic.date.toggle.lgthinq"
                  )
                )
                .getAttribute("checked");
              if (value2 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.lgthinq"
                    )
                  )
                  .click();
                console.log("Automatic date format disabled");
                browser.pause(2000);
              } else {
                console.log("Already in automatic date Format");
                browser.pause(2000);
              }
            }
            break;
          case "samsungS9":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.search"
                )
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.searchbox"
                )
              )
              .setValue("Automatic date and time");
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(platform, "samsungs9.automatic.time")
              )
              .click();
            const exists3 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.samsungs9"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists3) {
              let autoToggle = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "automatic.date.toggle.samsungs9"
                  )
                )
                .getAttribute("checked");
              if (autoToggle == "false") {
                console.log("Automatic date format already disabled");
                browser.pause(2000);
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.samsungs9"
                    )
                  )
                  .click();
                console.log("Automatic date format disabled");
                browser.pause(2000);
              }
              let value3 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "automatic.date.toggle.samsungs9"
                  )
                )
                .getAttribute("checked");
              if (value3 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.samsungs9"
                    )
                  )
                  .click();
                console.log("Automatic date format disabled");
                browser.pause(2000);
              } else {
                console.log("Already in automatic date Format");
                browser.pause(2000);
              }
            }
            // browser.pause(2000)
            // if (browser.element(fileutils.readPropertyFile(platform, "set.date.samsungs9")).isVisible()) {
            //   browser.element(fileutils.readPropertyFile(platform, "set.date.samsungs9")).click();
            // }
            break;
          case "Pixel3":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "pixel2xl.settings.search")
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Automatic date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "Automatic.time.pixel3")
              )
              .click();
            const exists4 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.pixel2xl"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists4) {
              let autoToggle = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "automatic.date.toggle.pixel2xl"
                  )
                )
                .getAttribute("checked");
              if (autoToggle == "false") {
                console.log("Automatic date format already disabled");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.pixel2xl"
                    )
                  )
                  .click();
                console.log("Automatic date format disabled");
              }
              let value4 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "automatic.date.toggle.pixel2xl"
                  )
                )
                .getAttribute("checked");
              if (value4 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.date.toggle.pixel2xl"
                    )
                  )
                  .click();
                console.log("Automatic date format disabled");
              } else {
                console.log("Already in automatic date Format");
              }
            }
            if (
              browser
                .element(
                  fileutils.readPropertyFile(platform, "set.date.pixel3")
                )
                .isVisible()
            ) {
              browser
                .element(
                  fileutils.readPropertyFile(platform, "set.date.pixel3")
                )
                .click();
            }
            break;
          default:
            break;
        }
        break;
      case "ios":
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot BACK");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I disable set automatically in device settings$/, async () => {
  try {
    switch (platform) {
      case "android":
        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "pixel2xl.settings.search")
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.date.time"
                )
              )
              .click();
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists) {
              let value = browser
                .element(
                  fileutils.readPropertyFile(platform, "automatic.dateandtime")
                )
                .getAttribute("checked");
              if (value == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.dateandtime"
                    )
                  )
                  .click();
                console.log("Disabled automatic date and time");
              } else {
                console.log(
                  "already in automatic date and time in disabled state"
                );
              }
            }
            break;
          case "OnePlus7Pro":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "oneplus7pro.settings.search"
                )
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.date.time"
                )
              )
              .click();
            const exists2 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists2) {
              let value2 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "oneplus7pro.automatic.dateandtime"
                  )
                )
                .getAttribute("checked");
              if (value2 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "oneplus7pro.automatic.dateandtime"
                    )
                  )
                  .click();
                console.log("Disabled automatic date and time");
              } else {
                console.log(
                  "already in automatic date and time in disabled state"
                );
              }
            }
            break;
          case "lgg7thinq":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.search.settings"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.search.query.settings"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.date.time.settings"
                )
              )
              .click();
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists1) {
              let value1 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgg7thinq.settings.automatic.timings"
                  )
                )
                .getAttribute("checked");
              if (value1 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgg7thinq.settings.automatic.timings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date.and time is in disabled state"
                );
              }
            }
            break;
          case "samsungS9plus":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.search"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.searchbox"
                )
              )
              .setValue("Date and time");
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.settings.automatic.date.and.time"
                )
              )
              .click();
            const exists7 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists7) {
              let value7 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.automatic.date.and.time"
                  )
                )
                .getAttribute("checked");
              if (value7 == "false") {
                console.log(
                  "Already automatic date.and time is in disabled state"
                );
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .click();
                console.log(
                  "changed to  Automatic.date.and.time. is disabled state "
                );
              }
              browser.pause(500);
              break;
            }
        }
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        try {
          const exists = browser.waitUntil(
            () =>
              browser.execute("mobile: launchApp", { bundleId: settingsApp }),
            timeOutinMs,
            "Error: App not found"
          );
          if (exists) {
            console.log("Launched Settings application ");
            ////browser.saveScreenshot();
          }
          browser.pause(1000);
          browser.execute("mobile: terminateApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          mobileactions.mobileScroll("up");
          let search = browser.element(
            `${fileutils.readPropertyFile(platform, "settings.search")}`
          );
          search.click();
          const exists0 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "settings.search")}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists0) {
            search.setValue("Date & Time");
            browser.pause(1000);
            browser.element("~Date & Time").click();
            const exists11 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(
                      platform,
                      "settings.set.automatically"
                    )}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists11) {
              let value11 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "settings.set.automatically"
                  )
                )
                .getAttribute("value");
              if (value11 == 0) {
                console.log("Set automatically is already disabled");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "settings.set.automatically"
                    )
                  )
                  .click();
                console.log("Disabled Set automatically");
              }
            }
          }
          browser.execute("mobile: activateApp", { bundleId: bundleid });
          browser.pause(3000);
        } catch (e) {
          console.log(e);
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(" Cannot find setting ");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I handle login to your account screen$/, async () => {
  try {
    switch (platform) {
      case "android":
        try {
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "login.to.your.account"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            console.log("Already in login to your account screen");
          }
        } catch (e) {
          const exists2 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "welcome.to.tempotm"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists2) {
            console.log("Welcome to tempo screen is displayed");
            browser
              .element(
                `${fileutils.readPropertyFile(
                  platform,
                  "i.already.have.an.account"
                )}`
              )
              .click();
            console.log("Login to your account screen is now displayed");
          }
        }
        ////browser.saveScreenshot();
        break;
      case "ios":
        try {
          const exists3 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "login.to.your.account"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists3) {
            console.log("Already in login to your account screen");
          }
        } catch (e) {
          const exists4 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "welcome.to.tempotm"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists4) {
            console.log("Welcome to tempo screen is displayed");
            browser
              .element(
                `${fileutils.readPropertyFile(
                  platform,
                  "i.already.have.an.account"
                )}`
              )
              .click();
            console.log("Login to your account screen is now displayed");
          }
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Go to Tempo Screen", e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I relaunch the settings app again$/, async () => {
  try {
    switch (platform) {
      case "android":
        const exists1 = browser.waitUntil(
          () => browser.launch(),
          timeOutinMs,
          "Error: App not found"
        );
        if (exists1) {
          console.log(" Application is launched ");
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        for (var i = 0; i < 2; i++) {
          const exists = browser.waitUntil(
            () =>
              browser.execute("mobile: launchApp", { bundleId: settingsApp }),
            timeOutinMs,
            "Error: App not found"
          );
          if (exists) {
            console.log(
              "Relaunched Settings application for " + i + "  time/s"
            );
            ////browser.saveScreenshot();
          }
          browser.pause(1000);
          browser.execute("mobile: terminateApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          mobileactions.mobileScroll("up");
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch app");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I set device time to 10 hours ahead$/, async () => {
  try {
    switch (platform) {
      case "android":
        let time = utils.getcurrenttime();
        let hour = parseInt(time.split(":")[0]) + 10;
        let amorpm = time.split(" ")[1];
        if (hour == 22) {
          if (amorpm === "am") {
            amorpm = "AM";
          } else {
            amorpm = "PM";
          }
          hour = hour - 12;
        } else if (hour > 12) {
          if (amorpm === "pm") {
            amorpm = "AM";
          } else {
            amorpm = "PM";
          }
          hour = hour - 12;
        } else {
          if (amorpm === "am") {
            amorpm = "AM";
          } else {
            amorpm = "PM";
          }
          hour = hour;
        }
        console.log("Required hour:" + hour + " " + amorpm);
        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "pixel2xl.settings.search")
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.date.time"
                )
              )
              .click();
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists) {
              let autoToggle = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "pixel2xl.settings.auto.toggle"
                  )
                )
                .getAttribute("checked");
              if (autoToggle == "false") {
                console.log("Automatic 24-hour format already disabled");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.auto.toggle"
                    )
                  )
                  .click();
                console.log("Automatic 24-hour format disabled");
              }
              let value = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "pixel2xl.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
              value = browser
                .element(
                  fileutils.readPropertyFile(platform, "automatic.dateandtime")
                )
                .getAttribute("checked");
              if (value == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.dateandtime"
                    )
                  )
                  .click();
                console.log("set time");
              } else {
                console.log("already in automatic date and time in off state");
              }
              browser
                .element(fileutils.readPropertyFile(platform, "set.time"))
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "hour.setting")
                .replace("12", hour1);
              browser.element(hourdata).click();
              if (amorpm1 == "AM") {
                let AMdata = fileutils
                  .readPropertyFile(platform, "am.setting")
                  .replace("AM", amorpm1);
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils
                  .readPropertyFile(platform, "pm.setting")
                  .replace("PM", amorpm1);
                console.log(PMdata);
                $(PMdata).click();
              }
              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
            }
            break;
          case "OnePlus7Pro":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "oneplus7pro.settings.search"
                )
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.date.time"
                )
              )
              .click();
            const exists13 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists13) {
              let autoToggle = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "oneplus7pro.automatic.dateandtime"
                  )
                )
                .getAttribute("checked");
              if (autoToggle == "false") {
                console.log("Automatic 24-hour format already disabled");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "oneplus7pro.automatic.dateandtime"
                    )
                  )
                  .click();
                console.log("Automatic 24-hour format disabled");
              }
              let value = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "oneplus7pro.settings.24hour.toggle.10"
                  )
                )
                .getAttribute("checked");
              if (value == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "oneplus7pro.settings.24hour.toggle.10"
                    )
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
              value = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "pixel3.network.provided.time"
                  )
                )
                .getAttribute("checked");
              if (value == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel3.network.provided.time"
                    )
                  )
                  .click();
                console.log("set time");
              } else {
                console.log("already in automatic date and time in off state");
              }
              browser
                .element(
                  fileutils.readPropertyFile(platform, "pixel3.set.time")
                )
                .click();
              let exists_hour = browser.waitUntil(
                function() {
                  return browser
                    .element(
                      fileutils.readPropertyFile(platform, "hour.setting")
                    )
                    .isVisible();
                },
                timeOutinMs,
                "Error: Element not found"
              );
              if (exists_hour) {
                let hourdata = fileutils
                  .readPropertyFile(platform, "hour.setting")
                  .replace("12", hour1);
                browser.element(hourdata).click();
                let exists_min = browser.waitUntil(
                  function() {
                    return browser
                      .element(
                        fileutils.readPropertyFile(platform, "minute.setting")
                      )
                      .isVisible();
                  },
                  timeOutinMs,
                  "Error: Element not found"
                );
                if (exists_min) {
                  let minutesdata = fileutils
                    .readPropertyFile(platform, "minute.setting")
                    .replace("15", min1);
                  browser.element(minutesdata).click();
                  let exists_pm = browser.waitUntil(
                    function() {
                      return browser
                        .element(
                          fileutils.readPropertyFile(platform, "pm.setting")
                        )
                        .isVisible();
                    },
                    timeOutinMs,
                    "Error: Element not found"
                  );
                  if (exists_pm) {
                    if (amorpm1 == "AM") {
                      let AMdata = fileutils
                        .readPropertyFile(platform, "am.setting")
                        .replace("AM", amorpm1);
                      browser.element(AMdata).click();
                    } else {
                      let PMdata = fileutils
                        .readPropertyFile(platform, "pm.setting")
                        .replace("PM", amorpm1);
                      $(PMdata).click();
                    }
                  }
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.setting"))
                    .click();
                }
              }
            }
            break;
          case "LGG7ThinQ":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.search.settings"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.search.query.settings"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.date.time.settings"
                )
              )
              .click();
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists1) {
              let value1 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgg7thinq.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value1 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgg7thinq.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
              value1 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgg7thinq.settings.automatic.timings"
                  )
                )
                .getAttribute("checked");
              if (value1 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgg7thinq.settings.automatic.timings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date.and time is in disabled state"
                );
              }
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgg7thinq.settings.set.time"
                  )
                )
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "lgg7thinq.settings.hour.time")
                .replace(12, hour1);
              browser.element(hourdata).click();
              // let minutesdata = fileutils
              //   .readPropertyFile(platform, "lgg7thinq.settings.minutes.time")
              //   .replace(15, min1);
              // browser.element(minutesdata).click();
              if (amorpm1 == "AM") {
                let AMdata = fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.settings.am"
                );
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.settings.pm"
                );
                console.log(PMdata);
                $(PMdata).click();
              }
              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
            }
            break;
          case "samsungS9plus":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.search"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.searchbox"
                )
              )
              .setValue("Date and time");
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.settings.automatic.date.and.time"
                )
              )
              .click();
            const exists7 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists7) {
              let value7 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.automatic.date.and.time"
                  )
                )
                .getAttribute("checked");
              if (value7 == "false") {
                console.log(
                  "Already automatic date.and time is in disabled state"
                );
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .click();
                console.log(
                  "changed to  Automatic.date.and.time. is disabled state "
                );
              }
              browser.pause(500);
              value7 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value7 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
            }
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.time"
                )
              )
              .click();
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.hour.edit"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.hour.btn"
                )
              )
              .setValue(hour1);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.min.btn"
                )
              )
              .setValue(min1);
            // console.log(amorpm1)
            // let setamorpm=browser.element(fileutils.readPropertyFile(platform,"samsung.s9plus.setting.setamorpm")).getAttribute("text").indexOf(amorpm1)
            // console.log(setamorpm)
            // if(setamorpm>-1){
            //   browser.element(fileutils.readPropertyFile(platform,"samsung.am.pm.button")).click();
            //   browser.element(fileutils.readPropertyFile(platform, "samsungS9plus.Setting.Done")).click();
            // }
            // else{
            //   browser.element(fileutils.readPropertyFile(platform, "samsungS9plus.Setting.Done")).click();
            // }
            let setamorpm1 = browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.setamorpm"
                )
              )
              .getAttribute("text")
              .replace(",", "")
              .replace(" ", "");
            if (amorpm1 == "AM") {
              if (
                browser.isVisible(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.setting.am.btn"
                  )
                )
              ) {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.setting.am.btn"
                    )
                  )
                  .click();
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.setting.setamorpm"
                    )
                  )
                  .click();
                console.log("clicked in AM ");
              }
            } else if (amorpm1 == "PM") {
              {
                if (
                  browser.isVisible(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.setting.pm.btn"
                    )
                  )
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "samsung.s9plus.setting.pm.btn"
                      )
                    )
                    .click();
                } else
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "samsung.s9plus.setting.setamorpm"
                      )
                    )
                    .click();
                console.log("clicked on PM");
              }
            }
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.done"
                )
              )
              .click();
            break;
          case "samsungS9":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.search"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.searchbox"
                )
              )
              .setValue("Date and time");
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.settings.automatic.date.and.time"
                )
              )
              .click();
            const exists4 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists4) {
              let value4 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.automatic.date.and.time"
                  )
                )
                .getAttribute("checked");
              if (value4 == "false") {
                console.log(
                  "Already automatic date.and time is in disabled state"
                );
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .click();
                console.log(
                  "changed to  Automatic.date.and.time. is disabled state "
                );
              }
              browser.pause(500);
              value4 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value4 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
            }
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.time"
                )
              )
              .click();
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.hour.edit"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.hour.btn"
                )
              )
              .setValue(hour1);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.min.btn"
                )
              )
              .setValue(min1);
            // console.log(amorpm1)
            // let setamorpm=browser.element(fileutils.readPropertyFile(platform,"samsung.s9plus.setting.setamorpm")).getAttribute("text").indexOf(amorpm1)
            // console.log(setamorpm)
            // if(setamorpm>-1){
            //   browser.element(fileutils.readPropertyFile(platform,"samsung.am.pm.button")).click();
            //   browser.element(fileutils.readPropertyFile(platform, "samsungS9plus.Setting.Done")).click();
            // }
            // else{
            //   browser.element(fileutils.readPropertyFile(platform, "samsungS9plus.Setting.Done")).click();
            // }
            let setamorpm = browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.setamorpm"
                )
              )
              .getAttribute("text")
              .replace(",", "")
              .replace(" ", "");
            if (amorpm1 == "AM") {
              if (
                browser.isVisible(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.setting.am.btn"
                  )
                )
              ) {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.setting.am.btn"
                    )
                  )
                  .click();
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.setting.setamorpm"
                    )
                  )
                  .click();
                console.log("clicked in AM ");
              }
            } else if (amorpm1 == "PM") {
              {
                if (
                  browser.isVisible(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.setting.pm.btn"
                    )
                  )
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "samsung.s9plus.setting.pm.btn"
                      )
                    )
                    .click();
                } else
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "samsung.s9plus.setting.setamorpm"
                      )
                    )
                    .click();
                console.log("clicked on PM");
              }
            }
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.done"
                )
              )
              .click();
            break;
          case "lgk8":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "lgk8.settings.search")
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(platform, "lgk8.settings.searchbox")
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "settings.date.and.time")
              )
              .click();
            const exists5 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists5) {
              let value5 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgk8.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value5 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgk8.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
              value5 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgk8.automatic.timings.settings"
                  )
                )
                .getAttribute("checked");
              if (value5 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgk8.automatic.timings.settings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date and time is in disabled state"
                );
              }
              browser
                .element(
                  fileutils.readPropertyFile(platform, "lgk8.settings.set.time")
                )
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "lgk8.hour.settings")
                .replace("12", hour1);
              browser.element(hourdata).click();
              // let minutesdata = fileutils
              //   .readPropertyFile(platform, "lgk8.minute.settings")
              //   .replace("15", min1);
              // browser.element(minutesdata).click();
              if (amorpm1 == "AM") {
                let AMdata = fileutils.readPropertyFile(
                  platform,
                  "lgk8.settings.am"
                );
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(
                  platform,
                  "lgk8.settings.pm"
                );
                console.log(PMdata);
                $(PMdata).click();
              }
            }
            browser
              .element(fileutils.readPropertyFile(platform, "ok.setting"))
              .click();
            break;
          case "ZTE":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(platform, "zte.search.settings")
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(platform, "zte.searchbox.settings")
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "settings.date.and.time")
              )
              .click();
            const exists3 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists3) {
              let value3 = browser
                .element(
                  fileutils.readPropertyFile(platform, "zte.24hour.toggle")
                )
                .getAttribute("checked");
              if (value3 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "zte.24hour.toggle")
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
              value3 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "zte.automatic.timings.settings"
                  )
                )
                .getAttribute("checked");
              if (value3 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "zte.automatic.timings.settings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date and time is in disabled state"
                );
              }
              browser
                .element(fileutils.readPropertyFile(platform, "set.time"))
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "zte.hour.settings")
                .replace("12", hour1);
              browser.element(hourdata).click();
              if (amorpm1 == "AM") {
                let AMdata = fileutils.readPropertyFile(platform, "am.setting");
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "pm.setting");
                console.log(PMdata);
                $(PMdata).click();
              }
              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
              console.log("Device time changed to " + time);
            }
            break;
          case "motog6":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "motog6.settings.search")
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "motog6.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "settings.date.time")
              )
              .click();
            const exists6 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists6) {
              let value6 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "motog6.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value6 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "motog6.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
              value6 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "motog6.automatic.timings.settings"
                  )
                )
                .getAttribute("checked");
              if (value6 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "motog6.automatic.timings.settings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date and time is in disabled state"
                );
              }
              browser
                .element(fileutils.readPropertyFile(platform, "set.time"))
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "motog6.hour.settings")
                .replace("12", hour1);
              browser.element(hourdata).click();
              if (amorpm1 == "AM") {
                let AMdata = fileutils.readPropertyFile(platform, "am.setting");
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "pm.setting");
                console.log(PMdata);
                $(PMdata).click();
              }
              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
            }
            break;
          case "motoZ2":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "motog6.settings.search")
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "motog6.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "settings.date.time")
              )
              .click();
            const exists10 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists10) {
              let value10 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "motog6.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value10 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "motog6.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
              value10 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "motog6.automatic.timings.settings"
                  )
                )
                .getAttribute("checked");
              if (value10 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "motog6.automatic.timings.settings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date and time is in disabled state"
                );
              }
              browser
                .element(fileutils.readPropertyFile(platform, "set.time"))
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "motog6.hour.settings")
                .replace("12", hour1);
              browser.element(hourdata).click();
              if (amorpm1 == "AM") {
                let AMdata = fileutils.readPropertyFile(platform, "am.setting");
                browser.element(AMdata).click();
              } else {
                let PMdata = fileutils.readPropertyFile(platform, "pm.setting");
                console.log(PMdata);
                $(PMdata).click();
              }
              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
            }
            break;
          case "Pixel3":
            switch (platformVersion) {
              case "10":
                browser.startActivity(
                  "com.android.settings",
                  "com.android.settings.Settings"
                );
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.search"
                    )
                  )
                  .click();
                browser.pause(500);
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.searchbox"
                    )
                  )
                  .setValue("Date & time");
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.date.time"
                    )
                  )
                  .click();
                const exists13 = browser.waitUntil(
                  () =>
                    browser
                      .element(
                        fileutils.readPropertyFile(platform, "settings.24hour")
                      )
                      .isVisible(),
                  timeOutinMs,
                  "Error: Element not found"
                );
                if (exists13) {
                  let autoToggle = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.locale.default"
                      )
                    )
                    .getAttribute("checked");
                  if (autoToggle == "false") {
                    console.log("Automatic 24-hour format already disabled");
                  } else {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.locale.default"
                        )
                      )
                      .click();
                    console.log("Automatic 24-hour format disabled");
                  }
                  let value = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.settings.24hour.toggle.10"
                      )
                    )
                    .getAttribute("checked");
                  if (value == "true") {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.settings.24hour.toggle.10"
                        )
                      )
                      .click();
                    console.log("Changed to 12 Hour Format");
                  } else {
                    console.log("Already in 12 Hour Format");
                  }
                  value = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.network.provided.time"
                      )
                    )
                    .getAttribute("checked");
                  if (value == "true") {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.network.provided.time"
                        )
                      )
                      .click();
                    console.log("set time");
                  } else {
                    console.log(
                      "already in automatic date and time in off state"
                    );
                  }
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "pixel3.set.time")
                    )
                    .click();
                  let hourdata = fileutils
                    .readPropertyFile(platform, "hour.setting")
                    .replace("12", hour1);
                  browser.element(hourdata).click();
                  if (amorpm1 == "AM") {
                    let AMdata = fileutils
                      .readPropertyFile(platform, "am.setting")
                      .replace("AM", amorpm1);
                    browser.element(AMdata).click();
                  } else {
                    let PMdata = fileutils
                      .readPropertyFile(platform, "pm.setting")
                      .replace("PM", amorpm1);
                    $(PMdata).click();
                  }
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.setting"))
                    .click();
                }
                break;
              case "9":
                browser.startActivity(
                  "com.android.settings",
                  "com.android.settings.Settings"
                );
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.search"
                    )
                  )
                  .click();
                browser.pause(500);
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.searchbox"
                    )
                  )
                  .setValue("Date & time");
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.date.time"
                    )
                  )
                  .click();
                const exists12 = browser.waitUntil(
                  () =>
                    browser
                      .element(
                        fileutils.readPropertyFile(platform, "settings.24hour")
                      )
                      .isVisible(),
                  timeOutinMs,
                  "Error: Element not found"
                );
                if (exists12) {
                  let autoToggle = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.settings.auto.toggle"
                      )
                    )
                    .getAttribute("checked");
                  if (autoToggle == "false") {
                    console.log("Automatic 24-hour format already disabled");
                  } else {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.settings.auto.toggle"
                        )
                      )
                      .click();
                    console.log("Automatic 24-hour format disabled");
                  }
                  let value = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.settings.24hour.toggle"
                      )
                    )
                    .getAttribute("checked");
                  if (value == "true") {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.settings.24hour.toggle"
                        )
                      )
                      .click();
                    console.log("Changed to 12 Hour Format");
                  } else {
                    console.log("Already in 12 Hour Format");
                  }
                  value = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "automatic.dateandtime"
                      )
                    )
                    .getAttribute("checked");
                  if (value == "true") {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "automatic.dateandtime"
                        )
                      )
                      .click();
                    console.log("set time");
                  } else {
                    console.log(
                      "already in automatic date and time in off state"
                    );
                  }
                  browser
                    .element(fileutils.readPropertyFile(platform, "set.time"))
                    .click();
                  let hourdata = fileutils
                    .readPropertyFile(platform, "hour.setting")
                    .replace("12", hour1);
                  browser.element(hourdata).click();
                  if (amorpm1 == "AM") {
                    let AMdata = fileutils
                      .readPropertyFile(platform, "am.setting")
                      .replace("AM", amorpm1);
                    browser.element(AMdata).click();
                  } else {
                    let PMdata = fileutils
                      .readPropertyFile(platform, "pm.setting")
                      .replace("PM", amorpm1);
                    $(PMdata).click();
                  }
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.setting"))
                    .click();
                }
                break;
            }
        }
        console.log("Device Time has been set to 10 hours head");
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        {
          let time = utils.getcurrenttime();
          let hour = parseInt(time.split(":")[0]) + 10;
          let amorpm = time.split(" ")[1];
          if (hour == 22) {
            if (amorpm === "am") {
              amorpm = "AM";
            } else {
              amorpm = "PM";
            }
            hour = hour - 12;
          } else if (hour > 12) {
            if (amorpm === "pm") {
              amorpm = "AM";
            } else {
              amorpm = "PM";
            }
            hour = hour - 12;
          } else {
            if (amorpm === "am") {
              amorpm = "AM";
            } else {
              amorpm = "PM";
            }
            hour = hour;
          }
          console.log("Required hour:" + hour + " " + amorpm);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: terminateApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          mobileactions.mobileScroll("up");
          let search = browser.element(
            `${fileutils.readPropertyFile(platform, "settings.search")}`
          );
          search.click();
          const exists0 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "settings.search")}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists0) {
            search.setValue("Date & Time");
            browser.pause(2000);
            browser.element("~Date & Time").click();
            browser.pause(4000);
            const exists10 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "settings.24hour")}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists10) {
              let value10 = browser
                .element(
                  fileutils.readPropertyFile(platform, "settings.24hour")
                )
                .getAttribute("value");
              if (value10 == 1) {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .click();
                console.log("Changed to 12 Hour Format");
              } else {
                console.log("Already in 12 Hour Format");
              }
            }
          }
          const exists11 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "settings.set.automatically"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists11) {
            let value11 = browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "settings.set.automatically"
                )
              )
              .getAttribute("value");
            if (value11 == 1) {
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "settings.set.automatically"
                  )
                )
                .click();
              console.log("already Changed to Automatic time ");
            } else {
              console.log("ready to change");
            }
            browser
              .element(fileutils.readPropertyFile(platform, "setting.time"))
              .click();
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "settings.hour"),
              hour
            );
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "setting.am.pm"),
              amorpm
            );
          }

          console.log("Device Time has been set to 10 hours head");
          browser.execute("mobile: activateApp", { bundleId: bundleid });
          browser.pause(3000);
        }
        break;
      case "web":
        // perform operation on web
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot launch app");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});

Given(/^I set device time as "([^"]*)" in 24hr format$/, async time => {
  try {
    switch (platform) {
      case "android":
        let hour1 = time.split(":")[0];
        let min1 = time.split(":")[1].split(" ")[0];

        switch (deviceName) {
          case "Pixel2xl":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "pixel2xl.settings.search")
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.date.time"
                )
              )
              .click();
            const exists = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists) {
              let autoToggle = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "pixel2xl.settings.auto.toggle"
                  )
                )
                .getAttribute("checked");
              if (autoToggle == "false") {
                console.log("Automatic 24-hour format already disabled");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.auto.toggle"
                    )
                  )
                  .click();
                console.log("Automatic 24-hour format disabled");
              }
              let value = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "pixel2xl.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
              value = browser
                .element(
                  fileutils.readPropertyFile(platform, "automatic.dateandtime")
                )
                .getAttribute("checked");
              if (value == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "automatic.dateandtime"
                    )
                  )
                  .click();
                console.log("set time");
              } else {
                console.log("already in automatic date and time in off state");
              }
              browser
                .element(fileutils.readPropertyFile(platform, "set.time"))
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "hour.setting")
                .replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils
                .readPropertyFile(platform, "minute.setting")
                .replace("15", min1);
              browser.element(minutesdata).click();
              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
              console.log("Device time changed to " + time);
            }
            break;

          case "OnePlus7Pro":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "oneplus7pro.settings.search"
                )
              )
              .click();
            browser.pause(500);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "pixel2xl.settings.date.time"
                )
              )
              .click();
            const exists13 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists13) {
              let autoToggle = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "oneplus7pro.automatic.dateandtime"
                  )
                )
                .getAttribute("checked");
              if (autoToggle == "false") {
                console.log("Automatic 24-hour format already disabled");
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "oneplus7pro.automatic.dateandtime"
                    )
                  )
                  .click();
                console.log("Automatic 24-hour format disabled");
              }
              let value = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "oneplus7pro.settings.24hour.toggle.10"
                  )
                )
                .getAttribute("checked");
              if (value == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "oneplus7pro.settings.24hour.toggle.10"
                    )
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
              value = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "pixel3.network.provided.time"
                  )
                )
                .getAttribute("checked");
              if (value == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel3.network.provided.time"
                    )
                  )
                  .click();
                console.log("set time");
              } else {
                console.log("already in automatic date and time in off state");
              }
              browser
                .element(
                  fileutils.readPropertyFile(platform, "pixel3.set.time")
                )
                .click();

              let exists_hour = browser.waitUntil(
                function() {
                  return browser
                    .element(
                      fileutils.readPropertyFile(platform, "hour.setting")
                    )
                    .isVisible();
                },
                timeOutinMs,
                "Error: Element not found"
              );
              if (exists_hour) {
                let hourdata = fileutils
                  .readPropertyFile(platform, "hour.setting")
                  .replace("12", hour1);
                browser.element(hourdata).click();
                let exists_min = browser.waitUntil(
                  function() {
                    return browser
                      .element(
                        fileutils.readPropertyFile(platform, "minute.setting")
                      )
                      .isVisible();
                  },
                  timeOutinMs,
                  "Error: Element not found"
                );
                if (exists_min) {
                  let minutesdata = fileutils
                    .readPropertyFile(platform, "minute.setting")
                    .replace("15", min1);
                  browser.element(minutesdata).click();

                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.setting"))
                    .click();
                  console.log("Device time changed to " + time);
                }
              }
            }
            break;
          case "LGG7ThinQ":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.search.settings"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.search.query.settings"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "lgg7thinq.date.time.settings"
                )
              )
              .click();
            const exists1 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists1) {
              let value1 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgg7thinq.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value1 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgg7thinq.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
              value1 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgg7thinq.settings.automatic.timings"
                  )
                )
                .getAttribute("checked");
              if (value1 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgg7thinq.settings.automatic.timings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date.and time is in disabled state"
                );
              }
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgg7thinq.settings.set.time"
                  )
                )
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "lgg7thinq.settings.hour.time")
                .replace(12, hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils
                .readPropertyFile(platform, "lgg7thinq.settings.minutes.time")
                .replace(15, min1);
              browser.element(minutesdata).click();

              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
              console.log("Device time changed to " + time);
            }
            break;
          case "samsungS9plus":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.search"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.searchbox"
                )
              )
              .setValue("Date and time");
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.settings.automatic.date.and.time"
                )
              )
              .click();
            const exists7 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists7) {
              let value7 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.automatic.date.and.time"
                  )
                )
                .getAttribute("checked");
              if (value7 == "false") {
                console.log(
                  "Already automatic date.and time is in disabled state"
                );
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .click();
                console.log(
                  "changed to  Automatic.date.and.time. is disabled state "
                );
              }

              browser.pause(500);
              value7 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value7 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
            }
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.time"
                )
              )
              .click();
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.hour.edit"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.hour.btn"
                )
              )
              .setValue(hour1);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.min.btn"
                )
              )
              .setValue(min1);

            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.done"
                )
              )
              .click();
            break;
          case "samsungS9":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.search"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsungs9.settings.searchbox"
                )
              )
              .setValue("Date and time");
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.settings.automatic.date.and.time"
                )
              )
              .click();
            const exists4 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists4) {
              let value4 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.automatic.date.and.time"
                  )
                )
                .getAttribute("checked");
              if (value4 == "false") {
                console.log(
                  "Already automatic date.and time is in disabled state"
                );
              } else {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.automatic.date.and.time"
                    )
                  )
                  .click();
                console.log(
                  "changed to  Automatic.date.and.time. is disabled state "
                );
              }
              browser.pause(500);
              value4 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "samsung.s9plus.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value4 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "samsung.s9plus.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
            }
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.time"
                )
              )
              .click();
            browser.pause(2000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.hour.edit"
                )
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.hour.btn"
                )
              )
              .setValue(hour1);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.min.btn"
                )
              )
              .setValue(min1);

            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "samsung.s9plus.setting.done"
                )
              )
              .click();
            break;
          case "lgk8":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "lgk8.settings.search")
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(platform, "lgk8.settings.searchbox")
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "settings.date.and.time")
              )
              .click();
            const exists5 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists5) {
              let value5 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgk8.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value5 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgk8.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
              value5 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "lgk8.automatic.timings.settings"
                  )
                )
                .getAttribute("checked");
              if (value5 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "lgk8.automatic.timings.settings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date and time is in disabled state"
                );
              }
              browser
                .element(
                  fileutils.readPropertyFile(platform, "lgk8.settings.set.time")
                )
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "lgk8.hour.settings")
                .replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils
                .readPropertyFile(platform, "lgk8.minute.settings")
                .replace("15", min1);
              browser.element(minutesdata).click();
            }
            browser
              .element(fileutils.readPropertyFile(platform, "ok.setting"))
              .click();
            console.log("Device time changed to " + time);
            break;
          case "ZTE":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(platform, "zte.search.settings")
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(platform, "zte.searchbox.settings")
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "settings.date.and.time")
              )
              .click();
            const exists3 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists3) {
              let value3 = browser
                .element(
                  fileutils.readPropertyFile(platform, "zte.24hour.toggle")
                )
                .getAttribute("checked");
              if (value3 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "zte.24hour.toggle")
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
              value3 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "zte.automatic.timings.settings"
                  )
                )
                .getAttribute("checked");
              if (value3 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "zte.automatic.timings.settings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date and time is in disabled state"
                );
              }
              browser
                .element(fileutils.readPropertyFile(platform, "set.time"))
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "zte.hour.settings")
                .replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils
                .readPropertyFile(platform, "zte.minute.settings")
                .replace("15", min1);
              browser.element(minutesdata).click();

              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
              console.log("Device time changed to " + time);
            }
            break;
          case "motog6":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "motog6.settings.search")
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "motog6.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "settings.date.time")
              )
              .click();
            const exists6 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists6) {
              let value6 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "motog6.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value6 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "motog6.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
              value6 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "motog6.automatic.timings.settings"
                  )
                )
                .getAttribute("checked");
              if (value6 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "motog6.automatic.timings.settings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date and time is in disabled state"
                );
              }
              browser
                .element(fileutils.readPropertyFile(platform, "set.time"))
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "motog6.hour.settings")
                .replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils
                .readPropertyFile(platform, "motog6.minute.settings")
                .replace("15", min1);
              browser.element(minutesdata).click();

              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
              console.log("Device time changed to " + time);
            }
            break;
          case "motoZ2":
            browser.startActivity(
              "com.android.settings",
              "com.android.settings.Settings"
            );
            browser
              .element(
                fileutils.readPropertyFile(platform, "motog6.settings.search")
              )
              .click();
            browser.pause(1000);
            browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "motog6.settings.searchbox"
                )
              )
              .setValue("Date & time");
            browser
              .element(
                fileutils.readPropertyFile(platform, "settings.date.time")
              )
              .click();
            const exists10 = browser.waitUntil(
              () =>
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists10) {
              let value10 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "motog6.settings.24hour.toggle"
                  )
                )
                .getAttribute("checked");
              if (value10 == "false") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "motog6.settings.24hour.toggle"
                    )
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
              value10 = browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "motog6.automatic.timings.settings"
                  )
                )
                .getAttribute("checked");
              if (value10 == "true") {
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "motog6.automatic.timings.settings"
                    )
                  )
                  .click();
              } else {
                console.log(
                  "Already automatic date and time is in disabled state"
                );
              }
              browser
                .element(fileutils.readPropertyFile(platform, "set.time"))
                .click();
              let hourdata = fileutils
                .readPropertyFile(platform, "motog6.hour.settings")
                .replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils
                .readPropertyFile(platform, "motog6.minute.settings")
                .replace("15", min1);
              browser.element(minutesdata).click();

              browser
                .element(fileutils.readPropertyFile(platform, "ok.setting"))
                .click();
              console.log("Device time changed to " + time);
            }
            break;
          case "Pixel3":
            switch (platformVersion) {
              case "10":
                browser.startActivity(
                  "com.android.settings",
                  "com.android.settings.Settings"
                );
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.search"
                    )
                  )
                  .click();
                browser.pause(500);
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.searchbox"
                    )
                  )
                  .setValue("Date & time");
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.date.time"
                    )
                  )
                  .click();
                const exists13 = browser.waitUntil(
                  () =>
                    browser
                      .element(
                        fileutils.readPropertyFile(platform, "settings.24hour")
                      )
                      .isVisible(),
                  timeOutinMs,
                  "Error: Element not found"
                );
                if (exists13) {
                  let autoToggle = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.locale.default"
                      )
                    )
                    .getAttribute("checked");
                  if (autoToggle == "false") {
                    console.log("Automatic 24-hour format already disabled");
                  } else {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.locale.default"
                        )
                      )
                      .click();
                    console.log("Automatic 24-hour format disabled");
                  }
                  let value = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.settings.24hour.toggle.10"
                      )
                    )
                    .getAttribute("checked");
                  if (value == "false") {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.settings.24hour.toggle.10"
                        )
                      )
                      .click();
                    console.log("Changed to 24 Hour Format");
                  } else {
                    console.log("Already in 24 Hour Format");
                  }
                  value = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.network.provided.time"
                      )
                    )
                    .getAttribute("checked");
                  if (value == "true") {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.network.provided.time"
                        )
                      )
                      .click();
                    console.log("set time");
                  } else {
                    console.log(
                      "already in automatic date and time in off state"
                    );
                  }
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "pixel3.set.time")
                    )
                    .click();
                  let hourdata = fileutils
                    .readPropertyFile(platform, "hour.setting")
                    .replace("12", hour1);
                  browser.element(hourdata).click();
                  let minutesdata = fileutils
                    .readPropertyFile(platform, "minute.setting")
                    .replace("15", min1);
                  browser.element(minutesdata).click();

                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.setting"))
                    .click();
                  console.log("Device time changed to " + time);
                }
                break;
              case "9":
                browser.startActivity(
                  "com.android.settings",
                  "com.android.settings.Settings"
                );
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.search"
                    )
                  )
                  .click();
                browser.pause(500);
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.searchbox"
                    )
                  )
                  .setValue("Date & time");
                browser
                  .element(
                    fileutils.readPropertyFile(
                      platform,
                      "pixel2xl.settings.date.time"
                    )
                  )
                  .click();
                const exists12 = browser.waitUntil(
                  () =>
                    browser
                      .element(
                        fileutils.readPropertyFile(platform, "settings.24hour")
                      )
                      .isVisible(),
                  timeOutinMs,
                  "Error: Element not found"
                );
                if (exists12) {
                  let autoToggle = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.settings.auto.toggle"
                      )
                    )
                    .getAttribute("checked");
                  if (autoToggle == "false") {
                    console.log("Automatic 24-hour format already disabled");
                  } else {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.settings.auto.toggle"
                        )
                      )
                      .click();
                    console.log("Automatic 24-hour format disabled");
                  }
                  let value = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "pixel3.settings.24hour.toggle"
                      )
                    )
                    .getAttribute("checked");
                  if (value == "false") {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "pixel3.settings.24hour.toggle"
                        )
                      )
                      .click();
                    console.log("Changed to 24 Hour Format");
                  } else {
                    console.log("Already in 24 Hour Format");
                  }
                  value = browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "automatic.dateandtime"
                      )
                    )
                    .getAttribute("checked");
                  if (value == "true") {
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "automatic.dateandtime"
                        )
                      )
                      .click();
                    console.log("set time");
                  } else {
                    console.log(
                      "already in automatic date and time in off state"
                    );
                  }
                  browser
                    .element(fileutils.readPropertyFile(platform, "set.time"))
                    .click();
                  let hourdata = fileutils
                    .readPropertyFile(platform, "hour.setting")
                    .replace("12", hour1);
                  browser.element(hourdata).click();
                  let minutesdata = fileutils
                    .readPropertyFile(platform, "minute.setting")
                    .replace("15", min1);
                  browser.element(minutesdata).click();

                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.setting"))
                    .click();
                  console.log("Device time changed to " + time);
                }
                break;
            }
        }
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        try {
          let hour = time.split(":")[0];
          let min = time.split(":")[1];
          const exists = browser.waitUntil(
            () =>
              browser.execute("mobile: launchApp", { bundleId: settingsApp }),
            timeOutinMs,
            "Error: App not found"
          );
          if (exists) {
            console.log("Launched Settings application ");
            ////browser.saveScreenshot();
          }
          browser.pause(1000);
          browser.execute("mobile: terminateApp", { bundleId: settingsApp });
          browser.pause(1000);
          browser.execute("mobile: launchApp", { bundleId: settingsApp });
          mobileactions.mobileScroll("up");
          let search = browser.element(
            `${fileutils.readPropertyFile(platform, "settings.search")}`
          );
          search.click();
          const exists0 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(platform, "settings.search")}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists0) {
            search.setValue("Date & Time");
            browser.pause(1000);
            browser.element("~Date & Time").click();
            const exists10 = browser.waitUntil(
              () =>
                browser
                  .element(
                    `${fileutils.readPropertyFile(platform, "settings.24hour")}`
                  )
                  .isVisible(),
              timeOutinMs,
              "Error: Element not found"
            );
            if (exists10) {
              let value10 = browser
                .element(
                  fileutils.readPropertyFile(platform, "settings.24hour")
                )
                .getAttribute("value");
              if (value10 == 0) {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "settings.24hour")
                  )
                  .click();
                console.log("Changed to 24 Hour Format");
              } else {
                console.log("Already in 24 Hour Format");
              }
            }
          }
          const exists11 = browser.waitUntil(
            () =>
              browser
                .element(
                  `${fileutils.readPropertyFile(
                    platform,
                    "settings.set.automatically"
                  )}`
                )
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists11) {
            let value11 = browser
              .element(
                fileutils.readPropertyFile(
                  platform,
                  "settings.set.automatically"
                )
              )
              .getAttribute("value");
            if (value11 == 1) {
              browser
                .element(
                  fileutils.readPropertyFile(
                    platform,
                    "settings.set.automatically"
                  )
                )
                .click();
              console.log("already Changed to Automatic time ");
            } else {
              console.log("ready to change");
            }
            browser
              .element(fileutils.readPropertyFile(platform, "setting.time"))
              .click();
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "settings.hour"),
              hour
            );
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "settings.min"),
              min
            );
          }
          browser.execute("mobile: activateApp", { bundleId: bundleid });
          browser.pause(3000);
          browser.pause(3000);
          try {
            if (browser.element(`${fileutils.readPropertyFile(platform, "time.zone.changed")}`).isVisible()) {
              
              browser
              .element(
                `${fileutils.readPropertyFile(platform, "ok")}`
              )
              .click();
              console.log("Clicked on time zone Pop-up");
            }
          } catch (e) {
            console.log("Pop-up not displayed");
          }
        } catch (e) {
          //}
          console.error("Cannot set Device format", e);
          //browser.saveScreenshot();
        }
        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error("Cannot set Device timings" + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Given(/^I set device time in 24 hour format as "([^"]*)"$/, async (time) => {
  try {
    switch (platform) {
      case 'android':
        let hour1 = time.split(':')[0];
        let min1 = (time.split(':')[1]).split(' ')[0]

        switch (deviceName) {
          case 'Pixel2xl':
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Date & time");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.date.time")).click();
            const exists = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists) {
              let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.auto.toggle")).getAttribute('checked')
              if (autoToggle == 'false') {
                console.log("Automatic 24-hour format already disabled");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.auto.toggle")).click();
                console.log("Automatic 24-hour format disabled");
              }
              let value = browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.24hour.toggle")).getAttribute('checked')
              if (value == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
              value = browser.element(fileutils.readPropertyFile(platform, "automatic.dateandtime")).getAttribute('checked')
              if (value == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "automatic.dateandtime")).click();
                console.log("set time")
              }
              else {
                console.log('already in automatic date and time in off state');
              }
              browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "hour.setting").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "minute.setting").replace("15", min1);
              browser.element(minutesdata).click();
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);
            }
            break;

            case "OnePlus7Pro":
                  browser.startActivity("com.android.settings", "com.android.settings.Settings");
                  browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.search")).click();
                  browser.pause(500)
                  browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Date & time");
                  browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.date.time")).click();
                  const exists13 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                  if (exists13) {
                    let autoToggle = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.automatic.dateandtime")).getAttribute('checked')
                    if (autoToggle == 'false') {
                      console.log("Automatic 24-hour format already disabled");
                    }
                    else {
                      browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.automatic.dateandtime")).click();
                      console.log("Automatic 24-hour format disabled");
                    }
                    let value = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.24hour.toggle.10")).getAttribute('checked')
                    if (value == 'false') {
                      browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.24hour.toggle.10")).click();
                      console.log("Changed to 24 Hour Format")
                    }
                    else {
                      console.log('Already in 24 Hour Format');
                    }
                    value = browser.element(fileutils.readPropertyFile(platform, "pixel3.network.provided.time")).getAttribute('checked')
                    if (value == 'true') {
                      browser.element(fileutils.readPropertyFile(platform, "pixel3.network.provided.time")).click();
                      console.log("set time")
                    }
                    else {
                      console.log('already in automatic date and time in off state');
                    }
                    browser.element(fileutils.readPropertyFile(platform, "pixel3.set.time")).click();
                     
                    let exists_hour = browser.waitUntil(
                      function() {
                        return browser
                          .element(fileutils.readPropertyFile(platform, "hour.setting"))
                          .isVisible();
                      },
                      timeOutinMs,
                      "Error: Element not found"
                    );
                    if(exists_hour)
                    {
                      let hourdata = fileutils.readPropertyFile(platform, "hour.setting").replace("12", hour1);
                      browser.element(hourdata).click();
                      let exists_min = browser.waitUntil(
                        function() {
                          return browser
                            .element(fileutils.readPropertyFile(platform, "minute.setting"))
                            .isVisible();
                        },
                        timeOutinMs,
                        "Error: Element not found"
                      );
                      if(exists_min)
                      {
                        let minutesdata = fileutils.readPropertyFile(platform, "minute.setting").replace("15", min1);
                        browser.element(minutesdata).click();
                      
                        browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
                        console.log("Device time changed to " + time);
                 
                      }
                    }
               
                }
                break;
          case 'LGG7ThinQ':
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.search.settings")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.search.query.settings")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.date.time.settings")).click();
            const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists1) {
              let value1 = browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.24hour.toggle")).getAttribute('checked')
              if (value1 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
              value1 = browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.automatic.timings")).getAttribute('checked')
              if (value1 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.automatic.timings")).click();
              }
              else {
                console.log('Already automatic date.and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "lgg7thinq.settings.set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "lgg7thinq.settings.hour.time").replace(12, hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "lgg7thinq.settings.minutes.time").replace(15, min1);
              browser.element(minutesdata).click();
        
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);
            }
            break;
          case "samsungS9plus":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.searchbox")).setValue("Date and time");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "samsung.settings.automatic.date.and.time")).click();
            const exists7 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists7) {
              let value7 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).getAttribute('checked')
              if (value7 == 'false') {
                console.log("Already automatic date.and time is in disabled state");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).click();
                console.log('changed to  Automatic.date.and.time. is disabled state ');
              }

              browser.pause(500)
              value7 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).getAttribute('checked')
              if (value7 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
            }
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.time")).click();
            browser.pause(2000);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.hour.edit")).click();
            browser.pause(1000);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.hour.btn")).setValue(hour1);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.min.btn")).setValue(min1);
           
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.done")).click();
            break;
          case "samsungS9":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "samsungs9.settings.searchbox")).setValue("Date and time");
            browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "samsung.settings.automatic.date.and.time")).click();
            const exists4 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists4) {
              let value4 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).getAttribute('checked')
              if (value4 == 'false') {
                console.log("Already automatic date.and time is in disabled state");
              }
              else {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.automatic.date.and.time")).click();
                console.log('changed to  Automatic.date.and.time. is disabled state ');
              }
              browser.pause(500)
              value4 = browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).getAttribute('checked')
              if (value4 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }

            }
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.time")).click();
            browser.pause(2000);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.hour.edit")).click();
            browser.pause(1000);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.hour.btn")).setValue(hour1);
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.min.btn")).setValue(min1);
    
            browser.element(fileutils.readPropertyFile(platform, "samsung.s9plus.setting.done")).click();
            break;
          case 'lgk8':
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.searchbox")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "settings.date.and.time")).click();
            const exists5 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists5) {
              let value5 = browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.24hour.toggle")).getAttribute('checked')
              if (value5 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
              value5 = browser.element(fileutils.readPropertyFile(platform, "lgk8.automatic.timings.settings")).getAttribute('checked')
              if (value5 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "lgk8.automatic.timings.settings")).click();
              }
              else {
                console.log('Already automatic date and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "lgk8.settings.set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "lgk8.hour.settings").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "lgk8.minute.settings").replace("15", min1);
              browser.element(minutesdata).click();
      
            }
            browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
            console.log("Device time changed to " + time);
            break;
          case 'ZTE':
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "zte.search.settings")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "zte.searchbox.settings")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "settings.date.and.time")).click();
            const exists3 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists3) {
              let value3 = browser.element(fileutils.readPropertyFile(platform, "zte.24hour.toggle")).getAttribute('checked')
              if (value3 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "zte.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
              value3 = browser.element(fileutils.readPropertyFile(platform, "zte.automatic.timings.settings")).getAttribute('checked')
              if (value3 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "zte.automatic.timings.settings")).click();
              }
              else {
                console.log('Already automatic date and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "zte.hour.settings").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "zte.minute.settings").replace("15", min1);
              browser.element(minutesdata).click();
      
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);
            }
            break;
          case "motog6":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.searchbox")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "settings.date.time")).click();
            const exists6 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists6) {
              let value6 = browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).getAttribute('checked')
              if (value6 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
              value6 = browser.element(fileutils.readPropertyFile(platform, "motog6.automatic.timings.settings")).getAttribute('checked')
              if (value6 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.automatic.timings.settings")).click();
              }
              else {
                console.log('Already automatic date and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "motog6.hour.settings").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "motog6.minute.settings").replace("15", min1);
              browser.element(minutesdata).click();

              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);

            }
            break;
          case "motoZ2":
            browser.startActivity("com.android.settings", "com.android.settings.Settings");
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.search")).click();
            browser.pause(1000)
            browser.element(fileutils.readPropertyFile(platform, "motog6.settings.searchbox")).setValue("Date & time");
            browser.element(fileutils.readPropertyFile(platform, "settings.date.time")).click();
            const exists10 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists10) {
              let value10 = browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).getAttribute('checked')
              if (value10 == 'false') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.settings.24hour.toggle")).click();
                console.log("Changed to 24 Hour Format")
              }
              else {
                console.log('Already in 24 Hour Format');
              }
              value10 = browser.element(fileutils.readPropertyFile(platform, "motog6.automatic.timings.settings")).getAttribute('checked')
              if (value10 == 'true') {
                browser.element(fileutils.readPropertyFile(platform, "motog6.automatic.timings.settings")).click();
              }
              else {
                console.log('Already automatic date and time is in disabled state');
              }
              browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
              let hourdata = fileutils.readPropertyFile(platform, "motog6.hour.settings").replace("12", hour1);
              browser.element(hourdata).click();
              let minutesdata = fileutils.readPropertyFile(platform, "motog6.minute.settings").replace("15", min1);
              browser.element(minutesdata).click();
         
              browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
              console.log("Device time changed to " + time);

            }
            break;
            case "Pixel3":
                switch(platformVersion){
                  case "10":
                    browser.startActivity("com.android.settings", "com.android.settings.Settings");
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Date & time");
                    browser.pause(2000)
                    browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.date.time")).click();
                    const exists13 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                    if (exists13) {
                      let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel3.locale.default")).getAttribute('checked')
                      if (autoToggle == 'false') {
                        console.log("Automatic 24-hour format already disabled");
                      }
                      else {
                        browser.element(fileutils.readPropertyFile(platform, "pixel3.locale.default")).click();
                        console.log("Automatic 24-hour format disabled");
                      }
                      let value = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle.10")).getAttribute('checked')
                      if (value == 'false') {
                        browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle.10")).click();
                        console.log("Changed to 24 Hour Format")
                      }
                      else {
                        console.log('Already in 24 Hour Format');
                      }
                      value = browser.element(fileutils.readPropertyFile(platform, "pixel3.network.provided.time")).getAttribute('checked')
                      if (value == 'true') {
                        browser.element(fileutils.readPropertyFile(platform, "pixel3.network.provided.time")).click();
                        console.log("set time")
                      }
                      else {
                        console.log('already in automatic date and time in off state');
                      }
                      browser.element(fileutils.readPropertyFile(platform, "pixel3.set.time")).click();
                      let hourdata = fileutils.readPropertyFile(platform, "hour.setting").replace("12", hour1);
                      browser.element(hourdata).click();
                      let minutesdata = fileutils.readPropertyFile(platform, "minute.setting").replace("15", min1);
                      browser.element(minutesdata).click();
        
                      browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
                      console.log("Device time changed to " + time);
                    }
                    break;
                  case "9":
                      browser.startActivity("com.android.settings", "com.android.settings.Settings");
                      browser.pause(2000)
                      browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.search")).click();
                      browser.pause(2000)
                      browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Date & time");
                      browser.pause(2000)
                      browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.date.time")).click();
                      const exists12 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).isVisible(), timeOutinMs, 'Error: Element not found');
                      if (exists12) {
                        let autoToggle = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.auto.toggle")).getAttribute('checked')
                        if (autoToggle == 'false') {
                          console.log("Automatic 24-hour format already disabled");
                        }
                        else {
                          browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.auto.toggle")).click();
                          console.log("Automatic 24-hour format disabled");
                        }
                        let value = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle")).getAttribute('checked')
                        if (value == 'false') {
                          browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.24hour.toggle")).click();
                          console.log("Changed to 24 Hour Format")
                        }
                        else {
                          console.log('Already in 24 Hour Format');
                        }
                        value = browser.element(fileutils.readPropertyFile(platform, "automatic.dateandtime")).getAttribute('checked')
                        if (value == 'true') {
                          browser.element(fileutils.readPropertyFile(platform, "automatic.dateandtime")).click();
                          console.log("set time")
                        }
                        else {
                          console.log('already in automatic date and time in off state');
                        }
                        browser.element(fileutils.readPropertyFile(platform, "set.time")).click();
                        let hourdata = fileutils.readPropertyFile(platform, "hour.setting").replace("12", hour1);
                        browser.element(hourdata).click();
                        let minutesdata = fileutils.readPropertyFile(platform, "minute.setting").replace("15", min1);
                        browser.element(minutesdata).click();
                  
                        browser.element(fileutils.readPropertyFile(platform, "ok.setting")).click();
                        console.log("Device time changed to " + time);
                      }
                      break;
        }
      }
        while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
          browser.pressKeycode(4);
        }
        break;
      case "ios":
        try {
          let hour = time.split(':')[0];
          let min = (time.split(':')[1]).split(' ')[0]
          let amorpm = (time.split(':')[1]).split(' ')[1]
          const exists = browser.waitUntil(() => browser.execute('mobile: launchApp', { bundleId: settingsApp }), timeOutinMs, 'Error: App not found');
          if (exists) {
            console.log('Launched Settings application ');
            ////browser.saveScreenshot();
          }
          browser.pause(1000)
          browser.execute('mobile: terminateApp', { bundleId: settingsApp })
          browser.pause(1000)
          browser.execute('mobile: launchApp', { bundleId: settingsApp });
          mobileactions.mobileScroll('up')
          let search = browser.element(`${fileutils.readPropertyFile(platform, 'settings.search')}`)
          search.click();
          const exists0 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "settings.search")}`).isVisible(), timeOutinMs, 'Error: Element not found');
          if (exists0) {
          search.setValue("Date & Time");
          browser.pause(1000)
          browser.element("~Date & Time").click();
          const exists10 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "settings.24hour")}`).isVisible(), timeOutinMs, 'Error: Element not found');
          if (exists10) {
            let value10 = browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).getAttribute('value')
            if (value10 == 1) {
              
               console.log('Already in 24 Hour Format');
            }
            else {
              browser.element(fileutils.readPropertyFile(platform, "settings.24hour")).click();
              console.log("Changed to 24 Hour Format")
            }
          }
        }
          const exists11 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "settings.set.automatically")}`).isVisible(), timeOutinMs, 'Error: Element not found');
          if (exists11) {
            let value11 = browser.element(fileutils.readPropertyFile(platform, "settings.set.automatically")).getAttribute('value')
            if (value11 == 1) {
              browser.element(fileutils.readPropertyFile(platform, "settings.set.automatically")).click();
              console.log("already Changed to Automatic time ")
            }
            else {
              console.log("ready to change")
            }
            browser.element(fileutils.readPropertyFile(platform, "setting.time")).click();
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "settings.hour"), hour);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "settings.min"), min);
            browser.pause(2000);
          }
          browser.execute('mobile: activateApp', { bundleId: bundleid });
          browser.pause(3000);
        }
        //}
        catch (e) {
          console.error('Cannot set Device format', e);
          //browser.saveScreenshot();
        }
        break;
      case "web":
        break;
      }
  }catch (e) {
    console.error('Cannot set Device timings' + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});

Given(/^I relaunch application$/, async () => {

browser.background();
browser.pause(3000);
browser.execute("mobile: activateApp", { bundleId: bundleid });
browser.pause(3000);
console.log("App Relaunched");

})