const { expect } = require('chai');
const { each } = require('lodash');
const timeOutinMs = 15000;
const assert = require('assert');
const fs = require('fs');
const screenshotPath = './test/reports/errorShots/';
const moment = require('moment');
// const LanguageDetect = require('languagedetect');
// const lngDetector = new LanguageDetect();
const isEnglish = require("is-english");
const { When, Then } = require('cucumber');
const _ = require('underscore')
const appconfig = require('../services/appConfig');
const emailUtilsforregscreen = require('../utils/emailConfigurationforRegScreen');
const emailUtilsforregscreen1 = require('../utils/emailConfigurationforRegScreen');
const emailUtilsforforgotpassword = require('../utils/emailConfigurationforForgotPwd');
const mobileElementAction = require('../helpers/mobileElementActions');
const fileutils = require('../utils/fileoperations');
const utils = require('../utils/genericutilities');
const mobileactions = require('../helpers/mobileactions');
const contentful = require('../services/contentful');
const platform = fileutils.readMobileCaps()[0].platformName.toLowerCase();
const caps = fileutils.readMobileCaps()[0] || {};
const {
  UserFirstName, safaribrowserbundleid, appPackage, appActivity, HCPCode, Hour, Minute, TimeMeridien, bundleid,
  IncorrectHCPCode,
} = caps;
let recordlevel
let painintensitylevel
let i = 0
Then(/^I should see "([^"]*)" (?:screen|button|view|header|subheader|label|menu|icon|dot|section|alert|card|option|title|bullet)$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        browser.pause(5000);
        const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists1) {
          let obj1 = object
          console.log(`${object} is displayed`);
          obj1 = obj1.replace(/\./g, '_');
          const filePath = `${screenshotPath + obj1}.png`;
          //browser.saveScreenshot(filePath);
        }
        break;
      case 'ios':
          browser.pause(3000);
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          let obj = object
          console.log(`${object} is displayed`);
          obj = obj.replace(/\./g, '_');
          const filePath = `${screenshotPath + obj}.png`;
         ////browser.saveScreenshot(filePath);
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          let obj = object
          console.log(`${obj} is displayed`);
          obj = obj.replace(/\./g, '_');
          const filePath = `${screenshotPath + obj}.png`;
         ////browser.saveScreenshot(filePath);
        }
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          let obj = object
          console.log(`${object} is displayed`);
          obj = obj.replace(/\./g, '_');
          const filePath = `${screenshotPath + obj}.png`;
          //browser.saveScreenshot(filePath);
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see elements in "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          let obj = object
          console.log(`${obj} is displayed`);
          console.log(browser.elements(`${fileutils.readPropertyFile(platform, object)}`))
          obj = obj.replace(/\./g, '_');
          const filePath = `${screenshotPath + obj}.png`;
         ////browser.saveScreenshot(filePath);
        }
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          let obj = object
          console.log(`${object} is displayed`);
          console.log(browser.elements(`${fileutils.readPropertyFile(platform, object)}`))
          obj = obj.replace(/\./g, '_');
          const filePath = `${screenshotPath + obj}.png`;
         ////browser.saveScreenshot(filePath);
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" with toggle action which is OFF by default$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          let obj = object
          console.log(`${obj} is displayed`);
          obj = obj.replace(/\./g, '_');
          const filePath = `${screenshotPath + obj}.png`;
          //browser.saveScreenshot(filePath);
        }
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          let obj = object
          console.log(`${object} is displayed`);
          obj = obj.replace(/\./g, '_');
          const filePath = `${screenshotPath + obj}.png`;
         ////browser.saveScreenshot(filePath);
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see summary for "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android code here
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const string = mobileElementAction.getElementText(browser.element(`${fileutils.readPropertyFile(platform, object)}`));
          let obj = object
          obj = object.replace('.and.', ' & ');
          if (obj === string) {
            console.log(`${obj} is displayed`);
            obj = obj.replace(/\./g, '_');
            const filePath = `${screenshotPath + obj}.png`;
           //browser.saveScreenshot(filePath);
          }
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" (?:confirmation pop-up|pop-up)$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const exists = browser.waitUntil(() => $(fileutils.readPropertyFile(platform, object)).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} popup is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} pop-up is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" (?:text|errormessage)$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists1) {
          console.log(`${object} is displayed`);
          const textmessage1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${'Validation Message/Text Display:'}${textmessage1}`);
          browser.pause(1000);
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} is displayed`);
          const textmessage = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${'Validation Message/Text Display:'}${textmessage}`);
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" content$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        const validText1 = "Mauris non tempor quam, et lacinia sapien. Mauris accumsan eros eget libero posuere vulputate. Etiam elit elit, elementum sed varius at, adipiscing vitae est. Sed nec felis pellentesque, lacinia dui sed, ultricies sapien. Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum.Aliquam eget odio sed ligula iaculis consequat at eget orci. Mauris molestie sit amet metus mattis varius. Donec sit amet ligula eget nisi sodales egestas.Aliquam interdum dolor aliquet dolor sollicitudin fermentum. Donec congue lorem a molestie bibendum. Etiam nisi ante, consectetur eget placerat a, tempus a neque. Donec ut elit urna. Etiam venenatis eleifend urna eget scelerisque. Aliquam in nunc quis dui sollicitudin ornare ac vitae lectus.Mauris non tempor quam, et lacinia sapien. Mauris accumsan eros eget libero posuere vulputate. Etiam elit elit, elementum sed varius at, adipiscing vitae est. Sed nec felis pellentesque, lacinia dui sed, ultricies sapien. Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum. Aliquam eget odio sed ligula iaculis consequat at eget orci. Mauris molestie sit amet metus mattis varius. Donec sit amet ligula eget nisi sodales egestas. Aliquam interdum dolor aliquet dolor sollicitudin fermentum. Donec congue lorem a molestie bibendum. Etiam nisi ante, consectetur eget placerat a, tempus a neque. Donec ut elit urna. Etiam venenatis eleifend urna eget scelerisque. Aliquam in nunc quis dui sollicitudin ornare ac vitae lectus."
        if (exists1) {
          console.log(`${object} screen is displayed`);
          const textmessage1 = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(textmessage1)
          console.log(`${'Validation Message/Text Display:'}${textmessage1}`);
          assert.strictEqual(validText1, mobileElementAction.getElementText(browser.element(`${fileutils.readPropertyFile(platform, object)}`)));
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} screen is displayed`);
          const textmessage = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          assert.strictEqual(textmessage, "Mauris non tempor quam, et lacinia sapien. Mauris accumsan eros eget libero posuere vulputate. Etiam elit elit, elementum sed varius at, adipiscing vitae est. Sed nec felis pellentesque, lacinia dui sed, ultricies sapien. Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum.Aliquam eget odio sed ligula iaculis consequat at eget orci. Mauris molestie sit amet metus mattis varius. Donec sit amet ligula eget nisi sodales egestas.Aliquam interdum dolor aliquet dolor sollicitudin fermentum. Donec congue lorem a molestie bibendum. Etiam nisi ante, consectetur eget placerat a, tempus a neque. Donec ut elit urna. Etiam venenatis eleifend urna eget scelerisque. Aliquam in nunc quis dui sollicitudin ornare ac vitae lectus.Mauris non tempor quam, et lacinia sapien. Mauris accumsan eros eget libero posuere vulputate. Etiam elit elit, elementum sed varius at, adipiscing vitae est. Sed nec felis pellentesque, lacinia dui sed, ultricies sapien. Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum. Aliquam eget odio sed ligula iaculis consequat at eget orci. Mauris molestie sit amet metus mattis varius. Donec sit amet ligula eget nisi sodales egestas. Aliquam interdum dolor aliquet dolor sollicitudin fermentum. Donec congue lorem a molestie bibendum. Etiam nisi ante, consectetur eget placerat a, tempus a neque. Donec ut elit urna. Etiam venenatis eleifend urna eget scelerisque. Aliquam in nunc quis dui sollicitudin ornare ac vitae lectus.", `${object} Verified`);
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" error$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const visiblecheck = browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible();
        if (visiblecheck) {
          const errormessage = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`The Error message displayed is: ${errormessage}`);
        } else {
          console.log(`${object}`, 'is not visible on screen');
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to clear text field for First name, Last name, Email Id, and Password ---->
*/
Then(/^I clear "([^"]*)" (?:textbox|field)$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        browser.clearElement(`${fileutils.readPropertyFile(platform, object)}`);
        console.log(object+" is cleared")
       ////browser.saveScreenshot();
        break;
      case 'ios':
        browser.clearElement(`${fileutils.readPropertyFile(platform, object)}`);
        console.log(object+" is cleared")
       ////browser.saveScreenshot();
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" populated in the textbox$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} screen is displayed`);
          const textmessage = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${'Validation Message/Text Display: '}${textmessage}`);
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   ////browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for the user first name in the calendar header text
*/
Then(/^I should see "([^"]*)" in the "([^"]*)" text$/, async (value, object) => {
  try {
    let val = value
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          val = UserFirstName;
          const wholetextmessage = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${'The complete text displayed is: '}${wholetextmessage}`);
          if (wholetextmessage.includes(val)) {
            console.log(`${'Users First name: '}${val} `, 'is displayed');
          } else {
            console.log(`${'Users First name:'}${val} `, 'is not displayed');
          }
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'Web':
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
When(/^I should see "([^"]*)" name$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        expect(browser.element(`${fileutils.readPropertyFile(platform, object)}`).isExisting);
        console.log(`${object} is visible`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isEnabled(), timeOutinMs, 'Error: Element not found');
        if (exists) {
          if (object === 'currentMonth') {
            const month = utils.getcurrentMonth();
            console.log(`Current month calendar: ${month}`);
            assert.strictEqual(month, mobileElementAction.getElementText(browser.element(`${fileutils.readPropertyFile(platform, object)}`)));
          } else if (object === 'previousMonth') {
            browser.pause(6000)
            const month = utils.getPrevMonth();
            const year = utils.getCurrentYear();
            const prevMonthYear = `${month} ${year}`;
            console.log(`Previous month calendar: ${prevMonthYear}`);
            assert.strictEqual(month, mobileElementAction.getElementText(browser.element(`${fileutils.readPropertyFile(platform, object)}`)));
          }
         ////browser.saveScreenshot();
        }
        break;
      case 'web':
        // perform operation on web element
        break;
      default: break;
    }
  } catch (e) {
    console.error(` Cannot find  ${object}`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" in the calendar header$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} screen is displayed`);
          const calendarsummarytext = browser.element(`${fileutils.readPropertyFile(platform, 'Calendar.Summary')}`).getText();
          const calendarsummaryheadertext = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log('Calendar type displayed:', `${calendarsummarytext} ${calendarsummaryheadertext}`);
         ////browser.saveScreenshot();
          break;
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for the date month in the calendar
*/
Then(/^I should see the same "([^"]*)" after toggle in the calendar summary$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const date = new Date();
          const currentmonth = date.getMonth();
          const calendarmonth = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          if (calendarmonth.includes(currentmonth)) {
            console.log(`Calendar Month displayed:${calendarmonth}`);
           ////browser.saveScreenshot();
          }
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for email for forgot password
*/
Then(/^I should connect to email for registration verification$/, async () => {
  try {
    const emailwaitforregscreen = await emailUtilsforregscreen.readforregscreen();
    browser.pause(1000);
    return emailwaitforregscreen;
  } catch (e) {
    console.error('Cannot open mailbox', e);
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for email
*/
Then(/^I should connect to email for resend registration verification$/, async () => {
  try {
    switch (platform) {
      case 'android':
        const emailwaitforregscreen1 = await emailUtilsforregscreen1.readforresendregscreen();
        browser.pause(1000);
        return emailwaitforregscreen1;
        break;
      case 'ios':
        const emailwaitforregscreen = await emailUtilsforregscreen.readforresendregscreen();
        browser.pause(1000);
        return emailwaitforregscreen;
        break;
    }
  } catch (e) {
    console.error('Cannot open mailbox', e);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should connect to email for forgot password verification$/, async () => {
  try {
    const emailwait = await emailUtilsforforgotpassword.readforforgotpassword();
    console.log("reset done");
    return emailwait;
  } catch (e) {
    console.error('Cannot open mailbox', e);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I must be able to reset the password$/, async () => {
  fs.readFile('./test/testdata/codeforregscreen.txt', 'utf-8', (err, data) => {
    if (err) {
      console.error(err);
    }
    console.log('2nd time ------', data);
    browser.execute('mobile: launchApp', { bundleId: safaribrowserbundleid });
    const readurl = JSON.stringify(data);
    console.log(readurl);
    browser.url(readurl);
  });
 ////browser.saveScreenshot();
});
Then(/^I wait for recording$/, async () => {
  try {
    browser.pause(2000);
  } catch (e) {
    console.error('Cannot wait', e);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" shortcut CTA$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} shortcut is displayed`);
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'web':
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} shortcut is not displayed`);
   ////browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for the calendar Medication & Migraine icons
*/
Then(/^I should view "([^"]*)" icons$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const calendarmonth = browser.element(`${fileutils.readPropertyFile(platform, 'Calendar.Month')}`).getText();
        console.log(`${object} `, 'exists for the month:', ` ${calendarmonth}`);
        const checklistofmedicationormigraineicons = browser.elements('//XCUIElementTypeImage[@name="calendar_icon_view"]').value.length;
        const list = [checklistofmedicationormigraineicons];
        each(list, (item) => {
          const datecheck = browser.elements('//XCUIElementTypeOther[XCUIElementTypeImage[@name="calendar_icon_view"]]/following-sibling::XCUIElementTypeStaticText[@name="calendar_daylabel_text"]').getText();
          console.log(`${'Total number of '}${object} `, 'displayed in the month of', ` ${calendarmonth} `, 'is', ` ${item}`);
          console.log(`${'The dates taken for'}${object} `, 'in the month of', ` ${calendarmonth} `, 'is', ` ${datecheck}`);
        })
        break;
      case 'web':
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   ////browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for dot present under the current date
*/
Then(/^I should see line under the "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const dateobj = new Date();
        const systemdate = dateobj.getDate();
        const calendardotcheck = browser.element(`${fileutils.readPropertyFile(platform, object)}`);
        const currentdateincalendar = $(fileutils.readPropertyFile(platform, 'CalendarCurrentDate')).getText();
        if (currentdateincalendar.includes(systemdate) && calendardotcheck.isEnabled()) {
          console.log(`${'Dot is present for the current date: '}${currentdateincalendar}`);
        } else {
          console.log(`${'Dot is missing for the current date:'}${currentdateincalendar}`);
        }
        break;
      case 'web':
        // web operation
        break;
      default:
        break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   ////browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for future  months
*/
Then(/^I must not see the future date or month$/, async () => {
  try {
    switch (platform) {
      case 'android':
        break;
      case 'ios':
        const calendarmonth = browser.element(`${fileutils.readPropertyFile(platform, 'Calendar.Month')}`).getText();
        const futuremonth = moment().add(1, 'month').format('MMMM YYYY');
        console.log(`${'Future Month is: '}${futuremonth}`);
        if (calendarmonth.includes(futuremonth)) {
          console.log('Future month visible to log');
        } else {
          console.log('Future month not visible to log');
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('Unable to see the future date or month');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" on "([^"]*)" screen$/, async (object, screen) => {
  try {
    let dotPosition
    let str
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        switch (screen) {
          case 'Empty.Migraine.Details':
            dotPosition = object.indexOf('.');
            str = object.substring(0, dotPosition);
            const iconsCount = browser.elements("//XCUIElementTypeImage[@name='addevent_image_view']").value.length;
            const list = [iconsCount];
            each(list, () => {
              const iconText = browser.elements("//XCUIElementTypeImage[@name='addevent_image_view']/following-sibling::XCUIElementTypeStaticText[@name='addevent_icontitle_text']").getText();
              iconText.forEach((value) => {
                if (str === value) {
                  console.log(`${object} is displayed`);
                }
              });
            })
           ////browser.saveScreenshot();
            break;
          case 'MigraineSeverity':
            const additionalcardsdetails = browser.elements("//XCUIElementTypeStaticText[contains(@name,'Number of days')]").getText();
            const textfromconfig = appconfig.verifyTextFromConfig(screen);
            const result = [];
            each(textfromconfig, (value) => {
              result.push(value);
            });
            if ((additionalcardsdetails.some(ele => result.includes(ele)))) {
              console.log('---Additional cards are displayed---');
              console.log(`${result[5]} `, 'and', ` ${result[6]}`);
              console.log('------------------------------------');
            } else {
              console.log('Additional cards are not displayed');
            }
            break;
          default: break
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" text on "([^"]*)" screen$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        switch (screen) {
          case 'Empty.Migraine.Details':
            browser.elements("//XCUIElementTypeStaticText[@name='addevent_icontitle_text']").value.forEach((element) => {
              const val = browser.elementIdText(element.ELEMENT).value;
              if (val === object) {
                return console.log(`${object} text is displayed`);
              }
            });
           ////browser.saveScreenshot();
            break;
          default: break
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
When(/^I tap "([^"]*)" icon on "([^"]*)" screen$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        switch (screen) {
          case 'Empty.Migraine.Details':
            browser.elements('~addevent_icontitle_text').value.forEach((element) => {
              const val = browser.elementIdText(element.ELEMENT).value;
              if (val === object) {
                const { x } = browser.elementIdLocation(element.ELEMENT).value;
                const { y } = browser.elementIdLocation(element.ELEMENT).value;
                return mobileElementAction.tapByCoordinates(x, y);
              }
            });
            console.log(`Clicked on ${object}`);
           ////browser.saveScreenshot();
            break;
          default: break
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^"([^"]*)" (?:symptom|symptoms) should (?:remain|get) selected on "([^"]*)" with a "([^"]*)"$/, async (count, listName, object) => {
  try {
    switch (platform) {
      case 'android':
        // android code here
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          browser.elements("//XCUIElementTypeImage[@name='widget_symptomslistcontainerimage_view']/following-sibling::XCUIElementTypeStaticText[@name='widget_symptomslistcomponentlabel_text']").value.forEach(element => console.log(`Symptom selected: ${browser.elementIdText(element.ELEMENT).value} ,tickmark is visible`));
         ////browser.saveScreenshot();
          break;
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('Symptom is not selected');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^"([^"]*)" symptom should remain unselected on "([^"]*)"$/, async (count, listName) => {
  try {
    switch (platform) {
      case 'android':
        // android code here
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.elements('~widget_symptomslistcomponentlabel_text').isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const textFromConfig = appconfig.verifyTextFromConfig(listName);
          const selectedSymptoms = browser.elements("//XCUIElementTypeImage[@name='widget_symptomslistcontainerimage_view']/following-sibling::XCUIElementTypeStaticText[@name='widget_symptomslistcomponentlabel_text']").getText();
          const unique = textFromConfig.filter(o => selectedSymptoms.indexOf(o) === -1);
          console.log(`Symptom not selected: ${unique}`);
         ////browser.saveScreenshot();
          break;
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${listName} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for migraine days card severity level
*/
Then(/^I must be able to verify the "([^"]*)" card for severity levels for "([^"]*)"$/, async (object, value) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        let i
        const migrainedayscard = browser.element(`${fileutils.readPropertyFile(platform, object)}`);
        if (migrainedayscard.isVisible()) {
          const migrainedaystext = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${migrainedaystext} `, 'card is displayed for', `${value}`);
          const severity = browser.elements('//XCUIElementTypeStaticText[@name="migraine_attack_level"]').getText();
          const dayscount = browser.elements("//XCUIElementTypeStaticText[@name='migraine_attack_time']").getText();
          const severityforintensityandimpairment = ['Mild', 'Moderate', 'Severe'];
          const severifyforimapirment = ['Able', 'Mild', 'Moderate', 'Severe'];
          if (value === 'Calendar.Intensity') {
            if (JSON.stringify(severity) === JSON.stringify(severityforintensityandimpairment)) {
              console.log('---Migraine Severity levels count---');
              for (i = 0; i < severity.length; i += 1) {
                console.log(`${severity[i]}:${dayscount[i]}`);
              }
            } else {
              console.log(`${'Severity levels not displayed proper for '}${value}`);
              console.log('Severity levels displayed for ', `${value}is`, `${severity[i]}`);
            }
            console.log('------------------------------------');
          } else if (value === 'Calendar.Intensity.and.Impairment') {
            console.log('---Migraine Severity levels count---');
            if (JSON.stringify(severity) === JSON.stringify(severityforintensityandimpairment)) {
              for (i = 0; i < severity.length; i += 1) {
                console.log(`${severity[i]}:${dayscount[i]}`);
              }
            } else {
              console.log('Severity levels not displayed proper for ', `${value}`);
              console.log('Severity levels displayed for ', `${value}is`, `${severity[i]}`);
            }
            console.log('------------------------------------');
          } else if (value === 'Calendar.Impairment') {
            console.log('---Migraine Severity levels count---');
            if (JSON.stringify(severity) === JSON.stringify(severifyforimapirment)) {
              for (i = 0; i < severity.length; i += 1) {
                console.log(`${severity[i]}:${dayscount[i]}`);
              }
            } else {
              console.log('Severity levels not displayed proper for', `${value}`);
              console.log('Severity levels displayed for', `${value}`, 'is', `${severity[i]}`);
            }
            console.log('------------------------------------');
          } else {
            console.log(`${value}`, 'isn\'t present among the list');
          }
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to capture the total count of migraine days
*/
Then(/^I must be able to verify the total days recorded for "([^"]*)" for "([^"]*)"$/, async (object, value) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const severitylabels = browser.elements('//XCUIElementTypeStaticText[@name="migraine_attack_level"]').getText();
        const migrainedayscount = browser.elements("//XCUIElementTypeStaticText[@name='migraine_attack_time']").getText();
        const undetailedattackcount = browser.elements('//XCUIElementTypeImage[@name="calendar_icon_view"]').value.length;
        const arr = [undetailedattackcount];
        let sumofseverityinmigrainecard = 0;
        let sumofundetailedattack = 0;
        for (let i = 0; i < severitylabels.length; i += 1) {
          sumofseverityinmigrainecard += parseInt(migrainedayscount[i], 10);
        }
        console.log('Total count for severity levels in the migraine days card is: ', `${sumofseverityinmigrainecard}`);
        each(arr, (arrValue) => {
          sumofundetailedattack += parseInt(arrValue, 10);
        })
        console.log(`${'Total count for undetailed attack is:'}${sumofundetailedattack}`);
        const totalsum = sumofseverityinmigrainecard + sumofundetailedattack;
        const migrainetotaldays = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
        const migrainetotaldaysnumber = parseInt(migrainetotaldays, 10);
        const calendarmonth = browser.element(`${fileutils.readPropertyFile(platform, 'Calendar.Month')}`).getText();
        if (migrainetotaldaysnumber === totalsum) {
          console.log('The total count of days is matching');
          console.log('Total count displayed on Migraine card for', `${value}`, 'is:', `${migrainetotaldaysnumber}`, 'for the month of', `${calendarmonth}`);
          console.log('Total count calculated for severity levels and undetailed attack for', `${value} `, 'is:', ` ${totalsum} `, 'for the month of', ` ${calendarmonth}`);
        } else {
          console.log('The total count of days is not matching');
          console.log('Total count displayed on Migraine card for', `${value}`, 'is:', `${migrainetotaldaysnumber}`, 'for the month of', ` ${calendarmonth}`);
          console.log('Total count calculated for severity levels and undetailed attack for', `${value}`, 'is:', `${totalsum}`, 'for the month of', `${calendarmonth}`);
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to swipe up the migraine card
*/
Then(/^I must be able to swipe up the "([^"]*)" card$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const MigraineDaysCardX = $(fileutils.readPropertyFile(platform, 'Migraine.Days.for.XYcoordinate')).getLocation('x');
        const MigraineDaysCardY = $(fileutils.readPropertyFile(platform, 'Migraine.Days.for.XYcoordinate')).getLocation('y');
        const CalendarSummaryX = $(fileutils.readPropertyFile(platform, 'Calendar.summary.forXYcoordinate')).getLocation('x');
        const CalendarSummaryY = $(fileutils.readPropertyFile(platform, 'Calendar.summary.forXYcoordinate')).getLocation('y');
        browser.touchMultiPerform([
          { action: 'press', options: { x: MigraineDaysCardX, y: MigraineDaysCardY } },
          { action: 'wait', options: { ms: 2000 } },
          { action: 'moveTo', options: { x: CalendarSummaryX, y: CalendarSummaryY } },
          { action: 'release' },
        ]);
       ////browser.saveScreenshot();
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify the order of additional cards
*/
Then(/^I must verify the order of additional cards displayed$/, async () => {
  try {
    switch (platform) {
      case 'android':
        break;
      case 'ios':
        const additionalcardstext = browser.elements("//XCUIElementTypeStaticText[contains(@name,'Number of days')]").getText();
        for (let i = 0; i < ((additionalcardstext.length) - 1); i += 1) {
          const textindexforPain = additionalcardstext.indexOf(additionalcardstext[i]);
          const textindexforImpact = additionalcardstext.indexOf(additionalcardstext[i + 1]);
          if (textindexforPain < textindexforImpact) {
            console.log(`${additionalcardstext[i]} `, 'is displayed first in the migraine days card');
            console.log(`${additionalcardstext[i + 1]} `, 'is displayed second in the migraine days card');
          } else {
            console.log(`${additionalcardstext[i + 1]} `, 'is displayed first in the migraine days card');
            console.log(`${additionalcardstext[i]} `, 'is displayed second in the migraine days card');
          }
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('Cannot display the order of additional cards displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to see the days logged for additional card - Moderate to Severe Pain
*/
Then(/^I must be able to see the number of days logged for "([^"]*)" card$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        if (object === 'Moderate.to.Severe.pain') {
          const additionalcardspain = $(fileutils.readPropertyFile(platform, 'Number.of.Days.M.to.S.Pain'));
          if (additionalcardspain.isVisible()) {
            const additionalcardspaintext = $(fileutils.readPropertyFile(platform, 'Number.of.Days.M.to.S.Pain')).getText();
            const moderatepaintext = $(fileutils.readPropertyFile(platform, 'Moderate.Pain')).getText();
            const severepaintext = $(fileutils.readPropertyFile(platform, 'Severe.Pain')).getText();
            const moderatepainvalue = $(fileutils.readPropertyFile(platform, 'Moderate.Pain.Days.Count')).getText();
            const severepainvalue = $(fileutils.readPropertyFile(platform, 'Severe.Pain.Days.Count')).getText();
            console.log(`${'First additional card is visible:'} ${additionalcardspaintext} `);
            console.log(`${'---Severity days count for'} ${additionalcardspaintext} `, '---');
            console.log(`${moderatepaintext}: `, ` ${moderatepainvalue} `);
            console.log(`${severepaintext}: `, ` ${severepainvalue} `);
          }
          console.log(`${object} `, 'is displayed');
         ////browser.saveScreenshot();
        } else if (object === 'Moderate.to.Severe.impact') {
          const additionalcardsimpact = $(fileutils.readPropertyFile(platform, 'Number.of.Days.M.to.S.Impact'));
          if (additionalcardsimpact.isVisible()) {
            const additionalcardsimpacttext = $(fileutils.readPropertyFile(platform, 'Number.of.Days.M.to.S.Impact')).getText();
            const moderateimpairmenttext = $(fileutils.readPropertyFile(platform, 'Moderate.Impairment')).getText();
            const severeimpairmenttext = $(fileutils.readPropertyFile(platform, 'Severe.Impairment')).getText();
            const moderateimpairmentvalue = $(fileutils.readPropertyFile(platform, 'Moderate.Impairment.Days.Count')).getText();
            const severeimpairmentvalue = $(fileutils.readPropertyFile(platform, 'Severe.Impairment.Days.Count')).getText();
            console.log(`${'Second additional card is visible: '} ${additionalcardsimpacttext} `);
            console.log(`${'---Severity days count for '} ${additionalcardsimpacttext} `, '---');
            console.log(`${moderateimpairmenttext}: `, ` ${moderateimpairmentvalue} `);
            console.log(`${severeimpairmenttext}: `, ` ${severeimpairmentvalue} `);
          }
          console.log(`${object} `, 'is displayed');
         ////browser.saveScreenshot();
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to scroll up
*/
Then(/^I scroll up to view the rest of the migraine card details$/, async () => {
  try {
    switch (platform) {
      case 'android':
        break;
      case 'ios':
        const Xcoord = $(fileutils.readPropertyFile(platform, 'Number.of.Days.M.to.S.Impact')).getLocation('x');
        const Ycoord = $(fileutils.readPropertyFile(platform, 'Number.of.Days.M.to.S.Impact')).getLocation('y');
        browser.touchMultiPerform([
          { action: 'press', options: { x: Xcoord, y: Ycoord } },
          { action: 'wait', options: { ms: 2000 } },
          { action: 'moveTo', options: { x: 10, y: 10 } },
          { action: 'release' },
        ]);
       ////browser.saveScreenshot();
        break
      case 'web':
        // web operation
        break
      default: break
    }
  } catch (e) {
    console.error('Cannot scroll up');
   ////browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
When(/^I should see all "([^"]*)" of the "([^"]*)"$/, async (count, object) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const verifyLabels = function verifyLabels(xpaths) {
          const text = browser.elements(xpaths).getText();
          console.log(text);
          const textFromConfig = appconfig.verifyTextFromConfig(text);
          console.log(textFromConfig);
          if (text === textFromConfig) {
            console.log('\n Actual and expected match \n', 'Actual :', `${text} \n`, 'Expected :', `${textFromConfig} `);
          } else {
            console.log('\n', 'Actual and expected do not match \n', 'Actual :', `${text} `, '\n Expected :', `${textFromConfig} `);
          }
        }
        for (let i = 1; i <= count; i += 1) {
          let xpath = fileutils.readPropertyFile(platform, object);
          xpath = `${xpath} [${String(i)}]`;
          console.log(xpath);
          verifyLabels(xpath);
        }
        break;
      case 'web':
        // perform operation on web element
        break;
      default: break
    }
  } catch (e) {
    console.error(` Cannot click on ${object} ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I verify "([^"]*)" texts for "([^"]*)" (?:screen|field)$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'android':
        // android here
        break;
      case 'ios':
        const exists = browser.waitUntil(() => $(fileutils.readPropertyFile(platform, object)).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const textFromConfig = appconfig.verifyTextFromConfig(screen);
          browser.elements('~impairment_detaillabel_text').value.forEach((element) => {
            for (let i = 0; i < textFromConfig.length; i += 1) {
              if (textFromConfig[i] === browser.elementIdText(element.ELEMENT).value) {
                return console.log(`Labels Displayed and Matched: ${browser.elementIdText(element.ELEMENT).value} `);
              }
            }
          });
         ////browser.saveScreenshot();
          break;
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
// Matches Object Date with Current date in given format
Then(/^I must verify "([^"]*)" matches in the "([^"]*)" (?:screen|field)$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const textFromConfig = appconfig.verifyTextFromConfig(screen);
          const CurrentDate = moment().format(textFromConfig);
          console.log(CurrentDate);
          const ObjectDate = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          if (ObjectDate === CurrentDate) {
            console.log(`Object Date matches current Date: ${ObjectDate} `);
          } else {
            console.log(`Object Date doesnt matches current Date: ${ObjectDate} `);
          }
         ////browser.saveScreenshot();
          break;
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should not see "([^"]*)" (?:section|text|message|card)$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible() == false, timeOutinMs, `${object} not found`);
        if (exists1) {
          console.log(`${object} is not displayed`);
         ////browser.saveScreenshot();
        }
        break
      case 'ios':
        try{
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, `${object} not found`);
        if (exists) {
          console.log(`${object} is displayed`);
         ////browser.saveScreenshot();
        }
      }
      catch(e){
        console.log(`${object} is not displayed`);
      }
        break;
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to mouse scroll up
*/
Then(/^I must be able to pull down the migraine card to view the "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        mobileactions.mobileScroll('up');
        const caldays = $(fileutils.readPropertyFile(platform, object));
        if (caldays.isEnabled()) {
          console.log('Calendar days are visible after pulling down the migraine card');
          const caldaystext = browser.elements('//XCUIElementTypeStaticText[@name="calendar_weekday_text"]').getText();
          for (let i = 0; i < caldaystext.length; i += 1) {
            console.log(`${caldaystext[i]} `);
          }
        } else {
          console.log('Unable to pull down the migraine card and the calendar days are not visible');
        }
       ////browser.saveScreenshot();
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should not see tickmark beside symptoms$/, async () => {
  try {
    let count = 0;
    switch (platform) {
      case 'android':
        // android code here
        break;
      case 'ios':
        browser.elements("//XCUIElementTypeImage[@name='widget_symptomslistcontainerimage_view']").value.forEach((element) => {
          if (browser.elementIdDisplayed(element.ELEMENT)) {
            count += 1;
          }
        });
        if (count > 0) {
          return console.log('Symptoms are not reset');
        }
       ////browser.saveScreenshot();
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('Symptom selected');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should enter HCPCode into "([^"]*)" field$/, async (object) => {
  try {
    let i;
    switch (platform) {
      case 'android':
        // android code here
        break;
      case 'ios':
        const xpath = "//*[@name='registrationcode_textfield_text']";
        const arr = HCPCode.split('');
        const check = browser.waitUntil(() => browser.elements(xpath).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          for (i = 0; i < arr.length; i += 1) {
            const j = i + 1;
            browser.element(`${xpath} [${j}]`).setValue(arr[i]);
          }
        }
        console.log('Entered HCP code in ', object, ' field');
       ////browser.saveScreenshot();
        break;
      case 'web':
        break;
      default: break
    }
  } catch (e) {
    console.error('Cannot enter code');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I enter incorrect HCPCode into "([^"]*)" field$/, async (object) => {
  try {
    let i;
    switch (platform) {
      case 'android':
        // android code here
        break;
      case 'ios':
        const xpath = "//*[@name='registrationcode_textfield_text']";
        const arr = IncorrectHCPCode.split('');
        const check = browser.waitUntil(() => browser.elements(xpath).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          for (i = 0; i < arr.length; i += 1) {
            const j = i + 1;
            browser.element(`${xpath} [${j}]`).setValue(arr[i]);
          }
        }
        console.log(`Entered incorrect HCP code in ${object} field`);
       ////browser.saveScreenshot();
        break;
      case 'web':
        break;
      default: break
    }
  } catch (e) {
    console.error('Cannot enter code');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for Reports folder
*/
Then(/^I verify for "([^"]*)" (?:tab|text)$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const reportstab = $(fileutils.readPropertyFile(platform, object));
        if (reportstab.isVisible()) {
          const reportstabtext = $(fileutils.readPropertyFile(platform, object)).getText();
          console.log(`${reportstabtext} `, 'is displayed');
        } else {
          console.log('Reports tab is not displayed');
        }
        break;
      case 'Web':
        // web operation
        break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for list of days and months displayed
*/
Then(/^I should see the list of "([^"]*)" tabs$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const daysmonths = browser.elements('//XCUIElementTypeStaticText[@name="report_range_text"]').getText();
        console.log('----Report days and months----');
        for (let i = 0; i < daysmonths.length; i += 1) {
          console.log(`${daysmonths[i]} `);
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for 30 days tab is selected by default
*/
Then(/^I must verify that "([^"]*)" tab is selected by default$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const firsttabtext = $(fileutils.readPropertyFile(platform, object)).getText();
        const Migraineattacktimeperiod = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
        const thirtydayslessthancurrentdate = moment().subtract(30, 'days').format('DD MMM YYYY');
        const currentdate = moment().format('DD MMM YYYY');
        const Migraineattackdateadd = `${thirtydayslessthancurrentdate} - ${currentdate} `;
        if (Migraineattacktimeperiod === Migraineattackdateadd) {
          console.log(`${firsttabtext} `, 'is selected by default');
          console.log(`${'Migraine attack time: '} ${Migraineattacktimeperiod} `);
        } else {
          console.log(`${firsttabtext} `, 'is not selected by default');
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to display the migraine attack period for every tab selected
*/
Then(/^I should see "([^"]*)" for every tab selected$/, { timeout: 60 * 1000 }, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        // Display Migraine attack period for 30 days tab
        const firsttab = $(fileutils.readPropertyFile(platform, '30.Days'));
        if (firsttab.isVisible()) {
          const Migraineattacktimeperiodfirstab = $(fileutils
            .readPropertyFile(platform, object)).getText();
          const firsttabtext = $(fileutils.readPropertyFile(platform, '30.Days')).getText();
          console.log(`${firsttabtext} `, 'tab, Migraine attack period is:', ` ${Migraineattacktimeperiodfirstab} `);
        } else {
          console.log(`${firsttab} `, 'is not visible');
        }
        // Display Migraine attack period for 90 days tab
        const secondtab = $(fileutils.readPropertyFile(platform, '90.Days'));
        if (secondtab.isVisible()) {
          secondtab.click();
          const Migraineattacktimeperiodsecondtab = $(fileutils
            .readPropertyFile(platform, object)).getText();
          const secondtabtext = $(fileutils.readPropertyFile(platform, '90.Days')).getText();
          console.log(`${secondtabtext} `, 'tab, Migraine attack period is:', ` ${Migraineattacktimeperiodsecondtab} `);
        } else {
          console.log(`${secondtab} `, 'is not visible');
        }
        // Display Migraine attack period for 6 months tab
        const thirdtab = $(fileutils.readPropertyFile(platform, '6.Months'));
        if (thirdtab.isVisible()) {
          thirdtab.click();
          const Migraineattacktimeperiodthirdtab = $(fileutils
            .readPropertyFile(platform, object)).getText();
          const thirdtabtext = $(fileutils.readPropertyFile(platform, '6.Months')).getText();
          console.log(`${thirdtabtext} `, 'tab,Migraine attack period is:', ` ${Migraineattacktimeperiodthirdtab} `);
        } else {
          console.log(`${thirdtab} `, 'is not visible');
        }
        // Swipe left to make 12 months tab also visible
        const x = $(fileutils.readPropertyFile(platform, '6.Months')).getLocation('x');
        const y = $(fileutils.readPropertyFile(platform, '6.Months')).getLocation('y');
        const x1 = $(fileutils.readPropertyFile(platform, '90.Days')).getLocation('x');
        const y1 = $(fileutils.readPropertyFile(platform, '90.Days')).getLocation('y');
        browser.execute('mobile:dragFromToForDuration', {
          element: thirdtab, duration: 0.5, fromX: x, fromY: y, toX: x1, toY: y1,
        });
        // Display Migraine attack period for 6 months tab
        const fourthtab = $(fileutils.readPropertyFile(platform, '12.Months'));
        if (fourthtab.isVisible()) {
          fourthtab.click();
          const Migraineattacktimeperiodfourthtab = $(fileutils
            .readPropertyFile(platform, object)).getText();
          const fourthtabtext = $(fileutils.readPropertyFile(platform, '12.Months')).getText();
          console.log(`${fourthtabtext} `, 'tab, Migraine attack period is:', ` ${Migraineattacktimeperiodfourthtab} `);
        } else {
          console.log(`${fourthtab} `, 'is not visible');
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify for generate pdf and hamburger menu icon
*/
Then(/^I must see "([^"]*)" and "([^"]*)" menu icons on the top$/, async (object, value) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const genpdf = $(fileutils.readPropertyFile(platform, object));
        const hamicon = browser.element(`${fileutils.readPropertyFile(platform, 'Hamburger')} `);
        if (genpdf.isEnabled() && hamicon.isEnabled()) {
          console.log(`${object} `, 'and', ` ${value} `, 'icons are present');
        } else {
          console.log(`${object} `, 'and', ` ${value} `, 'icons are not present');
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} `, `or${value} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify that select comparison view is not selected buy default
*/
Then(/^I must verify that "([^"]*)" is not selected by default$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const secompare = browser.element(`${fileutils.readPropertyFile(platform, object)}`);
        if (secompare.isVisible()) {
          const secomparevalue = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('value');
          if (secomparevalue.includes('Please select a comparison view')) {
            console.log(`${secomparevalue} `, 'is displayed by default');
          } else {
            console.log(`${secomparevalue} `, 'is displayed by default instead of the default \'Please select a comparison view\'');
          }
        } else {
          console.log(`${secompare} `, 'is not visible');
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} `, ' screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to display the number of days logged for Migraine
*/
Then(/^I should see the "([^"]*)" in each time period$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const firsttab = $(fileutils.readPropertyFile(platform, '30.Days'));
        if (firsttab.isVisible()) {
          firsttab.click();
          const firsttabtext = $(fileutils.readPropertyFile(platform, '30.Days')).getText();
          const migrainedaysfirstab = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${firsttabtext} `, 'tab,number of Migraine days logged:', ` ${migrainedaysfirstab} `);
        } else {
          console.log(`${firsttab} `, 'is not visible');
        }
        const secondtab = $(fileutils.readPropertyFile(platform, '90.Days'));
        if (secondtab.isVisible()) {
          secondtab.click();
          const secondtabtext = $(fileutils.readPropertyFile(platform, '90.Days')).getText();
          const migrainedayssecondtab = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${secondtabtext} `, 'tab,number of Migraine days logged:', ` ${migrainedayssecondtab} `);
        } else {
          console.log(`${secondtab} `, 'is not visible');
        }
        const thirdtab = $(fileutils.readPropertyFile(platform, '6.Months'));
        if (thirdtab.isVisible()) {
          thirdtab.click();
          const thirdtabtext = $(fileutils.readPropertyFile(platform, '6.Months')).getText();
          const migrainedaysthirdtab = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${thirdtabtext} `, 'tab,number of Migraine days logged:', ` ${migrainedaysthirdtab} `);
        } else {
          console.log(`${thirdtab} `, 'is not visible');
        }
        // Swipe left to make 12 months tab also visible
        const x = $(fileutils.readPropertyFile(platform, '6.Months')).getLocation('x');
        const y = $(fileutils.readPropertyFile(platform, '6.Months')).getLocation('y');
        const x1 = $(fileutils.readPropertyFile(platform, '90.Days')).getLocation('x');
        const y1 = $(fileutils.readPropertyFile(platform, '90.Days')).getLocation('y');
        browser.execute('mobile:dragFromToForDuration', {
          element: thirdtab, duration: 0.5, fromX: x, fromY: y, toX: x1, toY: y1,
        });
        const fourthtab = $(fileutils.readPropertyFile(platform, '12.Months'));
        if (fourthtab.isVisible()) {
          fourthtab.click();
          const fourthabtext = $(fileutils.readPropertyFile(platform, '12.Months')).getText();
          const migrainedaysfourthtab = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          console.log(`${fourthabtext} `, 'tab,number of Migraine days logged:', ` ${migrainedaysfourthtab} `);
        } else {
          console.log(`${fourthtab} `, 'is not visible');
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} `, ' screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to swipe up to the reports header
*/
Then(/^I swipe up to the Reports header$/, async () => {
  try {
    switch (platform) {
      case 'Android':
        // Perform for Android
        break;
      case 'ios':
        browser.execute('mobile:swipe', { direction: 'down' });
        browser.pause(1000);
        browser.execute('mobile:swipe', { direction: 'down' });
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('Unable to swipe up to the Reports header');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify the days logged for each migraine card
*/
Then(/^I should see days logged for each card in "([^"]*)" tab$/, { timeout: 60 * 1000 }, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const moderateseveredetails = function moderateseveredetails() {
          const modtoseverepain = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.to.Severe.Pain'));
          if (modtoseverepain.isVisible()) {
            const modetoseverepaintext = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.to.Severe.Pain')).getText();
            const moderatetext = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.Pain')).getText();
            const moderatedaystext = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.Pain.Days')).getText();
            const severetext = $(fileutils.readPropertyFile(platform, 'Reports.Severe.Pain')).getText();
            const severedaystext = $(fileutils.readPropertyFile(platform, 'Reports.Severe.Pain.Days')).getText();
            console.log(`-- - ${modetoseverepaintext} --- `);
            console.log(`${moderatetext}: `, ` ${moderatedaystext} `);
            console.log(`${severetext}: `, ` ${severedaystext} `);
          } else {
            console.log(`${modtoseverepain} `, 'is not visible');
          }
          const xcoordforimpactcard = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.to.Severe.Impact')).getLocation('x');
          const ycoordforimpactcard = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.to.Severe.Impact')).getLocation('y');
          browser.execute('mobile:swipe', { direction: 'up', toX: xcoordforimpactcard, toY: ycoordforimpactcard });
          const modtosevereimpact = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.to.Severe.Impact'));
          if (modtosevereimpact.isVisible()) {
            const modetosevereimpacttext = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.to.Severe.Impact')).getText();
            const moderateimpacttext = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.Impact')).getText();
            const moderateimpactdaystext = $(fileutils.readPropertyFile(platform, 'Reports.Moderate.Impact.Days')).getText();
            const severeimpacttext = $(fileutils.readPropertyFile(platform, 'Reports.Severe.Impact')).getText()
            const severeimpactdaystext = $(fileutils.readPropertyFile(platform, 'Reports.Severe.Impact.Days')).getText()
            console.log(`-- - ${modetosevereimpacttext} --- `);
            console.log(`${moderateimpacttext}: ${moderateimpactdaystext} `);
            console.log(`${severeimpacttext}: ${severeimpactdaystext} `);
          } else {
            console.log(`${modtosevereimpact} `, 'is not visible');
          }
          const medtaken = $(fileutils.readPropertyFile(platform, 'Medication.Taken'));
          if (medtaken.isEnabled()) {
            const medtakentext = $(fileutils.readPropertyFile(platform, 'Medication.Taken')).getText();
            console.log(`${medtakentext} `, 'header is present');
            const acard = $(fileutils.readPropertyFile(platform, 'Reports.Acute.Card')).getText();
            const acarddaysdetails = browser.elements("//XCUIElementTypeCell[XCUIElementTypeStaticText[@value='preventative']]/preceding-sibling::XCUIElementTypeCell/XCUIElementTypeStaticText[contains(@value,'Medication')]/preceding-sibling::XCUIElementTypeStaticText").getText();
            const acarddetails = browser.elements("//XCUIElementTypeCell[XCUIElementTypeStaticText[@value='preventative']]/preceding-sibling::XCUIElementTypeCell/XCUIElementTypeStaticText[contains(@value,'Medication')]").getText();
            console.log(`-- - ${acard} --- `);
            for (let i = 0; i < acarddetails.length; i += 1) {
              console.log(`${acarddetails[i]}: ${acarddaysdetails[i]} `);
            }
            const pcard = $(fileutils.readPropertyFile(platform, 'Reports.Preventative.Card')).getText();
            const pcarddaysdetails = browser.elements("//XCUIElementTypeCell[XCUIElementTypeStaticText[@value='preventative']]/following-sibling::XCUIElementTypeCell/XCUIElementTypeStaticText[contains(@value,'Medication')]/preceding-sibling::XCUIElementTypeStaticText").getText();
            const pcarddetails = browser.elements("//XCUIElementTypeCell[XCUIElementTypeStaticText[@value='preventative']]/following-sibling::XCUIElementTypeCell/XCUIElementTypeStaticText[contains(@value,'Medication')]").getText();
            console.log(`-- - ${pcard} --- `);
            for (let j = 0; j < pcarddaysdetails.length; j += 1) {
              console.log(`${pcarddetails[j]}: ${pcarddaysdetails[j]} `);
            }
          }
          browser.execute('mobile:swipe', { direction: 'up' });
          const detailstaken = $(fileutils.readPropertyFile(platform, 'Report.Details'));
          if (detailstaken.isEnabled()) {
            const detailstext = $(fileutils.readPropertyFile(platform, 'Report.Details')).getText();
            console.log(`${detailstext} `, 'header is present');
            const symptoms = browser.elements("//XCUIElementTypeOther[XCUIElementTypeOther[XCUIElementTypeStaticText[contains(@value,'Details')]]]/following-sibling:: XCUIElementTypeCell/XCUIElementTypeStaticText[@name='report_detailcoun_description_text']").getText();
            const symptomsdetail = browser.elements("//XCUIElementTypeOther[XCUIElementTypeOther[XCUIElementTypeStaticText[contains(@value,'Details')]]]/following-sibling:: XCUIElementTypeCell/XCUIElementTypeStaticText[@name='report_detailcount_title_text']").getText();
            console.log(`-- - ${detailstext} --- `);
            for (let i = 0; i < symptoms.length; i += 1) {
              console.log(`${symptoms[i]}: ${symptomsdetail[i]} `);
            }
          }
          browser.execute('mobile:swipe', { direction: 'down' });
        }
        if (object === '30.Days') {
          $(fileutils.readPropertyFile(platform, '30.Days')).click();
          console.log(`${'Displaying the details for '} ${object} `, 'tab:');
          const Migraineattacktimeperiodfirstab = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
          console.log(`${'Migraine Attack Period: '} ${Migraineattacktimeperiodfirstab} `);
          moderateseveredetails();
        } else if (object === '90.Days') {
          $(fileutils.readPropertyFile(platform, '90.Days')).click();
          console.log(`${'Displaying the details for '} ${object} `, 'tab:');
          const Migraineattacktimeperiodsecondtab = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
          console.log(`${'Migraine Attack Period: '} ${Migraineattacktimeperiodsecondtab} `);
          moderateseveredetails();
        } else if (object === '6.Months') {
          $(fileutils.readPropertyFile(platform, '6.Months')).click();
          console.log(`${'Displaying the details for'} ${object} `, 'tab:');
          const Migraineattacktimeperiodthirdtab = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
          console.log(`${'Migraine Attack Period: '} ${Migraineattacktimeperiodthirdtab} `);
          moderateseveredetails();
        } else if (object === '12.Months') {
          const thirdtabx = $(fileutils.readPropertyFile(platform, '6.Months')).getLocation('x');
          const thirdtaby = $(fileutils.readPropertyFile(platform, '6.Months')).getLocation('y');
          browser.execute('mobile:swipe', {
            direction: 'left', fromX: thirdtabx, fromY: thirdtaby, toX: 5, toY: 5,
          });
          $(fileutils.readPropertyFile(platform, '12.Months')).click();
          console.log(`${'Displaying the details for '} ${object} `, 'tab:');
          const Migraineattacktimeperiodfourthtab = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
          console.log(`${'Migraine Attack Period: '} ${Migraineattacktimeperiodfourthtab} `);
          moderateseveredetails();
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} `, ' screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify the days logged for each migraine card
*/
Then(/^I must be able to see the options present in the "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const selectiosprop = fileutils.readPropertyFile(platform, object);
        const selectlist = browser.elements(selectiosprop).getText();
        console.log('Select Comparison View List:');
        for (let i = 0; i < selectlist.length; i += 1) {
          console.log(`${selectlist[i]} `);
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} `, ' screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to verify the days logged for each migraine card
*/
Then(/^I must verify for migraine attack dates displayed after selecting the "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const reportcomparison = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
        console.log(`-- - ${reportcomparison}: `, '---');
        const prioriosprop = fileutils.readPropertyFile(platform, 'Report.Days.Last');
        const priortext = browser.element(prioriosprop);
        if (priortext.isVisible()) {
          const priortextstr = priortext.getText();
          const priordate = browser.element(`${fileutils.readPropertyFile(platform, 'Report.Days.Last.Date')} `).getText();
          console.log(`${priortextstr}: `, ` ${priordate} `);
        } else {
          console.log(`${priortext} `, 'is not visible');
        }
        const lateriosprop = fileutils.readPropertyFile(platform, 'Report.Days.Prior');
        const latertext = browser.element(lateriosprop);
        if (latertext.isVisible()) {
          const latertextstr = latertext.getText();
          const laterdate = browser.element(`${fileutils.readPropertyFile(platform, 'Report.Days.Prior.Date')} `).getText();
          console.log(`${latertextstr}: ${laterdate} `);
        } else {
          console.log(`${latertext} `, 'is not visible');
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} `, ' screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to swipe to the next card
*/
Then(/^I swipe up to the next card$/, async () => {
  browser.execute('mobile:swipe', { direction: 'up', toX: 1, toY: 1 });
});
/*
Then statement to display the migraine attacks for each card
*/
Then(/^I must be able to see the migraine attacks logged in "([^"]*)" card$/, async (object) => {
  try {
    let medicationtaken
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const lastdays = $(fileutils.readPropertyFile(platform, 'Report.Days.Last')).getText();
        const priordays = $(fileutils.readPropertyFile(platform, 'Report.Days.Prior')).getText();
        if (object === 'Report.Migraine.Days') {
          const migrainedaystext = $(fileutils.readPropertyFile(platform, 'Report.Migraine.Days')).getText();
          console.log(`-- - ${migrainedaystext} --- `);
          const lastdaysformigraine = $(fileutils.readPropertyFile(platform, 'Report.Migraine.Days.Last.Event'));
          const priordaysformigraine = $(fileutils.readPropertyFile(platform, 'Report.Migraine.Days.Prior.Event'));
          if (lastdaysformigraine.isVisible() && priordaysformigraine.isVisible()) {
            const lastdaysformigrainetext = $(fileutils.readPropertyFile(platform, 'Report.Migraine.Days.Last.Event')).getText();
            const priordaysformigrainetext = $(fileutils.readPropertyFile(platform, 'Report.Migraine.Days.Prior.Event')).getText();
            console.log(`${lastdays}: ${lastdaysformigrainetext} `);
            console.log(`${priordays}: ${priordaysformigrainetext} `);
          }
         ////browser.saveScreenshot();
        } else if (object === 'Report.Number.of.days.Moderate.to.Severe.Pain') {
          const moderateseverepaintext = $(fileutils.readPropertyFile(platform, 'Report.Number.of.days.Moderate.to.Severe.Pain')).getText();
          console.log(`-- - ${moderateseverepaintext} --- `);
          const moderatepaindayslater = browser.element('(//XCUIElementTypeStaticText[@name="report_lastEvent_text"])[2]').getText();
          const severepaindayslater = browser.element('(//XCUIElementTypeStaticText[@name="report_lastEvent_text"])[3]').getText();
          const moderatepaindaysprior = browser.element('(//XCUIElementTypeStaticText[@name="report_priorEvent_text"])[2]').getText();
          const severepaindaysprior = browser.element('(//XCUIElementTypeStaticText[@name="report_priorEvent_text"])[3]').getText();
          console.log(`${'Moderate attacks for '} ${lastdays}: ${moderatepaindayslater} `);
          console.log(`${'Severe attacks for '} ${lastdays}: ${severepaindayslater} `);
          console.log(`${'Moderate attacks for '} ${priordays} : ${moderatepaindaysprior} `);
          console.log(`${'Severe attacks for '} ${priordays} : ${severepaindaysprior} `);
         ////browser.saveScreenshot();
        } else if (object === 'Report.Number.of.days.Moderate.to.Severe.Impact') {
          const moderatesevereimpacttext = $(fileutils.readPropertyFile(platform, 'Report.Number.of.days.Moderate.to.Severe.Impact')).getText();
          console.log(`-- - ${moderatesevereimpacttext} --- `);
          const moderateimpactdayslater = browser.element('(//XCUIElementTypeStaticText[@name="report_lastEvent_text"])[4]').getText();
          const severeimpactdayslater = browser.element('(//XCUIElementTypeStaticText[@name="report_lastEvent_text"])[5]').getText();
          const moderateimpactdaysprior = browser.element('(//XCUIElementTypeStaticText[@name="report_priorEvent_text"])[4]').getText();
          const severeimpactdaysprior = browser.element('(//XCUIElementTypeStaticText[@name="report_priorEvent_text"])[5]').getText();
          console.log(`${'Moderate attacks for '} ${lastdays}: ${moderateimpactdayslater} `);
          console.log(`${'Severe attacks for '} ${lastdays}: ${severeimpactdayslater} `);
          console.log(`${'Moderate attacks for '} ${priordays} : ${moderateimpactdaysprior} `);
          console.log(`${'Severe attacks for '} ${priordays} : ${severeimpactdaysprior} `);
         ////browser.saveScreenshot();
        } else if (object === 'Report.Number.of.Medication.Taken') {
          const medxpath = fileutils.readPropertyFile(platform, 'Report.Preventative.Acute.Medication');
          const medlater = browser.elements('//XCUIElementTypeOther[@name="report_medication_headerText"]/preceding-sibling::XCUIElementTypeStaticText[1]').getText();
          const medprior = browser.elements('//XCUIElementTypeOther[@name="report_medication_headerText"]/preceding-sibling::XCUIElementTypeStaticText[2]').getText();
          medicationtaken = browser.elements(`~${medxpath} `).getText();
          console.log(`${lastdays} `, 'details:');
          for (let i = 0; i < medicationtaken.length; i += 1) {
            console.log(`${medicationtaken[i]}: ${medlater[i]} `);
          }
          console.log(`${priordays} `, 'details:');
          for (let i = 0; i < medicationtaken.length; i += 1) {
            console.log(`${medicationtaken[i]}: ${medprior[i]} `);
          }
         ////browser.saveScreenshot();
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
Then statement to verify the days match with the tab selected
*/
Then(/^I must verify the dates displayed is as per the "([^"]*)" tab selected$/, { timeout: 60 * 1000 }, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        if (object === '30.Days') {
          const firsttabtext = $(fileutils.readPropertyFile(platform, object)).getText();
          const Migraineattacktimeperiod = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
          const thirtydayslessthancurrentdate = moment().subtract(30, 'days').format('DD MMM YYYY');
          const currentdate = moment().format('DD MMM YYYY');
          const Migraineattackdateadd = `${thirtydayslessthancurrentdate} - ${currentdate} `;
          if (Migraineattacktimeperiod === Migraineattackdateadd) {
            console.log('Days are matching with the tab selected');
            console.log(`${firsttabtext} - ${Migraineattacktimeperiod} `);
          } else {
            console.log(`${firsttabtext} `, 'is not selected');
          }
        } else if (object === '90.Days') {
          const secondtabtext = $(fileutils.readPropertyFile(platform, object)).getText();
          const Migraineattacktimeperiod = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
          const ninetydayslessthancurrentdate = moment().subtract(90, 'days').format('DD MMM YYYY');
          const currentdate = moment().format('DD MMM YYYY');
          const Migraineattackdateadd = `${ninetydayslessthancurrentdate} - ${currentdate} `;
          if (Migraineattacktimeperiod === Migraineattackdateadd) {
            console.log('Days are matching with the tab selected');
            console.log(`${secondtabtext}: `, ` ${Migraineattacktimeperiod} `);
          } else {
            console.log(`${secondtabtext} `, 'is not selected');
          }
        } else if (object === '6.Months') {
          const thirdtabtext = $(fileutils.readPropertyFile(platform, object)).getText();
          const Migraineattacktimeperiod = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
          const sixmonthslessthancurrentdate = moment().subtract(6, 'months').format('DD MMM YYYY');
          const currentdate = moment().format('DD MMM YYYY');
          const Migraineattackdateadd = `${sixmonthslessthancurrentdate} - ${currentdate} `;
          if (Migraineattacktimeperiod === Migraineattackdateadd) {
            console.log('Days are matching with the tab selected');
            console.log(`${thirdtabtext} - ${Migraineattacktimeperiod} `);
          } else {
            console.log(`${thirdtabtext} `, 'is not selected');
          }
        } else if (object === '12.Months') {
          const fourthtabtext = $(fileutils.readPropertyFile(platform, object)).getText();
          const Migraineattacktimeperiod = $(fileutils.readPropertyFile(platform, 'Migraine.Attack.Period')).getText();
          const twelvemonthslessthancurrentdate = moment().subtract(12, 'months').format('DD MMM YYYY');
          const currentdate = moment().format('DD MMM YYYY');
          const Migraineattackdateadd = `${twelvemonthslessthancurrentdate} -${currentdate} `;
          if (Migraineattacktimeperiod === Migraineattackdateadd) {
            console.log('Days are matching with the tab selected');
            console.log(`${fourthtabtext}: `, ` ${Migraineattacktimeperiod} `);
          } else {
            console.log(`${fourthtabtext} `, 'is not selected');
          }
        }
        break
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
Then statement to verify for medication icon present for the current date
*/
Then(/^I should be able to see the medication icon for the current date$/, async () => {
  try {
    switch (platform) {
      case 'android':
        break;
      case 'ios':
        const dateobj = new Date();
        const systemdate = dateobj.getDate();
        const medicationdotcheck = $(fileutils.readPropertyFile(platform, 'Quick.Entry.Current.Date.Icon'));
        const currentdateincalendar = $(fileutils.readPropertyFile(platform, 'CalendarCurrentDate')).getText();
        if (currentdateincalendar.includes(systemdate) && medicationdotcheck.isEnabled()) {
          console.log(`${'Medication Icon is present for the current date: '} ${currentdateincalendar} `);
        } else {
          console.log(`${'Medication Icon is missing for the current date: '} ${currentdateincalendar} `);
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('Screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', 'Medication Icon is missing for the current date');
  }
});
Then(/^I click on "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const check = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (check) {
          console.log(`${object} screen is displayed`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const medlabel = $(fileutils.readPropertyFile(platform, 'Medication.Icon.Label'));
        if (medlabel.isEnabled()) {
          const medlabeltext = medlabel.getText();
          console.log(`${'Clicking on '} ${medlabeltext} `);
          $(fileutils.readPropertyFile(platform, object)).click();
        } else {
          console.log(`${'Unable to find the '} ${medlabel} `);
        }
        break;
      case 'web':
        // web operation
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
    Then statement to verify for the migraine header with config data
*/
Then(/^I should verify "([^"]*)" matches in "([^"]*)" screen$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const textFromConfig = appconfig.verifyTextFromConfig(screen);
          const migraineheadertext = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          if (textFromConfig === migraineheadertext) {
            console.log('Migraine Header text matches');
            console.log(`${'App: '} ${migraineheadertext} `);
            console.log(`${'Config: '} ${textFromConfig} `);
          } else {
            console.log("Text doesn't match");
            console.log(`${'App: '} ${migraineheadertext} `);
            console.log(`${'Config: '} ${textFromConfig} `);
          }
         ////browser.saveScreenshot();
          break;
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
    Then statement to verify for the migraine header with config data
*/
Then(/^I should verify that medication is added for the current day and date under "([^"]*)" label$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const medcurrentdate = browser.element(`${fileutils.readPropertyFile(platform, 'Medication.Current.Date')} `).getText();
        const datefromsystem = moment().format('ddd D MMM YY');
        if (medcurrentdate === datefromsystem) {
          console.log(`-- - ${object} --- `);
          console.log(`${'Medication is being added for the current date: '} ${medcurrentdate} `);
        } else {
          console.log(`${'Medication is being added for a different date: '} ${medcurrentdate} `);
          console.log(`${'Date displayed in app: '} ${medcurrentdate} `);
          console.log(`${'System date: '} ${datefromsystem} `);
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
    Then statement to verify for the medication time added
*/
Then(/^I should see the "([^"]*)" added$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const meddate = browser.element(`${fileutils.readPropertyFile(platform, 'Medication.Current.Date')} `).getText();
        const medtime = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
        console.log(`${'Medication Date: '} ${meddate} `);
        console.log(`${'Medication Time: '} ${medtime} `);
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
    Then statement to verify the alert description for time chosen from the pickerwheel
*/
Then(/^I must see the "([^"]*)" with the new time chosen from pickerwheel$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const alertdesctime = $(fileutils.readPropertyFile(platform, object)).getText();
        const HourValue = Hour;
        const MinuteValue = Minute;
        const MeridienValue = TimeMeridien;
        const timeadd = `0${HourValue}: ${MinuteValue} ${MeridienValue} `;
        if (alertdesctime.includes(timeadd)) {
          console.log(`${object} `, 'is displayed with the new time chosen from picker wheel');
          console.log(`${'Alert Display: '} ${alertdesctime} `);
        } else {
          console.log('There is a difference in the time chosen and the alert displayed');
          console.log(`${'Alert displayed: '} ${alertdesctime} `);
        }
       ////browser.saveScreenshot();
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
    Then statement to display the new time added
*/
Then(/^I should see the new time displayed in the "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const medtime = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
        let HourValue = Hour;
        const MinuteValue = Minute;
        const MeridienValue = TimeMeridien;
        if (HourValue >= 10) {
          HourValue = `${HourValue} `
        }
        const Timeadd = `${HourValue}: ${MinuteValue} ${MeridienValue} `;
        if (medtime === Timeadd) {
          console.log(`${'New time chosen: '} ${medtime} `);
        } else {
          console.log('Time is not displayed');
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
    Then statement to see medication icon in the previous screen
*/
Then(/^I should see "([^"]*)" in the previous screen$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const medicon = $(fileutils.readPropertyFile(platform, object));
        if (medicon.isEnabled()) {
          const medlabel = $(fileutils.readPropertyFile(platform, 'Medication.Icon.Label')).getText();
          console.log(`${object} `, 'is present in the screen with label:', ` ${medlabel} `);
        } else {
          console.log(`${object} `, 'is not present in the screen');
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
    Then statement to see that time is displayed as 12 am by default if
    no medication is selected for the current day
*/
Then(/^I should verify that "([^"]*)" has 12:00 am as default if no medication is selected for the current day$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const medtime = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
        const time = '12:00 am';
        if (medtime === time) {
          console.log(`${'Default time is displayed: '} ${medtime} `);
        } else {
          console.log(`${'Different time is displayed: '} ${medtime} `);
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
    Then statement to tap on back button to go home page
*/
Then(/^I tap "([^"]*)" button to go to home page$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const backbutton = $(fileutils.readPropertyFile(platform, object));
        if (backbutton.isEnabled()) {
          backbutton.click();
        } else {
          console.log('Unable to click on back button');
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
  Checks objects Names: Accounts , Notifications
    and Version from Settings compares from appconfig
*/
Then(/^I should verify "([^"]*)" in "([^"]*)" screen$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const setmenu = fileutils.readPropertyFile(platform, object);
        const settingmenutext = browser.elements(setmenu).getText();
        const textfromconfig = appconfig.verifyTextFromConfig(screen);
        const versioncheck = settingmenutext[2];
        if (textfromconfig[0] === settingmenutext[0]
          && textfromconfig[1] === settingmenutext[1] && versioncheck.includes(textfromconfig[2])) {
          console.log('============Values Match============');
          console.log(`Value from Config: ${textfromconfig[0]}| `, `Value from Application: ${settingmenutext[0]} `);
          console.log(`Value from Config: ${textfromconfig[1]}| `, `Value from Application: ${settingmenutext[1]} `);
          console.log(`Value from Config: ${textfromconfig[2]}| `, `Value from Application: ${settingmenutext[2]} `);
          break;
        } else {
          console.log("============Values Don't Match============");
          console.log(`Value from Config: ${textfromconfig[0]}| `, ` Value from Application: ${settingmenutext[0]} `);
          console.log(`Value from Config: ${textfromconfig[1]}| `, ` Value from Application: ${settingmenutext[1]} `);
          console.log(`Value from Config: ${textfromconfig[2]}| `, ` Value from Application: ${settingmenutext[2]} `);
        }
        const button = $(fileutils.readPropertyFile(platform, object));
        if (button.isEnabled()) {
          console.log(`${'Clicking on '} ${object} `);
          button.click();
        }
        break
      case 'web':
        // web operation
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
    Checks Terms And Condtions And Privacy Policy Options are above Logout in HamburgerMenu
*/
Then(/^I should verify "([^"]*)" are above Logout in "([^"]*)"$/, async (screen, object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const textfromconfig = appconfig.verifyTextFromConfig(screen);
        const xpathFromIosProp = fileutils.readPropertyFile(platform, object);
        const HamburgerMenuOptions = browser.elements(xpathFromIosProp).getText();
        console.log(`All Hamburger Menu Options: ${HamburgerMenuOptions} `);
        for (let i = HamburgerMenuOptions.length; i > 0; i -= 1) {
          const xpath = `${xpathFromIosProp} [${String(i)}]`;
          const text = browser.elements(xpath).getText();
          if (text === textfromconfig[8]) {
            const xpathOfMenu1 = `${xpathFromIosProp} [${String(i - 1)}]`;
            const xpathOfMenu2 = `${xpathFromIosProp} [${String(i - 2)}]`;
            if (browser.elements(xpathOfMenu1).getText() === textfromconfig[7] && browser
              .elements(xpathOfMenu2).getText() === textfromconfig[6]) {
              console.log('Terms And Condtions & Privacy Policy options are above Logout in HamburgerMenu');
              break;
            } else {
              console.log('Terms And Condtions & Privacy Policy options not found above Logout in HamburgerMenu');
              break;
            }
          }
        }
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
    Then statement to tap on back button to go home page
*/
Then(/^I tap on "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          browser.element(`${fileutils.readPropertyFile(platform, object)}`).click()
          console.log(`Clicked on ${object}`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const xpath = fileutils.readPropertyFile(platform, object);
        const exists1 = browser.waitUntil(() => {
          const xpathcheck = fileutils.readPropertyFile(platform, object);
          if (xpathcheck.startsWith('/') || xpathcheck.startsWith('//')) {
            return $(fileutils.readPropertyFile(platform, object)).isVisible();
          }
          return browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible();
        }, timeOutinMs, 'Error: Element not found');
        if (exists1) {
          if (xpath.startsWith('/') || xpath.startsWith('//')) {
            const buttonxpath = $(`${xpath}`)
            if (buttonxpath.isEnabled()) {
              console.log(`${'Clicking on '} ${object} `);
              buttonxpath.click();
            }
          } else {
            const buttonid = browser.element(`${xpath}`)
            if (buttonid.isEnabled()) {
              console.log(`${'Clicking on '} ${object} `);
              buttonid.click();
            }
          }
        }
        browser.saveScreenshot()
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I tap on "([^"]*)" (?:button|label|card|link|icon|option|field|mark|screen)$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          browser.element(`${fileutils.readPropertyFile(platform, object)}`).click()
          console.log(`Clicked on ${object}`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        const xpath = fileutils.readPropertyFile(platform, object);
        const exists1 = browser.waitUntil(() => {
          const xpathcheck = fileutils.readPropertyFile(platform, object);
          if (xpathcheck.startsWith('/') || xpathcheck.startsWith('//')) {
            return $(fileutils.readPropertyFile(platform, object)).isVisible();
          }
          return browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible();
        }, timeOutinMs, 'Error: Element not found');
        if (exists1) {
          if (xpath.startsWith('/') || xpath.startsWith('//')) {
            const buttonxpath = $(`${xpath}`)
            if (buttonxpath.isEnabled()) {
              console.log(`${'Clicking on '} ${object} `);
              buttonxpath.click();
            }
          }
          else if (object == "ChangeName.Logout") {
            const buttonxpath = browser.element("~Change Name &  Logout");
            if (buttonxpath.isEnabled()) {
              console.log(`${'Clicking on '} ${object} `);
              buttonxpath.click();
            }
          }
          else if (object == "Continue.with.this.device") {
            const buttonxpath = browser.element("~  Continue with  this device       ");
            if (buttonxpath.isEnabled()) {
              console.log(`${'Clicking on '} ${object} `);
              buttonxpath.click();
            }
          }
          else {
            const buttonid = browser.element(`${xpath}`)
            if (buttonid.isEnabled()) {
              console.log(`${'Clicking on '} ${object} `);
              buttonid.click();
            }
          }
        }
        //browser.saveScreenshot()
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see the corresponding impact description$/, async () => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const textFromConfig = appconfig.verifyTextFromConfig('ImpairmentScaleValue');
        for (let i = 0; i < textFromConfig.length; i += 1) {
          if (textFromConfig[i] === browser.element('~editimpact_descriptiontext_view').getText()) {
            console.log('Actual and expected  match \n Actual :',
              browser.element('~editimpact_descriptiontext_view').getText(), '\n Expected:', `${textFromConfig[i]}`);
           ////browser.saveScreenshot();
            break;
          }
        }
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read the impact level ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the impact level ');
  }
});
Then(/^I should see the corresponding impact level$/, async () => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const textFromConfig = appconfig.verifyTextFromConfig('ImpairmentScale');
        for (let i = 0; i < textFromConfig.length; i += 1) {
          if (textFromConfig[i] === browser.element('~editimpact_impact_text').getText()) {
            console.log(`Actual and expected levels match \n Actual : ${browser.element('~editimpact_impact_text').getText()} \n Expected: ${textFromConfig[i]}`);
            console.log(`Impact Value: ${browser.element('~editimpact_impact_value').getText()} \n`);
           ////browser.saveScreenshot();
            break;
          }
        }
        break
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read the impact level ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the impact level ');
  }
});
Then(/^I should see the corresponding intensity level$/, async () => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const textFromConfig = appconfig.verifyTextFromConfig('IntensityScale');
        for (let i = 0; i < textFromConfig.length; i += 1) {
          if (textFromConfig[i] === browser.element('~editintensity_intensity_type').getText()) {
            console.log(`Actual and expected levels match \n Actual : ${browser.element('~editintensity_intensity_type').getText()} \n Expected: ${textFromConfig[i]}`);
           ////browser.saveScreenshot();
            break;
          }
        }
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read the intensity level ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the intensity level ');
  }
});
/*
    Then statment to verify that header matches with config data
*/
Then(/^I should verify "([^"]*)" header text matches with "([^"]*)" screen$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const navtitle = browser.element(`${fileutils.readPropertyFile(platform, object)}`);
        if (navtitle.isEnabled()) {
          const navtext = navtitle.getText();
          const textfromconfig = appconfig.verifyTextFromConfig(screen);
          console.log(textfromconfig)
          for (let i = 0; i < textfromconfig.length; i += 1) {
            if (textfromconfig[i] === navtext) {
              console.log('----Navigation title matches----');
              console.log(`App: ${navtext}`);
              console.log(`Config: ${textfromconfig[i]}`);
              break;
            }
          }
        }
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} values from application and appconfig do not match`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} values from application and appconfig do not match`);
  }
});
Then(/^I should see "([^"]*)" in the screen$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => $(fileutils.readPropertyFile(platform, object)).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} screen is displayed`);
          const textmessage = $(fileutils.readPropertyFile(platform, object)).getText();
          console.log(`${'Validation Message/Text Display: '} ${textmessage} `);
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
Then(/^I switch back to app$/, async () => {
  try {
    browser.execute('mobile: launchApp', { bundleId: bundleid });
   ////browser.saveScreenshot();
  } catch (e) {
    console.error('Cannot Switch Back to App ', e);
  }
});
/*
    Then statment to drag from one point to another for carousal
*/
Then(/^I should swipe left in the "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        if (object === 'Summary.of.Intensity.Calendar.Carousel' || object === 'Summary.of.Impact.Calendar.Carousel') {
          console.log('Swiping left in the ', `${object} `);
          const xcoordinate = $(fileutils.readPropertyFile(platform, 'Summary.of.Intensity.Impact.Moderate')).getLocation('x');
          const ycoordinate = $(fileutils.readPropertyFile(platform, 'Summary.of.Intensity.Impact.Moderate')).getLocation('y');
          browser.execute('mobile:dragFromToForDuration', {
            duration: 5, fromX: xcoordinate, fromY: ycoordinate, toX: 30, toY: 30,
          });
          browser.pause(7000);
        } else {
          console.log('Swiping left in the', `${object} `);
          const xcoordinateforcurrentlevel = browser.element("//XCUIElementTypeStaticText[@name='migraine_attack_time']").getLocation('x');
          const ycoordinateforcurrentlevel = browser.element("//XCUIElementTypeStaticText[@name='migraine_attack_time']").getLocation('y');
          browser.execute('mobile:dragFromToForDuration', {
            duration: 5,
            fromX: xcoordinateforcurrentlevel,
            fromY: ycoordinateforcurrentlevel,
            toX: 30,
            toY: 30,
          });
        }
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
    Then statment to capture the attack heading and attack time
*/
Then(/^I should be able to see the "([^"]*)" attack header and days recorded$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        console.log(`${'---Displaying the '} ${object} `, 'attack header and days recorded---');
        if (object === 'Calendar.Migraine.Days') {
          const calmigrainetext = $(fileutils.readPropertyFile(platform, object)).getText();
          const calmigraineattacktext = browser.element(`${fileutils.readPropertyFile(platform, 'Number.of.Attack.Days.Recorded')} `).getText();
         ////browser.saveScreenshot();
          console.log(`${calmigrainetext}: `, ` ${calmigraineattacktext} `);
        } else if (object === 'Calendar.Medication.Days') {
          const calmedicationtext = $(fileutils.readPropertyFile(platform, object)).getText();
          const calmedicationattacktext = browser.element(`${fileutils.readPropertyFile(platform, 'Number.of.Attack.Days.Recorded')} `).getText();
         ////browser.saveScreenshot();
          console.log(`${calmedicationtext}: `, ` ${calmedicationattacktext} `);
        } else if (object === 'Calendar.Summary.of.Intensity') {
          const sumofintensitylevel = browser.elements("//XCUIElementTypeStaticText[@name='migraine_attack_level']").getText();
          const sumofintensityattackdays = browser.elements("//XCUIElementTypeStaticText[@name='migraine_attack_time']").getText();
         ////browser.saveScreenshot();
          for (let i = 0; i < sumofintensitylevel.length; i += 1) {
            console.log(`${sumofintensitylevel[i]}: `, ` ${sumofintensityattackdays[i]} `);
          }
        } else if (object === 'Calendar.Summary.of.Impact') {
          const sumofimpactlevel = browser.elements("//XCUIElementTypeStaticText[@name='migraine_attack_level']").getText();
          const sumofimpactattackdays = browser.elements("//XCUIElementTypeStaticText[@name='migraine_attack_time']").getText();
         ////browser.saveScreenshot();
          for (let i = 0; i < sumofimpactlevel.length; i += 1) {
            console.log(`${sumofimpactlevel[i]}: `, ` ${sumofimpactattackdays[i]} `);
          }
        }
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
Then(/^I verify "([^"]*)" label in Day Details screen for three consecutive days$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const TodayLabel = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          if (TodayLabel === 'Today') {
            console.log(`${TodayLabel}: Label found in Day Detail screen`);
          } else {
            console.log(`${TodayLabel}: Label  not found in Day Detail screen`);
            break;
          }
          browser.element('~dateNavigator_previous_button').click();
          const YesterdayLabel = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          if (YesterdayLabel === 'Yesterday') {
            console.log(`${YesterdayLabel}: Label found in Day Detail screen`);
          } else {
            console.log(`${YesterdayLabel}: Label  not found in Day Detail screen`);
            break;
          }
          browser.element('~dateNavigator_previous_button').click();
          const TheyBeforeLabel = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
          let startdate = moment();
          startdate = startdate.subtract(2, 'days');
          startdate = startdate.format('dddd, Do MMM');
          if (TheyBeforeLabel === startdate) {
            console.log(`${TheyBeforeLabel}: Label found in Day Detail screen`);
          } else {
            console.log(`${TheyBeforeLabel}: Label  not found in Day Detail screen`);
            break;
          }
        }
        break;
      default: break;
    }
  } catch (e) {
    console.error('Unable to open the URL specified', e);
    return assert.strictEqual(platform, '', e);
  }
});
/*
Then statement to capture the error message on screen for elements having Xpath.
*/
Then(/^I should see "([^"]*)" on screen$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => $(fileutils.readPropertyFile(platform, object)).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} screen is displayed`);
          const textmessage = $(fileutils.readPropertyFile(platform, object)).getText();
          console.log(`${'Message displayed: '} ${textmessage} `);
         ////browser.saveScreenshot();
          break;
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
    Then statement to verify the incorrect username and password with config data
    */
Then(/^I should validate the "([^"]*)" with the "([^"]*)" of config screen$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const verifyfromconfig = appconfig.verifyTextFromConfig(screen);
        const verifyfromscreen = $(fileutils.readPropertyFile(platform, object)).getText();
        for (let i = 0; i < verifyfromconfig.length; i += 1) {
          if (verifyfromconfig[i].includes(verifyfromscreen)) {
            console.log('---Text from Screen matches with Text from Config---');
            console.log(`Screen: ${verifyfromscreen} `);
            console.log(`Config: ${verifyfromconfig[i]} `);
            break;
          }
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
          Then statement to verify the header/button/card present in the screen
  */
Then(/^I should see "([^"]*)" (?:button|header|card|text) in the screen$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(object, 'screen is displayed');
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => {
          const xpathcheck = fileutils.readPropertyFile(platform, object)
          if (xpathcheck.startsWith('/') || xpathcheck.startsWith('//')) {
            return $(fileutils.readPropertyFile(platform, object)).isVisible();
          }
          return browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible();
        }, timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`${object} is displayed`);
          const xpathvalue = fileutils.readPropertyFile(platform, object)
          const cardvalue = browser.elements(`~${xpathvalue}`).getText()
          for (let i = 0; i < cardvalue.length; i += 1) {
            if (xpathvalue.startsWith('/') || xpathvalue.startsWith('//')) {
              const textmessagewithxpath = $(fileutils.readPropertyFile(
                platform, object,
              )).getText();
              if (cardvalue[i] === textmessagewithxpath) {
                console.log(`Button or Header text displayed: ${textmessagewithxpath}`)
                break;
              }
            } else {
              const textmessagewithid = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText();
              if (cardvalue[i] === textmessagewithid) {
                console.log(`Button or Header text displayed: ${cardvalue[i]}`)
                break;
              }
            }
          }
         ////browser.saveScreenshot();
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
  Then statement to compare data from screen with config file
  */
Then(/^I should verify "([^"]*)" (?:header|card) matches with "([^"]*)" of config$/, async (object, screen) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const textfromconfig = appconfig.verifyTextFromConfig(screen)
        const xpathcheck = fileutils.readPropertyFile(platform, object)
        if (xpathcheck.startsWith('/') || xpathcheck.startsWith('//')) {
          const textfromscreenusingxpath = $(fileutils.readPropertyFile(platform, object)).getText()
          if (screen === 'DayDetailsScreenText') {
            if (textfromconfig === textfromscreenusingxpath) {
              console.log('---Text matches---')
              console.log(`App: ${textfromconfig}`)
              console.log(`Screen: ${textfromscreenusingxpath}`)
            }
          } else if (screen === 'Describe.Impact.Pain.Migraine.Card') {
            for (let i = 0; i < textfromconfig; i += 1) {
              if (textfromconfig[i] === textfromscreenusingxpath) {
                console.log('---Text matches---')
                console.log(`App: ${textfromconfig}`)
                console.log(`Screen: ${textfromscreenusingxpath}`)
              }
            }
          }
        } else {
          const textfromscreenusingid = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText()
          if (screen === 'DayDetailsScreenText') {
            if (textfromconfig === textfromscreenusingid) {
              console.log('---Text matches---')
              console.log(`App: ${textfromconfig}`)
              console.log(`Screen: ${textfromscreenusingid}`)
            }
          } else if (screen === 'Describe.Impact.Pain.Migraine.Card') {
            for (let i = 0; i < textfromconfig; i += 1) {
              if (textfromconfig[i] === textfromscreenusingid) {
                console.log('---Text matches---')
                console.log(`App: ${textfromconfig}`)
                console.log(`Screen: ${textfromscreenusingid}`)
              }
            }
          }
        }
        break;
      case 'Web':
        // web operation
        break
      default: break;
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
  Then statement to verify if yesterday has been displayed
  */
Then(/^I should verify the header displayed as "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const day = browser.element(`${fileutils.readPropertyFile(platform, 'DayDetail.Day')}`)
        if (day.isVisible()) {
          const daytext = browser.element(`${fileutils.readPropertyFile(platform, 'DayDetail.Day')}`).getText()
          if (daytext === 'Yesterday' || daytext === 'Today') {
            console.log(`${daytext} is displayed after clicking on the date navigation bar`)
          } else {
            console.log(`Failure: ${daytext} is displayed after clicking on the date navigation bar`)
          }
        }
        break;
      case 'Web':
        // web operation
        break
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
/*
  Then statement to verify if yesterday has been displayed
  */
Then(/^I should verify the header displayed as date for "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const daybeforeyesterday = browser.element(`${fileutils.readPropertyFile(platform, 'DayDetail.Day')}`)
        const daybeforedate = moment().subtract(2, 'days').format('dddd, Do MMMM');
        if (daybeforeyesterday.isVisible()) {
          const daybeforeyesterdaytext = browser.element(`${fileutils.readPropertyFile(platform, 'DayDetail.Day')}`).getText()
          if (daybeforeyesterdaytext === daybeforedate) {
            console.log(`Day before yesterday date: ${daybeforeyesterdaytext}`)
          } else {
            console.log(`Not displayed as date ${daybeforeyesterdaytext}`)
          }
        }
        break;
      case 'Web':
        // web operation
        break
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
  Then statement to verify if yesterday has been displayed
  */
Then(/^I should see "([^"]*)" displayed for "([^"]*)" card$/, async (object, card) => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(`${object} screen is displayed`);
       ////browser.saveScreenshot();
        break;
      case 'ios':
        if (card === 'Describe.Impact') {
          const impactimage = $(`${fileutils.readPropertyFile(platform, object)}`)
          const impactchevron = $(`${fileutils.readPropertyFile(platform, 'Describe.Impact.Chevron')}`)
          if (impactimage.isVisible() || impactchevron.isVisible()) {
            console.log(`${object} is visible and present on the screen for the ${card} card`)
          } else {
            console.log(`${object} is not visible and present on the screen for the ${card} card`)
          }
        } else if (card === 'Describe.Pain.Intensity') {
          const painintensityimage = $(`${fileutils.readPropertyFile(platform, object)}`)
          const painintensitychevron = $(`${fileutils.readPropertyFile(platform, 'Describe.Pain.Intensity.Chevron')}`)
          if (painintensityimage.isVisible() || painintensitychevron.isVisible()) {
            console.log(`${object} is visible and present on the screen for the ${card} card`)
          } else {
            console.log(`${object} is not visible and present on the screen for the ${card} card`)
          }
        } else if (card === 'Describe.Migraine.Details') {
          const migrainedetailsimage = $(`${fileutils.readPropertyFile(platform, object)}`)
          const migrainedetailschevron = $(`${fileutils.readPropertyFile(platform, 'Describe.Migraine.Details.Chevron')}`)
          if (migrainedetailsimage.isVisible() || migrainedetailschevron.isVisible()) {
            console.log(`${object} is visible and present on the screen for the ${card} card`)
          } else {
            console.log(`${object} is not visible and present on the screen for the ${card} card`)
          }
        } else if (card === 'Describe.Medication') {
          const medicationimage = $(`${fileutils.readPropertyFile(platform, object)}`)
          const medicationchevron = $(`${fileutils.readPropertyFile(platform, 'Describe.Medication.Chevron')}`)
          if (medicationimage.isVisible() || medicationchevron.isVisible()) {
            console.log(`${object} is visible and present on the screen for the ${card} card`)
          } else {
            console.log(`${object} is not visible and present on the screen for the ${card} card`)
          }
        }
        break;
      case 'Web':
        // web operation
        break
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
/*
          Then statement to verify the header/button/card present in the screen
  */
Then(/^I must verify the order of cards present in the screen$/, async () => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, '')} `).isVisible(), timeOutinMs, 'Element not found');
        console.log('', 'screen is displayed');
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const cardstext = browser.elements('~card_primary_text').getText()
        if (_.indexOf(cardstext, 'Describe Pain Intensity') > _.indexOf(cardstext, 'Describe Impact')) {
          console.log('Desribe Impact card is displayed 1st and then Describe Pain Intensity is displayed 2nd')
        } else {
          console.log('Describe Pain Intensity card is displayed 1st and then Desribe Impact is displayed 2nd')
        }
        if (_.indexOf(cardstext, 'Describe Migraine Details') > _.indexOf(cardstext, 'Describe Pain Intensity')) {
          console.log('Describe Pain Intensity card is displayed 2nd and then Describe Migraine Details is displayed 3rd')
        } else {
          console.log('Describe Migraine Details card is displayed 1st and then Describe Pain Intensity is displayed 2nd')
        }
        if (_.indexOf(cardstext, 'Describe Medication') > _.indexOf(cardstext, 'ßDescribe Migraine Details')) {
          console.log('Describe Migraine Details card is displayed 3rd and then Describe Medication is displayed 4th')
        } else {
          console.log('Describe Medication card is displayed 1st and then Describe Migraine Details is displayed 2nd')
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', 'screen is not displayed');
  }
});
/*
          Then statement to verify the header/button/card present in the screen
  */
Then(/^I must verify the order of medication card after saving for a different time slot$/, async () => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, '')} `).isVisible(), timeOutinMs, 'Element not found');
        console.log('', 'screen is displayed');
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const xpath = fileutils.readPropertyFile(platform, 'Describe.Medication.Time')
        const medtimes = browser.elements(xpath).getText()
        console.log(`Time displayed for each medication card: ${medtimes}`)
        const timeadded = `${Hour}:${Minute} ${TimeMeridien}`
        if (_.indexOf(medtimes, timeadded) < _.indexOf(medtimes, '12:00 am')) {
          console.log(`${timeadded} is displayed first after the change in time for a medication card`)
        } else {
          console.log(`${timeadded} is displayed second after the change in time for a medication card`)
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', 'screen is not displayed');
  }
});
/*
          Then statement to verify the header/button/card present in the screen
  */
Then(/^I should verify in incomplete tab for undetailed events$/, async () => {
  try {
    switch (platform) {
      case 'Android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, '')} `).isVisible(), timeOutinMs, 'Element not found');
        console.log('', 'screen is displayed');
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const undetailedcards = function undetailedcards() {
          const migrainecard = $(`${fileutils.readPropertyFile(platform, 'Undetailed.Migraine.Card')}`)
          const medicationcard = $(`${fileutils.readPropertyFile(platform, 'Undetailed.Medication.Card')}`)
          // Migraine Card ----
          if (migrainecard.isVisible()) {
            migrainecard.click()
            // Impact tab
            const migraineheader = $(`${fileutils.readPropertyFile(platform, 'Undetailed.Migraine.Detail')}`).getText()
            const editimpact = browser.element(`${fileutils.readPropertyFile(platform, 'Edit.Impact')}`).getText()
            console.log(`${migraineheader} header is displayed`)
            console.log(`Impact text: ${editimpact} `)
            // Clicking on pain tab
            browser.element(`${fileutils.readPropertyFile(platform, 'Pain')}`).Cick()
            const editpain = browser.element(`${fileutils.readPropertyFile(platform, 'Edit.Intensity')}`).getText()
            console.log(`Pain text: ${editpain}`)
            // Clicking on details tab
            browser.element(`${fileutils.readPropertyFile(platform, 'Details')}`).Cick()
            const editdetails = browser.element(`${fileutils.readPropertyFile(platform, 'Select.Details')}`).getText()
            console.log(`Details text: ${editdetails}`)
            // Clicking on done button
            browser.element(`${fileutils.readPropertyFile(platform, 'Donebtn')}`).Cick()
          } else {
            console.log('Edit Migraine not present')
          }
          // Medication card
          if (medicationcard.isVisible()) {
            medicationcard.click()
            const editmedication = browser.element(`${fileutils.readPropertyFile(platform, 'Medication.Detail.Banner')}`).getText()
            console.log(`Edit Medication text: ${editmedication}`)
            browser.element(`${fileutils.readPropertyFile(platform, 'Add.Medication.Save')}`.click())
          }
        }
        // Checking for weekday and month in Incomplete Event
        const weekday = browser.element(`${fileutils.readPropertyFile(platform, 'Undetailed.WeekdDay')}`)
        const month = $(`${fileutils.readPropertyFile(platform, 'Undetailed.Month')}`)
        if (weekday.isVisible()) {
          console.log(`Undetailed event has been logged on ${weekday.getText()} in the month of ${month.getText()}`)
        }
        const cards = browser.elements(`${fileutils.readreadPropertyFile(platform, 'Undetailed.Cards')}`)
        if (cards.isVisible()) {
          console.log(`Undetailed event cards displayed: ${cards.getText()}`)
          undetailedcards()
        } else {
          console.log('There are no undetailed event cards present on screen')
        }
        break;
      case 'Web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error('screen is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', 'screen is not displayed');
  }
});
Then(/^I should see "([^"]*)" count on "([^"]*)"$/, async (tab, navigationtab) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.elements(`${fileutils.readPropertyFile(platform, navigationtab)}`).isEnabled(), timeOutinMs, 'Element not found');
        if (exists) {
          const value = browser.elements(`${fileutils.readPropertyFile(platform, navigationtab)}`).getText();
          if (tab === value) {
            console.log(`Total ${tab} incomplete badges are present`)
            break
          } else {
            console.log('Incomplete badges are not present')
          }
        }
       ////browser.saveScreenshot();
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `Total ${tab} incomplete badges are not displayed`);
  }
});
Then(/^I get values from "([^"]*)" and verify if they are sorted$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const check = fileutils.readPropertyFile(platform, object)
        if (check.startsWith('/') || check.startsWith('//')) {
          const xpath = fileutils.readPropertyFile(platform, object)
          const ListFromApp = browser.elements(xpath).getText()
          console.log('_________________________________________________________________________________')
          console.log(`\n${object}: List from App\n${ListFromApp}\n`)
          console.log('_________________________________________________________________________________')
          const sortedtext = ListFromApp.sort()
          if (ListFromApp === sortedtext) {
            console.log(`${object} Pass: List is sorted`)
           ////browser.saveScreenshot();
          } else {
            console.log(`${object} Fail: List is not sorted`)
          }
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} is not displayed`);
  }
});
Then(/^I verify data from "([^"]*)" matches with data from contentful "([^"]*)"$/, async (object, contentType) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const text = await contentful.Medication(contentType);
        const xpath = fileutils.readPropertyFile(platform, object)
        const ListFromApp = await browser.elements(xpath).getText()
        const text1 = text.sort()
        console.log('_________________________________________________________________________________')
        console.log(`Data From contentful\n${text1}`)
        console.log('_________________________________________________________________________________')
        console.log('_________________________________________________________________________________')
        console.log(`Data From Application\n${ListFromApp}`)
        console.log('_________________________________________________________________________________')
        let flag
        for (let i = 0; i < ListFromApp.length; i += 1) {
          if (text1[i] === ListFromApp[i]) {
            flag = 1
          } else {
            flag = 0
            break
          }
        }
        if (flag === 1) {
          console.log('Pass : Data From Contentful Matches with Data from the Application')
        } else {
          console.log('Fail : Data From Contentful does not match with Data from the Application')
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Cannot fetch contentful data: ${e}`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `Cannot fetch contentful data: ${e}`);
  }
});
Then(/^I select "([^"]*)" and deselect the medicine$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const exists = browser.waitUntil(() => $(fileutils.readPropertyFile(platform, object)).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const xpath = fileutils.readPropertyFile(platform, object)
          const len = browser.elements(xpath).value.length;
          console.log(len)
          let rand = len
          let ListFromApp = browser.element(`${xpath}[${rand}]`).getText()
          console.log(ListFromApp)
          browser.element(`${xpath}[${rand}]`).click()
          let xpath2 = `//*[@value='${ListFromApp}']/preceding-sibling::XCUIElementTypeImage[@name='widget_symptomslistcontainerimage_view']`
          if (browser.element(xpath2).isVisible()) {
            console.log(`Pass ${ListFromApp}is selected`)
          } else {
            console.log(`Fail ${ListFromApp}is not selected`)
          }
          browser.element(xpath2).click()
          if (!browser.element(xpath2).isVisible()) {
            console.log(`Pass ${ListFromApp}is de selected`)
          } else {
            console.log(`Fail ${ListFromApp}is not de selected`)
          }
          browser.element(`${xpath}[${rand}]`).click()
          if (browser.element(xpath2).isVisible()) {
            console.log(`Pass ${ListFromApp}is selected`)
          } else {
            console.log(`Fail ${ListFromApp}is not selected`)
          }
          rand -= 1
          browser.element(`${xpath}[${rand}]`).click()
          if (!browser.element(xpath2).isVisible()) {
            console.log(`Pass ${ListFromApp}is de selected`)
          } else {
            console.log(`Fail ${ListFromApp}is not de selected`)
          }
          ListFromApp = browser.element(`${xpath}[${rand}]`).getText()
          xpath2 = `//*[@value='${ListFromApp}']/preceding-sibling::XCUIElementTypeImage[@name='widget_symptomslistcontainerimage_view']`
          if (browser.element(xpath2).isVisible()) {
            recordlevel = ListFromApp
            console.log(`Pass ${ListFromApp}is selected`)
          } else {
            console.log(`Fail ${ListFromApp}is not selected`)
          }
        }
        browser.saveScreenshot()
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Cannot fetch contentful data: ${e}`);
  }
});
Then(/^I select "([^"]*)" and check if reflects on screen$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const xpath = fileutils.readPropertyFile(platform, object)
        const ListFromApp = browser.element(xpath).getText()
        browser.element(xpath).click()
        browser.element('~Done').click();
        const xpath2 = `//*[@value='${ListFromApp}']`
        const ListFromApp2 = browser.elements(xpath2).getText()
        if (ListFromApp2 === ListFromApp) {
          console.log(`Pass ${ListFromApp}is selected successfully`)
        } else {
          console.log(`Fail ${ListFromApp}is not selected`)
        }
        browser.saveScreenshot()
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Cannot fetch contentful data: ${e}`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `Cannot fetch contentful data: ${e}`);
  }
});
Then(/^I should verify that "([^"]*)" text is displayed$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const xpath = fileutils.readPropertyFile(platform, object)
        const impactlabel = $(`${fileutils.readPropertyFile(platform, 'Impact.Label')}`).getText()
        if (xpath.startsWith('/') || xpath.startsWith('//')) {
          const textwithxpath = $(xpath).getText()
          console.log(`${impactlabel}: ${textwithxpath}`)
        } else {
          const textwithid = browser.element(`~${xpath}`).getText()
          console.log(`${impactlabel}: ${textwithid}`)
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Cannot fetch text: ${e}`);
  }
});
Then(/^I drag the impact slider to "([^"]*)"$/, async (impactlevel) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const impactelementx = browser.element('~editimpact_slider').getLocation('x')
        const impactelementy = browser.element('~editimpact_slider').getLocation('y')
        if (impactlevel === 'mild') {
          browser.touchMultiPerform([
            { action: 'press', options: { x: impactelementx, y: impactelementy } },
            { action: 'wait', options: { ms: 2000 } },
            { action: 'moveTo', options: { x: 180, y: 200 } },
            { action: 'release' },
          ]);
        } else if (impactlevel === 'moderate') {
          browser.touchMultiPerform([
            { action: 'press', options: { x: impactelementx, y: impactelementy } },
            { action: 'wait', options: { ms: 2000 } },
            { action: 'moveTo', options: { x: 220, y: 240 } },
            { action: 'release' },
          ]);
        } else if (impactlevel === 'severe') {
          browser.touchMultiPerform([
            { action: 'press', options: { x: impactelementx, y: impactelementy } },
            { action: 'wait', options: { ms: 2000 } },
            { action: 'moveTo', options: { x: 400, y: 450 } },
            { action: 'release' },
          ]);
        }
       ////browser.saveScreenshot();
        browser.pause(1000)
        recordlevel = browser.element(`${fileutils.readPropertyFile(platform, 'Impact.Level')}`).getText()
        console.log(`Impact Level: ${recordlevel}`)
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Cannot drag the slider to ${impactlevel} due to: ${e}`);
  }
});
Then(/^I should verify that "([^"]*)" recorded is same as in the card detail$/, async (card) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        if (card === 'ImpactLevel') {
          const impactcardtext = $(`${fileutils.readPropertyFile(platform, 'Impact.Details')}`).getText()
          const splitforcomma = impactcardtext.split(',')
          const number = splitforcomma[1]
          if (parseInt(recordlevel, 10) === parseInt(number, 10)) {
            console.log('----Recorded level matches----')
            console.log(`Recorded Level: ${recordlevel}`)
            console.log(`Level displayed on ${card}: ${number}`)
          } else {
            console.log('----Recorded Level does not match----')
            console.log(`Recorded Level: ${recordlevel}`)
            console.log(`Level displayed on ${card}: ${number}`)
          }
        } else if (card === 'PainIntensity') {
          const paincardtext = $(`${fileutils.readPropertyFile(platform, 'Pain.Intensity.Details')}`).getText()
          const splitforcomma = paincardtext.split(',')
          const textoncard = splitforcomma[0]
          if (painintensitylevel === textoncard) {
            console.log('----Recorded level matches----')
            console.log(`Recorded Level: ${painintensitylevel}`)
            console.log(`Level displayed on ${card}: ${textoncard}`)
          } else {
            console.log('----Recorded Level does not match----')
            console.log(`Recorded Level: ${painintensitylevel}`)
            console.log(`Level displayed on ${card}: ${textoncard}`)
          }
        }
       ////browser.saveScreenshot();
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Cannot perform for ${card} due to: ${e}`);
  }
});
Then(/^I swipe up in the scale to "([^"]*)"$/, async (PainIntensity) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        if (PainIntensity === 'moderate') {
          browser.execute('mobile:swipe', { direction: 'down' })
        } else if (PainIntensity === 'severe') {
          browser.execute('mobile:swipe', { direction: 'up' })
        }
       // browser.saveScreenshot()
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read ${PainIntensity} level: ${e} `);
   ////browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the intensity level ');
  }
});
Then(/^"([^"]*)" option should get unselected on "([^"]*)"$/, async (symptom, listName) => {
  try {
    switch (platform) {
      case 'android':
        break
      case 'ios':
        const exists = browser.waitUntil(() => browser.elements('~widget_symptomslistcomponentlabel_text').isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const textFromConfig = appconfig.verifyTextFromConfig(listName);
          const selectedSymptoms = browser.elements("//XCUIElementTypeImage[@name='widget_symptomslistcontainerimage_view']/following-sibling::XCUIElementTypeStaticText[@name='widget_symptomslistcomponentlabel_text']").getText();
          const unique = textFromConfig.filter(o => selectedSymptoms.indexOf(o) === -1);
          console.log(`Symptom not selected: ${unique}`);
          for (let i = 0; i < unique.length; i += 1) {
            if (`${symptom}` === `${unique[i]}`) {
              console.log(`${unique[i]} option is unselected`);
            }
          }
         ////browser.saveScreenshot();
          break;
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${listName} is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${listName} is not displayed`);
  }
});
Then(/^I verify for Terms and Privacy screen$/, async () => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element('~terms_privacy_text_view').isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          browser.element('~signup_agree_btn').click()
        } else {
          console.log('Terms and Privacy up to date')
        }
       ////browser.saveScreenshot();
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', e);
  }
});
Then(/^I press enter$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.keys('\n')
       ////browser.saveScreenshot();
        break;
      case 'ios':
        browser.keys('\n')
       ////browser.saveScreenshot();
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Cannot fetch contentful data: ${e}`);
  }
});
/*
    Then statement to verify the alert description for time chosen from the pickerwheel
*/
Then(/^I must see the "([^"]*)" with new time chosen from pickerwheel$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const alertdesctime = $(fileutils.readPropertyFile(platform, object)).getText();
        const HourValue = Hour;
        const MinuteValue = Minute;
        const MeridienValue = TimeMeridien.toLowerCase();
        const timeadd = `${HourValue}:${MinuteValue} ${MeridienValue}`;
        if (alertdesctime.includes(timeadd)) {
          console.log(`${object} is displayed with the new time chosen from picker wheel`);
          console.log(`${'Alert Display: '} ${alertdesctime} `);
        } else {
          console.log('There is a difference in the time chosen and the alert displayed');
          console.log(`${'Alert displayed: '} ${alertdesctime} `);
        }
       ////browser.saveScreenshot();
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
Then(/^I swipe in the scale to "([^"]*)"$/, async (PainIntensity) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        if (PainIntensity === 'moderate') {
          browser.execute('mobile: swipe', { direction: 'down' });
        } else if (PainIntensity === 'severe') {
          browser.execute('mobile:swipe', { direction: 'up' })
        }
        painintensitylevel = browser.element('~editintensity_intensity_type').getText()
        console.log(`Pain Intensity Level: ${painintensitylevel}`)
       ////browser.saveScreenshot();
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read ${PainIntensity} level: ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the intensity level ');
  }
});
Then(/^I should verify that medication is added for the current day and date under "([^"]*)" label$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        const medcurrentdate = browser.element(`${fileutils.readPropertyFile(platform, 'Medication.Current.Date')} `).getText();
        const datefromsystem = moment().format('ddd D MMM YY');
        if (medcurrentdate === datefromsystem) {
          console.log(`-- - ${object} --- `);
          console.log(`${'Medication is being added for the current date: '} ${medcurrentdate} `);
        } else {
          console.log(`${'Medication is being added for a different date: '} ${medcurrentdate} `);
          console.log(`${'Date displayed in app: '} ${medcurrentdate} `);
          console.log(`${'System date: '} ${datefromsystem} `);
        }
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object} screen is not displayed`);
  }
});
Then(/^I should verify that "([^"]*)" button is displayed at the bottom of screen$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        if (object === 'Delete.Migraine') {
          const deletemigraine = browser.element(`${fileutils.readPropertyFile(platform, object)}`)
          if (deletemigraine.isVisible()) {
            const deletemigrainetext = deletemigraine.getText()
            console.log(`Pass: ${deletemigrainetext} is visible`)
          } else {
            console.log(`Fail: ${object} is not visible`)
          }
        } else if (object === 'Delete.All.Medications') {
          const deletemedication = browser.element(`${fileutils.readPropertyFile(platform, object)}`)
          if (deletemedication.isVisible()) {
            const deletemigrainetext = deletemedication.getText()
            console.log(`Pass: ${deletemigrainetext} is visible`)
          } else {
            console.log(`Fail: ${object} is not visible`)
          }
        }
       // browser.saveScreenshot()
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read ${object}: ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the intensity level ');
  }
});
Then(/^I should verify that "([^"]*)" is not visible$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const objidtext = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText()
        const type = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getAttribute('type')
        if (objidtext.isVisible()) {
          console.log(`Fail: ${type}: ${object} is visible  on screen`)
        } else {
          console.log(`Pass: ${type}: ${object} is not visible`)
        }
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read ${object}: ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the intensity level ');
  }
});
Then(/^I verify the "([^"]*)" for "([^"]*)"$/, async (Time, object) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const medtime = browser.element(`${fileutils.readPropertyFile(platform, object)}`).getText()
        const day = browser.element(`${fileutils.readPropertyFile(platform, 'DayDetail.Day')}`).getText()
        if (Time === 'Default.Time') {
          if (medtime.includes('12:00 am')) {
            console.log(`Pass: For ${day}, Time is defaulted to ${medtime}`)
          } else {
            console.log(`Fail: For ${day}, Time is not defaulted to ${medtime}`)
          }
        } else if (Time === 'Current.Time') {
          const currenttime = moment().format('h:mm a')
          if (medtime === currenttime) {
            console.log('Pass: Time is defaulted to current time')
            console.log(`Medication time displayed: ${medtime}`)
            console.log(`Current System time: ${currenttime}`)
          } else {
            console.log('Fail: Time is not defaulted to current time')
            console.log(`Medication time displayed: ${medtime}`)
            console.log(`Current System time: ${currenttime}`)
          }
        } else if (Time === 'Edited.Medication.time') {
          const timeadded = `${Hour}:${Minute} ${TimeMeridien}`
          const medtext = $(`${fileutils.readPropertyFile(platform, 'Day.Details.Medication.Time')}`).getText()
          if (medtext === timeadded) {
            console.log(`Pass: Time is defaulted to medication time added: ${medtext}`)
          } else {
            console.log(`Fail: Time is not defaulted to medication time added: ${medtext}}`)
          }
        }
      //  browser.saveScreenshot()
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read ${object}: ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the intensity level ');
  }
});
/*
// Duplicate Step Defn for When(/^medication cards should be ordered by "([^"]*)"$/)
// --- Keeping this as it is written using moment.js
// Note: Will remove once the function becomes reduntant or performance issues
*/
Then(/^I should verify that medication cards are sorted for "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const xpath = fileutils.readPropertyFile(platform, object)
        const daydetailsmedtime = browser.elements(`~${xpath}`).getText()
        for (let i = 0; i < daydetailsmedtime.length; i += 1) {
          const time1 = moment().format('[daydetailsmedtime[i]] h:mm a')
          const time2 = moment().format('[daydetailsmedtime[i+1]] h:mm a')
          if (time1 < time2) {
            console.log(`Pass: ${time1} is displayed first and ${time2} is displayed second`)
          } else {
            console.log(`Fail: ${time2} is displayed first and ${time1} is displayed second`)
          }
        }
        //browser.saveScreenshot()
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read ${object}: ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the intensity level ');
  }
});
/*
// Duplicate Step Defn for When(/^I move the "([^"]*)" towards "([^"]*)"$/)
// --- Keeping this as the below is for Xpath.
// Note: Will remove once the function becomes reduntant or performance issues
*/
Then(/^I should swipe "([^"]*)" for "([^"]*)"$/, async (swipe, object) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const card = $(`${fileutils.readPropertyFile(platform, object)}`)
        browser.execute('mobile:swipe', { direction: swipe, element: card })
       ////browser.saveScreenshot();
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read ${object}: ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should verify the label on "([^"]*)"$/, async (object) => {
  try {
    switch (platform) {
      case 'android':
        // perform operation on android element
        break;
      case 'ios':
        const objele = fileutils.readPropertyFile(platform, object)
        const carddesc = browser.elements(`~${objele}`).getText()
        for (let i = 0; i < carddesc.length; i += 1) {
          if (carddesc[i].includes('Describe')) {
            console.log(`Pass: ${carddesc[i]} is displayed after clearing the value`)
          } else {
            console.log(`Fail: ${carddesc} is not displayed after clearing the value`)
          }
        }
      //  browser.saveScreenshot()
        break;
      case 'web':
        // web code----
        break;
      default: break
    }
  } catch (e) {
    console.error(`\n Cannot read ${object}: ${e} `);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', '\n Cannot read the intensity level ');
  }
});
Then(/^I input "([^"]*)" in "([^"]*)" and verify valid medications are listed in "([^"]*)"$/, async (item, object1, object2) => {
  try {
    switch (platform) {
      case 'android':
        // android here---
        break;
      case 'ios':
        browser.element(`${fileutils.readPropertyFile(platform, object1)}`).click();
        browser.element(`${fileutils.readPropertyFile(platform, object1)}`).setValue(item);
        const exists = browser.waitUntil(() => $(fileutils.readPropertyFile(platform, object2)).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          if (!browser.element('~Other - medication not listed').isVisible()) {
            if (item.length === 2) {
              const itemm = `^${item}`
              const regex = { itemregex: itemm };
              const ListRegex = new RegExp(regex.itemregex);
              const xpath = fileutils.readPropertyFile(platform, object2)
              const ListFromApp = browser.elements(xpath).getText()
              let flag
              for (let i = 0; i < ListFromApp.length; i += 1) {
                const c = ListFromApp[i].split('(')
                for (let j = 0; j < c.length; j += 1) {
                  if (ListRegex.test(c[j].toLowerCase())) {
                    flag = 1
                    break
                  } else {
                    flag = 0
                  }
                }
                if (flag === 1) {
                  console.log('_________________________________________________________________________________')
                  console.log('Pass: Search results matches the expected criteria')
                  console.log(ListFromApp[i])
                  console.log('_________________________________________________________________________________')
                } else {
                  console.log('_________________________________________________________________________________')
                  console.log('Fail: Search results do not match the expected criteria')
                  console.log(ListFromApp[i])
                  console.log('_________________________________________________________________________________')
                }
              }
             ////browser.saveScreenshot();
              break
            } else if (item.length > 2) {
              const itemm = item
              const regex = { itemregex: itemm };
              const ListRegex = new RegExp(regex.itemregex);
              const xpath = fileutils.readPropertyFile(platform, object2)
              const ListFromApp = browser.elements(xpath).getText()
              let flag
              for (let i = 0; i < ListFromApp.length; i += 1) {
                ListFromApp[i] = ListFromApp[i].replace('(', '')
                const c = ListFromApp[i].split(' ')
                for (let j = 0; j < c.length; j += 1) {
                  if (ListRegex.test(c[j].toLowerCase())) {
                    flag = 1
                    break
                  } else {
                    flag = 0
                  }
                }
                if (flag === 1) {
                  console.log('_________________________________________________________________________________')
                  console.log('Pass: Search results matches the expected criteria')
                  console.log(ListFromApp[i])
                  console.log('_________________________________________________________________________________')
                } else {
                  console.log('_________________________________________________________________________________')
                  console.log('Fail: Search results do not match the expected criteria')
                  console.log(ListFromApp[i])
                  console.log('_________________________________________________________________________________')
                }
              }
             ////browser.saveScreenshot();
              break
            }
          } else {
            console.log('Other - medication not listed')
          }
        }
       ////browser.saveScreenshot();
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`${object1} screen is not displayed`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, 'ios', `${object1} screen is not displayed`);
  }
});
Then(/^I verify "([^"]*)" is deselected in "([^"]*)"$/, async (item, object) => {
  try {
    switch (platform) {
      case 'android':
        // android code here----
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.elements(`${fileutils.readPropertyFile(platform, object)}`).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          const xpath2 = `//*[@value='${recordlevel}']/preceding-sibling::XCUIElementTypeImage[@name='widget_symptomslistcontainerimage_view']`
          if (!browser.element(xpath2).isVisible()) {
            console.log(`Pass ${recordlevel}is deselected`)
          } else {
            console.log(`Fail ${recordlevel}is not deselected`)
          }
        }
       ////browser.saveScreenshot();
        break
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Cannot fetch contentful data: ${e}`);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see verify "([^"]*)" screen$/, async function (object) {
  try {
    switch (platform) {
      case "android":
        const myElem = $(fileutils.readPropertyFile(platform, object));
        myElem.waitForVisible(90000);
        browser.waitForExit(fileutils.readPropertyFile(platform, object), 19000);
        let exists = browser.waitUntil(function () {
          return browser.element(fileutils.readPropertyFile(platform, object)).isVisible()
        }, timeOutinMs, 'Element not found');
        if (exists) {
          console.log(object + ' is displayed');
        }
        break;
      case "ios":
        browser.pause(2000);
        let exists1 = browser.waitUntil(function () {
          return browser.element(fileutils.readPropertyFile(platform, object)).isVisible()
        }, timeOutinMs, 'Element not found');
        if (exists1) {
          console.log(object + ' is displayed');
        }
        break;
      case "web":
        // web operation
        break
    }
  } catch (e) {
    console.error(object + ' is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I Verify "([^"]*)" option$/, async function (object) {
  try {
    switch (platform) {
      case "android":
        expect(browser.element(fileutils.readPropertyFile(platform, object)).isExisting);
        console.log(object + ' is visible');
       ////browser.saveScreenshot();
        break;
      case "ios":
        let value = '5 minutes before';
        let value1 = '15 minutes before';
        let value2 = '30 minutes before';
        let value3 = '1 hour before';
        let value4 = '2 hours before';
        let value5 = 'None';
        for (let i = 0; i <= 5; i++) {
          if (i === 0) {
            //  browser.pause(4000);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), value);
            console.log(value + ' is found');
          }
          else if (i === 1) {
            // browser.pause(4000);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), value1);
            console.log(value1 + ' is found');
          }
          else if (i === 2) {
            // browser.pause(4000);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), value2);
            console.log(value2 + ' is found');
          }
          else if (i === 3) {
            //  browser.pause(4000);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), value3);
            //browser.pause(1000);
            console.log(value3 + ' is found');
          }
          else if (i === 4) {
            // browser.pause(4000);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), value4);
            // browser.pause(1000);
            console.log(value4 + ' is found');
          }
          else if (i === 5) {
            // browser.pause(4000);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), value5);
            // browser.pause(4000);
            console.log(value5 + ' is found');
          }
          else {
            console.log(object + ' is not found');
          }
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(' Cannot find  ' + object);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I enter "([^"]*)" character in "([^"]*)" field$/, async function (value, object) {
  try {
    switch (platform) {
      case "android":
        if (value === '12') {
          $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', '12'));
        }
        else if (value === '13') {
          $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', '13'));
        }
        else if (value === '34') {
          $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', '34'));
        }
        else {
          console.log('no data found');
        }
       ////browser.saveScreenshot();
        break;
      case "ios":
        if (value === '12') {
          $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', '12'));
        }
        else if (value === '34') {
          $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', '34'));
        }
        else {
          console.log('no data found');
        }
       ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break
    }
  } catch (e) {
    console.error(object + ' is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" alertmessage$/, async function (action) {
  try {
    switch (platform) {
      case "android":
        if (action === 'alert') {
          const alerText = browser.alertText();
         ////browser.saveScreenshot();
          console.log(alerText);
        }
        else {
          console.log('no alerText');
        }
        break;
      case "ios":
        $(fileutils.readPropertyFile(platform, object)).isVisible();
       ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break
    }
  } catch (e) {
    console.error(action + ' is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I enter "([^"]*)" Code of "([^"]*)" character in "([^"]*)" field$/, async function (type, value, object) {
  try {
    switch (platform) {
      case "android":
        if (type === 'valid') {
          if (value === '13') {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'valid_13'));
          }
          else if (value === '33') {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'valid_33'));
          }
          else if (value === '20') {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'valid_20'));
          }
          else if (value === '25') {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'valid_25'));
          }
        }
        else if (type === 'invalid') {
          if (value === '13') {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'invalid_13'));
          }
          else if (value === '33') {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'invalid_33'));
          }
          else if (value === '20') {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'invalid_20'));
          }
          else if (value === '25') {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'invalid_25'));
          }
        }
        else {
          console.log('no data found');
        }
       ////browser.saveScreenshot();
        break;
      case "ios":
        if (type === 'valid') {
          if (value === 13) {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'valid_13'));
          }
          else if (value === 33) {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'valid_33'));
          }
          else if (value === 20) {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'valid_20'));
          }
        }
        else if (type === 'invalid') {
          if (value === 13) {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'invalid_13'));
          }
          else if (value === 33) {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'invalid-33'));
          }
          else if (value === 20) {
            $(fileutils.readPropertyFile(platform, object)).setValue(fileutils.readPropertyFile('data', 'invalid-20'));
          }
        }
       ////browser.saveScreenshot();
        break;
      case "web":
        // web operation
        break
    }
  } catch (e) {
    console.error(object + ' is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" field does not accept the 34th character$/, async function (object) {
  try {
    switch (platform) {
      case "android":
        let element = browser.element(fileutils.readPropertyFile(platform, object)).getAttribute('text').length;
        console.log(element);
        if (element < 34) {
          console.log('text field length is  less than 34');
        }
        else {
          console.log('text field length is more  than 34');
        }
        break;
      case "ios":
        let element1 = browser.element(fileutils.readPropertyFile(platform, object)).getAttribute('value').length;
        console.log(element1);
        if (element1 < 34) {
          console.log('text field length is  less than 34');
        }
        else {
          console.log('text field length is more  than 34');
        }
        break;
      case "web":
        // web operation
        break
    }
  } catch (e) {
    console.error(object + ' is not displayed');
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I Verify "([^"]*)" text$/, async function (object) {
  try {
    switch (platform) {
      case "android":
        let text1 = browser.element(fileutils.readPropertyFile(platform, object)).getText();
        let value1 = `${fileutils.readPropertyFile("Android_text", object)}`;
        //  browser.pause(1000);
        console.log(`${'Text to be Displayed : '}${value1}`);
        console.log(`${'Text Displayed is : '}${text1}`);
        if (text1 === value1) {
          console.log(`${object} ${'Text Displayed is verified'}`);
        }
        else {
          console.error(`${object} ${'Text Displayed is incorrect'}`)
        }
       ////browser.saveScreenshot();
        break;
      case "ios":
        let text = browser.element(fileutils.readPropertyFile(platform, object)).getText();
        let value = `${fileutils.readPropertyFile("iOS_text", object)}`;
        //  browser.pause(1000);
        console.log(`${'Text to be Displayed : '}${value}`);
        console.log(`${'Text Displayed is : '}${text}`);
        if (text === value) {
          console.log(`${object} ${'Text Displayed is verified'}`);
        }
        else {
          console.error(`${object} ${'Text Displayed is incorrect'}`)
        }
       ////browser.saveScreenshot();
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(' Cannot find  ' + object);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" (?:selected|Deselected)$/, async function (object) {
  try {
    switch (platform) {
      case "android":
        expect(browser.element(fileutils.readPropertyFile(platform, object)).isExisting);
        let checker1 = browser.element(fileutils.readPropertyFile(platform, object)).getAttribute("checked")
        console.log(object + ' is visible');
        if (checker1 == 'true') {
          console.log(object + ' is Selected');
        }
        else {
          console.log(object + ' is not Selected');
        }
       ////browser.saveScreenshot();
        break;
      case "ios":
        expect(browser.element(fileutils.readPropertyFile(platform, object)).isExisting);
        let checker = browser.element(fileutils.readPropertyFile(platform, object)).getAttribute("value")
        if (checker == 1) {
          console.log(object + ' is Selected');
        }
        else {
          console.log(object + ' is not Selected');
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(' Cannot find  ' + object);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I verify elements in picker$/, async function () {
  try {
    switch (platform) {
      case "android":
        expect(browser.element(fileutils.readPropertyFile(platform, object)).isExisting);
        console.log(object + ' is visible');
        console.log("Value" + browser.element(fileutils.readPropertyFile(platform, object)).getAttribute("value"))
       ////browser.saveScreenshot();
        break;
      case "ios":
        browser.execute('mobile: selectPickerWheelValue', { direction: 'down' })
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(' Cannot find  ' + object);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I verify "([^"]*)" option in "([^"]*)" picker wheel$/, async function (value, object) {
  try {
    switch (platform) {
      case "android":
        expect(browser.element(fileutils.readPropertyFile(platform, object)).isExisting);
        console.log(object + ' is visible');
       ////browser.saveScreenshot();
        break;
      case "ios":
        mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, object), fileutils.readPropertyFile("data", value));
        let selectedPicker = browser.element(fileutils.readPropertyFile(platform, object)).getText();
        let Pickervalue = `${fileutils.readPropertyFile("data", value)}`
        if (selectedPicker == Pickervalue) {
          console.log(value + " is present in " + object + " picker wheel");
        }
        else {
          console.log(value + " is not present");
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(' Cannot find  ' + object);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see Cancel button$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'Cancel')}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(object, 'screen is displayed');
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element('~  Cancel').isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log('cancel is displayed')
        }
        else {
          console.error('cancel is not displayed')
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error("Cannot See Cancel button" + e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I wait for "([^"]*)" minutes$/, async (value) => {
  try {
    let val = parseInt(value);
    var val1 = val * 60 * 1000;
    console.log('wait');
    browser.pause(val1);
    // browser.timeoutsImplicitWait(val1);
    console.log('wait');
  } catch (e) {
    console.error(`Cannot wait ${e}`);
    return assert.strictEqual(platform, '', e);
  }
});

Then(/^I login "([^"]*)" times$/, async (minutes) => {
  try {
    switch (platform) {
    case 'android':
    for (var i = 0; i < minutes; i++) {
    browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).isVisible(), timeOutinMs, 'Element not found');
    browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).click();
    console.log(`Clicked on Login ${i+1} time/s`);
    browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'okay.button')}`).isVisible(), timeOutinMs, 'Element not found');
    browser.element(`${fileutils.readPropertyFile(platform, 'okay.button')}`).click();
    console.log(`Clicked on Okay ${i+1} time/s`);
  }
  break;
case 'ios' :
    for (var i = 0; i < minutes; i++) {
      browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).isVisible(), timeOutinMs, 'Element not found');
      browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).click();
      console.log(`Clicked on Login ${i+1} time/s`);
      browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'ok')}`).isVisible(), timeOutinMs, 'Element not found');
      browser.element(`${fileutils.readPropertyFile(platform, 'ok')}`).click();
      console.log(`Clicked on Okay ${i+1} time/s`);
    }
    break;
    }
  } catch (e) {
    console.error('Cannot Login '+minutes +' times', e);
    return assert.strictEqual(platform, '', e);
  }
})
Then(/^I login 20 times$/, async () => {
  try {
    switch (platform) {
    case 'android':
    for (var i = 0; i < 20; i++) {
    browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).isVisible(), timeOutinMs, 'Element not found');
    browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).click();
    console.log(`Clicked on Login ${i} time/s`);
    browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'okay.button')}`).isVisible(), timeOutinMs, 'Element not found');
    browser.element(`${fileutils.readPropertyFile(platform, 'okay.button')}`).click();
    console.log(`Clicked on Okay ${i} time/s`);
  }
  break;
