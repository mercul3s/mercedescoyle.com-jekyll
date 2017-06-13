---
layout: post
title: Metrics and Alerting in Real Time
tags: []
status: draft
type: post
published: false
meta:
---
One of the projects I'm working on is making all of our real time data visible and actionable through visualization and alerting. There are a myriad of analytics, reporting, alerting, and visualization tools out there, and we're experimenting with a handful. Much of my job will be to get familiar with our current monitoring tools, help build and use our in house events system, and route important events (errors, revenue events, or large fluctuations in events) to a visible metrics dashboard.

<span style="color: #ff6600;">We're currently  using a combination of Elastic Search, log file parsing</span>

<span style="color: #ff6600;">Currently, our events system is structured so that events (data in <a title="Common Event Expression" href="http://cee.mitre.org/" target="_blank"><span style="color: #ff6600;">CEE</span></a> - Common Event Expression - format) are routed through an events bus, and then to other systems</span>

<strong>Why are real time events important?</strong>

My first big project is to implement a system that will listen for certain tagged events from our message bus, and look through those messages to find those that contain an ad error. As it finds all those messages (from hundreds of data points that flow through the event bus every second), the program keeps a tally of which publishers have errors, and how many per publisher. That data is then output every minute to a graph, table, meter, or other fancy javascript doohickey, which gives us a measurable real time statistic for lost ads and revenue.

<strong>What can we do with this data?</strong>

Profit! No, seriously. When I finally got the initial tap running to process and alert all Ad Errors occurring on our system, they were much, much higher than anyone expected. So much higher that I spent time really looking to make sure my counts were correct.

<strong>Does this replace an old fangled nagios alerting system?</strong>

Nagios is built for a bit different sort of monitoring, specifically system health. However, we can tie our events system in with nagios for correlations between system health and event thresholds; ie if we get some alert about events falling off a cliff, and also an alert about the box it's running on, we can take a closer look to see if one alert had causation to the other.

<strong>Why projects like these are great for Junior Engineers</strong>
