var exec = require('cordova/exec');

exports.coolMethod = function(arg0, success, error) {
    exec(success, error, "northPluginDeviceTest", "coolMethod", [arg0]);
};

/*
 arg0 = Device id, can be: iPhone4, iPhoneSE, iPhone6, iPhone6Plus
 */

exports.setDevice = function(arg0, success, error) {
  exec(success, error, "northPluginDeviceTest", "setDevice", [arg0]);
};

/*
 arg0 = Side to anchor to, can be: left or right
 */

exports.anchor = function(arg0, success, error) {
  exec(success, error, "northPluginDeviceTest", "anchor", [arg0]);
};