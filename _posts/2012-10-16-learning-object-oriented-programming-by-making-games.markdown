---
layout: post
title: Learning Object Oriented Programming by Making Games
tags:
- hackbright
- programming
- tech
status: publish
type: post
published: true
---
The past two days at Hackbright, we've tackled Objects, Classes, Inheritance, and Objects Interacting by filling in a cute little puzzle game using <a href="http://www.pyglet.org/index.html">Pyglet</a> to render our graphics. Sanby and I had a lot of fun with this one; she introduced me to the <a title="Manul" href="http://en.wikipedia.org/wiki/Pallas's_cat">Manul</a>, and we made it our personal mascot throughout the exercise. Here's a screencap of our gameboard:  

![Alt manul-girl](/images/manul-game-girl.png)

It was slightly challenging, but we managed to make the Manul, player, rock, gem objects show up randomly on the board. The Manul tracks the players movements, and follows it around the board; if the player runs into the Manul, they lose, and an even more frightening Manul overtakes the board! Here's the function which makes it work:
<pre><code>
def move_manul():
&#35;Check if manul is right next to you
if MANUL.x == PLAYER.x and MANUL.y == PLAYER.y - 1:
global game_state
game_state = "Lost"
elif MANUL.x == PLAYER.x and MANUL.y == PLAYER.y + 1:
global game_state
game_state = "Lost"
elif MANUL.x == PLAYER.x - 1 and MANUL.y == PLAYER.y:
global game_state
game_state = "Lost"
elif MANUL.x == PLAYER.x + 1 and MANUL.y == PLAYER.y:
global game_state
game_state = "Lost"
</code></pre>
Overall, I found this exercise far more effective for learning how to use Objects and have Objects interact. It makes a lot of sense to make games this way, and it's also easy to understand game elements as objects (Board, background, rocks, player, enemy, etc). We did have to use some global variables (generally frowned upon), but we did so selectively, and it made more sense to do it that way than to refactor the code. Contrast this with Java, where I was able to define classes and objects but never really understood why they taught it the way they did, and how I would use it in the future.

I'd like to do some game programming again, and maybe even in Python, but I'd love to learn how to run it in the browser so I can share it with people more easily. I'm sure we'll get there very soon! Other exciting things coming up this week - I think I heard rumors about regex and databases. Fun times.  

![Alt crunchy](/images/crunchy-bones.png)

