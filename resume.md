---
layout: page
title: resume 
permalink: /resume/
---

# Mercedes Coyle 
---
me@mercedescoyle.com    
[github.com/mercul3s](http://github.com/mercul3s) 

# Interests
---
Automation, Systems Architecture, Chatops, Backend Software Engineering, Public
Speaking, Technical Writing. Hire me! I'm looking for a remote-friendly team building infrastructure and tooling for a smooth development process.

# Experience

---     
**Sensu**
*6/2017 - 10/2018*

Software Engineer, [Sensu-Go](https://github.com/sensu/sensu-go)
- Collaborated on a team with 7 fellow developers on the open source sensu-go codebase, writing testable, reusable, and readable code.
- Removed operational roadblocks to help smooth out our development process.
  - Enabled faster development, debugging, and release cycles by writing a terraform plan for a clustered staging environment on AWS 
- Onboarded new engineers by walking through the codebase and pairing on feature development.
- Dug deep into etcd features, performance, and clustering.
- Notable accomplishments: 
  - Refactored keepalive and check ttl backend monitor code to ensure monitors 
  were [reusable](https://github.com/sensu/sensu-go/pull/897) and [safely coordinated](https://github.com/sensu/sensu-go/pull/1699) across a cluster of sensu-backend nodes.
  - Implemented a [durable, etcd backed queue](https://github.com/sensu/sensu-go/pull/937) for use with adhoc check requests.
  - Paired with a colleague to plan, spec, rewrite, and reorganize [sensu-go documentation](https://docs.sensu.io/sensu-core/2.0/). Revised language from a software developer focused, out of date reference, to operator centered getting started guides and complete api references.

**Comcast** 

*7/2016 - 2/2017*               
Software Engineer, Core Application Platforms
- Wrote API integrations for Pagerduty and Slack to send metrics/alert data to those services in Elixir. 
- Implemented an Elixir API wrapper for Marathon to create/destroy/scale containers
- Prototyped Slack chatbot in Elixir for a lab week project. Bot handled support questions for an HTTP proxy service, such as querying for a user’s api key limit and looking up on call rotation schedules in Pagerduty

**Scripps Networks Interactive** 

*8/2015 - 7/2016*   
Cloud Operations Engineer
- Designed and built data collection system using AWS serverless architecture with Kinesis and Lambda to handle realtime processing of 100M+ events daily
- Authored, refactored, and tested Chef cookbooks and recipes to automate teardown/build/installation of about 100 EC2 instances
- Added monitoring checks for critical failure points with DataDog and AWS Lambda
- Worked with Data team to build Hadoop and ELK systems, processing and storing around 70TB of data

**Scripps Networks Interactive** 

*2/2013 - 8/2015*   
Data Infrastructure Engineer
- Built out Hadoop and ELK infrastructure and data pipelines for processing and analyzing 100M video player events daily in batch and realtime
- Implemented dashboards and monitoring for system and data health using Statsd, DataDog, and Dashing
- Architected and prototyped realtime analytics system for faster and more accurate business and system health metrics
- Mentored Apprentice Engineers by pair programming, code reviews, and weekly goal and feedback sessions

**ngmoco:)** 

*4/2011-8/2012*     
Desktop Support / Corp Systems Admin                       
- Scaled Open Directory Authentication system from one failing xserve to master / multiple replica scheme for better service availability
- Upgraded CrashPlan backup server from mac hardware to an Ubuntu Server, expanded storage capacity, and optimized file exclusions and archiving for faster backups
- Maintained Casper Software deployment system, creating new base OS images and software packages for deployment, and updating system as required

**The Urban School**

*7/2008-4/2011*     
Technology Support Specialist
- Provided Mac hardware, software, and AV support for over 400 students and teachers
- Restructured and added new documentation to knowledge base
- Managed small student team to image, inventory, and distribute new laptops to incoming students and teachers and provide after hours email support and documentation

# Projects  
---     

**OSS Contributes**
[Sensu Go](http://github.com/sensu/sensu-go)
[Community maintained Sensu Go Chef cookbook](http://github.com/sensu/sensu-go-chef)

**1U Home Datacenter:** Virtualized servers with SmartOS    
Details in [this]({% post_url 2016-09-25-building-a-1u-home-datacenter-hardware-and-os %}) blog post

**Crabbot:** Slack bot for Otakorp  
Answers common questions such as event dates and ticket registration count using Python against a simple HTTP API 

**Lost and Found system:** Web App for tracking and returning items lost during Otakon’s annual convention 
Flask, MongoDB, and phonetic algorithms for search functionality

# Technical Talks
---

**Monitorama 2018:** [Building Open Source Monitoring Tools](https://vimeo.com/274820910)
**PyCon 2016:** [Build Serverless Realtime Data Pipelines with Python and AWS Lambda](https://www.youtube.com/watch?v=EpCHD9AIHAM)  
**OpenSourceBridge 2015:** [What’s in a name? Phonetic Algorithms for Search and Similarity](https://confreaks.tv/videos/osbridge2015-what-s-in-a-name-phonetic-algorithms-for-search-and-similarity)  
**DevopsdaysSV 2014:** [Onboarding and Mentoring Apprentices with DevOps Culture](https://vimeo.com/album/3173642/video/115484860)

# Skills
---

**Languages and Frameworks:** Go, Python, Ruby, Elixir, SQL, Flask, Sinatra, Arduino
**Data Stores and Processing:** Etcd, PostgreSQL, Redis, MongoDB, ELK, ZeroMQ, RabbitMQ, Rsyslog, AWS Lambda, AWS Kinesis
**Infrastructure tools:** AWS, Chef, Terraform, Docker, nginx, TravisCI, Jenkins 
**Monitoring tools:** Sensu, DataDog, Statsd, Grafana 
**Methodologies:** Kanban, DevOps, Continuous Delivery

# Education
---

B.A. Photography, San Francisco State University    Completed May 2005

# Volunteering
Kumoricon *10/2017-present*
Co department lead for Cosplay Repair: help manage and direct volunteers, assist
convention attendees with various materials repairs

Otakon  *1/2014-present*    
Department head for Information Desk and Volunteer Operations, Otakon Vegas:
Direct volunteers, help attendees with information and locations at the
convention
Staff for Volunteer Operations and Lost and Found, Otakorp
Software development projects to help automate tedious processes, Code of Conduct committee

GeekGirlCon *10/2016*   
Helped convention attendees learn about demo video games and systems
Counted crowds and managed line control for workshop events