case 'ios' :
    for (var i = 0; i < 20; i++) {
      browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).isVisible(), timeOutinMs, 'Element not found');
      browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).click();
      console.log(`Clicked on Login ${i} time/s`);
      browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'ok')}`).isVisible(), timeOutinMs, 'Element not found');
      browser.element(`${fileutils.readPropertyFile(platform, 'ok')}`).click();
      console.log(`Clicked on Okay ${i} time/s`);
    }
    break;
    }
  } catch (e) {
    console.error('Cannot Login 20 times', e);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle Cancel button$/, async () => {
  try {
    switch (platform) {
      case 'android':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'cancel')}`).click(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`Clicked on ${object}`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        browser.waitUntil(() => browser.element('~  Cancel').isVisible(), timeOutinMs, 'Element not found');
        browser.element('~  Cancel').click();
        console.log('Clicked on Cancel')
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error("Cannot Handle Cancel Button " + e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I click on Proceed button$/, async () => {
  try {
    switch (platform) {
      case 'android':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'proceed')}`).click(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`Clicked on ${object}`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        browser.waitUntil(() => browser.element('~Proceed').isVisible(), timeOutinMs, 'Element not found');
        browser.element('~Proceed').click();
        console.log('Clicked on Proceed')
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error("Cannot Handle Proceed Button" + e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see Proceed button$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'proceed')}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(object, 'screen is displayed');
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element('~Proceed').isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log('proceed is displayed')
        }
        else {
          console.error('proceed is not displayed')
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error("Cannot see Proceed Button" + e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
// added for resend forget password verfication
Then(/^I should connect to email for resend forgot password verification$/, async () => {
  try {
    const emailwait = await emailUtilsforforgotpassword.readforresendforgotpassword();
    return emailwait;
  } catch (e) {
    console.error('Cannot open mailbox', e);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle Remember me toggle button$/, async () => {
  try {
    switch (platform) {
      case 'android':
          try {
            const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "remember.me.toggle.off")}`).isVisible(), timeOutinMs, 'Element not found');
            if (exists1) {
             
              browser.element(`${fileutils.readPropertyFile(platform, "remember.me.toggle.off")}`).click();
  
             console.log("remember me toggle button enabled")
             
            }
           
          }catch (e) {
              console.log("Already remember me toggle button enabled")
            }
         
          break;
       ////////
        
      case 'ios':
        browser.pause(3000);
        if (browser.element(fileutils.readPropertyFile(platform, 'remember.me.toggle.on')).isVisible()) {
          browser.element(fileutils.readPropertyFile(platform, 'remember.me.toggle.on')).click();
          console.log('Remember me toggle button is disabled');
        }
        // else if (browser.element(fileutils.readPropertyFile(platform, 'remember.me.toggle.on')).isVisible()) {
        //     browser.element(fileutils.readPropertyFile(platform, 'remember.me.toggle.on')).click();
        //     console.log('Remember me toggle button is disabled');
        //   }
          else{
          console.log('Remember me toggle button is already disabled');
        }
      
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Toggle button is not found`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle Notification pop-up$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.pause(3000);
        try {
          let  exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'tempo.notifications')).isVisible(), timeOutinMs, 'Element not found');
        if (exists1) {
          console.log(browser.getText(fileutils.readPropertyFile(platform, 'tempo.notifications')));
            browser.element(fileutils.readPropertyFile(platform, 'allow')).click();
            console.log('Notifications Popup Handled');
          }
        }
        catch (e) {
          console.error('No pop-up');
        }
        break;
      case 'ios':
        browser.pause(3000);
        try {
        let  exists = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'tempo.notifications')).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
            console.log(browser.getText(fileutils.readPropertyFile(platform, 'tempo.notifications')));
            browser.element(fileutils.readPropertyFile(platform, 'allow')).click();
            console.log('Notifications Popup Handled');
          }
        }
        catch (e) {
          console.error('No pop-up');
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`pop-up is not found`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle login pop-up$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.pause(3000);
        if (browser.element(fileutils.readPropertyFile(platform, 'warning')).isVisible()) {
          console.log(browser.getText(fileutils.readPropertyFile(platform, 'warning')));
          browser.element('~  Proceed  ').click();
          console.log('One device at a time pop-up handled');
        }
        else if (browser.element(fileutils.readPropertyFile(platform, 'warning.login')).isVisible()) {
          console.log(browser.getText(fileutils.readPropertyFile(platform, 'warning.login')));
          browser.element('~  Proceed  ').click();
          console.log('Logging in as a different user pop-up handled');
        }
        else {
          console.log('No pop-up');
        }
        break;
      case 'ios':
        browser.pause(3000);
        try {
          if (browser.element(fileutils.readPropertyFile(platform, 'warning')).isVisible()) {
            console.log(browser.getText(fileutils.readPropertyFile(platform, 'warning')));
            browser.element('~  Proceed  ').click();
            console.log('One device at a time pop-up handled');
          }
          else if (browser.element(fileutils.readPropertyFile(platform, 'warning.login')).isVisible()) {
            console.log(browser.getText(fileutils.readPropertyFile(platform, 'warning.login')));
            browser.element('~  Proceed  ').click();
            console.log('Logging in as a different user pop-up handled');
          }
        }
        catch (e) {
          console.log('No pop-up');
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`pop-up is not found`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I Verify "([^"]*)" text in more menu$/, async function (object) {
  try {
    switch (platform) {
      case "android":
        let text1 = browser.element(fileutils.readPropertyFile(platform, object)).getText();
        //console.log(text1);
        let element = browser.element(fileutils.readPropertyFile(platform, object)).getAttribute('text');
        if (text1 === element) {
          console.log(text1 + ' is displayed');
        }
        console.log(object + ' is visible');
       ////browser.saveScreenshot();
        break;
      case "ios":
        let text = browser.element(fileutils.readPropertyFile(platform, object)).getAttribute("name");
        let value = `${fileutils.readPropertyFile("iOS_text", object)}`;
        console.log(`${'Text to be Displayed : '}${value}`);
        console.log(`${'Text Displayed is : '}${text}`);
        if (text === value) {
          console.log(`${object} ${'Text Displayed is verified'}`);
        }
        else {
          console.log(`${object} ${'Text Displayed is incorrect'}`)
        }
        break;
      case "web":
        // perform operation on web element
        break;
    }
  } catch (e) {
    console.error(' Cannot find  ' + object);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" and "([^"]*)" in "([^"]*)"$/, async (value1, value2, object) => {
  try {
    switch (platform) {
      case 'android':
        let fieldvalue = fileutils.readPropertyFile(platform, object);
        const value1data = fileutils.readPropertyFile("data", value1);
        const value2data = fileutils.readPropertyFile("data", value2);
        const fieldtext = browser.element(fieldvalue).getText();
        const valuedata = value1data + " " + value2data
        console.log(fieldtext);
        if (fieldtext == valuedata) {
          console.log("The value displayed is matched: " + fieldtext);
        }
        else {
          console.log("The value displayed is not matched: " + fieldtext);
        }
        break;
      case 'ios':
          let fieldvalue1 = fileutils.readPropertyFile(platform, object);
          const value1data1 = fileutils.readPropertyFile("data", value1);
          const value2data1 = fileutils.readPropertyFile("data", value2);
          const fieldtext1 = browser.element(fieldvalue1).getText();
          const valuedata1 = value1data1 + " " + value2data1
          console.log(fieldtext1);
          if (fieldtext1 == valuedata1) {
            console.log("The value displayed is matched: " + fieldtext1);
          }
          else {
            console.log("The value displayed is not matched: " + fieldtext1);
          }
        break;
    }
  } catch (e) {
    console.error(`Cannot Find: ${e}`);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I set "([^"]*)" time in device settings$/, async (value) => {
  try {
    switch (platform) {
      case "android":
        break;
      case "ios":
        mobileactions.mobileScroll('up')
        let search = browser.element(`${fileutils.readPropertyFile(platform, 'Settings.Search')}`)
        search.click();
        search.setValue("Date & Time");
        browser.element("~Date & Time").click();
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "Settings.set.automatically")}`).isVisible(), timeOutinMs, 'Error: Element not found');
        if (exists) {
          let value = browser.element(fileutils.readPropertyFile(platform, "Settings.set.automatically")).getAttribute('value')
          //  console.log(value)
          if (value == 1) {
            browser.element(fileutils.readPropertyFile(platform, "Settings.set.automatically")).click();
            console.log("Disabled Set Automatically Button")
          }
          else {
            console.log('Set Automatically Button already disabled');
          }
        }
        try {
          browser.element(fileutils.readPropertyFile(platform, "Setting.time")).click();
          browser.pause(500);
          console.log(value.split(':')[0])
          mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "Settings.minute"), value.split(':')[0]);
          mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "Settings.hour"), value.split(':')[1]);
          browser.element(fileutils.readPropertyFile(platform, "Settings.general")).click();
        }
        catch (e) {
          console.log(e);
        }
        // }
        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error('Cannot set Device Timings', e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I change device time as "([^"]*)" "([^"]*)" and "([^"]*)"$/, async (value1, value2, value3) => {
  try {
    switch (platform) {
      case 'android':
        break;
      case "ios":
        try {
          let hour = `${fileutils.readPropertyFile('data', value1)}`;
          let min = `${fileutils.readPropertyFile('data', value2)}`;
          let amorpm = `${fileutils.readPropertyFile('data', value3)}`;
          const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
          let current_datetime = new Date()
          let formatted_date = current_datetime.getDate() + "-" + months[current_datetime.getMonth()] + "-" + current_datetime.getFullYear()
          console.log(formatted_date)
          browser.execute('mobile: launchApp', { bundleId: settingsApp });
          mobileactions.swipeDown(0.40);
          browser.pause(1000);
          if (browser.element(fileutils.readPropertyFile(platform, "Setting.General")).isVisible()) {
            browser.element(fileutils.readPropertyFile(platform, "Setting.General")).click();
            mobileactions.swipeDown(0.85);
          }
          if (browser.element(fileutils.readPropertyFile(platform, "Settings.Date.Time")).isVisible()) {
            browser.element(fileutils.readPropertyFile(platform, "Settings.Date.Time")).click();
          }
          else {
            console.error('date & time is not visible');
          }
          const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "Settings.Set.Automatically")}`).isVisible(), timeOutinMs, 'Error: Element not found');
          if (exists) {
            let value1 = browser.element(fileutils.readPropertyFile(platform, "Settings.Set.Automatically")).getAttribute('value')
            console.log(value1)
            if (value1 == 1) {
              browser.element(fileutils.readPropertyFile(platform, "Settings.Set.Automatically")).click();
            }
            else {
              console.log("ready to change")
            }
            let xpath = fileutils.readPropertyFile(platform, 'Time.layout').replace('25-Aug-2019', formatted_date)
            console.log(xpath);
            browser.element(xpath).click();
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "Settings.Hour"), hour);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "Settings.Min"), min);
            mobileElementAction.selectValueFromPicker(fileutils.readPropertyFile(platform, "Setting.AM.PM"), amorpm);
          }
          browser.execute('mobile: activateApp', { bundleId: bundleid });
          browser.pause(3000);
        }
        //}
        catch (e) {
          console.error('Cannot set Device format', e);
         ////browser.saveScreenshot();
        }
        break;
      case "web":
        break;
    }
  } catch (e) {
    console.error('Cannot set Device Timings', e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle Continue with this device button$/, async () => {
  try {
    switch (platform) {
      case 'android':
        const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'Continue with  this device')}`).click(), timeOutinMs, 'Element not found');
        if (exists) {
          console.log(`Clicked on ${object}`);
         ////browser.saveScreenshot();
        }
        break;
      case 'ios':
        browser.waitUntil(() => browser.element(('~  Continue with  this device       ')).isVisible(), timeOutinMs, 'Element not found');
        browser.element('~  Continue with  this device       ').click();
        console.log('Clicked on Continue with this device')
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see Continue with this device button$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'Continue with  this device')}`).isVisible(), timeOutinMs, 'Element not found');
        console.log(object, 'screen is displayed');
       ////browser.saveScreenshot();
        break;
      case 'ios':
        const exists = browser.waitUntil(() => browser.element('~  Continue with  this device       ').isVisible(), timeOutinMs, 'Element not found');
        //  "  Continue with  this device       "
        if (exists) {
          console.log('continue with this button is displayed')
        }
        else {
          console.error('continue with this button not displayed')
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(e);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I login multiple times$/, async () => {
  try {
    switch (platform) {
      case 'android':
        for (var i = 0; i < 50; i++) {
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).isVisible(), timeOutinMs, 'Element not found');
        browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).click();
        console.log(`Clicked on Login ${i} time/s`);
        if (browser.element(fileutils.readPropertyFile(platform, 'account.locked')).isVisible()) {
          browser.element(fileutils.readPropertyFile(platform, 'okay.button')).click();
          console.log(`Clicked on ok`);
        break;
        }
          // if (exists) {
          //   browser.element(`${fileutils.readPropertyFile(platform, 'okay')}`).click();
          //   break;
          // }
          else{
        browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'okay.button')}`).isVisible(), timeOutinMs, 'Element not found');
        browser.element(`${fileutils.readPropertyFile(platform, 'okay.button')}`).click();
        console.log(`Clicked on Okay ${i} time/s`);
          }
     
      }
  break;
