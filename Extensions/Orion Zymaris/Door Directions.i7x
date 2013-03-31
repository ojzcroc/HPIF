Door Directions by Orion Zymaris begins here.

After printing the name of a door:
 	unless going through door:
		unless opening door:
			unless closing door:
				say " ([direction of the item described from the location])". 

Door Directions ends here.

---- DOCUMENTATION ----

"This is a very simple extension that tells you the direction a door is from the player."


This extension is almost entirely self explanatory. it tells you the direction of a door from the player, with a few exceptions when opening and going through the door.

Example: * Doors - a room with doors in all directions.

	*: "Doors"
	
	Chamber is a room. 
	
	Eastdoor is east of chamber. the printed name is "a door".
	Westdoor is west of chamber. the printed name is "a door".
	Northdoor is north of chamber. the printed name is "a door".
	Southdoor is South of chamber. the printed name is "a door".
	NorthEastdoor is northeast of chamber. the printed name is "a door".