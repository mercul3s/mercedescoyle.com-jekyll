---
layout: post
title: "There is no such thing as good code"
tags:
 - programming
 - tech
type: post
published: true 
date: 2018-04-16 12:05
---

> "You'll know good code when you see it."

Early in my career, this was oft repeated to me when I inquired of my peers what
constituted "good code". As a new engineer, I was attempting to make sense of a
highly complex and quickly changing environment with few guardrails. In previous
jobs, I spent a lot of time fixing software problems, much of that time with
black box software or hardware and people upset that their tools weren't
working. Newly minted with the power of software creation, I didn't want to be
the person who made someone have a bad day because of my bad code.

Many of my technical mentors and friends have somewhere in the neighborhood of
20-30+ years of experience, starting out when the internet was in its infancy and
endless computing power and flexibility was a distant dream. Getting my start
much later in the game meant an overwhelming array of paths to choose from - 
languages, frameworks, hardware, operating systems, infrastructure platforms.
What I didn't know at the time was that most of these choices evolved as
abstractions meant to solve usability problems in hardware and software. Making
the leap from understanding some bash scripting and hand configuring Mac and
Linux servers as a helpdesk tech, to writing code that scaled infrastructure up 
and down, or rewriting entire server-based systems with *serverless code*
was magical and a bit daunting. And still, I didn't feel like I knew what 
*good code* really looked like.

My first real Software Engineering job was a bit of coding, a bit of ops, a lot 
of question asking (of peers and the internet), and just trying to see what 
worked. I learned a ton from that experience, especially about system design and 
debugging. When you're new to engineering, just getting things to work and fixing
bugs are things to be celebrated, and I was pretty good at doing that. But one of
the things I *didn't really* understand how to do well was read and review code. 
I knew when my code worked, but I didn't know how to evaluate its quality.
We didn't have a good practice of branching, testing, and reviewing, partially 
due to the fact that what me and my teammates worked on individually was so 
different that we each didn't have enough context to review the others' work. As 
a pattern matching human, I was continually seeking examples and consistency, 
which was tough to find in a rapidly changing environment with several different 
languages and frameworks in daily use.

In my quest to learn how to write good code, I realized that I've been looking 
at the wrong problem, and asking the wrong question. There is no objectively good code because
there is *no one method or pattern* of writing good code or infrastructure. The 
problem in searching for "good code" is that written solutions are continually evolving. 
The most common answer for "what is good code?" is code  that is easy to read, 
easy to test, and handles edge cases for the defined problem. These questions are
a good baseline for evaluating code quality, yet the pattern of implementation differs per language, framework, or problem scope. Take, for example, the DRY edict, or "Don't repeat yourself". The
idea is that if you find yourself duplicating code, you should abstract it into something 
reusable. While I think it's good practice to try and reduce complexity in code 
and systems for usability and readability, it's not always needed or warranted at
the time of its writing. 

In my current work, we have discussed
[generating](https://github.com/sensu/sensu-go/issues/1109) [command line component code](https://github.com/sensu/sensu-go/tree/master/cli)
from our data structures in order to lessen some of the maintenance costs we're
incurring from creating those files manually. It seems like a worthwile
abstraction, and a fun project to work on. However, when we were in rapid
prototyping and development of our command line interface, it was really quick 
and easy for multiple developers to implement new commands independently by 
copying and modifying an existing implementation. Getting the tool shipped
quickly and in the hands of users for real world feedback was more valuable at
the time than writing an abstraction to help us manage that code. In addition, I
think it's a little easier to approach the code that solves the problem (a
command line interface to manipulate a data structure) than to approach an
abstraction that generates a command line interface and then understand what
that generated interface does. You need to understand the high level case before
you can get to building the abstraction. It's easy to say "design without tight coupling"
or "use microservices" or any number of patterns used in software development to 
avoid "bad" code. What's harder to do is predict the evolution and scope of your 
solution over the lifetime of the system, and the limitations a chosen technology
might impart on your codebase.

I think my search for good code stemmed from a lack of understanding *why* I was 
attempting to solve the problems I was given with code, and a lack of
understanding how that code would interact with a system as a whole. I spent a 
lot of time doing things the hard way in order to really learn something, or 
build character, or similar reasoning, when really I just needed to concentrate 
on the *why*. I often have the code version of writer's block - starting out with
a blank editor is a recipe for procrastination. It's also a sign that I don't 
have all the context for the task at hand before I get started. So now, I only 
open my editor once I have a very clear path to what I need to do. Once I'm 
there, it's much easier to write. I spend a bit more time up front thinking 
about and clarifying my task before touching an editor, ensuring that I've broken
it down into easily digestible chunks. Good tooling has also been helpful for 
writing consistent code - linters, formatters, and consistent unit testing do more 
for context visibility than just striving for clean and performant code. Using 
the time saving tools helped get the tedious parts of coding out of the way so I
could more easily focus on the solution. 

Much of my quest was spent on trying to understand code style guides and project
layouts. I was often stuck in the quagmire of opinionated nitpicking of what code
should look like, and lost in the implementation details instead of how the code
should behave. A few wise folks tried to gently nudge me in the right direction 
a handful of times, but also wisely knew to let me forge my own path. When I once
asked for a recommendation of good examples of architecture diagrams, said wise 
friends instead pointed me to a Google search for "spaghetti on the wall". Point
being, every architecture is meaningless without a story behind it, and one can 
only learn so much from studying patterns and algorithms - the context 
for why code and systems were written reveals so much more.

So in conclusion: if you're in the position of mentoring folks new to engineering,
and they ask you what good code looks like, tell them the truth: there is no
good code, there are only good solutions to complex problems.
