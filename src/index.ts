/*
if you open the initializer feature, please implement the initializer function, as below:
module.exports.initializer = function(context, callback) {
  console.log('initializing');
  callback(null, '');
};
*/
const { convertFileToPDF } = require('fc-libreoffice');
const { execSync } = require('child_process');
const co = require('co');
const OSS = require('ali-oss');
const fs = require('fs');

const binPath = '/tmp/lo.tar.br';

var store;

export const initializer = (context, callback) => {
  store = new OSS({
    region: `oss-${process.env.ALIBABA_CLOUD_DEFAULT_REGION}`,
    bucket: process.env.OSS_BUCKET,
    accessKeyId: context.credentials.accessKeyId,
    accessKeySecret: context.credentials.accessKeySecret,
    stsToken: context.credentials.securityToken,
    internal: process.env.OSS_INTERNAL === 'true'
  });

  if (fs.existsSync(binPath) === true) {
    callback(null, "already downloaded.");
    return;
  }

  co(store.get('lo.tar.br', binPath)).then(function (val) {
    // callback(null, val)
    co(store.get('example.docx', '/tmp/example.docx'))
      .then(function (res) {
        callback(null, [val, res])
      }).catch(callback)
  }).catch(callback);
};

export const handler = function (event, context, callback) {
  // execSync('cp -f /code/example.docx /tmp/example.docx');

  convertFileToPDF('/tmp/example.docx', binPath)
    .then(() => {
      console.log('convert success.');
      co(store.put('example.pdf', '/tmp/example.pdf'))
        .then((val) => callback(null, val))
        .catch((err) => callback(err));
    })
    .catch((e) => {
      console.log('convert fail.', e);
      callback(e, 'fail')
    });
};
