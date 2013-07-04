Door Directions by Orion Zymaris begins here.

After printing the name of a door:
 	unless going through door:
		unless opening door:
			unless closing door:
				unless examining a direction:
					say " ([direction of the item described from the location])";
				otherwise:
					say "[if the openyesno of the item described is 1] leading towards [the other side]".
				
instead of examining a direction (called direction):
	let x be the door direction of the location;
	if x is a door:
		unless direction is up:
			unless direction is down:
				say "to the [direction] is [x].";
			otherwise if direction is down:
				say "Below you is [x].";
		otherwise if direction is up:
			say "Above you is [x].";
	otherwise:
		let x be the room direction of the location;
		if x is a room:
			unless direction is up:
				unless direction is down:
					say "to the [direction] is [x].";
				otherwise if direction is down:
					say "Below you is [x].";
			otherwise if direction is up:
				say "Above you is [x].";
		otherwise:
			say "You see nothing unexpected in that direction.";
			
Ixnay is a number that varies.
After opening a door:
	increment Ixnay;
	continue the action.
all doors have a number called Openyesno. the openyesno of a door is usually 0.
after opening a door:
	now the openyesno of the noun is 1;
	continue the action.
	
[Alternate door name suffix "leading [direction of the item described from the location] towards [the other side]"]
		
the description of a door is usually "[printed name] leading [direction of the item described from the location][if the openyesno of the item described is 1] towards [the other side][end if].[line break]".

Door Directions ends here.

---- DOCUMENTATION ----

"This is a very simple extension that tells you the direction a door is from the player."


This extension is almost entirely self explanatory. it tells you the direction of a door from the player, with a few exceptions when opening and going through the door.
it also allows the player to look in a direction, and see what door is there, and what is on the other side of the door, but they can only see the other side if the door has been opened.

Example: * Doors - a room with doors in all directions.

	*: "Doors"
	
	Chamber is a room. 
	
	Eastdoor is east of chamber. the printed name is "a door".
	Westdoor is west of chamber. the printed name is "a door".
	Northdoor is north of chamber. the printed name is "a door".
	Southdoor is South of chamber. the printed name is "a door".
	NorthEastdoor is northeast of chamber. the printed name is "a door".