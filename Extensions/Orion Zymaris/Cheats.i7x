Cheats by Orion Zymaris begins here.

[for switching cheats on and off]
switching cheats on is an action applying to nothing.
understand "Take [visible things]" as taking.
understand "Cheats on" as switching cheats on.
switching cheats off is an action applying to nothing.
understand "Cheats off" as switching cheats off.
Cheats_bin is a number that varies.
cheats_bin is usually 0.
[teleport command]
instead of teleporting to when cheats_bin is 0:
	say "I didn't understand that sentence.".
Teleporting to is an action applying to one thing.
understand "apparate to [any room]" as teleporting.
understand "teleport to [any room]" as teleporting.
After teleporting to a noun:
	move the player to the noun, without printing a room description;
	say "You appear in [the player's surroundings][no line break].";
	continue the action.

[moving to command]
Instead of moving to when cheats_bin is 0:
	say "I didn't understand that sentence.".
moving to is an action applying to two visible things.
understand "move [any things] to [any things]" as moving to when cheats_bin is 1.
understand "move [things] to [things]" as moving to when cheats_bin is 1.
understand "move [any things] to [any room]" as moving to when cheats_bin is 1.
check moving to:
	if the noun is the second noun:
		say "Even with cheats on, that's impossible.";
		stop the action.
check moving to:
	if the noun is the player:
		if the player has the second noun:
			try silently dropping the second noun;
			continue the action.
check moving to:
	if the second noun is the player:
		if the player has the noun:
			try silently dropping the noun;
			continue the action.
check moving to:
	if the second noun is the player:
		if the player is in the noun:
			now the player is in the location;
			continue the action.
carry out moving to:
	say "You move [the noun] to [the second noun].";
	move the noun to the second noun.
does the player mean moving to something:
	if the noun is in the location:
		decide yes;
	otherwise:
		decide no.
[checking whether cheats are on before turning them on]
check switching cheats on:
	if cheats_bin is 0:
		say "Now cheats are on.[no line break]";
		now cheats_bin is 1;
	otherwise:
		say "Cheats are already on.[no line break]";
check switching cheats off:
	if cheats_bin is 1:
		now cheats_bin is 0;
		say "Now cheats are off.[no line break]";
	otherwise:
		say "Cheats are already off.[no line break]";	
[procedural rules to unblock taking fixed things and people and such]
A procedural rule:
	if cheats_bin is 1:
		ignore can't take what's fixed in place rule;
	otherwise:
		reinstate  can't take what's fixed in place rule.

A procedural rule:
	if cheats_bin is 1:
		ignore can't take other people rule;
	otherwise:
		reinstate can't take other people rule.
		
A procedural rule: 
	if cheats_bin is 1:
		ignore can only take things rule;
	otherwise:
		reinstate can only take things rule.
	
A procedural rule:
	if cheats_bin is 1:
		ignore can't take people's possessions rule;
	otherwise:
		reinstate can't take people's possessions rule.

A procedural rule:
	if cheats_bin is 1:
		ignore can't reach inside closed containers rule;
	otherwise:
		reinstate can't reach inside closed containers rule.
		
A procedural rule:
	if cheats_bin is 1:
		ignore can't reach inside rooms rule;
	otherwise:
		reinstate can't reach inside rooms rule.
		
before taking something:
	if the player is in the noun:
		try silently getting off the noun;
		continue the action.

[a rule for preventing people going through a carried door]
before going through a door:
	if the noun is carried:
		say "How could you go through it when you are carrying it?";
		stop the action.
			
[another work in progress, a showme command that can be exported
showing me is an action applying to nothing.
understand "showall" as showing me when cheats_bin is 1.
after printing the name of a thing (called ThiN):
	if current action is showing me:
		say "[line break]".
after printing the name of a container (called coN):
	if current action is showing me:
		say "[line break][list of things in coN]".
instead of showing me:
	say "[list of things in location]".
before printing the name of a thing (called thinG):
	if current action is showing me:
		if the thing is in something:
			if the thing is not visible:
				say "        *";
		otherwise if the current action is showing me:
			if the thing is not visible:
				say "*".]

[putting back command]
putting back is an action applying to two visible things.
understand "Put [any thing] back in [any thing]" as putting back when cheats_bin is 1.
understand "Put [any thing] back on [any thing]" as putting back when cheats_bin is 1.
understand "Put [any thing] back in [any room]" as putting back when cheats_bin is 1.
carry out putting back:
	now the noun is in the second noun;
