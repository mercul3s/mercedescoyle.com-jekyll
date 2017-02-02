---
layout: post
title: Lists, Tuples, and Dictionaries, Oh My!
tags:
- hackbright
- Markov Chains
- programming
- Python
- tech
status: publish
type: post
published: true
meta:
  _edit_last: '1'
---
Only week 2, and I already managed to get sick. I spent the past week in a head-cold induced haze, which seemed to make focus and learning a bit difficult for me. Since we're going at such a quick pace, I didn't take a sick day, which may have lengthened my cold a bit. We dove head first into dictionaries, lists, and tuples, with a number of exercises designed to teach us how to read, write, remove, and substitute or reassign data.

One of the tasks assigned was to create a Markov Text generator, which will process a volume of text, sort the lines into <a title="Markov Chains" href="http://mathworld.wolfram.com/MarkovChain.html">Markov Chains</a>, and then output a number of new lines based on those chains. Here's some generated text based off writings from Mark Twain:

>Said calmly: "Lash me these varlets to the fore--so there to lie naked a thousand people ten to needed was a gain. American soil, from Columbus down to those The rest of us family: which provided the royal revenues. And religion is free. My time. Concentration Sir Arthur and a mob sound, that rose before fell to murmuring again and defended eye. Look up some safe crumbs and ward off the fires, current he had me "protection" of dumb gotten I said we his basest.

Getting to the point of being able to generate a few garbled spam-like sentences felt like a challenge; it took us two full days to complete our ~100 line script. Most of the time spent was figuring out to access the data stored in our dictionary (and I confusing my partner by calling it an Associative Array, which is what it is in other languages). We refactored the way we split text and stored keys in the dict several times before settling on tuples for our keys, and lists for our values. Tuples were desired for keys because they were list-like, but immutable, and lists allowed us to add multiple values to our keys in the case that chains in the text were repeated. After figuring that out, the next challenge was how to pull the string data out of the tuples and lists (since each word was a string stored as an item in the tuple or list). We ended up with a somewhat hairy (but working!) function to create our sentences based off of a random key, a search for a period in the word to end the sentence, and a capitalization of the first letter of the beginning of the sentence for a more "realistic" looking sentence. We didn't quite get to the point of integrating our script with oauth & twitter for tweeting a 140-character or less Markov chain, but we did at least write a function for it! Even though this assignment wasn't particularly enjoyable for me (except for the end results, which were hilarious), I'm happy with the way we structured our code. I've tried to be pretty consistent with defining my functions and commenting each step or block we have to write before starting to implement the code. When we don't quite know all the steps, we break things off into smaller chunks and get it partially working before continuing on to the more complicated things. It requires more time initially, but the polish ends up being much quicker in the end.

Despite this week being a tough one for me due to my foggy brain, and not feeling like I was completely understanding everything I was doing (on Friday I forgot the syntax for loops!!!), I spent a chunk of time Friday night and Saturday working on a simple random password generator based off slang. The random passphrase was pretty easy to generate, and only took about an hour or two for me to throw together with a simple script. The slightly more challenging part that I spent time on was stripping slang words out of a file separated by newlines and colons, and using (surprise!) lists and dictionaries to sort and parse the words into a new file that can be accessed from the passphrase generator. So far, I have it making up passwords of customized length based on 20's slang, such as the following: **Hotsy-Totsy,Reefers\*Kitten%** I'd also like it to add a number, and eventually I'll figure out how to use the script in a web page so I can use it away from the command line. I also have plans to make it output different types of slang (British, Chat-room slang, etc), and to allow one to choose the type of slang and number of words in the passphrase. 

So far, the concepts are sinking in, and sticking. I'm starting to write some code when I'm away from Hackbright; I can't remember the last time I had enough focus to stick to one type of task every day for six days in a row. I'm still feeling like I'm a slow coder, but I'm miles beyond the speed and thinking that I was just a few weeks ago. Apparently after two weeks we've covered the equivalent of a semester long programming course, which is kind of amazing. I can't wait to cover classes next week - it's been a while since Java, and I'm ready to jump back in. 

And on that note - I'm going to set myself a reminder to write these a bit more often, and shorter - if I ran <em>wc -l</em> on this block it would be over 900 words! 
