const { expect } = require("chai");
const RandExp = require("randexp");
const { When, Then } = require("cucumber");
const moment = require("moment");
const timeOutinMs = 15000;
const assert = require("assert");
const appconfig = require("../services/appConfig");
const contentful = require("../services/contentful");
const mobileElementAction = require("../helpers/mobileElementActions");
const fileutils = require("../utils/fileoperations");
const utils = require("../utils/genericutilities");
const mobileactions = require("../helpers/mobileactions");
const platform = fileutils.readMobileCaps()[0].platformName.toLowerCase();
const data = fileutils.readMobileCaps()[0] || {};
const {
  FirstName,
  LastName,
  EmailAddress,
  InvalidEmail,
  ChoosePassword,
  Month,
  Day,
  Year,
  Hour,
  Minute,
  deviceName,
  TimeMeridien,
  RegistrationPassword,
  ConfirmRegistrationPassword,
  NotRegEmailID
} = data;
const regex = {
  FirstNameandLastName: /^[a-zA-Z_ ]+$/,
  EmailAddress: /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
  PasswordVerify: /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!,\d%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/,
  SpecialandAlphanumericCharacters: /^[a-zA-Z0-9!@#$&()\\-`.+,/"]*$/
};
let globalvar;
let globalarr = [];
var pastTime = "";
var pastDate = "";
var pastTime24 = "";
var pastHour = "";
var pastMinute = "";
var pastampm = "";
var currentTime = "";
var currentTime24 = "";
When(
  /^I tap "([^"]*)" (?:button|link|header|field|tab|option)$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            console.log(`Clicked on ${object}`);
            ////browser.saveScreenshot();
          }
          browser.pause(2000);
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
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            console.log(`Clicked on ${object}`);
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot click on ${object}${e}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I tap "([^"]*)" (?:view|checkbox)$/, async object => {
  try {
    switch (platform) {
      case "android":
        const exists1 = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click(),
          timeOutinMs,
          "Element not found"
        );
        if (exists1) {
          if (object.indexOf("checkbox") == -1) {
            let object1 = object + ".checkbox";
            let element1 = browser.element(
              `${fileutils.readPropertyFile(platform, object1)}`
            );
            if (element1.getAttribute("checked") == "true") {
              element1.click();
              console.log(`Clicked on ${object1} and is deselected`);
            } else {
              element1.click();
              console.log(`Clicked on ${object} and is selected`);
            }
          } else {
            let element = browser.element(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            if (element.getAttribute("checked") == "true") {
              element.click();
              console.log(`Clicked on ${object} and is deselected`);
            } else {
              element.click();
              console.log(`Clicked on ${object} and is selected`);
            }
          }
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          if (object.indexOf("checkbox") == -1) {
            let object1 = object + ".checkbox";
            let element1 = browser.element(
              `${fileutils.readPropertyFile(platform, object1)}`
            );
            if (element1.getAttribute("value") == 1) {
              element1.click();
              console.log(`Clicked on ${object1} and is deselected`);
            } else {
              element1.click();
              console.log(`Clicked on ${object} and is selected`);
            }
          } else {
            let element = browser.element(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            if (element.getAttribute("value") == 1) {
              element.click();
              console.log(`Clicked on ${object} and is deselected`);
            } else {
              element.click();
              console.log(`Clicked on ${object} and is selected`);
            }
          }
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot click on ${object} checkbox`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I tap "([^"]*)"$/, async object => {
  try {
    switch (platform) {
      case "android":
        const exists1 = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists1) {
          browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .click();
          console.log(`Clicked on ${object}`);
          ////browser.saveScreenshot();
        }
        browser.pause(2000);
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
        let element = browser.element(
          `${fileutils.readPropertyFile(platform, object)}`
        );
        if (exists) {
          element.click();
          console.log(`Clicked on ${object}`);
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot click on ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I enter "([^"]*)"$/, async object => {
  try {
    switch (platform) {
      case "android":
        browser.pause(1000);
        expect(
          browser.element(`${fileutils.readPropertyFile(platform, object)}`)
            .isExisting
        );
        browser.setValue(
          fileutils.readPropertyFile(platform, object),
          fileutils.readPropertyFile("data", object)
        );
        console.log(`Entered value to ${object} field`);
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          mobileElementAction.clearTextBox(
            `${fileutils.readPropertyFile(platform, object)}`
          );
          if (object === "Email") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(fileutils.readMobileCaps()[0].Email);
            console.log(`Entered value to ${object} field`);
            mobileElementAction.tapOutsideElement();
            ////browser.saveScreenshot();
          } else if (object === "Password") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(fileutils.readMobileCaps()[0].Password);
            console.log(`Entered value to ${object} field`);
            mobileElementAction.tapOutsideElement();
            ////browser.saveScreenshot();
          }
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot Enter  ${object}\n${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I enter "([^"]*)" into "([^"]*)" field$/, async (value, object) => {
  try {
    switch (platform) {
      case "android":
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
          let val = `${fileutils.readPropertyFile("data", value)}`;
          browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .click();
          browser.clearElement(
            `${fileutils.readPropertyFile(platform, object)}`
          );
          browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .setValue(val);
          console.log(`Entered ${value} to ${object} field`);
          mobileactions.hideDeviceKeyboard();
          browser.pause(1000);
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        const exists = browser.waitUntil(
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
        if (exists) {
          let val = `${fileutils.readPropertyFile("data", value)}`;
          if (object === "mg.dl.logbook") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "blood.sugar.mg.dl") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "carb.intake.grams") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "edit.carb.intake.grams") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "units") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "longacting.units") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "mealtime.units") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "grams") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "manual.mealtime.units") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "manual.long-acting.units") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else if (object === "manual.carb.intake.grams") {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              ` ${fileutils.readPropertyFile("data", value)} in ${object} field`
            );
            ////browser.saveScreenshot();
          } else {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser.clearElement(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            console.log(
              `Entered ${fileutils.readPropertyFile(
                "data",
                value
              )} to ${object} field`
            );
            mobileactions.hideDeviceKeyboardIOS();
            ////browser.saveScreenshot();
          }
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot enter ${object}\n${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe down$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android operation
        mobileactions.swipeDown(0.85);
        ////browser.saveScreenshot();
        break;
      case "ios":
        mobileactions.swipeDown(0.85);
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot swipe ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe up$/, async () => {
  try {
    switch (platform) {
      case "android":
        mobileactions.swipeUp(0.85);
        ////browser.saveScreenshot();
        break;
      case "ios":
        mobileactions.swipeUp(0.85);
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot swipe ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe left$/, async () => {
  try {
    switch (platform) {
      case "android":
        mobileactions.swipeLeft(0.85);
        ////browser.saveScreenshot();
        break;
      case "ios":
        browser.pause(3000);
        mobileactions.swipeLeft(0.85);
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot swipe ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe right$/, async () => {
  try {
    switch (platform) {
      case "android":
        mobileactions.swipeRight(0.85);
        ////browser.saveScreenshot();
        break;
      case "ios":
        browser.pause(3000);
        mobileactions.swipeRight(0.85);
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot swipe ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe up the intensity scale$/, async () => {
  try {
    switch (platform) {
      case "android":
        break;
      case "ios":
        mobileactions.mobileScroll("down");
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot swipe ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I should see "([^"]*)" (?:CTA|message|alertdescription|toastmessage|alertheader|link|field|hyperlink)$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          expect(
            browser.element(`${fileutils.readPropertyFile(platform, object)}`)
              .isExisting
          );
          console.log(`${object} is visible`);
          ////browser.saveScreenshot();
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists) {
            console.log(
              `${object} is visible : message displayed: ${mobileElementAction.getElementText(
                browser.element(
                  `${fileutils.readPropertyFile(platform, object)}`
                )
              )}`
            );
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot find  ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I tap on "([^"]*)" using coordinates$/, async object => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android element
        break;
      case "ios":
        if (object === "SelectDOB") {
          mobileElementAction.tapByCoord(34, 235);
          break;
        } else if (object === "Done") {
          mobileElementAction.tapByCoord(36, 427);
        } else {
          console.log(
            "Unable to click on the",
            `${object}`,
            "for the coordinates given"
          );
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot click on ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
/*
When statements to enter valid text for First name, Last name, Email Id, and Password ---->
*/
When(/^I enter "([^"]*)" into "([^"]*)" textbox$/, async (value, object) => {
  try {
    switch (platform) {
      case "android":
        // Perform for Android
        break;
      case "ios":
        let val = value;
        if (object === "FirstName") {
          const FirstNameRegex = new RegExp(regex.FirstNameandLastName);
          val = FirstName;
          if (FirstNameRegex.test(val)) {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            ////browser.saveScreenshot();
          } else {
            console.error("Unable to perform on ", `${object}`);
          }
        } else if (object === "LastName") {
          const LastNameRegex = new RegExp(regex.FirstNameandLastName);
          val = LastName;
          if (LastNameRegex.test(val)) {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            ////browser.saveScreenshot();
          } else {
            console.error("Unable to perform on", `${object}`);
          }
        } else if (object === "Email_Address") {
          const EmailIDRegex = new RegExp(regex.EmailAddress);
          val = EmailAddress;
          if (EmailIDRegex.test(value)) {
            mobileElementAction.clearTextBox(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(EmailAddress);
            ////browser.saveScreenshot();
          } else {
            console.error("Unable to perform on", `${object}`);
          }
        } else if (object === "ChoosePassword") {
          // Regex for password is same as of First Name and Last Name story ( VEGA - 90 ).
          // There is no separate password regex to verify
          const PasswordRegex = new RegExp(regex.FirstNameandLastName);
          if (PasswordRegex.test(ChoosePassword)) {
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(ChoosePassword);
            ////browser.saveScreenshot();
          } else {
            console.error("Unable to perform on", `${object}`);
          }
        }
        break;
      case "web":
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot Enter", `${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
/*
When statement to capture the invalid text for First name, Last name, Email Id, and Password ---->
*/
When(/^I enter invalid text in "([^"]*)" textbox$/, async object => {
  try {
    switch (platform) {
      case "android":
        // Perform for Android
        break;
      case "ios":
        browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .click();
        browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .setValue(new RandExp(/[0-9]{6}/).gen());
        ////browser.saveScreenshot();
        break;
      case "web":
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot enter ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I enter invalid text with numbers in the "([^"]*)" textbox$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          // Perform for Android
          break;
        case "ios":
          browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .click();
          browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .setValue(new RandExp(/[a-zA-Z]{4}[0-9]{2}/).gen());
          ////browser.saveScreenshot();
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot click on ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I enter alphabets only in "([^"]*)" textbox$/, async object => {
  try {
    switch (platform) {
      case "android":
        // Perform for Android
        break;
      case "ios":
        browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .click();
        browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .setValue(new RandExp(/[a-z]{6}/).gen());
        ////browser.saveScreenshot();
        break;
      case "web":
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot click on ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
/*
And statements to select day, year, and month  ---->
*/
When(/^I select "([^"]*)"$/, async object => {
  try {
    switch (platform) {
      case "android":
        if (object === "year") {
          let reqYear = `${fileutils.readPropertyFile("data", object)}`;
          let selectYear = browser.getText(
            fileutils.readPropertyFile(platform, "required.year")
          );
          while (selectYear.indexOf(reqYear) == -1) {
            mobileactions.swipe_up("datepicker.screen");
            selectYear = browser.getText(
              fileutils.readPropertyFile(platform, "required.year")
            );
          }
          let selYear = fileutils
            .readPropertyFile(platform, "select.year")
            .replace("2019", reqYear);
          browser.element(selYear).click();
        } else if (object === "month") {
          let month = browser.getAttribute(
            fileutils.readPropertyFile(platform, "month.text"),
            "content-desc"
          );
          let reqMonth = `${fileutils.readPropertyFile("data", object)}`;
          while (month.split(" ")[1] != reqMonth) {
            browser
              .element(fileutils.readPropertyFile(platform, "previous.month"))
              .click();
            month = browser.getAttribute(
              fileutils.readPropertyFile(platform, "month.text"),
              "content-desc"
            );
          }
        } else if (object === "date") {
          let reqDate = `${fileutils.readPropertyFile("data", object)}`;
          let selDate = fileutils
            .readPropertyFile(platform, object)
            .replace("10", reqDate);
          browser.element(selDate).click();
        } else {
          console.log(object + "not found");
        }
        break;
      case "ios":
        let exists = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .click();
          },
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          console.log("Clicked on " + object);
          ////browser.saveScreenshot();
          if (object === "year") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", object)
            );
          } else if (object === "month") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", object)
            );
          } else if (object === "date") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", object)
            );
          } else {
            console.log(object + "not found");
          }
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot Select " + object + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select "([^"]*)" in "([^"]*)" field$/, async (value, object) => {
  try {
    switch (platform) {
      case "android":
        
          let data = `${fileutils.readPropertyFile("data", value)}`;
          if (object === "year") {
            let reqYear;
            if (value == "past.year") {
              reqYear = (new Date().getFullYear() - 1).toString();
            } else if (value == "current.year") {
              reqYear = new Date().getFullYear().toString();
            } else {
              reqYear = `${fileutils.readPropertyFile("data", object)}`;
            }
            let selectYear = browser.getText(
              fileutils.readPropertyFile(platform, "required.year")
            );
            while (selectYear.indexOf(reqYear) == -1) {
              mobileactions.swipe_up("datepicker.screen");
              selectYear = browser.getText(
                fileutils.readPropertyFile(platform, "required.year")
              );
            }
            let selYear = fileutils
              .readPropertyFile(platform, "select.year")
              .replace("2019", reqYear);
            browser.element(selYear).click();
            let curmonth = parseInt(new Date().getMonth() + 1);
            let curdate = utils.currentDate();
            pastDate =
              ("0" + curmonth.toString()).slice(-2) +
              "/" +
              curdate.split("-")[2] +
              "/" +
              reqYear;
            console.log(pastDate);
          } else if (object === "month") {
            let month = browser.getAttribute(
              fileutils.readPropertyFile(platform, "month.text"),
              "content-desc"
            );
            let reqMonth = `${fileutils.readPropertyFile("data", object)}`;
            while (month.split(" ")[1] != reqMonth) {
              browser
                .element(fileutils.readPropertyFile(platform, "previous.month"))
                .click();
              month = browser.getAttribute(
                fileutils.readPropertyFile(platform, "month.text"),
                "content-desc"
              );
            }
          } else if (object === "date") {
            let reqDate = `${fileutils.readPropertyFile("data", object)}`;
            let selDate = fileutils
              .readPropertyFile(platform, object)
              .replace("10", reqDate);
            browser.element(selDate).click();
          } else if (object === "hour") {
            if (value === "future.time") {
              let exists1 = browser.waitUntil(
                function() {
                  return browser
                    .element(fileutils.readPropertyFile(platform, "pm"))
                    .isVisible();
                },
                timeOutinMs,
                "Error: Element not found"
              );
              if(exists1)
              {
              let finaldata;
              let timeLog = new Date().getHours() + 1;
              if (timeLog >= 12) {
                if (timeLog == 12) {
                  finaldata = timeLog;
                  let PMdata1 = fileutils.readPropertyFile(platform, "pm");
                  $(PMdata1).click();
                } else {
                  finaldata = timeLog - 12;
                  let PMdata1 = fileutils.readPropertyFile(platform, "pm");
                  $(PMdata1).click();
                }
              } else {
                finaldata = timeLog;
                let PMdata12 = fileutils.readPropertyFile(platform, "am");
                $(PMdata12).click();
              }
              data = finaldata;
            }
            } 
            
            else if (value === 'device.future.time') {

         

              let time = browser.getDeviceTime();
             
  
  
              var values = Object.keys(time).map(function(key){
                return time[key];
              });
              
  
  
              let finaldata
              let timeHour = parseInt(values[0].toString().slice(11,13));
              let timeLog = timeHour + 1;
              if (timeLog >= 12) {
                if(timeLog==12){
                  finaldata = timeLog
                  let PMdata1 = fileutils.readPropertyFile(platform, "pm")
                $(PMdata1).click();
                }
                else{
                finaldata = timeLog - 12
                let PMdata1 = fileutils.readPropertyFile(platform, "pm")
                $(PMdata1).click();
                }
              }
              else {
                finaldata = timeLog
                let PMdata12 = fileutils.readPropertyFile(platform, "am")
                $(PMdata12).click();
              }
              data = finaldata
            }
            
            
            
            else if (value === "future.time.24") {
              let finaldata = new Date().getHours();
              data = finaldata + 1;
            } 
            
            else if (value === 'device.future.time.24') {

              let time = browser.getDeviceTime();
              var values = Object.keys(time).map(function(key){
                return time[key];
              });
  
              let finaldata = parseInt(values[0].toString().slice(11,13));
              data = finaldata + 1
            }
            
            
            
            else if (value === "past.hour") {
              let finaldata1;
              let timeLog1 = new Date().getHours() - 1;
              if (timeLog1 > 12) {
                finaldata1 = timeLog1 - 12;
              } else if (timeLog1 == 12) {
                finaldata1 = timeLog1;
              } else {
                finaldata1 = timeLog1;
              }
              data = finaldata1;
            } 
            
            else if (value === 'device.past.hour') {

              let time = browser.getDeviceTime();
              var values = Object.keys(time).map(function(key){
                return time[key];
              });
  
              let finaldata1
              let timeHour = parseInt(values[0].toString().slice(11,13));
              let timeLog1 = timeHour - 1;
              if (timeLog1 > 12) {
                finaldata1 = timeLog1 - 12
              }
              else if (timeLog1 == 12) {
                finaldata1 = timeLog1
              }
              else {
                finaldata1 = timeLog1
              }
              data = finaldata1
            }
            
            else if (value === "past.hour.24") {
              let timeLog1 = new Date().getHours() - 1;
              data = timeLog1;
            } 
            
            else if (value === 'device.past.hour.24') {
              let time = browser.getDeviceTime();
              var values = Object.keys(time).map(function(key){
                return time[key];
              });
              let timeHour = parseInt(values[0].toString().slice(11,13));
              let timeLog1 = timeHour - 1;
              data = timeLog1
            }
            
            
            else {
              data = data;
            }
            pastHour = data;

            browser.pause(1000);
            let hourdata = fileutils
              .readPropertyFile(platform, object)
              .replace("9", data);

            $(hourdata).click();
            if (value == "past.hour") {
              if (pastHour >= 12) {
                let PMdata1 = fileutils.readPropertyFile(platform, "pm");
                $(PMdata1).click();
              } else {
                let PMdata1 = fileutils.readPropertyFile(platform, "am");
                $(PMdata1).click();
              }
            }

            else if (value== "device.past.hour"){
              if(pastHour>=12){
                let PMdata1 = fileutils.readPropertyFile(platform, "pm")
              $(PMdata1).click();
              }
              else{
              let PMdata1 = fileutils.readPropertyFile(platform, "am")
              $(PMdata1).click();
              }
            }
            console.log("Selected " + data + " in " + object + " field");
            ////browser.saveScreenshot();
          } else if (object === "minutes") {
            if (value == "past.minutes") {
              const today = new Date();
              let minutes = today.getMinutes();
              if (minutes >= 55) {
                var minround = Math.floor(minutes / 5) * 5;
                data = minround.toString();
              } else {
                var minround = Math.ceil(minutes / 5) * 5;

                data = minround.toString();
              }
            } 
            else if (value=='device.past.minutes'){

              let time = browser.getDeviceTime();
              var values = Object.keys(time).map(function(key){
                return time[key];
              });
  
              let minutes=parseInt(values[0].toString().slice(14,16));
               if(minutes >= 55)
               {
                 var minround = (Math.floor(minutes/5))*5;
                 data = minround.toString();
               }
               else{
                 var minround = (Math.ceil(minutes/5))*5;
   
               data = minround.toString();
   
               }
             
            }
            
            
            else {
              if (data.indexOf('"') == -1) {
                data = data;
              } else {
                data = `${fileutils.readPropertyFile("data", value)}`
                  .replace(/"/g, "")
                  
              }
            }
            pastMinute = ("00" + data).slice(-2);
            let minutesdata = fileutils
              .readPropertyFile(platform, object)
              .replace("05", data);
            $(minutesdata).click();
            console.log("Selected " + data + " in " + object + " field");
            ////browser.saveScreenshot();
          } else if (object === "am") {
            let AMdata = fileutils
              .readPropertyFile(platform, object)
              .replace("AM", data);
            $(AMdata).click();
            console.log("Selected " + data + " in " + object + " field");
          } else if (object === "pm") {
            let PMdata = fileutils
              .readPropertyFile(platform, object)
              .replace("PM", data);
            $(PMdata).click();
            console.log("Selected " + data + " in " + object + " field");
          } else if (value === "future.time") {
            let finaldata = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, object),
                "value"
              )
            );
            browser
              .element(fileutils.readPropertyFile(platform, object))
              .setValue((finaldata + 1).toString());
            console.log("Selected " + amPMdata + " in " + object + " field");
          } else if (value === "future.year") {
            let finaldata1 = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, object),
                "value"
              )
            );
            browser
              .element(fileutils.readPropertyFile(platform, object))
              .setValue((finaldata1 + 1).toString());
            console.log("Selected " + amPMdata + " in " + object + " field");
          } else if (value === "past.time") {
            let finaldata2 = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, object),
                "value"
              )
            );
            browser
              .element(fileutils.readPropertyFile(platform, object))
              .setValue((finaldata2 - 1).toString());
            console.log("Selected " + amPMdata + " in " + object + " field");
          } else if (value === "current.year") {
            let finaldata2 = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, object),
                "value"
              )
            );
            browser
              .element(fileutils.readPropertyFile(platform, object))
              .setValue((finaldata2 - 1).toString());
            console.log("Selected " + amPMdata + " in " + object + " field");
          } else {
            console.log(object + "not found");
          }
        
        break;
      case "ios":
        let data1 = `${fileutils.readPropertyFile("data", value)}`;
        let exists = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .isVisible();
          },
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          if (value === "future.time") {
            let finaldata;
            let timeLog = new Date().getHours()+1;
            if (timeLog > 12) {
              finaldata = timeLog - 12;
              mobileElementAction.selectValueFromPicker(
                fileutils.readPropertyFile(platform, object),
                finaldata
              );
              console.log(
                "Selected " + (finaldata) + " in " + object + " field"
              );
              let PMdata1 = fileutils.readPropertyFile(platform, "am.pm");
              mobileElementAction.selectValueFromPicker(PMdata1, "PM");
            }
            else if (timeLog == 12) {
              finaldata = timeLog;
              mobileElementAction.selectValueFromPicker(
                fileutils.readPropertyFile(platform, object),
                finaldata
              );
              console.log(
                "Selected " + (finaldata) + " in " + object + " field"
              );
              let PMdata1 = fileutils.readPropertyFile(platform, "am.pm");
              mobileElementAction.selectValueFromPicker(PMdata1, "PM");
            }
             else {
              finaldata = timeLog;
              mobileElementAction.selectValueFromPicker(
                fileutils.readPropertyFile(platform, object),
                finaldata 
              );
              console.log(
                "Selected " + (finaldata ) + " in " + object + " field"
              );
              let PMdata1 = fileutils.readPropertyFile(platform, "am.pm");
              mobileElementAction.selectValueFromPicker(PMdata1, "AM");
            }
          } else if (value === "future.time.24") {
            let finaldata = new Date().getHours();
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              finaldata + 1
            );
            console.log(
              "Selected " + (finaldata + 1) + " in " + object + " field"
            );
          } 
          else if (value === 'device.future.time') {
            let time = browser.getDeviceTime();
            var values = Object.keys(time).map(function(key){
              return time[key];
            });
            let finaldata
            let timeLog = parseInt(values[0].toString().slice(11,13));
         
            if (timeLog >= 12) {
              finaldata = timeLog - 12
             
              mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), (finaldata + 1))
            console.log('Selected ' + (finaldata + 1) + ' in ' + object + ' field');
              let PMdata1 = fileutils.readPropertyFile(platform, "am.pm")
              mobileElementAction.selectValueFromPicker(PMdata1, "PM")
            }

            else {
              finaldata = timeLog
              mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), (finaldata + 1))
            console.log('Selected ' + (finaldata + 1) + ' in ' + object + ' field');
              // let PMdata1 = fileutils.readPropertyFile(platform, "am.pm")
              // mobileElementAction.selectValueFromPicker(PMdata1, "AM")
            }
           
          }
        
          else if (value === 'device.future.time.24') {
            let time = browser.getDeviceTime();
            var values = Object.keys(time).map(function(key){
              return time[key];
            });
            let finaldata = parseInt(values[0].toString().slice(11,13));
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), (finaldata + 1))
            console.log('Selected ' + (finaldata + 1) + ' in ' + object + ' field');
          }
          
          
          else if (value === "future.year") {
            let finaldata1 = new Date().getFullYear();
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              finaldata1 + 1
            );
            console.log(
              "Selected " + (finaldata1 + 1) + " in " + object + " field"
            );
          } else if (value === "past.year") {
            let yearLog = new Date().getFullYear();
            let finaldata3 = yearLog - 1;
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              finaldata3
            );
            console.log("Selected " + finaldata3 + " in " + object + " field");
            let monthLog = new Date().getMonth() + 1;
            let month1= ("0"+monthLog.toString()).slice(-2)
            let dateLog = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, "date"),
                "value"
              )
            );
            pastDate = month1 + "/" + ("0"+dateLog.toString()).slice(-2) + "/" + finaldata3;
            console.log(pastDate);
          } else if (value === "current.year") {
            let finaldata2 = new Date().getFullYear().toString();
            browser
              .element(fileutils.readPropertyFile(platform, object))
              .setValue(finaldata2);
            console.log("Selected " + amPMdata + " in " + object + " field");
          } else if (value === "past.time") {
            let finaldata2 = new Date().getHours()-1;
            let finaldata3 = new Date().getMinutes() - 10;
            let ampm
            if(finaldata2-1 >=12){
              ampm = "PM"
            }
            else{
              ampm = "AM"
            }
            if (finaldata2 > 12) {
              finaldata2 = finaldata2 - 12;
            }
            else if(finaldata2==0){
              finaldata2 = 12;
            } 
            else {
              finaldata2 = finaldata2;
            }
            if (finaldata3 <= 0) {
              finaldata3 = finaldata3 + 60;
            } else {
              finaldata3 = finaldata3;
            }
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              finaldata2
            );
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "minutes"),
              finaldata3
            );
            
            let pmfield = fileutils.readPropertyFile(platform, "am.pm")
                mobileElementAction.selectValueFromPicker(pmfield, ampm)
            console.log(
              "Selected " + (finaldata2 ) + " in " + object + " field"
            );
            let hourLog = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, "hour"),
                "value"
              )
            );
            let minLog = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, "minutes"),
                "value"
              )
            );
            let ampmLog = browser.getAttribute(
              fileutils.readPropertyFile(platform, "am.pm"),
              "value"
            );
            // else if (value === 'past.time') {
            //   let finaldata2 = new Date().getHours()-1;
            //   let finaldata3 = (new Date().getMinutes()) - 10;
            //   let ampm
            //   if(new Date().getHours() >=12){
            //     ampm = "PM"
            //   }
            //   else{
            //     ampm = "AM"
            //   }
            //   if (finaldata2 > 12) {
            //     finaldata2 = finaldata2 - 12;

            //   }
            //   else if(finaldata2<0){
            //     finaldata2=finaldata2+24;

            //   }
            //   else if(finaldata2 ==0){
            //     finaldata2 = finaldata2 + 12;
            //   }
            //   else {
            //     finaldata2 = finaldata2
            //   }
            //   if (finaldata3 <= 0) {
            //     finaldata3 = finaldata3 + 60
            //   }
            //   else {
            //     finaldata3 = finaldata3
            //   }
            //   mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), (finaldata2))
            //   mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "minutes"), (finaldata3))
            //   let pmfield = fileutils.readPropertyFile(platform, "am.pm")
            //     mobileElementAction.selectValueFromPicker(pmfield, ampm)
            //   console.log('Selected ' + (finaldata2 ) + ' in ' + object + ' field');
            //   let hourLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "hour"), "value"))
            //   let minLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "minutes"), "value"))
            //   let ampmLog = browser.getAttribute(fileutils.readPropertyFile(platform, "am.pm"), "value")
            if (parseInt(hourLog) <= 9) {
              if (parseInt(minLog) <= 9) {
                pastTime =
                   hourLog + ":0" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime);
              } else {
                pastTime =
                  hourLog + ":" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime);
              }
            } else {
              if (parseInt(minLog) <= 9) {
                pastTime =
                  hourLog + ":0" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime);
              } else {
                pastTime = hourLog + ":" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime);
              }
            }
          } else if (value === "past.time.24") {
            let finaldata2 = ("0"+((new Date().getHours())-2).toString()).slice(-2);
            let finaldata3 = new Date().getMinutes() - 10;
            if (finaldata3 <= 0) {
              finaldata3 = finaldata3 + 60;
            } else {
              finaldata3 = finaldata3;
            }
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              finaldata2
            );
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, "minutes"),
              finaldata3
            );
            console.log(
              "Selected " + (finaldata2) + " in " + object + " field"
            );
            let hourLog = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, "hour"),
                "value"
              )
            );
            let minLog = parseInt(
              browser.getAttribute(
                fileutils.readPropertyFile(platform, "minutes"),
                "value"
              )
            );
            if (parseInt(hourLog) <= 9) {
              if (parseInt(minLog) <= 9) {
                pastTime24 = "0" + hourLog + ":0" + minLog;
                console.log(pastTime24);
              } else {
                pastTime24 = "0" + hourLog + ":" + minLog;
                console.log(pastTime24);
              }
            } else {
              if (parseInt(minLog) <= 9) {
                pastTime24 = ("0"+hourLog).slice(-2) + ":0" + minLog;
                console.log(pastTime24);
              } else {
                pastTime24 = ("0"+hourLog).slice(-2) + ":" + minLog;
                console.log(pastTime24);
              }
            }
          } 
          
          else if (value === 'device.past.time') {
            let time = browser.getDeviceTime();
            var values = Object.keys(time).map(function(key){
              return time[key];
            });
            let timeHour = parseInt(values[0].toString().slice(11,13));
            let timeMinutes = parseInt(values[0].toString().slice(14,16));
            let finaldata2 =  timeHour - 1;
            let finaldata3 = timeMinutes - 10;
            let ampm
            if(finaldata2 >=12){
              ampm = "PM"
            }
            else{
              ampm = "AM"
            }
            if (finaldata2 > 12) {
              finaldata2 = finaldata2 - 12;
             

            }
            else if(finaldata2<0){
              finaldata2=finaldata2+24;

            }
            else if(finaldata2 ==0){
              finaldata2 = finaldata2 + 12;
            }
            else {
              finaldata2 = finaldata2
            }
            if (finaldata3 <= 0) {
              finaldata3 = finaldata3 + 60
            }
            else {
              finaldata3 = finaldata3
            }
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), (finaldata2))
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "minutes"), (finaldata3))
            let pmfield = fileutils.readPropertyFile(platform, "am.pm")
              mobileElementAction.selectValueFromPicker(pmfield, ampm)
            console.log('Selected ' + (finaldata2 ) + ' in ' + object + ' field');
            let hourLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "hour"), "value"))
            let minLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "minutes"), "value"))
            let ampmLog = browser.getAttribute(fileutils.readPropertyFile(platform, "am.pm"), "value")
            if (parseInt(hourLog) <= 9) {
              if (parseInt(minLog) <= 9) {
                pastTime = "0" + hourLog + ":0" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime)
              }
              else {
                pastTime = "0" + hourLog + ":" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime)
              }
            }
            else {
              if (parseInt(minLog) <= 9) {
                pastTime = hourLog + ":0" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime)
              }
              else {
                pastTime = hourLog + ":" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime)
              }
            }
          }

          else if (value === 'device.current.time') {
            let time = browser.getDeviceTime();
            var values = Object.keys(time).map(function(key){
              return time[key];
            });
            let finaldata2 = parseInt(values[0].toString().slice(11,13));
            let finaldata3 = parseInt(values[0].toString().slice(14,16));
            let ampm
            if(finaldata2 >=12){
              ampm = "PM"
            }
            else{
              ampm = "AM"
            }
            if (finaldata2 > 12) {
              finaldata2 = finaldata2 - 12;
             

            }
            else if(finaldata2<0){
              finaldata2=finaldata2+24;

            }
            else if(finaldata2 ==0){
              finaldata2 = finaldata2 + 12;
            }
            else {
              finaldata2 = finaldata2
            }
            if (finaldata3 <= 0) {
              finaldata3 = finaldata3 + 60
            }
            else {
              finaldata3 = finaldata3
            }
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), (finaldata2))
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "minutes"), (finaldata3))
            let pmfield = fileutils.readPropertyFile(platform, "am.pm")
              mobileElementAction.selectValueFromPicker(pmfield, ampm)
            console.log('Selected ' + (finaldata2 ) + ' in ' + object + ' field');
            let hourLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "hour"), "value"))
            let minLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "minutes"), "value"))
            let ampmLog = browser.getAttribute(fileutils.readPropertyFile(platform, "am.pm"), "value")
            if (parseInt(hourLog) <= 9) {
              if (parseInt(minLog) <= 9) {
                currentTime = hourLog + ":0" + minLog + " " + ampmLog.toLowerCase();
                console.log(currentTime)
              }
              else {
                currentTime = hourLog + ":" + minLog + " " + ampmLog.toLowerCase();
                console.log(currentTime)
              }
            }
            else {
              if (parseInt(minLog) <= 9) {
                currentTime = hourLog + ":0" + minLog + " " + ampmLog.toLowerCase();
                console.log(currentTime)
              }
              else {
                currentTime = hourLog + ":" + minLog + " " + ampmLog.toLowerCase();
                console.log(currentTime)
              }
            }
          }

          else if (value === 'device.past.time.24') {
            let time = browser.getDeviceTime();
            var values = Object.keys(time).map(function(key){
              return time[key];
            });
            let timeHour = parseInt(values[0].toString().slice(11,13));
            let timeMinutes = parseInt(values[0].toString().slice(14,16));
            let finaldata2 = timeHour;
            let finaldata3 = timeMinutes - 10;
            if (finaldata3 <= 0) {
              finaldata3 = finaldata3 + 60
            }
            else {
              finaldata3 = finaldata3
            }
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), (finaldata2 - 2))
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "minutes"), (finaldata3))
            console.log('Selected ' + (finaldata2 - 2) + ' in ' + object + ' field');
            let hourLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "hour"), "value"))
            let minLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "minutes"), "value"))
            if (parseInt(hourLog) <= 9) {
              if (parseInt(minLog) <= 9) {
                pastTime24 = "0" + hourLog + ":0" + minLog;
                console.log(pastTime24)
              }
              else {
                pastTime24 = "0" + hourLog + ":" + minLog;
                console.log(pastTime24)
              }
            }
            else {
              if (parseInt(minLog) <= 9) {
                pastTime24 = hourLog + ":0" + minLog;
                console.log(pastTime24)
              }
              else {
                pastTime24 = hourLog + ":" + minLog;
                console.log(pastTime24)
              }
            }
          }
          else if (value === 'device.past.3hours') {
            let time = browser.getDeviceTime();
            var values = Object.keys(time).map(function(key){
              return time[key];
            });
            let timeHour = parseInt(values[0].toString().slice(11,13));
            let timeMinutes = parseInt(values[0].toString().slice(14,16));
            let finaldata2 =  timeHour - 3;
            let finaldata3 = timeMinutes;
            let ampm
            if(finaldata2 >=12){
              ampm = "PM"
            }
            else{
              ampm = "AM"
            }
            if (finaldata2 > 12) {
              finaldata2 = finaldata2 - 12;
             
            }
            else if(finaldata2<0){
              finaldata2=finaldata2+24;

            }
            else if(finaldata2 ==0){
              finaldata2 = finaldata2 + 12;
            }
            else {
              finaldata2 = finaldata2
            }
             if (finaldata3 <= 0) {
               finaldata3 = finaldata3 + 60
             }
             else {
               finaldata3 = finaldata3
             }
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), (finaldata2))
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "minutes"), (finaldata3))
            let pmfield = fileutils.readPropertyFile(platform, "am.pm")
              mobileElementAction.selectValueFromPicker(pmfield, ampm)
            console.log('Selected ' + (finaldata2 ) + ' in ' + object + ' field');
            let hourLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "hour"), "value"))
            let minLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "minutes"), "value"))
            let ampmLog = browser.getAttribute(fileutils.readPropertyFile(platform, "am.pm"), "value")
            if (parseInt(hourLog) <= 9) {
              if (parseInt(minLog) <= 9) {
                pastTime = "0" + hourLog + ":0" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime)
              }
              else {
                pastTime = "0" + hourLog + ":" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime)
              }
            }
             else {
               if (parseInt(minLog) <= 9) {
                 pastTime = hourLog + ":0" + minLog + " " + ampmLog.toLowerCase();
                 console.log(pastTime)
               }
              else {
                pastTime = hourLog + ":" + minLog + " " + ampmLog.toLowerCase();
                console.log(pastTime)
              }
            }
          }
          else if (value === 'device.current.time.24') {
            let time = browser.getDeviceTime();
            var values = Object.keys(time).map(function(key){
              return time[key];
            });
            let finaldata2 = parseInt(values[0].toString().slice(11,13));
            let finaldata3 = parseInt(values[0].toString().slice(14,16));
            if (finaldata3 <= 0) {
              finaldata3 = finaldata3 + 60
            }
            else {
              finaldata3 = finaldata3
            }
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), finaldata2)
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "minutes"), (finaldata3))
            console.log('Selected ' + finaldata2 + ' in ' + object + ' field');
            let hourLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "hour"), "value"))
            let minLog = parseInt(browser.getAttribute(fileutils.readPropertyFile(platform, "minutes"), "value"))
            if (parseInt(hourLog) <= 9) {
              if (parseInt(minLog) <= 9) {
                currentTime24 = "0" + hourLog + ":0" + minLog;
                console.log(currentTime24)
              }
              else {
                currentTime24 = "0" + hourLog + ":" + minLog;
                console.log(currentTime24)
              }
            }
            else {
              if (parseInt(minLog) <= 9) {
                currentTime24 = hourLog + ":0" + minLog;
                console.log(currentTime24)
              }
              else {
                currentTime24 = hourLog + ":" + minLog;
                console.log(currentTime24)
              }
            }
          }
          
          
          
           else {
            if (data1.indexOf('"') == -1) {
              data1 = data1;
            } else {
              data1 = `${fileutils.readPropertyFile("data", value)}`
                .replace(/"/g, "")
            }
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              data1
            );
            console.log("Selected " + data1 + " from " + object + " field");
            ////browser.saveScreenshot();
          }
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot Select " + object + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
/*
When statement for tapping outside the textbox
*/
When(/^I should scroll up$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code
        break;
      case "ios":
        mobileactions.mobileScroll("up");
        browser.break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot Scroll  ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I tap outside "([^"]*)" (?:button|link|header|field|tab|option|icon|pop-up)$/,
  async object => {
    try {
      switch (platform) {
        case "android":
            browser.pressKeycode(4);
            console.log(` Focussed out of ${object}`);
          // android code
          break;
        case "ios":
          mobileElementAction.tapOutsideElement();
          console.log(` Focussed out of ${object}`);
          ////browser.saveScreenshot();
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot Tap outside  ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I set "([^"]*)"$/, async object => {
  try {
    switch (platform) {
      case "android":
        // android code
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.element("*//XCUIElementTypePickerWheel").isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          const picker = $(fileutils.readPropertyFile(platform, object));
          if (object === "Year")
            mobileElementAction.selectValueFromPicker(picker, Year);
          else if (object === "Month")
            mobileElementAction.selectValueFromPicker(picker, Month);
          else if (object === "Day")
            mobileElementAction.selectValueFromPicker(picker, Day);
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot set  ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I should see the current month calendar$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.elements("~calendar_daylabel_text").isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          console.log("Current month calendar is displayed");
          browser
            .elements("~calendar_daylabel_text")
            .value.forEach(element =>
              console.log(browser.elementIdText(element.ELEMENT).value)
            );
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot find current month");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I tap current date$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        let currDate = new Date().getDate();
        currDate = currDate.toString();
        browser.pause(7000);
        const exists = browser.waitUntil(
          () => browser.elements("~calendar_daylabel_text").isEnabled(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          browser
            .elements(
              "//XCUIElementTypeStaticText[@name='calendar_daylabel_text']"
            )
            .value.forEach(element => {
              const val = browser.elementIdText(element.ELEMENT).value;
              if (currDate === val) {
                const { x } = browser.elementIdLocation(element.ELEMENT).value;
                const { y } = browser.elementIdLocation(element.ELEMENT).value;
                return mobileElementAction.tapByCoordinates(x, y);
              }
            });
          console.log("Clicked on current date");
          browser.saveScreenshot("CurrentDate");
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
When(/^I should see days of the week below the month$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.elements("~calendar_weekday_text").isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          console.log("Days of the week:");
          browser
            .elements("~calendar_weekday_text")
            .value.forEach(element =>
              console.log(browser.elementIdText(element.ELEMENT).value)
            );
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Cannot find week days");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
/*
When statement for verifying valid and invalid email and for alert check
*/
When(
  /^I enter "([^"]*)" into "([^"]*)" textbox for alert verification$/,
  async (value, object) => {
    try {
      switch (platform) {
        case "android":
          // Perform for Android
          break;
        case "ios":
          let val = value;
          if (
            value === "EmailAddress" &&
            object === "Forgot.Password.EmailAddress"
          ) {
            val = EmailAddress;
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            ////browser.saveScreenshot();
          } else if (
            value === "InvalidEmail" &&
            object === "Forgot.Password.EmailAddress"
          ) {
            val = InvalidEmail;
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .click();
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val);
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot click on ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(
  /^the "([^"]*)" (?:button should be|should be) (?:disabled|enabled)$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          let exists1 = browser.waitUntil(
            function() {
              return browser
                .element(fileutils.readPropertyFile(platform, object))
                .isVisible();
            },
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists1) {
            var isEnabled = mobileElementAction.verifyElementEnabled(
              fileutils.readPropertyFile(platform, object)
            );
            if (isEnabled) {
              console.log(object + " is enabled");
            } else {
              console.log(object + " is disabled");
            }
          }
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists) {
            const isEnabled = mobileElementAction.verifyElementEnabled(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            if (isEnabled) {
              console.log(`${object} is enabled`);
            } else {
              console.log(`${object} is disabled`);
            }
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot find  ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "ios", ` Cannot find${object}`);
    }
  }
);
When(/^I add "([^"]*)" voice command$/, async object => {
  try {
    let command;
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        command = object;
        const exists = browser.waitUntil(
          () => browser.execute("mobile: siriCommand", { text: command }),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          console.log(` Logged  ${object}`);
          ////browser.saveScreenshot();
          console.log(browser.contexts());
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot find ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
// ----Tap Hamburger Menu items------
When(/^I tap "([^"]*)" menu item$/, async object => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android element
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          let obj = object;
          if (object.includes(".")) {
            obj = object.replace(/\./g, " ");
            browser
              .elements("~rightmenu_celltitle_text")
              .value.forEach(element => {
                if (obj === browser.elementIdText(element.ELEMENT).value) {
                  return browser.elementIdClick(element.ELEMENT);
                }
              });
          } else {
            browser
              .elements("~rightmenu_celltitle_text")
              .value.forEach(element => {
                if (object === browser.elementIdText(element.ELEMENT).value) {
                  return browser.elementIdClick(element.ELEMENT);
                }
              });
          }
          console.log(`Clicked on ${object}`);
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot click on ${object}${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
Then(/^I should see Siri "([^"]*)" text$/, async object => {
  try {
    switch (platform) {
      case "android":
        browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        console.log(`${object} screen is displayed`);
        ////browser.saveScreenshot();
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
          console.log(
            ` Message displayed${mobileElementAction.getElementText(
              $(fileutils.readPropertyFile(platform, object))
            )}`
          );
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
    console.error(`${object} text is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I swipe "([^"]*)" and hold should show summary for "([^"]*)"$/,
  async (swipeDirection, object) => {
    try {
      let selector;
      switch (platform) {
        case "android":
          // perform operation on android element
          break;
        case "ios":
          selector = $("//XCUIElementTypeCollectionView");
          const exists = browser.waitUntil(
            () =>
              browser.execute(
                "mobile: swipe",
                { direction: swipeDirection },
                { element: selector }
              ),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            console.log(` Swiped ${swipeDirection} the calendar view`);
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot click on ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(
  /^I verify "([^"]*)" (?:text|title|message|header) for "([^"]*)" (?:screen|text|field)$/,
  async (object, screen) => {
    try {
      switch (platform) {
        case "android":
          browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          console.log(`${object} screen is displayed`);
          ////browser.saveScreenshot();
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
            const textmessage = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getText();
            const textFromConfig = appconfig.verifyTextFromConfig(screen);
            assert.strictEqual(
              textmessage,
              textFromConfig,
              `Message displayed: ${textFromConfig}`
            );
            if (textmessage === textFromConfig) {
              console.log(`Message displayed: ${textFromConfig}`);
            }
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
      console.error(`${object} is not displayed`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I should see "([^"]*)" available$/, async listName => {
  try {
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements("~widget_symptomslistcomponentlabel_text")
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const textFromConfig = appconfig.verifyTextFromConfig(listName);
          browser
            .elements("~widget_symptomslistcomponentlabel_text")
            .value.forEach(element => {
              for (let i = 0; i < textFromConfig.length; i += 1) {
                if (
                  textFromConfig[i] ===
                  browser.elementIdText(element.ELEMENT).value
                ) {
                  return console.log(
                    `Symptoms${i}: ${
                      browser.elementIdText(element.ELEMENT).value
                    }`
                  );
                }
              }
            });
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${listName} is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I (?:select|unselect) "([^"]*)" (?:symptom|symptoms) on "([^"]*)"$/,
  async (count, listName) => {
    try {
      switch (platform) {
        case "android":
          // android code here
          break;
        case "ios":
          let counter;
          const exists = browser.waitUntil(
            () =>
              browser
                .elements("~widget_symptomslistcomponentlabel_text")
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            const textFromConfig = appconfig.verifyTextFromConfig(listName);
            if (count === "all") {
              counter = textFromConfig.length;
            } else {
              counter = Number(count);
            }
            browser
              .elements("~widget_symptomslistcomponentlabel_text")
              .value.forEach(element => {
                for (let i = 0; i < counter; i += 1) {
                  if (
                    textFromConfig[i] ===
                    browser.elementIdText(element.ELEMENT).value
                  ) {
                    return browser.elementIdClick(element.ELEMENT);
                  }
                }
              });
          }
          ////browser.saveScreenshot();
          break;
        case "web":
          // web operation
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(`${listName} is never displayed`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I should see all symptoms unselected$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        const isSelected = browser
          .elements(
            "//XCUIElementTypeImage[@name='widget_symptomslistcontainerimage_view']"
          )
          .value.forEach(element =>
            browser.elementIdDisplayed(element.ELEMENT)
          );
        if (!isSelected) {
          console.log("No symptoms are selected");
          ////browser.saveScreenshot();
          break;
        }
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Symptom selected");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^the scale should have range of "([^"]*)"$/, async range => {
  try {
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.elements("~impairment_levellabel_text").isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          let i = 0;
          browser
            .elements("~impairment_levellabel_text")
            .value.forEach(element => {
              i += 1;
              return console.log(
                `Value ${i}: ${browser.elementIdText(element.ELEMENT).value}`
              );
            });
          ////browser.saveScreenshot();
          break;
        }
        break;
      case "web":
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${range} range is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I verify all "([^"]*)" texts for "([^"]*)" field$/,
  async (object, screen) => {
    try {
      switch (platform) {
        case "android":
          // android code here----
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
            const textFromConfig = appconfig.verifyTextFromConfig(screen);
            console.log(textFromConfig);
            browser
              .elements("~impairment_descriptiontext_view")
              .value.forEach(element => {
                for (let i = 0; i < textFromConfig.length; i += 1) {
                  if (
                    textFromConfig[i] ===
                    browser.elementIdText(element.ELEMENT).value
                  ) {
                    return console.log(
                      `Value${i}: ${
                        browser.elementIdText(element.ELEMENT).value
                      }`
                    );
                  }
                }
              });
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          // web operation---
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(`${object} is not displayed`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I verify card title for "([^"]*)"$/, async screen => {
  try {
    switch (platform) {
      case "android":
        // android code here----
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.elements("~siri_celltitle_text").isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const textFromConfig = appconfig.verifyTextFromConfig(screen);
          browser.elements("~siri_celltitle_text").value.forEach(element => {
            for (let i = 0; i < textFromConfig.length; i += 1) {
              if (
                textFromConfig[i] ===
                browser.elementIdText(element.ELEMENT).value
              ) {
                return console.log(
                  `Shortcut title: ${
                    browser.elementIdText(element.ELEMENT).value
                  }`
                );
              }
            }
          });
          browser.elements("~siri_cellsubtitle_text").value.forEach(element => {
            for (let i = 0; i < textFromConfig.length; i += 1) {
              if (
                textFromConfig[i] ===
                browser.elementIdText(element.ELEMENT).value
              ) {
                return console.log(
                  `Shortcut subtitle: ${
                    browser.elementIdText(element.ELEMENT).value
                  }`
                );
              }
            }
          });
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // web operation---
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${screen} screen is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
// For tapping on each slider value
When(/^I tap on all "([^"]*)"$/, async object => {
  try {
    switch (platform) {
      case "android":
        // perform operation on android element
        break;
      case "ios":
        const tapImpairment = function tapImpairment(xpaths) {
          browser.element(xpaths).click();
          const levelText = browser.element(xpaths).getText();
          console.log(`\nSelected Slider value : ${levelText}`);
          const textFromConfig = appconfig.verifyTextFromConfig(
            "ImpairmentScaleValue"
          );
          browser
            .elements("~impairment_descriptiontext_view")
            .value.forEach(element => {
              for (let i = 0; i < 11; i += 1) {
                if (
                  textFromConfig[i] ===
                  browser.elementIdText(element.ELEMENT).value
                ) {
                  console.log(
                    `${"Actual and expected  match \n" + "Actual :"}${
                      browser.elementIdText(element.ELEMENT).value
                    }\n` + `Expected :${textFromConfig[i]}`
                  );
                  break;
                }
              }
            });
        };
        for (let i = 1; i <= 11; i += 1) {
          let xpath = fileutils.readPropertyFile(platform, object);
          xpath = `${xpath}[${String(i)}]`;
          tapImpairment(xpath);
        }
        // Tap on each element from 0-10 , Verify the Slider tap movement,
        // Verify the config texts with actuals
        ////browser.saveScreenshot();
        break;
      case "web":
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
When(/^I should see the "([^"]*)"$/, async object => {
  try {
    switch (platform) {
      case "android":
        expect(
          browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .isExisting()
        );
        console.log(`${object} is visible`);
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          console.log(
            `${object} is visible`,
            `: message displayed: ${mobileElementAction.getElementText(
              browser.element(`${fileutils.readPropertyFile(platform, object)}`)
            )}`
          );
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot find  ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I select "([^"]*)" option on "([^"]*)" screen$/,
  async (option, screen) => {
    try {
      switch (platform) {
        case "android":
          let exists1 = browser.waitUntil(
            function() {
              return browser
                .element(fileutils.readPropertyFile(platform, screen))
                .isVisible();
            },
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            if (
              browser
                .element(fileutils.readPropertyFile(platform, option))
                .getAttribute("checked") == "true"
            ) {
              console.log(
                object + "is already Selected " + " in " + block + " field"
              );
              ////browser.saveScreenshot();
            } else {
              $(fileutils.readPropertyFile(platform, object)).click();
              console.log("Selected " + object + " in " + block + " field");
              ////browser.saveScreenshot();
            }
          }
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, screen)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists) {
            browser
              .element(`${fileutils.readPropertyFile(platform, option)}`)
              .click();
            ////browser.saveScreenshot();
            break;
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot find  ${screen}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
// When Statement to tap on Reports tab
When(/^I click on "([^"]*)" (?:tab|button)$/, async object => {
  try {
    switch (platform) {
      case "android":
        expect(
          browser.element(`${fileutils.readPropertyFile(platform, object)}`)
            .isExisting
        );
        console.log(`${object} is visible`);
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => $(fileutils.readPropertyFile(platform, object)).isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          $(fileutils.readPropertyFile(platform, object)).click();
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot find  ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
// When Statement to tap on Reports tab
When(/^I tap on "([^"]*)" dropdown$/, async object => {
  try {
    switch (platform) {
      case "android":
        expect(
          browser.element(`${fileutils.readPropertyFile(platform, object)}`)
            .isExisting
        );
        console.log(`${object} is visible`);
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .click();
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot find  ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
// When Statement to tap on Reports option in the dropdown
When(/^I select "([^"]*)" from the dropdown$/, async object => {
  try {
    switch (platform) {
      case "android":
        expect(
          browser.element(`${fileutils.readPropertyFile(platform, object)}`)
            .isExisting
        );
        console.log(`${object} is visible`);
        ////browser.saveScreenshot();
        break;
      case "ios":
        const reportoption = browser.element(
          `${fileutils.readPropertyFile(platform, object)}`
        );
        if (reportoption.isVisible()) {
          const reporttext = reportoption.getText();
          console.log("Clicking on", `${reporttext} `, "from the dropdown");
          reportoption.click();
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot find  ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select "([^"]*)" link$/, async linkName => {
  try {
    switch (platform) {
      case "android":
        // android code here-----
        break;
      case "ios":
        const exists = browser.waitUntil(
          () => browser.element("//XCUIElementTypeTextView").isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          let legalcontentlink = await contentful.termsOfUse(
            "legalContent",
            linkName
          );
          legalcontentlink = legalcontentlink.replace(/["']/g, "");
          browser.element(`~${legalcontentlink}`).click();
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
    console.error(`Cannot click ${linkName} link`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I should see "([^"]*)" available on screen$/, async listName => {
  try {
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(`${fileutils.readPropertyFile(platform, listName)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const textFromConfig = appconfig.verifyTextFromConfig(listName);
          browser
            .elements(`${fileutils.readPropertyFile(platform, listName)}`)
            .value.forEach(element => {
              for (let i = 0; i < textFromConfig.length; i += 1) {
                if (textFromConfig[i].includes("Version")) {
                  return console.log(
                    `\n${i}: ${browser.elementIdText(element.ELEMENT).value}`
                  );
                }
                if (
                  textFromConfig[i] ===
                  browser.elementIdText(element.ELEMENT).value
                ) {
                  return console.log(
                    `\n${i}: ${browser.elementIdText(element.ELEMENT).value}`
                  );
                }
              }
            });
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${listName} is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select "([^"]*)" tab on "([^"]*)"$/, async (tab, navigationtab) => {
  try {
    switch (platform) {
      case "android":
        // android code here----
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(
                `${fileutils.readPropertyFile(platform, navigationtab)}`
              )
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          browser
            .elements(`${fileutils.readPropertyFile(platform, navigationtab)}`)
            .value.forEach(element => {
              if (tab === browser.elementIdText(element.ELEMENT).value) {
                return browser.elementIdClick(element.ELEMENT);
              }
            });
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${tab} is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
//
// Verifies data from config matches with data from object(xpath)
//
When(
  /^I verify "([^"]*)" matches with data in "([^"]*)" (?:screen|text|field)$/,
  async (object, screen) => {
    try {
      switch (platform) {
        case "android":
          browser.waitUntil(
            () => $(fileutils.readPropertyFile(platform, object)).isVisible(),
            timeOutinMs,
            "Element not found"
          );
          console.log(`${object} screen is displayed`);
          ////browser.saveScreenshot();
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              $(`${fileutils.readPropertyFile(platform, object)}`).isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            const textmessage = $(
              `${fileutils.readPropertyFile(platform, object)}`
            ).getText();
            const textFromConfig = appconfig.verifyTextFromConfig(screen);
            assert.strictEqual(
              textmessage,
              textFromConfig,
              `Message displayed: ${textFromConfig}`
            );
            if (textmessage === textFromConfig) {
              console.log(`Message displayed: ${textFromConfig}`);
            }
            ////browser.saveScreenshot();
            break;
          }
          break;
        case "Web":
          // web operation
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(`${object} screen is not displayed`);
      //browser.saveScreenshot();
      return assert.strictEqual(
        platform,
        "ios",
        `${object} screen is not displayed`
      );
    }
  }
);
When(
  /^I slide the "([^"]*)" towards "([^"]*)"$/,
  async (slider, swipedirection) => {
    try {
      switch (platform) {
        case "android":
          // android code here
          break;
        case "ios":
          const check = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, slider)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (check) {
            const selector = browser.element(
              `${fileutils.readPropertyFile(platform, slider)}`
            );
            browser.execute("mobile: scroll", {
              direction: swipedirection,
              element: selector.value.ELEMENT
            });
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot slide ${e}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(
  /^I move the "([^"]*)" towards "([^"]*)"$/,
  async (slider, swipedirection) => {
    try {
      switch (platform) {
        case "android":
          // android code here
          break;
        case "ios":
          const check = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, slider)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (check) {
            const selector = browser.element(
              `${fileutils.readPropertyFile(platform, slider)}`
            );
            browser.execute("mobile: swipe", {
              direction: swipedirection,
              element: selector.value.ELEMENT
            });
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot slide ${e}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I swipe left "([^"]*)" screen$/, async object => {
  try {
    switch (platform) {
      case "android":
        mobileactions.swipeLeft(0.85);
        console.log("Swiped Left");
        ////browser.saveScreenshot();
        break;
      case "ios":
        mobileactions.swipeLeft(0.85);
        console.log("Swiped Left");
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot slide ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe right "([^"]*)" screen$/, async object => {
  try {
    switch (platform) {
      case "android":
        mobileactions.swipeRight(0.85);
        console.log("Swiped Right");
        ////browser.saveScreenshot();
        break;
      case "ios":
        mobileactions.swipeRight(0.85);
        console.log("Swiped Right");
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot slide ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe the "([^"]*)" icon$/, async slider => {
  try {
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        const check = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, slider)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (check) {
          browser.touchAction(
            '//XCUIElementTypeImage[@name="editintensity_swipe_icon"]',
            ["press", { action: "moveTo", x: 0, y: 527 }, "release"]
          );
          ////browser.saveScreenshot();
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot slide ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe down the calender$/, async () => {
  try {
    switch (platform) {
      case "android":
        // android operation
        browser.execute("mobile: swipe", { direction: "up" });
        ////browser.saveScreenshot();
        break;
      case "ios":
        browser.execute("mobile: swipe", { direction: "up" });
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot swipe ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I swipe up the calender$/, async () => {
  try {
    switch (platform) {
      case "android":
        browser.execute("mobile: swipe", { direction: "down" });
        ////browser.saveScreenshot();
        break;
      case "ios":
        browser.execute("mobile: swipe", { direction: "down" });
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot swipe ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I should see "([^"]*)" (?:card|cards) added$/, async object => {
  try {
    switch (platform) {
      case "android":
        browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        console.log(`${object} screen is displayed`);
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const cardname = appconfig.verifyTextFromConfig(object);
          browser
            .elements(`${fileutils.readPropertyFile(platform, object)}`)
            .value.forEach(element => {
              for (let i = 0; i < cardname.length; i += 1) {
                if (
                  cardname[i] === browser.elementIdText(element.ELEMENT).value
                ) {
                  return console.log(`${cardname[i]} card is displayed`);
                }
              }
            });
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} card is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^the "([^"]*)" on card should be current time$/, async object => {
  try {
    switch (platform) {
      case "android":
        browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        console.log(`${object} screen is displayed`);
        ////browser.saveScreenshot();
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
          const textmessage = browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .getText();
          const currentime = utils.getcurrenttime();
          if (currentime === textmessage) {
            console.log(`${object} is displayed ${currentime}`);
            break;
          } else {
            console.log(`Time displayed: ${textmessage}`);
          }
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} card is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I move the "([^"]*)" card towards "([^"]*)"$/,
  async (slider, swipedirection) => {
    try {
      switch (platform) {
        case "android":
          // android code here
          break;
        case "ios":
          const check = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, slider)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (check) {
            const cardname = slider.replace(/\./g, " ");
            browser
              .elements(`${fileutils.readPropertyFile(platform, slider)}`)
              .value.forEach(element => {
                const val = browser.elementIdText(element.ELEMENT).value;
                if (val === cardname) {
                  return browser.execute("mobile: swipe", {
                    direction: swipedirection,
                    element: element.value.ELEMENT
                  });
                }
              });
            ////browser.saveScreenshot();
            break;
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot slide ${e}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I select "([^"]*)" card$/, async object => {
  try {
    switch (platform) {
      case "android":
        browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        console.log(`${object} screen is displayed`);
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const cardname = object.replace(/\./g, " ");
          browser
            .elements(`${fileutils.readPropertyFile(platform, object)}`)
            .value.forEach(element => {
              if (
                `${cardname}` === browser.elementIdText(element.ELEMENT).value
              ) {
                return browser.elementIdClick(element.ELEMENT);
              }
            });
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} card is not displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I should see correct order of "([^"]*)" cards$/, async object => {
  try {
    switch (platform) {
      case "android":
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const apparray = [];
          browser
            .elements(`${fileutils.readPropertyFile(platform, object)}`)
            .value.forEach(element =>
              apparray.push(`${browser.elementIdText(element.ELEMENT).value}`)
            );
          const migraineposition = apparray.indexOf("Describe Migraine");
          const medicationpos = apparray.indexOf("Describe Medication");
          if (migraineposition < medicationpos) {
            console.log("Migraine card appears above medication cards");
          }
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Migraine card do not appear above medication cards");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^medication cards should be ordered by "([^"]*)"$/, async object => {
  try {
    switch (platform) {
      case "android":
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const timearray = [];
          browser
            .elements(`${fileutils.readPropertyFile(platform, object)}`)
            .value.forEach(element => {
              const time = `${browser.elementIdText(element.ELEMENT).value}`;
              return timearray.push(`${time}`);
            });
          const boolean = utils.isarraysorted(timearray, timearray);
          if (boolean) {
            console.log("Medication cards are ordered as per time");
          } else {
            console.log("Medication cards are not ordered as per time");
          }
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Migraine card do not appear above medication cards");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I should see correct order of "([^"]*)" tabs$/, async object => {
  try {
    switch (platform) {
      case "android":
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const apparray = [];
          const positionarray = appconfig.verifyTextFromConfig(object);
          browser
            .elements(`${fileutils.readPropertyFile(platform, object)}`)
            .value.forEach(element =>
              apparray.push(`${browser.elementIdText(element.ELEMENT).value}`)
            );
          const isequal =
            positionarray.length === apparray.length &&
            positionarray.every(
              (element, index) => element === apparray[index]
            );
          if (isequal) {
            console.log(
              `Order of tabs is correct \n Expected order : ${positionarray} \n Actual Order: ${apparray}`
            );
          } else {
            console.log(
              `Order of tabs is not correct \n Expected order : ${positionarray} \n Actual Order: ${apparray}`
            );
          }
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error("Migraine card do not appear above medication cards");
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I tap on a "([^"]*)" date$/, async object => {
  try {
    let date;
    switch (platform) {
      case "android":
        // android code here
        break;
      case "ios":
        if (object === "past") {
          date = new Date().getDate() - 1;
          date = date.toString();
        } else {
          date = new Date().getDate() + 1;
          date = date.toString();
        }
        browser.pause(7000);
        const exists = browser.waitUntil(
          () => browser.elements("~calendar_daylabel_text").isEnabled(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          browser
            .elements(
              "//XCUIElementTypeStaticText[@name='calendar_daylabel_text']"
            )
            .value.forEach(element => {
              const val = browser.elementIdText(element.ELEMENT).value;
              if (date === val) {
                const { x } = browser.elementIdLocation(element.ELEMENT).value;
                const { y } = browser.elementIdLocation(element.ELEMENT).value;
                return mobileElementAction.tapByCoordinates(x, y);
              }
            });
          console.log(`Clicked on ${object} date`);
          browser.saveScreenshot("CurrentDate");
        }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`Date is not clicked ${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "ios", " Cannot find date");
  }
});
When(
  /^I select "([^"]*)" card number "([^"]*)"$/,
  async (object, cardnumber) => {
    try {
      switch (platform) {
        case "android":
          browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          console.log(`${object} screen is displayed`);
          ////browser.saveScreenshot();
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .elements(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            const xpath = `(//XCUIElementTypeStaticText[@name='${fileutils.readPropertyFile(
              platform,
              object
            )}'])`;
            const arr = browser
              .elements(`${fileutils.readPropertyFile(platform, object)}`)
              .getText();
            for (let i = 0; i < arr.length; i += 1) {
              const j = i + 1;
              if (`${j}` === `${cardnumber}`) {
                console.log(`${xpath}[${j}]`);
                globalvar = browser.element(`${xpath}[${j}]`).getText();
                browser.element(`${xpath}[${j}]`).click();
                ////browser.saveScreenshot();
                break;
              }
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
      console.error(`Cannot select ${object} card`);
      //browser.saveScreenshot();
      return assert.strictEqual(
        platform,
        "ios",
        `Cannot select ${object} card`
      );
    }
  }
);
When(
  /^I (?:select|unselect) "([^"]*)" option on "([^"]*)"$/,
  async (symptom, listName) => {
    try {
      switch (platform) {
        case "android":
          // android code here
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .elements("~widget_symptomslistcomponentlabel_text")
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            browser
              .elements("~widget_symptomslistcomponentlabel_text")
              .value.forEach(element => {
                if (
                  browser.elementIdText(element.ELEMENT).value === `${symptom}`
                ) {
                  return browser.elementIdClick(element.ELEMENT);
                }
              });
          }
          ////browser.saveScreenshot();
          break;
        case "web":
          // web operation
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(`${listName} is never displayed`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I should see "([^"]*)" based on time of the day$/, async object => {
  try {
    switch (platform) {
      case "android":
        // android code here
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
          let message = browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .getText();
          const textmap = appconfig.verifyTextFromConfig(object);
          const day = "1/1/1970";
          let currentime = utils.getcurrentampmtime();
          currentime = Date.parse(`${day} ${currentime}`);
          const m = message.split(" ")[0];
          const n = message.split(" ")[1];
          message = `${m} ${n}`;
          textmap.forEach((value, key) => {
            const starttime = Date.parse(`${day} ${key.split("-")[0]}`);
            const endtime = Date.parse(`${day} ${key.split("-")[1]}`);
            if (
              `${currentime} >= ${starttime} && ${currentime} <= ${endtime}`
            ) {
              console.log(`${currentime}, ${starttime}, ${endtime}, ${value}`);
              assert.strictEqual(
                `${message}, ${value}, Welcome message: ${value}`
              );
              console.log(`Welcome message: ${value}`);
            }
          });
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} is never displayed`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select a "([^"]*)" from "([^"]*)"$/, async (contentType, object) => {
  try {
    switch (platform) {
      case "android":
        browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        console.log(`${object} screen is displayed`);
        ////browser.saveScreenshot();
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .elements(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          const text = browser.elements(
            `${fileutils.readPropertyFile(platform, object)}`
          ).value.length;
          console.log(`total${text}`);
          const rand = Math.floor(Math.random() * text) + 1;
          console.log(rand);
          const xpath = `(//XCUIElementTypeStaticText[@name='${fileutils.readPropertyFile(
            platform,
            object
          )}'])`;
          while (!browser.element(`${xpath}[${rand}]`).isVisible()) {
            mobileactions.swipeDown(0.35);
          }
          await browser.element(`${xpath}[${rand}]`).click();
          globalvar = await browser.element(`${xpath}[${rand}]`).getText();
          console.log(`Global:${globalvar}`);
          globalarr.push(globalvar);
          console.log(`Globalarr:${globalarr}`);
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
    console.error(`Cannot select ${object} card`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I verify selected "([^"]*)" reflects in "([^"]*)"$/,
  async (item, object) => {
    try {
      switch (platform) {
        case "android":
          //  code
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .elements(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            console.log(`//*[@value='${globalvar}']`);
            if (
              await browser.element(`//*[@value='${globalvar}']`).isVisible()
            ) {
              console.log(`Pass: ${item} : ${globalvar} is selected`);
              ////browser.saveScreenshot();
            } else {
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
      console.error(e);
      //browser.saveScreenshot();
      return assert.strictEqual(
        platform,
        "ios",
        `Cannot select ${object} card`
      );
    }
  }
);
Then(
  /^I verify "([^"]*)" selected in "([^"]*)" reflects in "([^"]*)" screen$/,
  async (item1, item2, object) => {
    try {
      switch (platform) {
        case "android":
          break;
        case "ios":
          let flag;
          const valarr = [];
          const uniquearray = [];
          const check = browser.waitUntil(
            () =>
              browser
                .elements(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (check) {
            const xpath = fileutils.readPropertyFile(platform, object);
            const len = browser.elements(`~${xpath}`).value.length;
            for (let i = 1; i <= len; i += 1) {
              const val = browser
                .element(`(//*[@name='${xpath}'])[${i}]`)
                .getText();
              valarr.push(val);
            }
            valarr.sort();
            globalarr.sort();
            console.log(`Global vars: ${globalarr.sort()}`);
            console.log(`valarr vars: ${valarr.sort()}`);
            for (let h = 0; h < globalarr.length; h += 1) {
              if (uniquearray.indexOf(globalarr[h]) === -1) {
                uniquearray.push(globalarr[h]);
              }
            }
            console.log(`uniquearray vars: ${uniquearray.sort()}`);
            for (let j = 0; j < len; j += 1) {
              if (valarr[j] === uniquearray[j]) {
                flag = 1;
              } else {
                flag = 0;
                break;
              }
            }
            if (flag === 1) {
              console.log(
                `Pass: ${item1} selected in ${item2} reflects in ${object}`
              );
            } else {
              console.log(
                `Fail: ${item1} selected in ${item2} does not matches in ${object}`
              );
            }
          }
          ////browser.saveScreenshot();
          break;
        case "web":
          // web operation
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(`Cannot fetch contentful data: ${e}`);
    }
  }
);
When(
  /^I swipe the "([^"]*)" towards "([^"]*)" and delete$/,
  async (slider, swipedirection) => {
    try {
      switch (platform) {
        case "android":
          // android code here
          break;
        case "ios":
          const check = browser.waitUntil(
            () =>
              browser
                .elements(`${fileutils.readPropertyFile(platform, slider)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (check) {
            globalarr.pop();
            const xpath = `(//*[@name='${fileutils.readPropertyFile(
              platform,
              slider
            )}'])`;
            const len = browser.elements(xpath).value.length;
            console.log(len);
            const selector = browser.element(`${xpath}[${len}]`);
            const textmessage = browser.element(`${xpath}[${len}]`).getText();
            console.log(textmessage);
            browser.execute("mobile: swipe", {
              direction: swipedirection,
              element: selector.value.ELEMENT
            });
            browser.element("~Delete").click();
            if (!browser.element(`~${textmessage}`).isVisible()) {
              console.log(`Pass:${textmessage} deleted successfully`);
              ////browser.saveScreenshot();
            } else {
              console.log(`Fail:${textmessage} not deleted `);
            }
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot slide ${e}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I reopen the app$/, async () => {
  browser.execute("mobile: launchApp", { bundleId: "com.deloitte.lilly.vega" });
  ////browser.saveScreenshot();
  console.log("vega app re-opened");
});
When(
  /^"([^"]*)" (?:link should be|should be) (?:disabled|enabled)$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists1) {
            if (object == "future.dates") {
              const curdate = parseInt(utils.currentDate().split(" ")[0]);
              console.log(curdate);
              const isEnabled = mobileElementAction.verifyElementEnabled(
                `${fileutils.readPropertyFile(platform, object)}`
              );
              if (isEnabled) {
                console.log(`${object} is enabled`);
              } else {
                console.log(`${object} is disabled`);
              }
            } else {
              const isEnabled = mobileElementAction.verifyElementEnabled(
                `${fileutils.readPropertyFile(platform, object)}`
              );
              if (isEnabled) {
                console.log(`${object} is enabled`);
              } else {
                console.log(`${object} is disabled`);
              }
            }
          }
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists) {
            const isEnabled = mobileElementAction.verifyElementEnabled(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            if (isEnabled) {
              console.log(`${object} is enabled`);
            } else {
              console.log(`${object} is disabled`);
            }
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot find  ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(
  /^I should see "([^"]*)" (?:button|field|link) is (?:disabled|enabled)$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists1) {
            const isEnabled = mobileElementAction.verifyElementEnabled(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            if (isEnabled) {
              console.log(`${object} is enabled`);
            } else {
              console.log(`${object} is disabled`);
            }
          }
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists) {
            const isEnabled = mobileElementAction.verifyElementEnabled(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            if (isEnabled) {
              console.log(`${object} is enabled`);
            } else {
              console.log(`${object} is disabled`);
            }
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot find  ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(
  /^I should see "([^"]*)" field filled with registered Email ID$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists1) {
            let regEmailID = `${fileutils.readPropertyFile(
              "data",
              "emailaddress"
            )}`;
            let currentEmail = browser.getText(
              fileutils.readPropertyFile(platform, object)
            );
            if (regEmailID == currentEmail) {
              console.log(`${object} is displaying`);
            } else {
              console.log(`${object} is not displaying`);
            }
          }
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists) {
            let regEmailID = `${fileutils.readPropertyFile(
              "data",
              "emailaddress"
            )}`;
            let currentEmail = browser.getText(
              fileutils.readPropertyFile(platform, object)
            );
            if (regEmailID == currentEmail) {
              console.log(`${object} is displaying`);
            } else {
              console.log(`${object} is not displaying`);
            }
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot find  ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I should see empty "([^"]*)" field$/, async object => {
  try {
    switch (platform) {
      case "android":
        const exists1 = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists1) {
          if (object == "edit.screen.first.name") {
            let fieldName = `${fileutils.readPropertyFile("data", object)}`;
            let emptyfieldtext = browser.getText(
              fileutils.readPropertyFile(platform, object)
            );
            if (fieldName === emptyfieldtext) {
              console.log(`${object} is Empty`);
              mobileactions.hideDeviceKeyboard();
            } else {
              console.log(`${object} is not Empty`);
              mobileactions.hideDeviceKeyboard();
            }
          } else if (object == "edit.screen.last.name") {
            let fieldName = `${fileutils.readPropertyFile("data", object)}`;
            let emptyfieldtext = browser.getText(
              fileutils.readPropertyFile(platform, object)
            );
            if (fieldName === emptyfieldtext) {
              console.log(`${object} is Empty`);
              mobileactions.hideDeviceKeyboard();
            } else {
              console.log(`${object} is not Empty`);
              mobileactions.hideDeviceKeyboard();
            }
          } else {
            let regEmailID1 = `${fileutils.readPropertyFile("data", object)}`;
            // console.log(regEmailID1)
            let currentEmail1 = browser.getText(
              fileutils.readPropertyFile(platform, object)
            );
            if (regEmailID1 === currentEmail1) {
              console.log(`${object} is Empty`);
              mobileactions.hideDeviceKeyboard();
            } else {
              console.log(`${object} is not Empty`);
              mobileactions.hideDeviceKeyboard();
            }
          }
        }
        break;
      case "ios":
        const exists = browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Error: Element not found"
        );
        if (exists) {
          if (object == "edit.screen.first.name") {
            let fieldName = `${fileutils.readPropertyFile("data", object)}`;
            let emptyfieldtext = browser.getText(
              fileutils.readPropertyFile(platform, object)
            );
            if (fieldName === emptyfieldtext) {
              console.log(`${object} is Empty`);
            } else {
              console.log(`${object} is not Empty`);
            }
          } else if (object == "edit.screen.last.name") {
            let fieldName = `${fileutils.readPropertyFile("data", object)}`;
            let emptyfieldtext = browser.getText(
              fileutils.readPropertyFile(platform, object)
            );
            if (fieldName === emptyfieldtext) {
              console.log(`${object} is Empty`);
            } else {
              console.log(`${object} is not Empty`);
            }
          } else {
            let regEmailID1 = `${fileutils.readPropertyFile("data", object)}`;
            let currentEmail1 = browser.getText(
              fileutils.readPropertyFile(platform, object)
            );
            if (regEmailID1 === currentEmail1) {
              console.log(`${object} is Empty`);
            } else {
              console.log(`${object} is not Empty`);
            }
          }
        }
        // }
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot find Empty ${object}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I should see "([^"]*)" (?:default value|value) in the field$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          const exists1 = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists1) {
            const isEnabled = mobileElementAction.verifyElementEnabled(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            if (isEnabled) {
              console.log(`${object} is enabled`);
            } else {
              console.log(`${object} is disabled`);
            }
          }
          break;
        case "ios":
          const exists = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Error: Element not found"
          );
          if (exists) {
            const isEnabled = mobileElementAction.verifyElementEnabled(
              `${fileutils.readPropertyFile(platform, object)}`
            );
            if (isEnabled) {
              console.log(`${object} is enabled`);
            } else {
              console.log(`${object} is disabled`);
            }
          }
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot find  ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(
  /^I should see "([^"]*)" (?:accepted|unaccepted) in "([^"]*)" field$/,
  async (value, object) => {
    try {
      switch (platform) {
        case "android":
          const val = `${fileutils.readPropertyFile("data", value)}`;
          const textmessage1 = browser.getText(
            fileutils.readPropertyFile(platform, object)
          );
          if (val === textmessage1) {
            console.log(`Accepted: ${val}`);
          } else {
            console.error(`Not accepts: ${val}`);
          }
          ////browser.saveScreenshot();
          break;
        case "ios":
          const val1 = `${fileutils.readPropertyFile("data", value)}`;
          browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .click();
          const textmessage = browser.getText(
            fileutils.readPropertyFile(platform, object)
          );
          if (val1 === textmessage) {
            console.log(`Accepted: ${val1}`);
          } else {
            console.error(`Not accepts: ${val1}`);
          }
          ////browser.saveScreenshot();
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
  }
);
When(
  /^I should see "([^"]*)" (?:masked|unmasked) in "([^"]*)" field$/,
  async (value, object) => {
    try {
      switch (platform) {
        case "android":
          const textmessage1 = browser.getText(
            fileutils.readPropertyFile(platform, object)
          );
          var k = 0;
          for (var i = 0; i < textmessage1.length; i++) {
            var j = textmessage1.charAt(i);
            if (j === "•") {
              k++;
            }
          }
          if (k === textmessage1.length) {
            console.log(`Password Text is masked: ${textmessage1}`);
          } else {
            console.log(`Password Text is unmasked: ${textmessage1}`);
          }
          break;
        case "ios":
          const textmessage = browser.getText(
            fileutils.readPropertyFile(platform, object)
          );
          var k = 0;
          for (var i = 0; i < textmessage.length; i++) {
            var j = textmessage.charAt(i);
            if (j === "•") {
              k++;
            }
          }
          if (k === textmessage.length) {
            console.log(`Password Text is masked: ${textmessage}`);
          } else {
            console.log(`Password Text is unmasked: ${textmessage}`);
          }
          ////browser.saveScreenshot();
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
  }
);
When(
  /^I should see "([^"]*)" in "([^"]*)" field in MM-DD-YYYY format$/,
  async (value, object) => {
    try {
      switch (platform) {
        case "android":
          let appdate = browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .getAttribute("text");
            let appvalue
            if(value=='past.date'){
              appvalue = pastDate;
            }
            else{
              appvalue = fileutils.readPropertyFile("data", value);
            }
          if (appdate == appvalue) {
            if (moment(appdate, "MM/DD/YYYY")) {
              console.log(value+"-"+appvalue +"valid format");
            } else {
              console.log(value+"-"+appvalue +"invalid format");
            }
          } else {
            console.log(value + " Not Entered");
          }
          ////browser.saveScreenshot();
          break;
        case "ios":
          // ios code here
          let appdate1 = browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .getText();
          let appvalue1
          if(value=='past.date'){
            appvalue1 = pastDate;
          }
          else{
            appvalue1 = fileutils.readPropertyFile("data", value);
          }
         

          console.log("App Date is " + appdate1);
          if (appdate1 == appvalue1) {
            if (moment(appdate1, "MM/DD/YYYY")) {
              console.log(value+"-"+appvalue1 + " is in valid format");
            } else {
              console.log(value +"-"+appvalue1+ " is in invalid format");
            }
          } else {
            console.log(value + " Not Entered");
          }
          ////browser.saveScreenshot();
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
  }
);
When(/^I should see "([^"]*)" in MM-DD-YYYY format$/, async object => {
  try {
    switch (platform) {
      case "android":
        let appdate = browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .getAttribute("text");
        if (moment(appdate, "MM/DD/YYYY")) {
          console.log("valid format");
        } else {
          console.log("invalid format");
        }
        ////browser.saveScreenshot();
        break;
      case "ios":
        // ios code here
        let appdate1 = browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .getText();
        console.log("App Date is " + appdate1);
        if (moment(appdate1, "MM/DD/YYYY")) {
          console.log("valid format");
        } else {
          console.log("invalid format");
        }
        ////browser.saveScreenshot();
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
    return assert.strictEqual(platform, "ios", " Cannot find date");
  }
});
When(/^I should see CurrentDate in "([^"]*)" field$/, async object => {
  try {
    switch (platform) {
      case "android":
        let splitcurrentDate = new Date()
          .toISOString()
          .slice(0, 10)
          .split("-");
        let currYear = splitcurrentDate[0];
        let currMonth = splitcurrentDate[1];
        let currDay = splitcurrentDate[2];
        let appdate = browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .getAttribute("text");
        console.log("App Date is " + appdate);
        let splitappdate = appdate.split("/");
        let appmonth = splitappdate[0];
        let appday = splitappdate[1];
        let appyear = splitappdate[2];
        expect(appmonth).to.equal(currMonth);
        expect(appday).to.equal(currDay);
        expect(appyear).to.equal(currYear);
        console.log("Verified current Date");
        ////browser.saveScreenshot();
        break;
      case "ios":
        // ios code here
        let splitcurrentDate1 = new Date()
          .toISOString()
          .slice(0, 10)
          .split("-");
        let currYear1 = splitcurrentDate1[0];
        let currMonth1 = splitcurrentDate1[1];
        let currDay1 = splitcurrentDate1[2];
        console.log(
          "Current Date is " + currMonth1 + "/" + currDay1 + "/" + currYear1
        );
        let appdate1 = browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .getAttribute("value");
        console.log("App Date is " + appdate1);
        let splitappdate1 = appdate1.split("/");
        let appmonth1 = splitappdate1[0];
        let appday1 = splitappdate1[1];
        let appyear1 = splitappdate1[2];
        expect(appmonth1).to.equal(currMonth1);
        expect(appday1).to.equal(currDay1);
        expect(appyear1).to.equal(currYear1);
        console.log("Verified current Date");
        ////browser.saveScreenshot();
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
When(/^I select "([^"]*)" in "([^"]*)" List$/, async (value, object) => {
  try {
    switch (platform) {
      case "android":
        if (object === "year.of.birth") {
          let reqYear = `${fileutils.readPropertyFile("data", value)}`;
          let selectYear = browser.getText(
            fileutils.readPropertyFile(platform, object)
          );
          let selectedYear = browser.getText(
            fileutils.readPropertyFile(platform, "year")
          );
          if (selectedYear < reqYear) {
            while (selectYear.indexOf(reqYear) == -1) {
              mobileactions.swipe_down("datepicker.screen");
              selectYear = browser.getText(
                fileutils.readPropertyFile(platform, object)
              );
            }
            let selYear = fileutils
              .readPropertyFile(platform, "select.year")
              .replace("2019", reqYear);
            browser.element(selYear).click();
          } else {
            while (selectYear.indexOf(reqYear) == -1) {
              mobileactions.swipe_up("datepicker.screen");
              selectYear = browser.getText(
                fileutils.readPropertyFile(platform, object)
              );
            }
            let selYear = fileutils
              .readPropertyFile(platform, "select.year")
              .replace("2019", reqYear);
            browser.element(selYear).click();
          }
        } else if (object === "month") {
          let month = browser.getAttribute(
            fileutils.readPropertyFile(platform, "month.text"),
            "content-desc"
          );
          let val = `${fileutils.readPropertyFile("data", value)}`;
          while (month.split(" ")[1] != val) {
            browser
              .element(fileutils.readPropertyFile(platform, "previous.month"))
              .click();
            month = browser.getAttribute(
              fileutils.readPropertyFile(platform, "month.text"),
              "content-desc"
            );
          }
        } else if (object === "date") {
          let reqDate = `${fileutils.readPropertyFile("data", object)}`;
          let selDate = fileutils
            .readPropertyFile(platform, object)
            .replace("10", reqDate);
          browser.element(selDate).click();
        } else {
          console.log(object + "not found");
        }
        break;
      case "ios":
        let exists = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .click();
          },
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          console.log("Clicked on " + object);
          ////browser.saveScreenshot();
        }
        if (object === "year") {
          mobileElementAction.selectValueFromPicker(
            fileutils.readPropertyFile(platform, object),
            fileutils.readPropertyFile("data", value)
          );
        } else if (object === "month") {
          mobileElementAction.selectValueFromPicker(
            fileutils.readPropertyFile(platform, object),
            fileutils.readPropertyFile("data", value)
          );
        } else if (object === "date") {
          mobileElementAction.selectValueFromPicker(
            fileutils.readPropertyFile(platform, object),
            fileutils.readPropertyFile("data", object)
          );
        } else {
          console.log(object + "not found");
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot select " + object + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I clear space$/, async () => {
  try {
    switch (platform) {
      case "android":
        mobileactions.hideDeviceKeyboard();
        ////browser.saveScreenshot();
        break;
      case "ios":
        browser
          .element(`${fileutils.readPropertyFile(platform, "backspace")}`)
          .click();
        console.log(`cleared  space`);
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot find  ${object}\n${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I tap on "([^"]*)" button on (?:Lilly Answer Center screen|Manufacturer screen|Unique Device Identifier screen|Login Instructions screen)$/,
  async function(object) {
    try {
      switch (platform) {
        case "android":
          let exists1 = browser.waitUntil(
            function() {
              return browser
                .element(fileutils.readPropertyFile(platform, object))
                .click();
            },
            timeOutinMs,
            "Element not found"
          );
          if (exists1) {
            console.log("Clicked on " + object);
            ////browser.saveScreenshot();
          }
          break;
        case "ios":
          let exists = browser.waitUntil(
            function() {
              return browser
                .element(fileutils.readPropertyFile(platform, object))
                .click();
            },
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            console.log("Clicked on " + object);
            ////browser.saveScreenshot();
          }
          break;
        case "web":
          // perform operation on web element
          break;
      }
    } catch (e) {
      console.error(" Cannot click on " + object + e);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);

When(/^I navigate to back application$/, async function() {
  try {
    switch (platform) {
      case "android":
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          browser.pressKeycode(4);
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

When(/^I Swipe Down "([^"]*)"$/, async function(object) {
  try {
    switch (platform) {
      case "android":
        try {
          while (
            !browser.isVisible(fileutils.readPropertyFile(platform, object))
          ) {
            mobileactions.swipeDown(0.39);
          }
          if (browser.isVisible(fileutils.readPropertyFile(platform, object))) {
            console.log("Object is found");
          }
        } catch (e) {
          console.error(object + " is not displayed");
        }
        ////browser.saveScreenshot();
        break;
      case "ios":
        try {
          //  mobileactions.swipeDown(0.40);

          while (
            !browser.isVisible(fileutils.readPropertyFile(platform, object))
          ) {
            // while (!browser.isVisible(`${fileutils.readPropertyFile(platform, 'you.have.reached.end')}`)){
            mobileactions.swipeDown(0.4);
          }
          if (browser.isVisible(fileutils.readPropertyFile(platform, object))) {
            console.log("Object is found");
          }
        } catch (e) {
          console.error(object + " is not displayed");
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot swipe " + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I selected "([^"]*)"$/, async function(object) {
  try {
    switch (platform) {
      case "android":
        expect(
          browser.element(fileutils.readPropertyFile(platform, object))
            .isExisting
        );
        console.log(object + " is visible");
        ////browser.saveScreenshot();
        break;
      case "ios":
        let exits = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .click();
          },
          timeOutinMs,
          "Error: Element not found"
        );
        if (exits) {
          console.log(object + " is selected");
        } else {
          console.log("Already selected");
        }
        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error(" Cannot find  " + object);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I unselected "([^"]*)"$/, async function(object) {
  try {
    switch (platform) {
      case "android":
        expect(
          browser.element(fileutils.readPropertyFile(platform, object))
            .isExisting
        );
        console.log(object + " is visible");
        ////browser.saveScreenshot();
        break;
      case "ios":
        let exits = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .click();
          },
          timeOutinMs,
          "Error: Element not found"
        );
        if (exits) {
          console.log(object + " is unselected");
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot find  " + object);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select "([^"]*)" from picker$/, async function(object) {
  try {
    switch (platform) {
      case "android":
        let exists1 = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .click();
          },
          timeOutinMs,
          "Element not found"
        );
        if (exists1) {
          console.log("Clicked on " + object);
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        let breakfast = browser.element(
          fileutils.readPropertyFile(platform, "breakfast")
        );
        let lunch = browser.element(
          fileutils.readPropertyFile(platform, "lunch")
        );
        let dinner = browser.element(
          fileutils.readPropertyFile(platform, "dinner")
        );
        let bedtime = browser.element(
          fileutils.readPropertyFile(platform, "bedtime")
        );
        if (breakfast.isVisible()) {
          mobileElementAction.selectValueFromPicker(
            fileutils.readPropertyFile(platform, object),
            "ap"
          );
        } else if (lunch.isVisible()) {
          console.log("lunchtime");
          mobileElementAction.selectValueFromPicker(
            fileutils.readPropertyFile(platform, object),
            "PM"
          );
        } else if (dinner.isVisible()) {
          console.log("dinnertime");
          mobileElementAction.selectValueFromPicker(
            fileutils.readPropertyFile(platform, object),
            "PM"
          );
        } else if (bedtime.isVisible()) {
          console.log("bedtime");
          mobileElementAction.selectValueFromPicker(
            fileutils.readPropertyFile(platform, object),
            "PM"
          );
        } else {
          console.error("timeformat is" + "24 format");
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot find  " + object);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select "([^"]*)" from timepicker$/, async function(object) {
  try {
    switch (platform) {
      case "android":
        let exists1 = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .click();
          },
          timeOutinMs,
          "Element not found"
        );
        if (exists1) {
          console.log("Clicked on " + object);
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        let breakfast = browser.element(
          fileutils.readPropertyFile(platform, "Breakfast")
        );
        let lunch = browser.element(
          fileutils.readPropertyFile(platform, "Lunch")
        );
        let dinner = browser.element(
          fileutils.readPropertyFile(platform, "Dinner")
        );
        let bedtime = browser.element(
          fileutils.readPropertyFile(platform, "Bedtime")
        );
        if (breakfast.isVisible()) {
          if (object === "Hour") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "breakfasthour")
            );
          } else if (object === "Minutes") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "breakfastminutes")
            );
          } else {
            console.log("no breakfasttime");
          }
        } else if (lunch.isVisible()) {
          if (object === "Hour") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "lunchtimehour")
            );
          } else if (object === "Minutes") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "lunchtimeminutes")
            );
          } else {
            console.log("no lunchtime");
          }
        } else if (dinner.isVisible()) {
          if (object === "Hour") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "dinnertimehour")
            );
          } else if (object === "Minutes") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "dinnertimeminutes")
            );
          } else {
          }
        } else if (bedtime.isVisible()) {
          if (object === "Hour") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "bedtimehour")
            );
          } else if (object === "Minutes") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "bedtimeminutes")
            );
          } else {
          }
        } else {
          console.log("object is not found");
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot click on " + object + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select "([^"]*)" from timepicker24hrs$/, async function(object) {
  try {
    switch (platform) {
      case "android":
        let exists1 = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .click();
          },
          timeOutinMs,
          "Element not found"
        );
        if (exists1) {
          console.log("Clicked on " + object);
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        let breakfast = browser.element(
          fileutils.readPropertyFile(platform, "Breakfast")
        );
        let lunch = browser.element(
          fileutils.readPropertyFile(platform, "Lunch")
        );
        let dinner = browser.element(
          fileutils.readPropertyFile(platform, "Dinner")
        );
        let bedtime = browser.element(
          fileutils.readPropertyFile(platform, "Bedtime")
        );
        if (breakfast.isVisible()) {
          if (object === "Hour") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "breakfasthour24")
            );
          } else if (object === "Minutes") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "breakfastminutes24")
            );
          } else {
            console.log("no breakfasttime");
          }
        } else if (lunch.isVisible()) {
          if (object === "Hour") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "lunchtimehour24")
            );
          } else if (object === "Minutes") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "lunchtimeminutes24")
            );
          } else {
            console.log("no lunchtime");
          }
        } else if (dinner.isVisible()) {
          if (object === "Hour") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "dinnertimehour24")
            );
          } else if (object === "Minutes") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "dinnertimeminutes24")
            );
          } else {
          }
        } else if (bedtime.isVisible()) {
          if (object === "Hour") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "bedtimehour24")
            );
          } else if (object === "Minutes") {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "bedtimeminutes24")
            );
          } else {
          }
        } else {
          console.log("object is not found");
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot click on " + object + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select "([^"]*)" from reminderpicker$/, async function(object) {
  try {
    switch (platform) {
      case "android":
        let exists1 = browser.waitUntil(
          function() {},
          timeOutinMs,
          "Element not found"
        );
        if (exists1) {
          ////browser.saveScreenshot();
        }
        break;
      case "ios":
        let breakfast = browser.element(
          fileutils.readPropertyFile(platform, "Breakfast")
        );
        let lunch = browser.element(
          fileutils.readPropertyFile(platform, "Lunch")
        );
        let dinner = browser.element(
          fileutils.readPropertyFile(platform, "Dinner")
        );
        let bedtime = browser.element(
          fileutils.readPropertyFile(platform, "Bedtime")
        );
        if (breakfast.isVisible()) {
          if (
            fileutils.readPropertyFile("data", "breakfastreminder") ===
            "5 minutes before"
          ) {
            console.log("breakfast reminder");
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "breakfastreminder")
            );
          }
        } else if (lunch.isVisible()) {
          if (
            fileutils.readPropertyFile("data", "lunchreminder") ===
            "15 minutes before"
          ) {
            console.log("lunch reminder");
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "lunchreminder")
            );
          }
        } else if (dinner.isVisible()) {
          if (
            fileutils.readPropertyFile("data", "dinnerreminder") ===
            "30 minutes before"
          ) {
            console.log("dinner reminder");
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "dinnerreminder")
            );
          }
        } else if (bedtime.isVisible()) {
          if (
            fileutils.readPropertyFile("data", "bedtimereminder") ===
            "1 Hour before"
          ) {
            console.log("bedtime reminder");
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", "bedtimereminder")
            );
          }
        } else {
          console.log("no reminder");
        }
        browser.pause(1000);
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I select "([^"]*)" in "([^"]*)" field in "([^"]*)" block$/,
  async (value, object, block) => {
    try {
      switch (platform) {
        case "android":
        //android code here
        case "ios":
          let exists = browser.waitUntil(
            function() {
              return browser
                .element(fileutils.readPropertyFile(platform, block))
                .isVisible();
            },
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            if (
              `${fileutils.readPropertyFile("data", value)}`.indexOf('"') == -1
            ) {
              mobileElementAction.selectValueFromPicker(
                fileutils.readPropertyFile(platform, object),
                fileutils.readPropertyFile("data", value)
              );
              console.log(
                "Selected " +
                  fileutils.readPropertyFile("data", value) +
                  " in " +
                  object +
                  " field"
              );
              ////browser.saveScreenshot();
            } else {
              let data = `${fileutils.readPropertyFile("data", value)}`.replace(
                /"/g,
                ""
              );
              mobileElementAction.selectValueFromPicker(
                fileutils.readPropertyFile(platform, object),
                data
              );
              console.log("Selected " + data + " in " + object + " field");
              ////browser.saveScreenshot();
            }
          }
          break;
        case "web":
          // perform operation on web element
          break;
      }
    } catch (e) {
      console.error(" Cannot select " + object + e);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I hide device keyboard$/, async () => {
  try {
    switch (platform) {
      case "android":
        if (browser.isKeyboardShown()) {
          console.log("keyboard is shown");
          mobileactions.hideDeviceKeyboard();
          console.log("hidden");
        } else {
          console.log("no keyboard");
        }
        break;
      case "ios":
        if (browser.isKeyboardShown()) {
          console.log("keyboard is shown");
          mobileactions.hideDeviceKeyboardIOS();
          console.log("hidden");
        } else {
          console.log("no keyboard");
        }
        break;
    }
  } catch (e) {
    console.log("Cannot hide keyboard" + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I choose "([^"]*)" option as "([^"]*)"$/, async (object, value) => {
  try {
    switch (platform) {
      case "android":
        browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .isVisible();
          },
          timeOutinMs,
          "Element not found"
        );
        let list = $$(fileutils.readPropertyFile(platform, "list.item"));
        var index;
        for (index = 0; index < list.length; index++) {
          if (index == value) {
            list[index].click();
            break;
          }
        }
        break;
      case "ios":
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot choose " + object + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I should clear "([^"]*)" in field$/, async object => {
  try {
    switch (platform) {
      case "android":
        browser.waitUntil(
          () =>
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .isVisible(),
          timeOutinMs,
          "Element not found"
        );
        mobileElementAction.clearTextBox(
          `${fileutils.readPropertyFile(platform, object)}`
        );
        ////browser.saveScreenshot();
        break;
      case "ios":
        break;
      case "web":
        // perform operation on web element
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(` Cannot clear  ${object}\n${e}`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I select "([^"]*)" in "([^"]*)" block$/, async (text, checkbox) => {
  try {
    switch (platform) {
      case "android":
        let exists1 = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, text))
              .isVisible();
          },
          timeOutinMs,
          "Element not found"
        );
        if (exists1) {
          if (
            browser
              .element(fileutils.readPropertyFile(platform, object))
              .getAttribute("checked") == "true"
          ) {
            console.log(
              object + "is already Selected " + " in " + block + " field"
            );
            ////browser.saveScreenshot();
          } else {
            $(fileutils.readPropertyFile(platform, object)).click();
            console.log("Selected " + object + " in " + block + " field");
            ////browser.saveScreenshot();
          }
        }
      case "ios":
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot click on " + object + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I Swipe Down till "([^"]*)" in "([^"]*)"$/, async function(
  object,
  value
) {
  try {
    switch (platform) {
      case "android":
        try {
          while (
            !browser.isVisible(fileutils.readPropertyFile(platform, object))
          ) {
            mobileactions.swipe_down(value);
          }
        } catch (e) {
          console.error(object + " is not displayed");
        }
        mobileactions.swipe_down(value);
        console.log(object + " is found");
        ////browser.saveScreenshot();
        break;
      case "ios":
        try {
          //mobileactions.swipeDown(0.60);
          while (
            !browser.isVisible(fileutils.readPropertyFile(platform, object))
          ) {
            mobileactions.swipeDown(0.4);
          }
          if (browser.isVisible(fileutils.readPropertyFile(platform, object))) {
            console.log("Object is found");
          }
        } catch (e) {
          console.error(object + " is not displayed");
        }
        ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot swipe " + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(/^I uninstall app$/, async () => {
  try {
    switch (platform) {
      case "android":
        while (browser.getCurrentPackage() == "com.lilly.ddcs.madelyne") {
          //browser.removeApp(bundleId);
          browser.removeApp("com.lilly.ddcs.madelyne");
        }
        console.log("Uninstalled application ");
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
When(/^I reinstall app$/, async () => {
  try {
    switch (platform) {
      case "android":
        while (browser.getCurrentPackage() != "com.lilly.ddcs.madelyne") {
          //browser.installApp(path);
          browser.installApp(
            "/Users/sureshvpatil/Downloads/Lilly_Framework/apps/Tempo_0.3.1.apk"
          );
          browser.pause(2000);
          console.log("Reinstalled application ");
          browser.launch();
          // browser.acceptAlert();
          // browser.element(fileutils.readPropertyFile(platform, "allow.notification")).click();
          console.log("Launched the application ");
          browser.pause(5000);
          // browser.startActivity("com.google.android.packageinstaller", "com.android.packageinstaller.permission.ui.GrantPermissionsActivity");
          // browser.element(fileutils.readPropertyFile(platform, "allow.notification")).click();
        }
        console.log("Clicked on Allow button");
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
When(/^I should see CurrentTime in "([^"]*)" field$/, async object => {
  try {
    switch (platform) {
      case "android":
        let currenttime1 = utils.getcurrenttime1();
        let ampm = currenttime1.split(" ")[1];
        let curtime = currenttime1.replace(ampm, ampm.toLocaleLowerCase());
        let apptime1 = browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .getAttribute("text");
        console.log(apptime1 + " " + curtime);
        if (curtime === apptime1) {
          console.log("current time is displayed");
        } else {
          console.log("current time not displayed");
        }
        ////browser.saveScreenshot();
        break;
      case "ios":
        // ios code here
        let currenttime = utils.getcurrenttime1();
        let ampm1 = currenttime.split(" ")[1];
        let curtime1 = currenttime.replace(ampm1, ampm1.toLocaleLowerCase());
        let apptime = browser
          .element(`${fileutils.readPropertyFile(platform, object)}`)
          .getAttribute("value");
        console.log(apptime + " " + curtime1);
        if (curtime1 === apptime) {
          console.log("current time is displayed");
        } else {
          console.log("current time not displayed");
        }
        ////browser.saveScreenshot();
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
When(
  /^I should see CurrentTime in 24 hour format in "([^"]*)" field$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          let currenttime1 = utils.getcurrenttime24();
          let apptime1 = browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .getAttribute("text");
          console.log("Current time is displayed :" + apptime1);
          ////browser.saveScreenshot();
          break;
        case "ios":
          // ios code here
          let currenttime = utils.getcurrenttime24();
          let apptime = browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .getAttribute("value");
          console.log(apptime + "  " + currenttime);
          if (currenttime === apptime) {
            console.log("current time is displayed");
          } else {
            console.log("current time not displayed");
          }
          ////browser.saveScreenshot();
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
  }
);
When(/^I select CurrentYear in "([^"]*)" List$/, async object => {
  try {
    switch (platform) {
      case "android":
        break;
      case "ios":
        let CurrentYear = utils.getCurrentYear();
        if (object === "year") {
          mobileElementAction.selectValueFromPicker(
            fileutils.readPropertyFile(platform, object),
            CurrentYear
          );
        }
        ////browser.saveScreenshot();
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
When(
  /^I should (?:not see|see) "([^"]*)" in "([^"]*)" field$/,
  async (value, object) => {
    try {
      let val = value;
      switch (platform) {
        case "android":
          const exists = browser.waitUntil(
            () =>
              browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .isVisible(),
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            if (val == "space") {
              const space = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (space === "\t") {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            } else if (value == "past.date") {
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue == pastDate) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            } else if (object == "mg.dl.logbook.screen") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            } else if (object == "grams.logbook.screen") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            } else if (object == "mg.dl.logbook.screen1") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            } else if (object == "grams.logbook.screen1") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            } else if (object == "below.range") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (object == "mg.dl.logbook") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (object == "units") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (object == "longacting.units") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (object == "blood.sugar.home") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (object == "mealtime.insulin.home") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (object == "longacting.insulin.home") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (object == "carbs.intake.home") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            }
            else if (object == "logbook.health.factors") {
              let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue == val1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }

            else if (object == "logbook.health.factors.date") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
                if (enteredValue.indexOf(value) == -1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }

            else if (object == "logbook.health.factors.time") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
                if (enteredValue.indexOf(value) == -1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }

            else if (object == "mealtime.popup.units") {
              let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue == val1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }

            else if (object == "longacting.popup.units") {
              let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue == val1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }

            else if (object == "blood.sugar.popup.mg.dl") {
              let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue == val1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }

            else if (object == "carb.intake.popup.grams") {
              let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue == val1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }
            else if (object == "grams") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (object == "logbook.grams") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue.indexOf(value) == -1) {
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            } else if (value == "past.time") {
              // let finaldata2 = new Date().getHours();
              if (pastHour >= 12) {
                pastTime = pastHour + ":" + pastMinute + " pm";
                console.log(pastTime);
              } else {
                pastTime = pastHour + ":" + pastMinute + " am";
                console.log(pastTime);
              }
              const enteredValue1 = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              console.log(enteredValue1);
              if (enteredValue1 == pastTime) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            } 
            else if (value == 'device.past.time') {
              // let finaldata2 = new Date().getHours();
              if (pastHour >= 12) {
                pastTime = pastHour + ":" + pastMinute + " pm"
                console.log(pastTime)
              }
              else {
                pastTime = pastHour + ":" + pastMinute + " am"
                console.log(pastTime)
              }
              const enteredValue1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('text');
              console.log(enteredValue1)
              if (enteredValue1 == pastTime) {
                console.log(value + " entered in " + object + " field ");
              }
              else {
                console.log(value + " not entered in " + object + " field ");
              }
             ////browser.saveScreenshot();
            }
            
            else if (value == "past.time.24") {
              let finaldata2 = new Date().getHours();
              if (pastHour <= 9) {
                pastTime = "0" + pastHour + ":" + pastMinute;
                console.log(pastTime);
              } else {
                pastTime = pastHour + ":" + pastMinute;
                console.log(pastTime);
              }
              const enteredValue1 = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              console.log(enteredValue1);
              if (enteredValue1 == pastTime) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            } 
            else if (object == "reminders.activity") {
              let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue == val1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }

            else if (object == "time.of.daily.reminder") {
              let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("text");
              if (enteredValue == val1) {
                console.log(value + " entered in " + object + " field ");
              } else {
                console.log(value + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }



            else if (value == 'device.past.time.24') {
              // let finaldata2 = new Date().getHours();
              if (pastHour <= 9) {
                pastTime = "0" + pastHour + ":" + pastMinute
                console.log(pastTime)
              }
              else {
                pastTime = pastHour + ":" + pastMinute
                console.log(pastTime)
              }
              const enteredValue1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('text');
              console.log(enteredValue1)
              if (enteredValue1 == pastTime) {
                console.log(value + " entered in " + object + " field ");
              }
              else {
                console.log(value + " not entered in " + object + " field ");
              }
             ////browser.saveScreenshot();
            }
            
            
            else {
              let val = value;
              val = `${fileutils.readPropertyFile("data", value)}`;
              const obj1 = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getText();
              if (obj1 === val) {
                console.log(val + " entered in " + object + " field ");
              } else {
                console.log(val + " not entered in " + object + " field ");
              }
              ////browser.saveScreenshot();
            }
          }
          break;
        case "ios":
          browser.pause(2000);
          if (val == "space") {
            const space = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (space === "\t") {
              console.log(value + " entered in " + object + " field ");
            } else {
              console.log(value + " not entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "mg.dl.logbook.screen") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "grams.logbook.screen") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "grams.logbook.screen1") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "grams.logbook.screen2") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "time.logbook.screen") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "time.logbook.screen1") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "time.logbook.screen2") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "blood.sugar.home") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "mealtime.insulin.home") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "longacting.insulin.home") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "carbs.intake.home") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          }else if (object == "confirm.long-acting.units") {
              // let val1=fileutils.readPropertyFile("data", value)
              const enteredValue = browser
                .element(`${fileutils.readPropertyFile(platform, object)}`)
                .getAttribute("value");
              if (enteredValue.indexOf(value) == -1) {
                console.log(enteredValue);
                console.log(value + " not entered in " + object + " field ");
              } else {
                console.log(value + " entered in " + object + " field ");
              }
            }
           else if (object == "carbs.intake.home.1") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "mg.dl.logbook.screen1") {
            // let val1=fileutils.readPropertyFile("data", value)
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(value) == -1) {
              console.log(enteredValue);
              console.log(value + " not entered in " + object + " field ");
            } else {
              console.log(value + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (value == "past.time") {
            const enteredValue1 = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue1 == pastTime) {
              console.log(value + " entered in " + object + " field ");
            } else {
              console.log(value + " not entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } 
          
          else if (value == 'device.past.time') {
            const enteredValue1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('value');
            if (enteredValue1 == pastTime) {
              console.log(value + " entered in " + object + " field ");
            }
            else {
              console.log(value + " not entered in " + object + " field ");
            }
           ////browser.saveScreenshot();
          }

          else if (value == 'device.current.time') {
            const enteredValue1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('value');
            if (enteredValue1 == currentTime) {
              console.log(value + " entered in " + object + " field ");
            }
            else {
              console.log(value + " not entered in " + object + " field ");
            }
           ////browser.saveScreenshot();
          }

          else if (value == 'device.past.time.24') {
            const enteredValue1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('value');
            if (enteredValue1 == pastTime24) {
              console.log(value + " entered in " + object + " field ");
            }
            else {
              console.log(value + " not entered in " + object + " field ");
            }
           ////browser.saveScreenshot();
          }

          else if (value == 'device.current.time.24') {
            const enteredValue1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('value');
            if (enteredValue1 == currentTime24) {
              console.log(value + " entered in " + object + " field ");
            }
            else {
              console.log(value + " not entered in " + object + " field ");
            }
           ////browser.saveScreenshot();
          }
          else if (value == "past.time.24") {
            const enteredValue1 = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue1 == pastTime24) {
              console.log(value + " entered in " + object + " field ");
            } else {
              console.log(value + " not entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (value == "past.date") {
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue == pastDate) {
              console.log(value + " entered in " + object + " field ");
            } else {
              console.log(value + " not entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else if (object == "logbook.health.factors") {
            let val1 = fileutils.readPropertyFile("data", value);
            const enteredValue = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (enteredValue.indexOf(val1) == -1) {
              console.log(enteredValue);
              console.log(val1);
              console.log(val1 + " not entered in " + object + " field ");
            } else {
              console.log(val1 + " entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          } else {
            let valu = value;
            valu = `${fileutils.readPropertyFile("data", value)}`;
            const objios = browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .getAttribute("value");
            if (objios === valu) {
              console.log(value + " entered in " + object + " field ");
            } else {
              console.log(value + " not entered in " + object + " field ");
            }
            ////browser.saveScreenshot();
          }
          break;
        case "Web":
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(`${object} is not displayed`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(
  /^I select "([^"]*)" in "([^"]*)" settingsfield$/,
  async (value, object) => {
    try {
      switch (platform) {
        case "android":
          switch (deviceName) {
            case "Pixel2xl":
              // if (browser.element(fileutils.readPropertyFile(platform, "year")).isVisible()) {
              //   browser.element(fileutils.readPropertyFile(platform, "year")).click();
              // }
              let data = `${fileutils.readPropertyFile("data", value)}`;
              if (object === "year") {
                if (
                  browser
                    .element(fileutils.readPropertyFile(platform, "year"))
                    .isVisible()
                ) {
                  browser
                    .element(fileutils.readPropertyFile(platform, "year"))
                    .click();
                }
                let reqYear = `${fileutils.readPropertyFile("data", value)}`;
                let selectYear = browser.getText(
                  fileutils.readPropertyFile(platform, "required.year")
                );
                while (selectYear.indexOf(reqYear) == -1) {
                  mobileactions.swipe_up("datepicker.screen");
                  selectYear = browser.getText(
                    fileutils.readPropertyFile(platform, "required.year")
                  );
                }
                let selYear = fileutils
                  .readPropertyFile(platform, "select.year")
                  .replace("2019", reqYear);
                browser.element(selYear).click();
                //}
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "ok.pixel2xl")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "ok.pixel2xl")
                    )
                    .click();
                }
              } else if (object === "month") {
                let month = browser.getAttribute(
                  fileutils.readPropertyFile(platform, "month.text"),
                  "content-desc"
                );
                let reqMonth = `${fileutils.readPropertyFile("data", value)}`;
                console.log(reqMonth + " " + month);
                while (month.split(" ")[1] != reqMonth) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "previous.month")
                    )
                    .click();
                  month = browser.getAttribute(
                    fileutils.readPropertyFile(platform, "month.text"),
                    "content-desc"
                  );
                  console.log(reqMonth + " " + month);
                }
              } else if (object === "date") {
                let reqDate = `${fileutils.readPropertyFile("data", value)}`;
                let selDate = fileutils
                  .readPropertyFile(platform, object)
                  .replace("10", reqDate);
                browser.element(selDate).click();
                // if (browser.element(fileutils.readPropertyFile(platform, "ok.pixel2xl")).isVisible()) {
                //   browser.element(fileutils.readPropertyFile(platform, "ok.pixel2xl")).click();
                // }
              }
              break;
            case "Pixel3":
              // }
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
              let data1 = `${fileutils.readPropertyFile("data", value)}`;
              if (object === "year") {
                if (
                  browser
                    .element(fileutils.readPropertyFile(platform, "year"))
                    .isVisible()
                ) {
                  browser
                    .element(fileutils.readPropertyFile(platform, "year"))
                    .click();
                }
                let reqYear1 = `${fileutils.readPropertyFile("data", value)}`;
                let selectYear1 = browser.getText(
                  fileutils.readPropertyFile(platform, "required.year")
                );
                while (selectYear1.indexOf(reqYear1) == -1) {
                  mobileactions.swipe_up("datepicker.screen");
                  selectYear1 = browser.getText(
                    fileutils.readPropertyFile(platform, "required.year")
                  );
                }
                let selYear1 = fileutils
                  .readPropertyFile(platform, "select.year")
                  .replace("2019", reqYear1);
                browser.element(selYear1).click();
                if (
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.pixel3"))
                    .isVisible()
                ) {
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.pixel3"))
                    .click();
                }
              } else if (object === "month") {
                let month1 = browser.getAttribute(
                  fileutils.readPropertyFile(platform, "month.text"),
                  "content-desc"
                );
                let reqMonth1 = `${fileutils.readPropertyFile("data", value)}`;
                while (month1.split(" ")[1] != reqMonth1) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "previous.month")
                    )
                    .click();
                  month1 = browser.getAttribute(
                    fileutils.readPropertyFile(platform, "month.text"),
                    "content-desc"
                  );
                }
              } else if (object === "date") {
                let reqDate1 = `${fileutils.readPropertyFile("data", value)}`;
                let selDate1 = fileutils
                  .readPropertyFile(platform, object)
                  .replace("10", reqDate1);
                browser.element(selDate1).click();
                if (
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.pixel3"))
                    .isVisible()
                ) {
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.pixel3"))
                    .click();
                }
              }
              break;
            case "samsungS9plus":
              let data2 = `${fileutils.readPropertyFile("data", value)}`;
              if (object === "Year") {
                let reqYear2 = `${fileutils.readPropertyFile("data", object)}`;
                let selectYear2 = browser.getText(
                  fileutils.readPropertyFile(platform, "Required.Year")
                );
                while (selectYear2.indexOf(reqYear2) == -1) {
                  mobileactions.swipe_up("datepicker.screen");
                  selectYear2 = browser.getText(
                    fileutils.readPropertyFile(platform, "Required.Year")
                  );
                }
                let selYear2 = fileutils
                  .readPropertyFile(platform, "Year.samsungsj3")
                  .replace("2019", reqYear2);
                browser.element(selYear2).click();
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "Done.samsungsj3")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "Done.samsungsj3")
                    )
                    .click();
                }
              } else if (object === "Month") {
                let month2 = browser.getAttribute(
                  fileutils.readPropertyFile(platform, "Month.text"),
                  "content-desc"
                );
                //  let month3=(month2.split(',')[1]).split(' ')[2]
                //   console.log(month3);
                let reqMonth2 = `${fileutils.readPropertyFile("data", object)}`;
                while (month2.split(",")[1].split(" ")[2] != reqMonth2) {
                  console.log(month2);
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "PreviousMonth.samsung"
                      )
                    )
                    .click();
                  month2 = browser.getAttribute(
                    fileutils.readPropertyFile(platform, "Month.text"),
                    "content-desc"
                  );
                  console.log(month2);
                }
              } else if (object === "Date") {
                let reqDate2 = `${fileutils.readPropertyFile("data", object)}`;
                let selDate2 = fileutils
                  .readPropertyFile(platform, "Date.samsung")
                  .replace("10", reqDate2);
                browser.element(selDate2).click();
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "Done.samsungsj3")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "Done.samsungsj3")
                    )
                    .click();
                }
              }
              break;
            case "samsungS9":
              if (
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "set.date.samsungs9")
                  )
                  .isVisible()
              ) {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "set.date.samsungs9")
                  )
                  .click();
              }
              let data21 = `${fileutils.readPropertyFile("data", value)}`;
              if (object === "year") {
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "set.date.samsungs9")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "set.date.samsungs9")
                    )
                    .click();
                }
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "year.samsungs9")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "year.samsungs9")
                    )
                    .click();
                }
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "required.year.samsumgs9"
                      )
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "required.year.samsumgs9"
                      )
                    )
                    .click();
                }
                // let reqYear21 = `${fileutils.readPropertyFile('data', value)}`;
                // let selectYear21 = browser.getText(fileutils.readPropertyFile(platform, "required.year.samsumgs9"));
                // while (selectYear21.indexOf(reqYear21) == -1) {
                //   mobileactions.swipe_up("datepicker.screen");
                //   selectYear21 = browser.getText(fileutils.readPropertyFile(platform, "required.year.samsungs9"));
                // }
                // let selYear21 = fileutils.readPropertyFile(platform, 'year.samsungs9').replace('2019', reqYear21);
                // browser.element(selYear21).click();
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "done.samsungs9")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "done.samsungs9")
                    )
                    .click();
                }
              } else if (object === "month") {
                let month21 = browser.getAttribute(
                  fileutils.readPropertyFile(platform, "month.text"),
                  "content-desc"
                );
                //  let month3=(month2.split(',')[1]).split(' ')[2]
                console.log(month21);
                let reqMonth21 = `${fileutils.readPropertyFile("data", value)}`;
                while (month21.split(",")[1].split(" ")[2] != reqMonth21) {
                  console.log(month21);
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "previousmonth.samsungs9"
                      )
                    )
                    .click();
                  month21 = browser.getAttribute(
                    fileutils.readPropertyFile(platform, "month.text"),
                    "content-desc"
                  );
                  console.log(month21);
                }
              } else if (object === "date") {
                let reqDate21 = `${fileutils.readPropertyFile("data", value)}`;
                let selDate21 = fileutils
                  .readPropertyFile(platform, "date.samsungs9")
                  .replace("10", reqDate21);
                browser.element(selDate21).click();
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "done.samsungs9")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "done.samsungs9")
                    )
                    .click();
                }
              }
              break;
            case "LGThinQ":
              if (
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "set.date.lgthinq")
                  )
                  .isVisible()
              ) {
                browser
                  .element(
                    fileutils.readPropertyFile(platform, "set.date.lgthinq")
                  )
                  .click();
              }
              let data3 = `${fileutils.readPropertyFile("data", value)}`;
              if (object === "year") {
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "year.lgthinq")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "year.lgthinq")
                    )
                    .click();
                }
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "year.lgthinq.2018")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "year.lgthinq.2018")
                    )
                    .click();
                }
                // let reqYear3 = `${fileutils.readPropertyFile('data', value)}`;
                // //let selectYear3 = browser.getText(fileutils.readPropertyFile(platform, "required.year"));
                // let selectYear3 = browser.getText(fileutils.readPropertyFile(platform, "required.year"));
                // console.log(selectYear3)
                // while (selectYear3.indexOf(reqYear3) == -1) {
                //   mobileactions.swipe_up("datepicker.screen");
                //  // selectYear3 = browser.getText(fileutils.readPropertyFile(platform, "required.year"));
                //   selectYear3 = browser.getText(fileutils.readPropertyFile(platform, "required.year"));
                // }
                // //let selYear3 = fileutils.readPropertyFile(platform, 'select.year.lgthinkq').replace('2019', reqYear3);
                // let selYear3 = fileutils.readPropertyFile(platform, 'select.year.lgthinkq').replace('2019', reqYear3);
                // browser.element(selYear3).click();
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "ok.lgthinkq")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "ok.lgthinkq")
                    )
                    .click();
                }
              } else if (object === "month") {
                let month3 = browser.getAttribute(
                  fileutils.readPropertyFile(platform, "lgthinq.month.text"),
                  "content-desc"
                );
                // let month34 =(month3.split(',')[1]).split(' ')[2]
                console.log(month3);
                let reqMonth3 = `${fileutils.readPropertyFile("data", value)}`;
                while (month3.split(",")[1].split(" ")[2] != reqMonth3) {
                  console.log(month3);
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "lgthniq.Previous.btn"
                      )
                    )
                    .click();
                  month3 = browser.getAttribute(
                    fileutils.readPropertyFile(platform, "lgthinq.month.text"),
                    "content-desc"
                  );
                  console.log(month3);
                }
              } else if (object === "date") {
                let reqDate3 = `${fileutils.readPropertyFile("data", value)}`;
                let selDate3 = fileutils
                  .readPropertyFile(platform, "date.lgthinkq")
                  .replace("10", reqDate3);
                browser.element(selDate3).click();
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "ok.lgthinkq")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "ok.lgthinkq")
                    )
                    .click();
                }
              }
              break;
            case "motoZ2":
              let data4 = `${fileutils.readPropertyFile("data", value)}`;
              if (object === "Year") {
                let reqYear4 = `${fileutils.readPropertyFile("data", object)}`;
                let selectYear4 = browser.getText(
                  fileutils.readPropertyFile(platform, "Required.Year")
                );
                while (selectYear4.indexOf(reqYear4) == -1) {
                  mobileactions.swipe_up("datepicker.screen");
                  selectYear4 = browser.getText(
                    fileutils.readPropertyFile(platform, "Required.Year")
                  );
                }
                let selYear4 = fileutils
                  .readPropertyFile(platform, "Year.moto")
                  .replace("2019", reqYear4);
                browser.element(selYear4).click();
                if (
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.moto"))
                    .isVisible()
                ) {
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.moto"))
                    .click();
                }
              } else if (object === "Month") {
                let month4 = browser.getAttribute(
                  fileutils.readPropertyFile(platform, "Month.text"),
                  "content-desc"
                );
                //  let month3=(month2.split(',')[1]).split(' ')[2]
                //   console.log(month3);
                let reqMonth4 = `${fileutils.readPropertyFile("data", object)}`;
                while (month4.split(" ")[1] != reqMonth4) {
                  console.log(month4);
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "PreviousMonth.moto")
                    )
                    .click();
                  month4 = browser.getAttribute(
                    fileutils.readPropertyFile(platform, "Month.text"),
                    "content-desc"
                  );
                  console.log(month4);
                }
              } else if (object === "Date") {
                let reqDate4 = `${fileutils.readPropertyFile("data", object)}`;
                let selDate4 = fileutils
                  .readPropertyFile(platform, "Date.moto")
                  .replace("10", reqDate4);
                browser.element(selDate4).click();
                if (
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.moto"))
                    .isVisible()
                ) {
                  browser
                    .element(fileutils.readPropertyFile(platform, "ok.moto"))
                    .click();
                }
              }
              break;
            case "SAMSUNG-SM-J327A":
              let data5 = `${fileutils.readPropertyFile("data", value)}`;
              if (object === "Year") {
                let reqYear5 = `${fileutils.readPropertyFile("data", object)}`;
                let selectYear5 = browser.getText(
                  fileutils.readPropertyFile(platform, "Required.Year")
                );
                while (selectYear5.indexOf(reqYear5) == -1) {
                  mobileactions.swipe_up("datepicker.screen");
                  selectYear5 = browser.getText(
                    fileutils.readPropertyFile(platform, "Required.Year")
                  );
                }
                let selYear5 = fileutils
                  .readPropertyFile(platform, "Year.samsungsj3")
                  .replace("2019", reqYear5);
                browser.element(selYear5).click();
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "Done.samsungsj3")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "Done.samsungsj3")
                    )
                    .click();
                }
              } else if (object === "Month") {
                let month5 = browser.getAttribute(
                  fileutils.readPropertyFile(platform, "Month.text"),
                  "content-desc"
                );
                let month_3 = month5.split(",")[1];
                console.log(month_3);
                let reqMonth5 = `${fileutils.readPropertyFile("data", object)}`;
                // let req_date = `${fileutils.readPropertyFile('data', object)}`;
                // // while ((month5.split(',')[1]).split(' ')[2] != reqMonth5) {
                while (month5.split(" ")[1] != reqMonth5) {
                  console.log(month5);
                  browser
                    .element(
                      fileutils.readPropertyFile(
                        platform,
                        "PreviousMonth.samsungj3"
                      )
                    )
                    .click();
                  if ((month5.split(",")[1].split(" ")[2] = "Month.text")) {
                    //   console.log(month5);
                    month5 = browser.getAttribute(
                      fileutils.readPropertyFile(platform, "Month.text"),
                      "content-desc"
                    );
                    //   //console.log(month5);
                  }
                  //}
                }
              } else if (object === "Date") {
                let reqDate5 = `${fileutils.readPropertyFile("data", object)}`;
                let selDate5 = fileutils
                  .readPropertyFile(platform, "Date.samsungj3")
                  .replace("10", reqDate5);
                browser.element(selDate5).click();
                if (
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "Done.samsungsj3")
                    )
                    .isVisible()
                ) {
                  browser
                    .element(
                      fileutils.readPropertyFile(platform, "Done.samsungsj3")
                    )
                    .click();
                }
              }
              break;
            case "ZTE":
              let data6 = `${fileutils.readPropertyFile("data", value)}`;
              if (object === "Year") {
                let reqYear6 = `${fileutils.readPropertyFile("data", object)}`;
                let selectYear6 = browser.getText(
                  fileutils.readPropertyFile(platform, "Required.Year")
                );
                while (selectYear6.indexOf(reqYear6) == -1) {
                  mobileactions.swipe_up("datepicker.screen");
                  selectYear6 = browser.getText(
                    fileutils.readPropertyFile(platform, "Required.Year")
                  );
                }
                let selYear6 = fileutils
                  .readPropertyFile(platform, "Year.ZTE")
                  .replace("2019", reqYear6);
                browser.element(selYear6).click();
                if (
                  browser
                    .element(fileutils.readPropertyFile(platform, "OK.ZTE"))
                    .isVisible()
                ) {
                  browser
                    .element(fileutils.readPropertyFile(platform, "OK.ZTE"))
                    .click();
                }
              } else if (object === "Month") {
                let month6 = browser.element(
                  fileutils.readPropertyFile(platform, "Month.text"),
                  "content-desc"
                );
                console.log(month6);
                let reqMonth6 = `${fileutils.readPropertyFile("data", object)}`;
                while (month6.split(" ")[1] != reqMonth6) {
                  console.log(month6);
                  browser.pause(5000);
                  if (
                    browser
                      .element(
                        fileutils.readPropertyFile(
                          platform,
                          "PreviousMonth.ZTE"
                        )
                      )
                      .isVisible()
                  )
                    browser.element(platform, "~Previous month").click();
                  month6 = browser.getAttribute(
                    fileutils.readPropertyFile(platform, "Month.text"),
                    "content-desc"
                  );
                }
              } else if (object === "Date") {
                let reqDate6 = `${fileutils.readPropertyFile("data", object)}`;
                let selDate6 = fileutils
                  .readPropertyFile(platform, "Date.ZTE")
                  .replace("10", reqDate6);
                browser.element(selDate6).click();
                if (
                  browser
                    .element(fileutils.readPropertyFile(platform, "OK.ZTE"))
                    .isVisible()
                ) {
                  browser
                    .element(fileutils.readPropertyFile(platform, "OK.ZTE"))
                    .click();
                }
              }
              break;
            default:
              break;
          }
          break;
        case "ios":
          let exists = browser.waitUntil(
            function() {
              return browser
                .element(fileutils.readPropertyFile(platform, object))
                .isVisible();
            },
            timeOutinMs,
            "Element not found"
          );
          if (exists) {
            mobileElementAction.selectValueFromPicker(
              fileutils.readPropertyFile(platform, object),
              fileutils.readPropertyFile("data", value)
            );
            console.log("Selected " + value + " from " + object + " field");
            ////browser.saveScreenshot();
          }
          break;
        default:
          break;
        case "web":
          // perform operation on web element
          break;
      }
    } catch (e) {
      console.error(" Cannot Select " + object + e);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);

