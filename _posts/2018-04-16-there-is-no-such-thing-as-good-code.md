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
constituted "good code". My first real Software Engineering position was a bit 
of coding, a bit of ops, a lot of question asking (of peers and the internet), 
and just trying to see what worked. I learned a ton from that experience, 
especially about system design and debugging. When you're new to engineering, just 
getting things to work and fixing bugs are things to be celebrated, and I was
pretty good at doing that. But one of the things I *didn't really* understand how
to do well was read and review code. We didn't have a good practice of branching,
testing, and reviewing there, partially due to the fact that what me and my 
teammates worked on individually was so different that we each didn't have enough
context to review the others' work. As a pattern matching human, I was 
continually seeking examples and consistency, which was tough to find in a 
rapidly changing environment with several different languages and frameworks in
daily use.

Many of my technical mentors and friends have somewhere in the neighborhood of
20-30+ years of experience, starting out when the internet was in its infancy and
endless computing power and flexibility was a distant dream. Getting my start
much later in the game meant an overwhelming array of paths to choose from - 
languages, frameworks, hardware, operating systems, infrastructure platforms.
What I didn't know at the time was that most of these choices evolved as
abstractions meant to solve usability problems in hardware and software. Making
the leap from understanding some bash scripting and hand configuring Mac and
Linux servers as a helpdesk tech, to writing code that scaled up and down
infrastructure or rewriting entire server-based systems with *serverless code*
was magical and a bit daunting. And still, I didn't feel like I knew what 
*good code* really
looked like.

Several years later, I have a lot more practice writing and reading code. I can
now skim code blocks and functions and get a sense of the code flow and
structure much more easily than I was able to earlier in my career. It still
takes some work to glean context and edge cases from just reading code;
interacting with it brings system context and potential problems to light much 
more readily. In my quest for learning and writing good code, I've been looking 
for the wrong thing, and asking the wrong question. There is no good code because
there is *no one method or pattern* of writing good code or infrastructure. A few
wise folks tried to gently nudge me in the right direction a handful of times, 
but also wisely knew to let me forge my own path (when I once asked a 
recommendation for good examples of architecture diagrams, said wise friends 
instead pointed me to a Google search for "spaghetti on the wall"). One can only
learn so much from studying architecture patterns and algorithms - the context 
for why code was written reveals so much more.

The problem in searching for "good code" is that solutions written with code are
continually evolving. The most common answer for "what is good code?" is code
that is easy to read and easy to test. However, code and systems are often 
complex because the underlying *problems* they are trying to solve are often 
complex. While I think it's good practice to try and reduce complexity in code 
and systems for usability and readability, it's not always needed or warranted at
the time of its writing. Alternatively, we might want to refactor or simplify a 
component, but cannot easily do so without breaking changes or refactoring the 
system that relies on that component. It's easy to say "design without tight 
coupling" or "use microservices" or any number of patterns used in software 
development to avoid spaghetti code. What's harder to do is predict the evolution
and scope of your solution over the lifetime of the system, and the limitations a
chosen technology might impart on your codebase.

I think my search for good code stemmed from a lack of understanding *why* I was 
attempting to solve the problems I was given with code, and a lack of
understanding how that code would interact with a system as a whole. I often
have the code version of writer's block - starting out with a blank editor is a
recipe for procrastination. It's also a sign that I don't have all the context
for the task at hand before I get started. So now, I only open my editor once I
have a very clear path to what I need to do. Once I'm there, it's much easier to
write. I spend a bit more time up front thinking about and clarifying my task
before touching an editor, ensuring that I've broken it down into easily
digestible chunks. 

I've also been introduced to a whole new world of tooling to help keep code consistent -
linters, formatters, and consistent unit testing do more for context visibility
than just striving for readable code. I spent a lot of time doing things the
hard way in order to really learn them, or build character, or similar
reasoning, when really it just made it harder for me to concentrate on the
*why*. Using the time saving tools helped get the difficult parts of coding out
of the way so I could more easily focus on the solution. 

So in conclusion: if you're in the position of mentoring folks new to engineering,
and they ask you what good code looks like, tell them the truth: there is no
good code, there are only solutions to complex problems.
