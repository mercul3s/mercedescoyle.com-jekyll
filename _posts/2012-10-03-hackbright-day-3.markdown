---
layout: post
title: Hackbright - Day 3
tags:
- hackbright
- programming
- tech
status: publish
type: post
published: true
---
INTENSE. I probably do more talking in a day than I usually do in a week, even while at work. Pair programming is hard work, but it's completely rewarding. Working with a pair allows you to be more thorough, since that second set of eyes will catch things you miss, and solving problems becomes much much faster when you talk through it. Having your hands on a keyboard and screen you share makes it easier to type out code and both being able to edit it without an awkward back and forth. We're working on problem solving, based on Zed Shaw's <a href="learnpythonthehardway.org" title="Learn Python" target="_blank">Learn Python the Hard Way</a>. Going through exercises 2 or three times (I've already been through nearly all of the book once) seems a little tedious at first, but it really hones in on key ideas and syntax, and Python is all about syntax. 

Today's exercise was to build a calculator, based off an interface whose code we couldn't look at, that imported functions we created to do basic arithmetic. Once we got cracking, it was pretty simple to create those functions, and we had ourselves a little calculator. The challenge came later, when we were allowed to recreate the calculator interface which would then import our arithmetic functions. We got started a little late in the day on that one, but were able to get the basic functionality pretty quickly. The hard part was figuring out how to allow our functions to take an undefined number of arguments, and do calculations based off those. We didn't quite get there, since we got started later in the day, but we did come up with a clever-but-kludgy way to append zeros or ones to a list, and then pass that list to the function so it would add up to ten values. Still not exactly there, we asked Christian for help. He offered us some hints: one, that we could use *args for variable arguments, but asked that we wait until later to do so, since it would be more of a challenge to work around it. Two: there's a little function called reduce, which can be used to add two numbers together, then add a third to the result of the first two, and so on. We could also have used a while loop to do something similar to reduce. I'm hoping to go back to that function soon, or at least give variable arguments another shot (without *args) so I can really conquer it. 

Another little thing we learned a bit about today - binary math. I'm still a little fuzzy. It almost clicked today, but not quite. I'll give it a shot again tomorrow when I'm more rested.
