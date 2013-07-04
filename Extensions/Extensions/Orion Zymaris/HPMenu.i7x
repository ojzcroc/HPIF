HPMenu by Orion Zymaris begins here

Include Menus by Emily Short.
	
Table of Options
title	subtable	description	toggle                  
"General Game Commands (for specific hints, type hints)"	Table of Command Hints	""	hint toggle rule            
"What does that top bar do?"	--	 "The black bar at the top of the game (Not the top of the hints menu) has a bunch of stats about the game so far. The first two numbers, 0/1, tell you the score (Not needed till later) and the turn count respectively. The next bit tells you the time within the game. Next is the current room, and last of all is the current region, e.g. Dursley's house, rather than a single room."	--
"Acknowledgements"	--	"My first acknowledgements go to Graham Nelson, the creator of inform 7, Without which i would be more than a little bit stuck.[line break]Second, to Emily Short, who has done a lot of work to improve Inform.[line break]Next, I would, slightly unneccesarily, like to acknowledge J.K. Rowling, who wrote the Harry Potter books, without which I wouldn't be able to create the game.[line break]I would also like to thank my Dad, for a lot of helpful input and ideas, as well as all the game testers who helped me find and remove bugs.[line break]Then there are all the authors of the extensions in the game:[paragraph break][list of extension credits][line break]I would like to give a special mention to Erik Temple, since I used some of the code in one of his examples."	
"[if cheats_bin is 1]Cheats[otherwise]"	--	"[if cheats_bin is 1]These are the cheats commands:[line break]teleport to/Apparate to [bracket]any room[close bracket][line break]Move [bracket]any thing[close bracket] to [bracket]any thing/any room[close bracket][line break]Put [bracket]something off-stage[close bracket]back in/on [bracket]somewhere[close bracket][line break]take (anything, even fixed things or doors)[line break]open sesame (opens and unlocks all doors and containers and vehicles in the whole game)[line break]Change to [bracket]Person[close bracket][line break]Increase score by [bracket]a number[close bracket][line break]restore score (changes the score to what it was before being artificially inflated)[line break]remove [bracket]something[close bracket] from play"

Table of Command Hints
hint	used
"The commands forward and backward, left and right do not work in this game"
"Some basic Commands:" 
"Help"  
"Undo"
"look"
"get down" 
"get up"
"examine" 
"go to" 
"North/South/East/West" 
"N/S/E/W" 
"take" 
"eat" 
"drink"	
"lock/unlock"
"open/close"
"Switch on/Switch off"
"Push/press"
"inv/i/take inventory/inventory"
"flip [bracket]something[close bracket]"
"go under [bracket]something[close bracket]"
"get out from under [bracket]something[close bracket]"
"put/hide [bracket]something[close bracket] under [bracket]something[close bracket]"
"call/phone [bracket]a number with no spaces or dashes, e.g. 1234-4536 becomes 12344536[close bracket]"
"to write on something, say 'write on [bracket]something[close bracket]', and then next turn write '[bracket]some text[close bracket]'"
"for talking to people, if something seems like it is worded like a yes or no question, try answering yes or no, as it probably is a yes or no question"
"Be careful about commas. Commas can't be used like this: 'next, try eating porridge' unless next is a person. Commas can only be used to instruct others, e.g. 'Ron, pick up my bag', or 'Dumbledore, inventory'."
"There are other commands in the game, but they should be reasonably obvious, or explained during the course of the game"
"Don't hesitate to try commands not on this list, as there might be some that work in places. if it looks like it would make sense for something to work, try it."

Understand "help" or "about" or "info" as asking for help.

understand "hint" or "hints" as asking for hints.
asking for hints is an action out of world.
carry out asking for hints when the location is dursley's bedroom:
	if the player is in bed:
		if player has not been in dursley's bedroom:
			say "Get up!";
	otherwise if the wardrobe has not been open:
		say "Try opening the wardrobe.";
	otherwise if drawer has not been open:
		say "Try opening the bedside drawer.".

Asking for help is an action applying to nothing.
Carry out asking for help:
	now the current menu is the Table of Options;
	carry out the displaying activity;
	clear the screen;
	try looking.

HPMenu ends here