When(
  /^I should see CurrentDate in "([^"]*)" field in MM-DD-YYYY format$/,
  async object => {
    try {
      switch (platform) {
        case "android":
          let splitcurrentDate = new Date()
            .toISOString()
            .slice(0, 10)
            .split("-");
          let currYear = splitcurrentDate[0];
          let currMonth = splitcurrentDate[1];
          let currDay = splitcurrentDate[2];
          let appdate = browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .getAttribute("text");
          console.log("App Date is " + appdate);
          let splitappdate = appdate.split("/");
          let appmonth = splitappdate[0];
          let appday = splitappdate[1];
          let appyear = splitappdate[2];
          expect(appmonth).to.equal(currMonth);
          expect(appday).to.equal(currDay);
          expect(appyear).to.equal(currYear);
          console.log("Verified current Date");
          ////browser.saveScreenshot();
          if (moment(appdate, "MM/DD/YYYY")) {
            console.log("valid format");
          } else {
            console.log("invalid format");
          }
          ////browser.saveScreenshot();
          break;
        case "ios":
          // ios code here
          let appdate1 = browser
            .element(`${fileutils.readPropertyFile(platform, object)}`)
            .getText();
          console.log("App Date is " + appdate1);
          if (moment(appdate1, "MM/DD/YYYY")) {
            console.log("valid format");
          } else {
            console.log("invalid format");
          }
          ////browser.saveScreenshot();
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
      return assert.strictEqual(platform, "ios", " Cannot find date");
    }
  }
);


