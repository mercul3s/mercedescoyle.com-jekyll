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
date:   2013-10-29 09:00:
---

Arduinos, with their low barrier to entry and ease of programming, are one of the things that got me started programming a few years ago. My first project was a simple wearable electronics project to get me started with the [Lilypad](http://www.arduino.cc/en/Main/ArduinoBoardLilyPad). I made a dress, and added 5 metallic illuminated flowers that alternately faded in an out with LED lights. It was a really fun project, and very satisfying to finish even though I had no idea what I was doing at the time.

Fast forward a few years, and I found myself hacking away with a team on an arduino morse code to twitter project with an awesome team of women at Silicon Chef, a hardware hacakthon run by [Hackbright Academy](http://hackbrightacademy.com). At the start, I thought our idea was going to be a fairly simple project - use a pushbutton to tap morse code into an Arduino, convert it to text (or leave it as morse code), and publish it to Twitter using the API. Well, that simple little idea turned out to be non-trivial to implement, but I learned a ton from trying it out. 

One of the biggest hurdles when programming in C for the Arduino is the IDE, or Integrated Development Environment. It's [available for free](http://www.arduino.cc/en/Main/Software#toc1) from the Arduino website, and is a quick way to get setup when starting out with Arduino. the IDE allows you to write code, check your syntax (to a certain degree), compile it, monitor your serial port, and upload it to your hardware. It also comes with a number of example sketches to get you started. However, doing development with it long term can be a little tedious. Syntax highlighting is very limited - all of your variables, functions, and function calls are the same color, where in more robust editors they'd be different colors to be easily identifiable. This can be a little confusing visually when trying to debug a reference to an incorrect variable or misplaced semicolon. In addition, there are no line numbers. This was really frustrating for me, since the compiler references line numbers when it runs into errors in your code. Counting back or forward in your editor without line numbers is really painful. Another thing that irks me is the serial monitor. When debugging or testing, reading serial input is very helpful. Arduino's serial monitor is a floating window, and can get lost in the shuffle of applications and tabs while I'm working on a project. I also have to frequently restart it, since it's not the most reliable monitor. 

What can we do to fix these little annoyances? Enter the External Editor. With Arduino, we can use pretty much any other editor to write our code, and depending on that editor's support for compiling and uploading Arduino code, we can use it for anthing else we'd need to use the Arduino IDE for. To enable it, go to Arduino Preferences, and check the box for Use External Editor. Then open up your project files in your preferred editor, and the Arduino IDE will see those changes automatically, and disable your ability to edit the file in Arduino so you don't have file conflicts. 

