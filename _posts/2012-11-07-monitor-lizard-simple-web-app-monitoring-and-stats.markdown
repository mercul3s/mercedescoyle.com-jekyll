---
layout: post
title: Monitor Lizard - Simple Web App Monitoring and Stats
tags:
- Hackbright
- programming
- tech
status: publish
type: post
published: true
---
Start of week 6!!! We're on to personal projects, and everyone is heads down in planning and coding. We went over ideas and initial planning about a week before, and Monday morning, we jumped right in. Since I have a fantastic mentor who challenges me, I had already started fleshing out a basic app with one working service - checking HTTP response codes. My goal for Tuesday morning (my usual mentoring session) was to get it working and deployed to Heroku. Success, with a few banging head on keyboard moments, detailed below.

Check out <a href="http://monitorlizard.org" title="Monitor Lizard">Monitor Lizard</a> in its infancy! I learned a bit about deploying an app to Heroku, after having trouble getting my app to run properly. First step? Read all the <a href="http://devcenter.heroku.com/articles/python" title="Documentation">instructions</a>. Heroku's documentation is actually pretty good, but somehow I missed the step telling me to set the port number in my main function. Flask defaults to localhost and port 5000, so when you're testing locally, you can just go to http://127.0.0.1:5000/ and run your webapp in the browser. However, that won't work for Heroku, since your IP and port will change to be public instead of local. I didn't set this initially, and after tailing Heroku logs, and exercising the powers of Google query, I found the initial Python Getting Started doc, which I had already read. Oops. My clue for searching? Bad Bind error message in Heroku's logs, with a pointer to what the bind was and what it should be. After adding <code>port = int(os.environ.get('PORT', 5000))</code> and <code>app.run(host='0.0.0.0', port=port)</code> to my main function in my flask app python script, I was able to get it to work! Since we default to port 5000, I can still run it locally without changing the code to look for the localhost address. Awesome. 

Another useful thing for debugging? Make sure not to set debug to False if you want to see errors when you break your app. You should set it to false when deploying a final version, but for testing, seeing debug information is critical and hard to find when running locally or just running your core functions. Though, running your functions in interactive mode, outside of your framework, is really helpful for creating and testing code.

Getting a tip-off from Christian, I started digging into the Requests library, aptly named HTTP for Humans. It's simple, intuitive, and though I haven't yet fully leveraged it in my code, I've done a bit of testing and found it quite useful. One of the things I was looking to test, authentication, has a built-in function; all you need to do is import HTTPBasicAuth, and pass in a username and password to your get request, and boom, you have an HTTP status code. Also useful? You can easily get JSON content with a get request! We just learned about that yesterday - so cool! Looking at the rest of Kenneth Reitz's <a href="http://kennethreitz.com/pages/open-projects.html" title="Projects" target="_blank">projects</a>, I'll probably find some other libraries useful, such as Flask-GoogleFed, Legit (Git for Humans), and Heroku.py. Also awesome are the environment and command line tools, such as Autoenv, Clint, and OSX-GCC-Installer (really this is the only tool from xcode you need, unless you're doing mac dev, and it doesn't even come with current versions of xcode!). 

There are so many cool libraries and tools out there - if you can think of it, someone has probably already created a library for it. If it's great, use it; if not, you might be able to contribute to it as an open source project.
