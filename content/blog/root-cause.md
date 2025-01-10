+++
title = 'Dev Log 1'
date = 2025-01-09T21:28:38-05:00
draft = false
summary = 'The first dev log about my first indie game'
author = 'Ryan'
+++

For decent while now in relative secret I have been working on my own indie game. I wanted a game that was simple in scope but would allow me to really learn various gameplay systems and flex some creative muscles in my free time. This quickly turned into a pitch to my employer [Skymap](https://skymap.com/) where I discussed the game design quite a bit and eventually pitched it to all of the department heads. While they really liked the idea they ultimately turned it down but I was given the idea back to work on solo *and* came out of it feeling more confident with the original idea and the new ones that came from talking with the lead designer at Skymap, Angelos.

### The Idea

I want to make something that plays like Descent, within the concept of navigating a randomly generated computer system from Virus: The Game, wrapped up in the corny/campy theming of old 80s and 90s "cyberspace" depictions in media. The plot is basic: a virus has started to corrupt a computer system and the player remotely connects to a new kind of anti-virus software to help fight back and reclaim the system. So what kind of game do you end up with when you combine all of these things?

> ### Root Cause

> An action-packed, 6 degrees-of-freedom shooter where you soar through a maze-like procedurally generated system directory tree to hunt down and eliminate the virus and any corrupted processes with a range of weaponry, from a standard *Binary Blaster* to the destructive *Hexidecimator*, to aid you in the CPU cycles of carnage.

That's the basic idea anyway. The scope is to help me learn [Godot Engine](https://godotengine.org/) and have fun creatively. More specifically, help me learn ship movement and procedural generating of a level in 3D, and grasp the basics of enemy AI in an action game. I want the movement to feel pretty similar to that of games like Descent; 6DOF with some amount of inertia to movement and rotation, and a couple of buttons for weapon related things. I want to keep the procedural generation basic since I don't what I am doing; make up a directory structure with files within them, and have a map get created based on that. Then sprinkle in weapons and ammo throughout for the player to pick up. Rooms will be more corrupt and have tougher enemies the closer you get to the virus!

This is the idea at its infancy. I did think of stretch goals and added scope that I find really substantial after talking with Angelos and pitching the game.

### Scope Creep (but the good kind)

One of the stretch goal ideas I had to help with the corny/campy 90s feeling, and would also just be plain old fun to make, is FMV characters. I want to have some kind of voice over "radio chatter" of sorts but it would be even better if it were like older games with live action videos of the characters. Think of cutscenes from games like Wing Commander and Red Alert but in the context of dialog in Star Fox or selecting a unit in Starcraft. I think it would just be rad and still hope I can eventually fulfill this goal.

Another is to allow players to create maps This would be presented as just creating the directory tree and the files within them. I do want to go for this as it seems reasonable, can be where seeds come from for the map, and lets maps be both repeatable and shareable!

The more important scope creep I am very much in favor of implementing, and even started the project over again because of, came from discussing the idea more after I started to make it way back in Godot 3; multiplayer and rogue-lite elements!

Multiplayer? 

Yep. I intend to allow multiplayer in both a coop or versus flavor and have been building the game from the ground up with networking in mind. To me that sounds really fun and I feel like not as common in rogue-lite games, let alone Descent-like games. The tough question at the time was figuring out how dying or respawning would work.

I already was toying with the idea originally that dying in the game would have you respawn and create a new enemy that was a copy of your ship at time of death; essentially the virus corrupted the ship you had, taking it for itself, and you respawn fresh and keep playing. Something like this would be needed for multiplayer so this is the gameplay system I intend to make. If a player dies, whether on the virus or anti-virus side, the player respawns with a new ship and a mimic of their destroyed one is created for the other team controlled by an AI.

Rogue-lite elements?

This came from discussing how the game ends, about my original idea of respawning, and how it all ties together. The question came up if there was any larger progression as you play or die, and I hadn't really considered it (this was originally just a little project for me to learn after all) but it made sense for things to evolve over time. Born from wanting the game build and be more chaotic came the concept of corruption. Isn't that part of the plot? Well yes, but now also part of the gameplay design; given certain triggers to be determined, the system has a "CPU cycle" where it assesses the status of each room in the map, and spreads the corruption. This can mean a room that was empty before now has a small amount of corruption and populated with an easy enemy, and rooms already corrupted get more corrupt with harder enemies waiting for players. These "cycles" would refresh the random weapon and ammo drops, and the new idea of ship upgrades (speed, health, etc)

Corruption feels like a really good way to keep things dynamic but it also felt a little one sided. If a player is taking their time or having a hard time, the game is getting harder and their only defense against that is hoping they can push it back enough by the next "cycle" to ease things. This led to the idea of "root commands" which are essentially special abilities a player can use after earning enough currency, or "system resources" as I am calling them for the game, which comes from clearing a room. A player having a tough time can now fight back even better, even if they are dying a bunch, as long as they are able to hold the line so to speak to earn some root commands.

Putting everything together creates a dynamic tug-of-war that doesn't stray from my original idea at all, and are features that I think help it stand out in the sea of games being created.

### So What are the Features?

To summarize everything into a short list of features:

 * 6DOF action shooter
 * Procedurally generated map
 * Bombastic weaponry
 * Special root commands to help give you an edge in the battle
 * Ship upgrades
 * Built from the ground up for singleplayer or multiplayer modes (coop and vs)
 * A corruption system to keep the challenge evolving
 * Map creation [Stretch Goal]
 * FMV characters [Stretch Goal]

### Where am I in developement?

Currently the game is still in its infancy despite coming up with the idea almost 2 years ago. I can only work on it in my free time and part of that needs to go towards learning (especially learning good practices) various things in Godot. But at the moment I do have a test level, networking functioning, ships with a player controller (though that will be redone in a better way that I will write a dev log about), a first implementation of a component system to build things (another aspect I want to write about when I have it cleaned up and am happy with it), and interactable objects like a door or destroyable box.

Stay tuned for more dev logs! Thanks for reading!
