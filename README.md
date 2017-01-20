Cordova plugin to display full screen animated (.gif) image on iOS (iPhone)
===

Plugin to show  display full screen animated (.gif) images on iOS cordova project and use it with native components.

Installation:
---

`cordova plugin add https://github.com/grundmanise/cordova-plugin-EGAnimatedFullScreenImage.git`

**This plugin depends on <a href="https://github.com/Flipboard/FLAnimatedImage">FLAnimatedImage library</a>. You should add it to your project in order to use this plugin**

Usage:
---

 - Images should be inside www/application/app/**path for image**
 - You should have @1x, @2x, @3x versions of the image in the **path for image** folder, e.g. example@1x.gif, example@2x.gif, example@3x.gif

**JS Methods:**

*Show image:*

`EGAnimatedFullScreenImage.showImageURL('example');`

*note you call it without the ".gif" extension and without the scale factor e.g "@1x". Scale factor is calculated automatically according screen pixel density.

*Hide image:*

`EGAnimatedFullScreenImage.hide();`

Tested devices:
---

iPhone 5, 5s, 6;

Notes:
---

I am using this plugin to display an animated splashscreen.

License:
---
MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