case 'ios' :
    for (var i = 0; i < 50; i++) {
      browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).isVisible(), timeOutinMs, 'Element not found');
      browser.element(`${fileutils.readPropertyFile(platform, 'login')}`).click();
      console.log(`Clicked on Login ${i} time/s`);
      //const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'account.locked')}`).isVisible());
      if (browser.element(fileutils.readPropertyFile(platform, 'account.locked')).isVisible()) {
        browser.element(fileutils.readPropertyFile(platform, 'ok')).click();
        console.log(`Clicked on ok`);
      break;
      }
        // if (exists) {
        //   browser.element(`${fileutils.readPropertyFile(platform, 'okay')}`).click();
        //   break;
        // }
        else{
      browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'ok')}`).isVisible(), timeOutinMs, 'Element not found');
      browser.element(`${fileutils.readPropertyFile(platform, 'ok')}`).click();
      console.log(`Clicked on Okay ${i} time/s`);
        }
    }
    break;
    }
  } catch (e) {
    console.error('Cannot Login multiple times', e);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle time zone popup$/, async () => {
  try {
    switch (platform) {
      case 'android':
        
      case 'ios':

          try {
            let  exists = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'ok')).isVisible(), timeOutinMs, 'Element not found');
            if (exists) {
                console.log(browser.getText(fileutils.readPropertyFile(platform, 'ok')));
                browser.element(fileutils.readPropertyFile(platform, 'ok')).click();
                console.log('Clicked on time zone Pop-up');
              }
            }
            catch (e) {
              console.error('No pop-up');
            }
      //   browser.pause(3000);
      //   if
      //   (browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, 'ok')}`).isVisible(), timeOutinMs, 'Element not found')){;
      // browser.element(`${fileutils.readPropertyFile(platform, 'ok')}`).click();
      //     console.log('Clicked on time zone Pop-up');
      //   }
        // if (browser.element("~  OK, I Understand  ").isVisible()) {
        //   browser.element("~  OK, I Understand  ").click();
        //   console.log('Clicked on time zone Pop-up');
        // }
        // else {
        //   console.log('Pop-up not displayed');
        // }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Time zone popup is not found`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" (?:text|screen|option|pop-up|icon|overlay) in English$/, async (value) => {
  try {
    switch (platform) {
      case 'android':
          const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, value)}`).isVisible(), timeOutinMs, 'Element not found');
          if (exists) {
          let text1 = browser.element(fileutils.readPropertyFile(platform, value)).getText();
          let value1 = `${fileutils.readPropertyFile("Android_text", value)}`;
          console.log(`${'Text to be Displayed : '}${value1}`);
          console.log(`${'Text Displayed is : '}${text1}`);
          if (text1 === value1) {
            console.log(`${value} ${'Text Displayed is verified'}`);
          }
          else {
            console.error(`${value} ${'Text Displayed is incorrect'}`)
          }
          
          // console.log(isEnglish(text1))
          // var val = lngDetector.detect(text1,15)
          if (isEnglish(text1)) {
            console.log(`${value} ${'is Displayed in English'}`);
          }
          else {
            console.error(`${value} ${'is not Displayed in English'}`)
          }
        }
        break;
      case 'ios':
        const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, value)}`).isVisible(), timeOutinMs, 'Element not found');
          if (exists1) {
          let text1 = browser.element(fileutils.readPropertyFile(platform, value)).getAttribute("name");
          let value1 = `${fileutils.readPropertyFile("iOS_text", value)}`;
          console.log(`${'Text to be Displayed : '}${value1}`);
          console.log(`${'Text Displayed is : '}${text1}`);
          if (text1 === value1) {
            console.log(`${value} ${'Text Displayed is verified'}`);
          }
          else {
            console.error(`${value} ${'Text Displayed is incorrect'}`)
          }
          
          // console.log(isEnglish(text1))
          // var val = lngDetector.detect(text1,15)
          if (isEnglish(text1)) {
            console.log(`${value} ${'is Displayed in English'}`);
          }
          else {
            console.error(`${value} ${'is not Displayed in English'}`)
          }
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Text Not English`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I should see "([^"]*)" in English$/, async (value) => {
  try {
    switch (platform) {
      case 'android':
          const exists = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, value)}`).isVisible(), timeOutinMs, 'Element not found');
          if (exists) {
          let text1 = browser.element(fileutils.readPropertyFile(platform, value)).getText();
          let value1 = `${fileutils.readPropertyFile("Android_text", value)}`;
          console.log(`${'Text to be Displayed : '}${value1}`);
          console.log(`${'Text Displayed is : '}${text1}`);
          if (text1 === value1) {
            console.log(`${value} ${'Text Displayed is verified'}`);
          }
          else {
            console.error(`${value} ${'Text Displayed is incorrect'}`)
          }
          
          // console.log(isEnglish(text1))
          // var val = lngDetector.detect(text1,15)
          if (isEnglish(text1)) {
            console.log(`${value} ${'is Displayed in English'}`);
          }
          else {
            console.error(`${value} ${'is not Displayed in English'}`)
          }
        }
        break;
      case 'ios':
        const exists1 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, value)}`).isVisible(), timeOutinMs, 'Element not found');
          if (exists1) {
          let text1 = browser.element(fileutils.readPropertyFile(platform, value)).getText();
          let value1 = `${fileutils.readPropertyFile("iOS_text", value)}`;
          console.log(`${'Text to be Displayed : '}${value1}`);
          console.log(`${'Text Displayed is : '}${text1}`);
          if (text1 === value1) {
            console.log(`${value} ${'Text Displayed is verified'}`);
          }
          else {
            console.error(`${value} ${'Text Displayed is incorrect'}`)
          }
          
          // console.log(isEnglish(text1))
          // var val = lngDetector.detect(text1,15)
          if (isEnglish(text1)) {
            console.log(`${value} ${'is Displayed in English'}`);
          }
          else {
            console.error(`${value} ${'is not Displayed in English'}`)
          }
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`Text Not English`);
   //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle Bluetooth Notification pop-up$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.pause(3000);
        try {
          const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'bluetooth.notification.popup')).isVisible(), timeOutinMs, 'Element not found');
        if (exists1) {
          console.log(browser.getText(fileutils.readPropertyFile(platform, 'bluetooth.notification.popup')));
            browser.element(fileutils.readPropertyFile(platform, 'enable.bluetooth.popup')).click();
            const exists2 = browser.waitUntil(() => browser.element(`${fileutils.readPropertyFile(platform, "turn.on.bluetooth.popup")}`).isVisible(), timeOutinMs, 'Element not found');
            if (exists2) {
              console.log(browser.getText(fileutils.readPropertyFile(platform, 'turn.on.bluetooth.popup')));
              browser.element(fileutils.readPropertyFile(platform, 'bluetooth.allow')).click();
              browser.pause(10000);
              console.log('Bluetooth Notifications Popup Handled');
            }
          }
        }
        catch (e) {
          console.error('No Bluetooth Notifications Popup');
        }
        break;
      case 'ios':
        browser.pause(3000);
        try {
        let  exists = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'bluetooth.notification')).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
            console.log(browser.getText(fileutils.readPropertyFile(platform, 'bluetooth.notification')));
            browser.element(fileutils.readPropertyFile(platform, 'bluetooth.ok')).click();
            console.log('Bluetooth Notifications Popup Handled');
          }
        }
        catch (e) {
          console.error('No pop-up');
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`pop-up is not found`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I disable Bluetooth Notification pop-up$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.pause(3000);
        try {
          const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'bluetooth.notification.popup')).isVisible(), timeOutinMs, 'Element not found');
        if (exists1) {
            browser.element(fileutils.readPropertyFile(platform, 'not.now.bluetooth.popup')).click();
            console.log('Bluetooth Notifications Disabled');
         }
        }
        catch (e) {
          console.error('No Bluetooth Notifications Popup');
        }
        break;
      case 'ios':
        browser.pause(3000);
        try {
        let  exists = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'bluetooth.notification')).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
            console.log(browser.getText(fileutils.readPropertyFile(platform, 'bluetooth.notification')));
            browser.element(fileutils.readPropertyFile(platform, 'bluetooth.dont.allow')).click();
            console.log('Bluetooth Notifications Disabled');
          }
        }
        catch (e) {
          console.error('No pop-up');
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`pop-up is not found`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I wait for "([^"]*)" seconds$/, async (value) => {
  try {
    let val3 = parseInt(value);
    var val4 = val3 * 1000;
    console.log('wait');
    browser.pause(val4);
    console.log('wait');
  } catch (e) {
    console.error(`Cannot wait ${e}`);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle turn on bluetooth pop-up$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.pause(3000);
        try {
          let  exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'bluetooth.notification')).isVisible(), timeOutinMs, 'Element not found');
        if (exists1) {
          console.log(browser.getText(fileutils.readPropertyFile(platform, 'bluetooth.notification')));
            browser.element(fileutils.readPropertyFile(platform, 'bluetooth.ok')).click();
            console.log('Notifications Popup Handled');
          }
        }
        catch (e) {
          console.error('No pop-up');
        }
        break;
        case 'ios':
          browser.pause(3000);
          try {
          let  exists = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'turnon.your.bluetooth')).isVisible(), timeOutinMs, 'Element not found');
          if (exists) {
              console.log(browser.getText(fileutils.readPropertyFile(platform, 'turnon.your.bluetooth')));
              browser.element(fileutils.readPropertyFile(platform, 'not.now.button')).click();
              console.log('Turn on Bluetooth Popup Handled');
            }
          }
          catch (e) {
            console.error('No pop-up');
          }
          break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`pop-up is not found`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});

Then(/^I handle Connect Your Devices pop-up$/, async () => {
  try {
    switch (platform) {
      case 'android':
        browser.pause(3000);
        try {
          const exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'connect.your.device.popup')).isVisible(), timeOutinMs, 'Element not found');
        if (exists1) {
          console.log(browser.getText(fileutils.readPropertyFile(platform, 'connect.your.device.popup')));
          browser.element(fileutils.readPropertyFile(platform, 'connect.device.not.now')).click();
          browser.pause(2000);
          console.log('Connect Your Devices Popup Handled');
        }

      }
        catch (e) {
          console.error('No Connect Your Devices Popup');
        }
        break;
      case 'ios':
       // Yet to be implemented
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`pop-up is not found`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I handle auto logged entries popup$/, async () => {
  try {
    switch (platform) {
      case 'android':
        // browser.pause(3000);
        // try {
        //   let  exists1 = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'bluetooth.notification')).isVisible(), timeOutinMs, 'Element not found');
        // if (exists1) {
        //   console.log(browser.getText(fileutils.readPropertyFile(platform, 'bluetooth.notification')));
        //     browser.element(fileutils.readPropertyFile(platform, 'bluetooth.ok')).click();
        //     console.log('Notifications Popup Handled');
        //   }
        // }
        // catch (e) {
        //   console.error('No pop-up');
        // }
        break;
      case 'ios':
        browser.pause(3000);
        try {
        let  exists = browser.waitUntil(() => browser.element(fileutils.readPropertyFile(platform, 'auto.logged.entries')).isVisible(), timeOutinMs, 'Element not found');
        if (exists) {
            console.log(browser.getText(fileutils.readPropertyFile(platform, 'auto.logged.entries')));
            browser.element(fileutils.readPropertyFile(platform, 'ok')).click();
            console.log('ok button Handled');
          }
        }
        catch (e) {
          console.error('No ok button');
        }
        break;
      case 'web':
        // web operation
        break;
      default: break
    }
  } catch (e) {
    console.error(`ok is not found`);
    //browser.saveScreenshot();
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I wait "([^"]*)" minutes$/, async (value) => {
  try {
    let val = parseInt(value);
    var val1 = val * 60 * 1000;
    console.log('wait');
    browser.timeoutsImplicitWait(val1);
    //browser.setTimeout({ 'implicit': val1 })
    console.log('wait');
  } catch (e) {
    console.error(`Cannot wait ${e}`);
    return assert.strictEqual(platform, '', e);
  }
});
Then(/^I wait "([^"]*)" seconds$/, async (value) => {
  try {

    let val3 = parseInt(value);
    var val4 = val3 * 1000;
    console.log('wait');
    browser.timeoutsImplicitWait(val4);
    // browser.pause(val4);
    console.log('wait');
  } catch (e) {
    console.error(`Cannot wait ${e}`);
    return assert.strictEqual(platform, '', e);
  }
});