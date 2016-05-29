var exec = require('cordova/exec');

exports.coolMethod = function(arg0, success, error) {
    exec(success, error, "cordovaPluginDeviceTest", "coolMethod", [arg0]);
};

/*
 arg0 = device id, can be: iPhone4, iPhoneSE, iPhone6, iPhone6Plus
 */

exports.setDevice = function(arg0, success, error) {
  exec(success, error, "cordovaPluginDeviceTest", "setDevice", [arg0]);
};
