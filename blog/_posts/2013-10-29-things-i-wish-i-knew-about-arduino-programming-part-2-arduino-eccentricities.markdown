---
layout: post
title: "Things I wish I knew about Arduino programming: Part 2, Arduino Eccentricities" 
tags:
- programming
- tech
- arduino
- electronics
status: draft 
type: post
published: false
date:   2013-10-30 09:00
---

A few months ago, I found myself hacking away with a team on an arduino morse code to twitter project with an awesome team of women at Silicon Chef, a hardware hacakthon run by [Hackbright Academy](http://hackbrightacademy.com). At the start, I thought our idea was going to be a fairly simple project - use a pushbutton to tap morse code into an Arduino, convert it to text (or leave it as morse code), and publish it to Twitter using the API. Well, that simple little idea turned out to be non-trivial to implement, but I learned a ton from trying it out. I'm going to outline some concepts behind 

One of the first tasks for those getting familiar with an Arduino is to program an LED to light up at the push of a button. You can find the code for pushbutton controlled LEDs in [Getting Started With Arduino](http://www.makershed.com/Getting_Started_with_Arduino_2nd_Edition_p/9781449309879-p.htm), a guide to getting familiar with and programming Arduino boards. Many of the neat things one can do with Arduinos are interactive sensor or pushbutton controlled, and at first glance, lighting up an LED with a push button is a good quick test to make sure your pushbutton is wired up and programmed properly. When we first wired up a switch to test our morse code interface, we were able to get our LED to light up, but on closer inspection, the switch didn't behave exactly as I expected it to.



ISRs 
LED output
Serial output
     Why both of the above are not reliable data
Oscilloscopes!
Testing circuits with a multimeter
Controlling your loop time
Debouncing
Dealing with manufacturing inconsistencies
Arduino bakes in a lot of functionality to lower the barrier to entry, but can result in frustration when you want to program it in a way that's more advanced
arduinos are for prototyping
Can override baked-in Arduino libraries and firmware code - compiles to assembly, but they don't let you see it