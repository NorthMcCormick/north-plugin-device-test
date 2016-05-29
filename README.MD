# North-Plugin-Device-Test Cordova Plugin

Gain priceless insights into your customers with smaller devices and how they use your app. 

![Screencapture GIF](http://i.giphy.com/l41YoTcqOaWsgknpS.gif =250x)

## Why?

As a product designer, user experience is really what matters most. Often engineers over-see things like reachability, font sizes in smaller screen sizes, and white space in larger screens. This plugin allows you to programatically set the web view in Cordova to a specific device size and anchor it to the left or right of your test device.

The goal of this plugin is to mimic *real* life sizes, not programatic sizing. Resolutions may be smaller than real device pixels, but are physically the same size.

## Important Notes
This is iOS only, I *may* attempt an Android version but haven't decided yet.


It should go without saying, but you need a device larger than the device being set otherwise you won't see the whole thing and the offsets will get crazy. 

This plugin is written in Swift, this means you'll need the bridging header. If you do not have this already, or don't know how to make one go here: https://github.com/akofman/cordova-plugin-add-swift-support

I will not cover *any* support relating to the header.

This plugin is *not* meant to be used in production. Your app will most likely be rejected if it is using this because it's pretty far outside of the user guidelines on apps. If you want to try and submit your app using this plugin as a feature, let me know if they accept it!

## Installation

Using Cordova `cordova plugin add north-plugin-device-test`
Using Ionic Framework `ionic plugin add north-plugin-device-test`

## Use

There are only two functions, `setDevice` and `anchor`. These must be wrapped in the Cordova Ready or Ionic Platform Ready events to function. 

`$ionicPlatform.ready(function() { /* Test device calls go here */ }` 

### setDevice

`deviceTest.setDevice('iPhone4s');`

Possible values for the device are:
`iPhone4s`
`iPhoneSE`
`iPhone6`
`iPhone6Plus`

### anchor

The plugin defaults the anchor to the left side of the screen

`deviceTest.anchor('left');`

Possible values for anchor are:
`left`
`right`

### Use Case

If you want to test your app on iPhone 4S with a right handed user, you would call:
`deviceTest.anchor('right'); deviceTest.setDevice('iPhone4s');`

## Things maybe coming
* Some kind of event callback in case you need to update your UI in multiple areas of the app