check putting back:
	unless the noun is in the second noun:
		unless the noun is on the second noun:
			say "You move the [noun] back to the [second noun].".
before putting back:
	if the noun is in the second noun:
		say "You've already done that!";
	otherwise if the noun is on the second noun:
		say "You've already done that!".	
		
[universal opening command]
universal opening is an action applying to nothing.
understand "Open Sesame" as universal opening when cheats_bin is 1.
carry out universal opening:
	now all doors are unlocked;
	now all containers are unlocked;
	now all doors are open;
	now all containers are open.
Report universal opening:
	Say "Now all doors, vehicles, and containers are unlocked and open.[no line break]".
	
	
[character change command]
Changing player is an action applying to one visible thing.
understand "Change to [any person]" as changing player when cheats_bin is 1.
report changing player:
	now the player is the noun;
	continue the action.
after changing player:
	say "You are now [a noun].";
	continue the action.
	
[points increasing command]
point increasing is an action applying to one number.
understand "increase score by [a number]" as point increasing when cheats_bin is 1.
added score is a number that varies. added score is 0.
onactualscore is a number that varies. onactualscore is 1.
before point increasing a number (called Num):
	increase added score by Num;
	now onactualscore is 0;
	continue the action.

instead of point increasing a number (called Num):
	increase the score by Num instead.
restoring score is an action applying to nothing.
understand "restore score" as restoring score.
carry out restoring score:
	decrease score by added score;
	now added score is 0;
	now onactualscore is 1;
	say "You restore the score to [score]." instead.
	
	
[for removing items from play]
[make the player uncontained by anything before removing]
Removing is an action applying to one visible thing.
understand "remove [any thing] from play" as removing when cheats_bin is 1.
understand "remove [things] from play" as removing when cheats_bin is 1.
carry out removing:
	if the noun is a door:
		now the noun is undescribed;
		say "you remove [noun] from play.";
	otherwise if the noun is the player:
		say "you can't do that.";
	otherwise:
		say "you remove [noun] from play.";
		remove the noun from play.
		
[making the player able to eat themselves]
darknesss is a dark room. "It is pitch dark, and you can't see a thing.". the printed name is "Darkness".
After reading a command when cheats_bin is 1:
	if the player's command includes "eat me":
		say "You manage to eat yourself. You are in darkness.";
		now the player is in Darknesss;
		reject the player's command.

Cheats ends here.

---- DOCUMENTATION ----

This extension provides the ability for a cheats command.The current version gives the player the ability to:

Teleport to any room with  "teleport to [any room]",

	move anything to anywhere with move "[any thing]" to "[any thing/room]"(can take things from anywhere in the game, and also put them anywhere in the game)
	
	change character with "change to [a person]" 
	
	take anything except rooms
	
	and open and unlock all doors, containers and vehicles with the words "Open sesame"
 
	you can also use "put [any thing] back in/on [any thing/room]" as an alternative to moving something to somewhere
 
	increase points with "increase points by [a number]"
 
	restore points to what it was before artificial inflation with "restore score"
 
	remove things from play with "remove [any thing] from play"
 
	the command to turn cheats on and off is "cheats on/off"
 
 the names of the actions used to complete these activities are:
 
 Teleporting to 
 
moving to(For "move [any thing] to [any where]")
 
putting back (for "put [any thing] back in/on [any thing]s")
 
 changing player
 
 switching cheats on/switching cheats off
 
 universal opening
 
 points increasing
 
 restoring score
 
 cheats_bin is the variable used to decide whether on not cheats are on. when it is 1, cheats are on, and when 0, cheats are off.
 
 when structuring understand rules, ALWAYS write them like this:
 
 understand "throw [any thing] to [any room]" as movingto when cheats_bin is 1, otherwise the player will be able to use cheats while the cheats are off.

To block one of the cheats, just say:

	instead of (action):
		say "I didn't understand that sentence.".
		
Example: * Free rain - A world with lots of rooms to teleport to.

	*: "Free rain"
	Include Cheats by Orion Zymaris.
	Central chamber is a room.
	Corridor is a room east of central chamber.
	Hallway is a room west of central chamber.
	
		