When(/^I should see device CurrentTime in "([^"]*)" field$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        let currenttime1 = utils.getdevicecurrenttime1();
        let ampm = currenttime1.split(" ")[1];
        let curtime = currenttime1.replace(ampm, ampm.toLocaleLowerCase())
        let apptime1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('text')
        console.log(apptime1 + " " + curtime)
        if (curtime === apptime1) {
          console.log("current time is displayed")
        }
        else {
          console.log("current time not displayed")
        }
       ////browser.saveScreenshot();
        break;
      case 'ios':
        // ios code here
        let currenttime = utils.getdevicecurrenttime();
        let ampm1 = currenttime.split(" ")[1];
        let curtime1 = currenttime.replace(ampm1, ampm1.toLocaleLowerCase())
        let apptime = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('value')
        console.log(apptime + " " + curtime1)
        if (curtime1 === apptime) {
          console.log("current time is displayed")
        }
        else {
          console.log("current time not displayed")
        }
       ////browser.saveScreenshot();
        break;
      case 'web':
        // perform operation on web element
        break;
      default: break
    }
  } catch (e) {
    console.error(' Cannot find date ');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});

When(/^I should see device CurrentTime in 24 hour format in "([^"]*)" field$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        let currenttime1 = utils.getdevicecurrenttime24();
        let apptime1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('text');
        console.log(apptime1 + "  " + currenttime1)
        if (currenttime1 === apptime1) {
          console.log("current time is displayed")
        }
        else {
          console.log("current time not displayed")
        }
       
       ////browser.saveScreenshot();
        break;
      case 'ios':
        // ios code here
        let currenttime = utils.getdevicecurrenttime24();
        let apptime = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('value')
        console.log(apptime + "  " + currenttime)
        if (currenttime === apptime) {
          console.log("current time is displayed")
        }
        else {
          console.log("current time not displayed")
        }
       ////browser.saveScreenshot();
        break;
      case 'web':
        // perform operation on web element
        break;
      default: break
    }
  } catch (e) {
    console.error(' Cannot find date ');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});

