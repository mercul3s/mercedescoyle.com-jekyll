---
layout: post
title: Stupid Find Tricks
tags:
- programming
- tech
status: publish
type: post
published: true
---
Every time I learn another use case or tip for using find, I have a new appreciation for the power behind this tool. At its core, find is a handy command line search utility with a few special powers. A coworker aptly nicknamed it the "swiss army knife" of shell commands. I'll go one step further and nickname it the rocket surgeon's swiss army scalpel, for unlike the swiss army knife with its array of tools that are half suited for many little jobs, find's precision comes from a multitude of command line options, and the ability to execute additional commands on the output of a search with find.

Quick basic find example: Suppose I want to lookup any files with the extension .mp3 in my music directory:
<code>$ find ~/Music -name "*.mp3"</code>
Find will look in the Music directory, and any sub directories within it, to locate those files. Not super useful at this point, but we'll get there.
If I pipe find to wc (word count) with the -l flag (lines), I can get a count of every .mp3 file in that directory:
<code>Music $ find . -name "*.mp3" | wc -l
    1410</code>
Now, suppose I'd like to see all the music files I listened to yesterday:
<code>Music $ find . -atime 1 | wc -l
    71</code>
Hmm, looks like I didn't listen to many tunes yesterday. Wait, hold on a sec - what is that -atime flag? Well, time is of course a timestamp, a stands for accessed, and the 1 after -atime stands for 1 day. Hence, all the music I listened to yesterday. In Unix, all files have a timestamp for when they were created, modified, and last accessed, and correspond to ctime, mtime, and atime in find. We can pass time information to the command and use that to search for and do actions on files. You can see timestamps on individual files by using the stat command:
<code>$ stat file
16777219 4936118 -rwxr-xr-x 1 mercedes staff 0 525 "May 17 16:01:56 2013" "May 15 15:14:26 2013" "May 15 15:14:26 2013" "May 15 15:14:26 2013" </code>

The more specific use case I have for this corresponds to files containing data in a queue on our event routers. We've been in the process of tuning this system, and currently have a lot of backlog. Sometimes we get enough of a backlog that we have to clear out the queue to get things going smoothly again, but we want to be selective about how we do it; we want to remove old files from previous days from the system, but we still want to keep around current data that's getting added today. For example:
<code>$ find . -ctime +1 -exec rm {} \;</code>
The -exec command, partnered with a set of braces {}, tells find to operate rm on the output of find (the result in the braces). I can also move files or just list files with mv or ls instead of rm. Another example:
<code> $ find /Users/mercedes/Design/fonts/ -name '*.ttf' -exec mv {} ~/Library/Fonts/ \;</code>
What is this nifty trick? I discovered this when I had >600 fonts each in their own directory that I wanted to install into my main font directory. I told find to search for font files in their directories, and then move them to the main font directory. Saved me a ton of drag and drop time!

There are a ton more options one can use with the find command, and can prove powerful indeed alongside a multitude of unix command line tools.

