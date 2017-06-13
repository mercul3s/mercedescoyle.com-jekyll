---
layout: post
title: How Not to Build Software
tags:
- hackbright
- programming
- tech
status: publish
type: post
published: true
---
Having frustrating experiences with web applications and software is one of the reasons I'm learning how to build software at Hackbright Academy. In my previous life as a desktop support admin, I spent a lot of time figuring out and reporting bugs in other developers' software, or showing people how to use software that was less than intuitive. I've also spent a ton of time stabilizing and fixing OS X server, specifically Open LDAP - and as a consequence I now love linux more than ever, and harbor a bit of ill will towards OS X server. For the moment, I'm going to talk about payment processing, and some observations on how to do it better from a customer-facing perspective.

I pay almost all of my bills online, with the exception of my car payment and my dentist. My dentist, understandably, does not have the resources or knowledge to setup online payment processing. That's OK, I can write him a check for my cleaning. The bank that owns my car, on the other hand, does have the resources to allow payment processing online, but for some reason, won't or can't. I can certainly sign up for "online banking", which will allow me to view my balance - and that's it. Really! I can give everyone else my bank routing number and account or my check card, but this bank won't allow me to pay my bill online? That seems a little silly to me! I could setup billpay through my checking account, but it costs me money, and I sometimes pay extra on my car payment (but don't want to get locked into doing it every month).

Kaiser Permanente has probably one of the better online health management websites for managing your account, emailing your doctor, ordering prescriptions online, etc, except when it comes to signing up for an individual policy and paying your bill. I now have 3 accounts for Kaiser, since apparently I cannot use one account to rule all services. C'mon Kaiser, we learned about primary keys and joins in class the other day - I know you can, too. 

And oh, the DMV - I love to use your online services so I don't have to write you checks or step through your doors in order to keep my vehicles legal. But when your payment processor fails 3 times when I try to renew my registration, I give up, and I guess I'll try again later, because I have to. However, my confidence that I can actually give you money is waning, and when I see that java exception in my browser, I really want to poke around your logs and try to fix it.

Despite (or maybe In spite) the breadth of infrastucture of Banking, Government, and Healthcare, these systems are lagging far behind in technological innovation compared to the vast expanse of applications and systems for virtually any other business. Part of the reason I haven't actually switched my bank to a more economically friendly credit union is that I haven't found one that has a good online banking system. I do really like Kaiser doctors, but I'm astounded by the fact that it's a pain in the but to travel and get care (one region in CA can't talk to the other), and the multiple logins thing - ugh. I don't know yet how to improve these vital systems, but I'm thinking about it. As new software developers, we should put healthcare, government, and banking on our radar, and figure out how to improve that experience for others.
