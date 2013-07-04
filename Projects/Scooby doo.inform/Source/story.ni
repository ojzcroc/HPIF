"Scooby doo" by Orion Z

Mystery machine is a vehicle.
Road is a room. mystery machine is in road.
Hauntedhouse is a region.
the printed name is "haunted house".
understand "haunted house" as hauntedhouse.
the description of yard is "As you pull up to the house, you see ghosts roaming around the yard. however, they seem harmless enough. to the north is a house.".
the ghost is scenery in yard.
yard is a room. it is north of road.
The House is a room in hauntedhouse. it is north of yard.
the description of the house is "A typical haunted house. you look around to the sight of ghosts everywhere. there is a cupboard and two doors here.".
cupboard is an room. it is north of house. 
secret room is a room. it is north of cupboard.
before going in secret room:
	say "[if secret room is unvisited]As you enter the room, you see a tall figure in the corner. he doesn't appear to have heard you.".
Villain is a person in secret room.
panel is a door. it is undescribed. it is locked. it is west of secret room. 
lever is a kind of device.
inside cupboard is a lever.
understand "pull [lever]" as switching on.
after switching on lever:
	say "As you pull on the lever, a secret panel opens in the wall of the cupboard.";
	now panel is open;
	now panel is described;
	now the description of cupboard is "Inside the cupboard, there is a[if panel is open]n open panel[otherwise] panel[end if] to your north.".
	Bedroom is a room. it is west of  house.
Corridor is a room. it is east of house.
north of corridor is a room called Main room.
in main room is a thing called an organ.
understand "play [something]" as switching on.
instead of switching on the organ:
	say "[one of]You press one of the keys, and a  burst of sound emenates from the organ's pipes. Quickly, you remove your hand and back away.[or]You shouldn't do that again.[stopping]".
Scooby Doo is a person in the mystery machine.
the player is scooby doo.
Velma Dinkley is a woman in mystery machine.
Shaggy Rogers is a person in mystery machine.
Fred Jones is a person in mystery machine.
Daphne Blake is a woman in mystery machine.
Include conversation framework by eric eve.
instead of saying hello to a person:
	unless the printed name of the noun is "Villain":
		say "'[one of]How are you?' asks [the noun]. [or]'Are you well?' [or]'Hello!'  Says [the noun]. [at random]Actually, we have a mystery to solve now. [if location is road]do you want to go north?" instead;
	otherwise if the printed name of the noun is "Villain":
		say "That would be a terrible idea." instead.
carry out saying goodbye to:
	say "'Bye!' says [the noun].".
Shaggy Rogers carries a rope.
persuasion rule: persuasion succeeds.
after exiting from mystery machine:
	now all people in mystery machine are in location;
	continue the action.
understand "hello [person]" as saying hello to.