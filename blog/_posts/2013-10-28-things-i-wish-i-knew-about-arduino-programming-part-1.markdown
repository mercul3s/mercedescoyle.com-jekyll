---
layout: post
title: "Things I wish I knew about Arduino programming: Part 1, IDEs" 
tags:
- programming
- tech
- arduino
- electronics
status: draft 
type: post
published: false
date:   2013-10-29 09:00
---

Arduinos, with their low barrier to entry and ease of programming, are one of the things that got me started programming a few years ago. My first project was a simple wearable electronics project to get me started with the [Lilypad](http://www.arduino.cc/en/Main/ArduinoBoardLilyPad). I made a dress, and added 5 metallic illuminated flowers that alternately faded in an out with LED lights. It was a really fun project, and very satisfying to finish even though I had no idea what I was doing at the time. Since then, I've learned a few tips and tricks that make Arduino Programming a bit more fun, and less of a mystery.

One of the biggest hurdles when programming in C for the Arduino is the IDE, or Integrated Development Environment. It's [available for free](http://www.arduino.cc/en/Main/Software#toc1) from the Arduino website, and is a quick way to get setup when starting out with Arduino. the IDE allows you to write code, check your syntax (to a certain degree), compile it, monitor your serial port, and upload it to your hardware. It also comes with a number of example sketches to get you started. However, doing development with it long term can be a little tedious. Syntax highlighting is very limited - all of your variables, functions, and function calls are the same color, where in more robust editors they'd be different colors to be easily identifiable. This can be a little confusing visually when trying to debug a reference to an incorrect variable or misplaced semicolon. In addition, there are no line numbers. This was really frustrating for me, since the compiler references line numbers when it runs into errors in your code. Counting back or forward in your editor without line numbers is really painful. Another thing that irks me is the serial monitor. When debugging or testing, reading serial input is very helpful. Arduino's serial monitor is a floating window, and can get lost in the shuffle of applications and tabs while I'm working on a project. I also have to frequently restart it, since it's not the most reliable monitor. 

What can we do to fix these little annoyances? Enter the External Editor. With Arduino, we can use pretty much any other editor to write our code, and depending on that editor's support for compiling and uploading Arduino code, we can use it for anthing else we'd need to use the Arduino IDE for. To enable it, go to Arduino Preferences, and check the box for Use External Editor. Then open up your project files in your preferred editor, and the Arduino IDE will see those changes automatically, and disable your ability to edit the file in Arduino so you don't have file conflicts. If your editor doesn't have support for compiling and uploading your code, then you'll still need to use the Arduino IDE to do that.

I decided I wanted to try to do away with the Arduino IDE entirely. I primarily use [Sublime Text](sublimetext.com) as my editor, and there are a wealth of open source packages available for syntax highlighting, theming, and of course, Arduino Programming. The [Stino](https://github.com/Robot-Will/Stino) plugin gives me the ability to use the familiar features of sublime text (such as [vintage mode](http://www.sublimetext.com/docs/2/vintage.html)) to code my Arduino sketches, and extends Sublime to allow me to compile, upload, serial monitor, and talk to my Arduino board without having to use the Arduino IDE. And I have line numbers for better debugging!

To get this fancy setup, you'll need to install a few things. First off, you'll need the Arduino Software. Stino is just a wrapper for the Arduino IDE, so it still needs to be present on your computer to be useful. Second, if you don't have Sublime Text, [install it](http://www.sublimetext.com/2). The demo is indefinitely free, but will nag you for registration. Since it's a great editor, if you can afford the fairly inexpensive license, I suggest purchasing it. Next, install Sublime Text [package control](https://sublime.wbond.net/installation) - it's another handy feature that will allow you to install packages and plugins to extend syntax highlighting, shortcuts, and other features Sublime Text has baked in. Once you have these three things installed, open Package Control and install the Stino plugin. The developer of Stino has already written some pretty good instructions for installing the plugin with package control, which you can read [here](https://github.com/Robot-Will/Stino#1-installation-through-sublime-text-package-control). 

