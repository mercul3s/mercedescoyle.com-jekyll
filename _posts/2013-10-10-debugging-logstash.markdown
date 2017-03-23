---
layout: post
title: "Debugging Logstash" 
tags:
- programming
- tech
status: draft 
type: post
published: false
date:   2013-10-10 17:20:46
---

One of the pieces that keeps our events system flowing is Logstash. We use it to parse our gnarly legacy events into a common structure for better searching and analysis. If we had messaging in standard JSON format, we could output it directly to elasticsearch (our data storage solution for realtime events) but as it stands we need it for message parsing. 

Recently, we've upgraded elasticsearch to 90.5 in order to increase stability. Elasticsearch provides a lot of value to our engineering, business, and support teams; it's a critical tool for knowing how our applications and players are functioning in realtime. It's been so successful that the service was not able to keep up with usage, so slowness and cluster downtime was becoming normal.

Logstash, Elasticsearch, and Kibana are tightly integrated; upgrading one usually means there is an upgrade for another to improve interoperability.