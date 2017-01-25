
//
//  EGAnimatedFullScreenImage.js
//
//  Copyright (c) 2016 Edgars Grundmanis
//

var exec = require("cordova/exec");

var EGAnimatedFullScreenImage = function () {
  this.name = "EGAnimatedFullScreenImage";
};

/*
 * Show image from url
 *
 * Parameters:
 * url: url to show (only gif, wihtout extension, should have @x1 @x2 @x3 versions)
 *
 */

EGAnimatedFullScreenImage.prototype.showImageURL = function (url) {

  exec(null, null, "EGAnimatedFullScreenImage", "showImageURL", [{"url":url}]);


};

EGAnimatedFullScreenImage.prototype.hide = function () {

  exec(null, null, "EGAnimatedFullScreenImage", "hide", []);


};

EGAnimatedFullScreenImage.prototype.isVisible = function (successCb) {

    exec(successCb, null, "EGAnimatedFullScreenImage", "isVisible", []);
    

}

module.exports = new EGAnimatedFullScreenImage();