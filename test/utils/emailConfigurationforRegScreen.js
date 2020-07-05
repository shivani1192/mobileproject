
const Imap = require('imap');
const { inspect } = require('util');
const fs = require('fs');
const fileutils = require('../utils/fileoperations');
const data = fileutils.readMobileCaps()[0] || {};
const { ExternalEmailAddress, ExternalPassword } = data;
const regex = '(^http|https)((([A-Za-z0-9$_.+!*(),;/\?\n:@&~=-])|%[A-Fa-f0-9]{2}){2,}(#([a-zA-Z0-9][a-zA-Z0-9$_.+!*(),;/?:@&~=%-]*))?([A-Za-z0-9$_+!*();/?:~-]))'
const imap = new Imap({
  user: ExternalEmailAddress,
  password: ExternalPassword,
  host: 'imap.gmail.com',
  port: 993,
  tls: true,
  authTimeout: 3000,
  tlsOptions: { rejectUnauthorized: false },
});

function readforregscreen() {
  imap.connect();
  let body = '';
  let header = '';
  const parsedMsg = {};
  return new Promise((resolve, reject) => {
    imap.once('ready', () => {
      imap.openBox('INBOX', false, (err) => {
        if (err) throw err;
        imap.search(['UNSEEN', ['SUBJECT', 'Welcome to Tempo!']], (error, results) => {
          const messages = [];
          if (error) throw error;
          const imapFetch = imap.fetch(results, {
            id: 1,
            bodies: 'TEXT',
            struct: false,
          });
          imapFetch.on('message', (msg, seqno) => {
            const prefix = `(#${seqno}) `;
            msg.on('body', (stream, info) => {
              console.log(prefix + 'Body');
              if (info.which === 'TEXT' || info.which === '1.TEXT') {
                stream.on('data', (chunk) => {
                  body += chunk.toString('utf8');
                });
                stream.once('end', () => { parsedMsg.body = body; });
              } else {
                stream.on('data', (chunk) => { header += chunk.toString('utf8'); });
                stream.once('end', () => { parsedMsg.header = Imap.parseHeader(header); });
              }
            });
            msg.once('attributes', function (attrs) {
              console.log(prefix + 'Attributes: %s'+inspect(attrs, false, 8));
              parsedMsg.attrs = attrs;
            });
            msg.once('attributes', (attrs) => {
              const { uid } = attrs;
              imap.addFlags(uid, ['\\Seen'], (err1) => {
                if (err1) {
                  console.log('Error marking the email as read:\n', `${err1}`);
                } else {
                  console.log('Marked the email as read successfully!!');

                }
              });
            });
            msg.once('end', () => {
              console.log(`${prefix}Finished`);
              messages.push(parsedMsg);
            });
          });
          imapFetch.once('error', (err1) => {
            console.log(`Fetch error: ${err1}`);
            return reject(err1);
          });
          imapFetch.once('end', () => {
            console.log('Done fetching all messages!');
            for (const i in messages) {
              const completemessage = inspect(messages[i], false, 4);
              const striphtmltag = completemessage.replace(/<(?:.|\n\r|\r\n|\\n)*?>/, '');
              body = (((body.replace(/=3D/g,"~~")).slice(striphtmltag)).replace(/=/g,"")).replace(/\r\n/g,"");
              body = (body.replace(/~~/g,"=")).replace(/&amp;/g,"&")
              // console.log('Body Text Message:\n'+`${body}`);
              if (body.includes('https')) {
                const geturl = new RegExp(regex, 'g');
                const checkURL = body.match(geturl);
                const completeURL = checkURL;
                console.log(`URL to perform reset password:${completeURL}`);
                const tostringval = completeURL.toString();
                const splitofurl = tostringval.split(',');
                console.log('The code in the URL:' + splitofurl[splitofurl.length - 2]);
                fs.writeFile('./test/testdata/codeforregscreen.txt', splitofurl[splitofurl.length - 2], { flag: 'w' }, (err2) => {
                  if (err2) throw err2;
                  console.log('File has been created & saved successfully!');
                });
              } else {
                console.log('Unable to open the URL mentioned');
              }
              imap.end();
              return resolve(body);
            }
            return undefined
          });
        });
      });
    });
    imap.once('error', (err) => {
      console.log(err);
    });
    imap.once('end', () => {
      console.log('Connection ended');
    });
  });
}
function readforresendregscreen() {
  console.log("In Readfor Reg function")
  imap.connect();
  let body = '';
  let header = '';
  const parsedMsg = {};
  return new Promise((resolve, reject) => {
    imap.once('ready', () => {
      imap.openBox('INBOX', false, (err) => {
        if (err) throw err;
        imap.search(['UNSEEN', ['SUBJECT', 'Welcome to Tempo!']], (error, results) => {
          const messages = [];
          if (error) throw error;
          const imapFetch = imap.fetch(results, {
            id: 1,
            bodies: 'TEXT',
            struct: false,
          });
          imapFetch.on('message', (msg, seqno) => {
            const prefix = `(#${seqno}) `;
            msg.on('body', (stream, info) => {
              console.log(prefix + 'Body');
              if (info.which === 'TEXT' || info.which === '1.TEXT') {
                stream.on('data', (chunk) => {
                  body += chunk.toString('utf8');
                });
                stream.once('end', () => { parsedMsg.body = body; });
              } else {
                stream.on('data', (chunk) => { header += chunk.toString('utf8'); });
                stream.once('end', () => { parsedMsg.header = Imap.parseHeader(header); });
              }
            });
            msg.once('attributes', function (attrs) {
              console.log(prefix + 'Attributes: %s'+inspect(attrs, false, 8));
              parsedMsg.attrs = attrs;
            });
            msg.once('attributes', (attrs) => {
              const { uid } = attrs;
              imap.addFlags(uid, ['\\Seen'], (err1) => {
                if (err1) {
                  console.log('Error marking the email as read:\n', `${err1}`);
                } else {
                  console.log('Marked the email as read successfully!!');

                }
              });
            });
            msg.once('end', () => {
              console.log(`${prefix}Finished`);
              messages.push(parsedMsg);
            });
          });
          imapFetch.once('error', (err1) => {
            console.log(`Fetch error: ${err1}`);
            return reject(err1);
          });
          imapFetch.once('end', () => {
            console.log('Done fetching all messages!');
            for (const i in messages) {
              const completemessage = inspect(messages[i], false, 4);
              const striphtmltag = completemessage.replace(/<(?:.|\n\r|\r\n|\\n)*?>/, '');
              body = (((body.replace(/=3D/g,"~~")).slice(striphtmltag)).replace(/=/g,"")).replace(/\r\n/g,"");
              body = (body.replace(/~~/g,"=")).replace(/&amp;/g,"&")
              // console.log('Body Text Message:\n'+`${body}`);
              if (body.includes('https')) {
                const geturl = new RegExp(regex, 'g');
                const checkURL = body.match(geturl);
                const completeURL = checkURL;
                console.log(`URL to perform reset password:${completeURL}`);
                const tostringval = completeURL.toString();
                const splitofurl = tostringval.split(',');
                console.log('The code in the URL:' + splitofurl[splitofurl.length - 2]);
                fs.writeFile('./test/testdata/codeforregscreen.txt', splitofurl[splitofurl.length - 2], { flag: 'w' }, (err2) => {
                  if (err2) throw err2;
                  console.log('File has been created & saved successfully!');
                });
              } else {
                console.log('Unable to open the URL mentioned');
              }
              imap.end();
              return resolve(body);
            }
            return undefined
          });
        });
      });
    });
    imap.once('error', (err) => {
      console.log(err);
    });
    imap.once('end', () => {
      console.log('Connection ended');
    });
  });
}
exports.readforresendregscreen = readforresendregscreen;
exports.readforregscreen = readforregscreen;