When(/^I tap on Back button of device$/,
  async object => {
    try {
      switch (platform) {
        case "android":
            browser.pressKeycode(4);
            console.log("Tapped on back button");
          // android code
          break;
        case "ios":
          mobileElementAction.tapOutsideElement();
          console.log(` Focussed out of ${object}`);
          ////browser.saveScreenshot();
          break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(` Cannot Tap outside  ${object}`);
      //browser.saveScreenshot();
      return assert.strictEqual(platform, "", e);
    }
  }
);
When(/^I select the "([^"]*)" in "([^"]*)" field$/, async (value, object) => {
  try {
    switch (platform) {
      case "android":
        let exists = browser.waitUntil(
          function() {
            return browser
              .element(fileutils.readPropertyFile(platform, object))
              .click();
          },
          timeOutinMs,
          "Element not found"
        );
        if (exists) {
          console.log("Clicked on " + object);
          ////browser.saveScreenshot();
          if (object === "date.picker.year") {
            let val1 = `${fileutils.readPropertyFile("data", value)}`;
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val1);
            console.log(`Selected ${value} in ${object} field`);
            browser.pause(1000);
         

          } else if (object === "date.picker.month") {

            let val2 = `${fileutils.readPropertyFile("data", value)}`;
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val2);
            console.log(`Selected ${value} in ${object} field`);
            browser.pause(1000);

          } else if (object === "date.picker.date") {
            
            let val3 = `${fileutils.readPropertyFile("data", value)}`;
            browser
              .element(`${fileutils.readPropertyFile(platform, object)}`)
              .setValue(val3);
            console.log(`Selected ${value} in ${object} field`);
            browser.pause(1000);

          } else {
            console.log(object + "not found");
          }
   
      }
        break;
      case "ios":
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(" Cannot select " + object + e);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, "", e);
  }
});
When(
  /^I turn ON Bluetooth$/, async() => {
    try {
      switch (platform) {
        case "android":
          switch (deviceName) {
            case 'Pixel3':
              browser.startActivity("com.android.settings", "com.android.settings.Settings");
              browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.search")).click();
                browser.pause(4000)
                browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.searchbox")).setValue("Bluetooth");
                browser.pause(2000)
                browser.element(fileutils.readPropertyFile(platform, "settings.bluetooth")).click();
                const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.bluetooth")).isVisible(), timeOutinMs, 'Error: Element not found');
                if (exists1) {
                  let checked = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.bluetooth.auto.toggle")).getAttribute('checked')
                  if (checked == 'false') {
                    console.log("Bluetooth is OFF");
                    browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.bluetooth.auto.toggle")).click();
                    console.log("Bluetooth is now turned ON");
                  }
                  else {
                    console.log("Bluetooth is already ON");
                  
                  }
                }
            break;
            case 'OnePlus7Pro':
              browser.startActivity("com.android.settings", "com.android.settings.Settings");
              browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.search")).click();
              browser.pause(4000)
              browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Bluetooth");
              browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.bluetooth")).click();
            const exists2 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.bluetooth")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists2) {
              let checked = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.bluetooth.auto.toggle")).getAttribute('checked')
              if (checked == 'false') {
                console.log("Bluetooth is OFF");
                browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.bluetooth.auto.toggle")).click();
                console.log("Bluetooth is now turned ON");
              }
              else {
                console.log("Bluetooth is already ON");
              
              }
            }
            break;

          }
            while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
              browser.pressKeycode(4);
            }
           
          break;
          case "ios":
            try {
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
              search.setValue("Bluetooth");
              browser.pause(2000);
              browser.element('(//XCUIElementTypeStaticText[@name=\"Bluetooth\"])[1]').click();
              const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "settings.bluetooth.auto.toggle")}`).isVisible(), timeOutinMs, 'Error: Element not found');
              if (exists1) {
                let value = browser.element(fileutils.readPropertyFile(platform, "settings.bluetooth.auto.toggle")).getAttribute('value')
                console.log(value)
                if (value == 1) {
                  console.log('Already Bluetooth is ON');
                }
                else {
                  browser.element(fileutils.readPropertyFile(platform, "settings.bluetooth.auto.toggle")).click();
                  console.log("Bluetooth is now ON")
                }
              }
            }
              browser.execute('mobile: activateApp', { bundleId: bundleid });
              browser.pause(3000);
              }
         
            catch (e) {
              console.error('Cannot set bluetooth', e);
              //browser.saveScreenshot();
            }
           
            break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(" Cannot find Bluetooth ");
      browser.saveScreenshot();
      return assert.strictEqual(platform, '', " Cannot find bluetooth");
    }
  }
);


When(
  /^I turn OFF Bluetooth$/, async() => {
    try {
      switch (platform) {
        case "android":
          switch (deviceName) {
            case 'Pixel3':
              browser.startActivity("com.android.settings", "com.android.settings.Settings");
              browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.search")).click();
                browser.pause(4000)
                browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.searchbox")).setValue("Bluetooth");
                browser.pause(2000)
                browser.element(fileutils.readPropertyFile(platform, "settings.bluetooth")).click();
                const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "settings.bluetooth")).isVisible(), timeOutinMs, 'Error: Element not found');
                if (exists1) {
                  let checked = browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.bluetooth.auto.toggle")).getAttribute('checked')
                if (checked == 'true') {
                  console.log("Bluetooth is ON");
                  browser.element(fileutils.readPropertyFile(platform, "pixel3.settings.bluetooth.auto.toggle")).click();
                  console.log("Bluetooth is now turned OFF");
                }
                else {
                  console.log("Bluetooth is already OFF");
                
                }
              }
  
            break;
            case 'OnePlus7Pro':
              browser.startActivity("com.android.settings", "com.android.settings.Settings");
              browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.search")).click();
              browser.pause(4000)
              browser.element(fileutils.readPropertyFile(platform, "pixel2xl.settings.searchbox")).setValue("Bluetooth");
              browser.pause(2000)
            browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.bluetooth")).click();
            const exists2 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.bluetooth")).isVisible(), timeOutinMs, 'Error: Element not found');
            if (exists2) {
              let checked = browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.bluetooth.auto.toggle")).getAttribute('checked')
              if (checked == 'true') {
                console.log("Bluetooth is ON");
                browser.element(fileutils.readPropertyFile(platform, "oneplus7pro.settings.bluetooth.auto.toggle")).click();
                console.log("Bluetooth is now turned OFF");
              }
              else {
                console.log("Bluetooth is already OFF");
              
              }
            }
            break;

          }
            while (browser.getCurrentPackage() != 'com.lilly.ddcs.madelyne') {
              browser.pressKeycode(4);
            }
           
          break;
          case "ios":
            try {
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
              search.setValue("Bluetooth");
              browser.pause(2000);
              browser.element('(//XCUIElementTypeStaticText[@name=\"Bluetooth\"])[1]').click();
              const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "settings.bluetooth.auto.toggle")}`).isVisible(), timeOutinMs, 'Error: Element not found');
              if (exists1) {
                let value = browser.element(fileutils.readPropertyFile(platform, "settings.bluetooth.auto.toggle")).getAttribute('value')
                console.log(value)
                if (value == 0) {
                  console.log('Already Bluetooth is OFF');
                }
                else {
                  browser.element(fileutils.readPropertyFile(platform, "settings.bluetooth.auto.toggle")).click();
                  console.log("Bluetooth is now OFF")
                }
              }
            }
              browser.execute('mobile: activateApp', { bundleId: bundleid });
              browser.pause(3000);
              }
         
            catch (e) {
              console.error('Cannot set bluetooth', e);
              //browser.saveScreenshot();
            }
           
            break;
        case "web":
          // perform operation on web element
          break;
        default:
          break;
      }
    } catch (e) {
      console.error(" Cannot find Bluetooth ");
      browser.saveScreenshot();
      return assert.strictEqual(platform, '', " Cannot find bluetooth");
    }
  }
);