"Harry Potter and the Philosopher's stone" by "Orion Zymaris"

The story headline is "Based on 'Harry Potter and the Philosophers stone' by J.K. Rowling."

Chapter 1 - The boy who lived

Part 1 - The Dursleys
    
After printing the banner text:
say "[line break][bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help.)[roman type][Paragraph break]Mr and Mrs Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much. They were the last people you'd expect to be involved in anything strange or mysterious,  because they, or rather you, just didn't hold with such nonsense.[paragraph break]As you wake up, on a dull, grey Tuesday, you can hardly imagine that soon strange things would be happening all over the country.[line break]You are Mr Dursley, and are in your bedroom.[paragraph break]".

Include Rideable Vehicles by Graham Nelson.
Include Basic Screen Effects by Emily Short.
The block listening rule is not listed in the check listening to rules.
Dursley's bedroom is a dark room.
bedroomwindow is a thing in dursley's bedroom. the printed name is "bedroom window".
understand "window" as bedroomwindow.
understand "bedroom window" as bedroomwindow.
bedroomwindow is fixed in place. it is lit.
getting out is an action applying to nothing.
understand "get help" as summoning help.
understand "pj's" as pyjamas.
understand "get out of bed" as exiting when player is in bed.
understand "get out of red" as exiting when player is in red car.
understand "get out of blue" as exiting when player is in blue car.
understand "get out of rainbow" as exiting when player is in rainbow car.
understand "get out of green" as exiting when player is in green car.
understand "get out of ferrari" as exiting when player is in ferrari enzo.
understand "get out of car" as exiting when player is in car.
understand "get out of elevator" as exiting when player is in elevator.
understand "get out of the lift" as exiting when player is in elevator.
understand "get out of the elevator" as exiting when player is in elevator.
understand "get out of lift" as exiting when player is in elevator.
understand "dismount" as dismounting.
understand "mount" as mounting [broom].
understand "lift" as elevator.
Understand "help" as summoning help.
Understand "hint" as summoning help. Summoning help is an action applying to nothing. 
instead of summoning help:
	say "Some basic commands: examine, inventory, look, take, go through, east, west, north, south, e, w, n, s, drive, get out. for this version of the game. left, right, backwards and forwards will not work.[paragraph break]If you would like more specific help for the room you are in, type s for a minor hint on the one puzzle and l for a slightly larger hint".
bed is not portable.
before opening the wardrobe:
	if player is in bed:
		say "You reach up to open the wardrobe, but you can't quite get there. You need to get up first.";
		stop the action.			
before opening the bedroomdoor:
	if player is in bed:
		say "You should be out of bed before trying to reach the door.";
		stop the action.	
understand "look in [mirror]" as examining .
understand "look in [window]" as examining .
understand "look out [window]"as examining.	
the description of the mirror is "[if Dursley is wearing suit ]This one is business-like. nice and grey.[otherwise if Dursley is wearing pyjamas]These pyjamas are great, with the little dollar signs all over them![otherwise if Dursley is not wearing anything]The best kind of suit - a birthday suit![otherwise]You look in the mirror.[one of]That outfit looks wonderful![or]That is spectacular. Nice and flashy. Just what you were looking for.[or]That one is a very nice, vibrant shade.[or] In this outfit, the person in the mirror reminds you of your sister, Marge.[purely at random]".	
The player is Dursley.
 Instead of taking inventory:     
	say "You are carrying [a list of things carried by the player][if the player wears something]. You are wearing [a list of things worn by the player][end if].". 
the description of Dursley's bedroom is "You look around. There is a wardrobe, a bed, a bedside table with drawer attached, and a door to the east.".
the description of Dursley is "Your name is Vernon Dursley. You live at number four, privet drive. You are wearing [list of things worn by Dursley].".
Dursley is a person.
Bed is a thing in Dursley's bedroom.
bed is a container. it is open.
the player is in bed.
understand "case" as suitcase.
Wardrobe is a container in The Dursley's Bedroom. it is closed and openable.
wardrobe is fixed in place.
A Mirror is in the wardrobe. it is not portable.
understand "cupboard" as wardrobe.
clothing is a kind of thing. suit is a kind of clothing. mumu is a kind of clothing. wizards robes is a clothing. tutu is a kind of clothing. tie is a kind of clothing. Pyjamas is a clothing.
bedside table is a supporter in Dursley's bedroom.
bedside drawer is a part of bedside table.
the description of the bedside table is "This is your bedside table. It has a drawer attached.".
bedside drawer is a container. it is closed and openable.
inside bedside drawer is a scrap of paper.
scrap of paper is a thing.
the description of scrap of paper is "".
Dursley is wearing Pyjamas.
before wearing clothing:
	if player is wearing pyjamas:
		now the pyjamas is in the wardrobe.
before wearing clothing:
	if player is wearing clothing:
		say "Even though you got the biggest clothing the store could sell you, you can barely wear one set of clothing, let alone two.";
		stop the action.
the wardrobe contains one suit and one mumu and wizards robes and one tutu.
understand "work clothes" as suit.
clothing is wearable.
bedroomdoor is a door. it is closed and openable.
west of bedroomdoor is Dursley's bedroom.
east of bedroomdoor is the hall.
printed name of bedroomdoor is "bedroom door".
understand "bedroom door" as bedroomdoor.
understand "door" as door.
hall is a room. "As you enter the hall, you see [if kitchen has been visited]the kitchen door to the north, [otherwise]a white door to the north,[end if][if attic has been visited] the attic stairs folded into the roof,[otherwise if stairs are closed] a latched panel in the roof,[otherwise] the stairs to the south, [end if][if broomcupboard has been visited]the broom cupboard to the east[otherwise][end if] and the bedroom door to the west.".
stairs is a door. it is above the hall. it is below the attic. the printed name is "[if attic has been visited]Attic stairs[otherwise if stairs have been open]the stairs[otherwise]a latched panel".
after opening stairs, say "You pull on the panel, lowering a set of stairs to the ground that lead to the roof.".
understand "ceiling panel" as stairs when the stairs are closed.
understand "attic stairs" as stairs.
understand "panel" as stairs when the stairs are closed.
understand "gap in roof" as stairs when stairs are closed.
understand "gap" as stairs when stairs are closed.
broomcupboard is a room. it is east of hall. the printed name is "[if visited]broom cupboard[otherwise if in broomcupboard]broom cupboard". 
broom is a rideable vehicle. it is in broomcupboard.
understand "broomstick" as broom.
the description of broomcupboard is "[if broomcupboard is unvisited]You walk in to the broom cupboard. and what else is in here - but a broom![otherwise]".
understand "broom cupboard" as broomcupboard.
understand "go down [something]" as going.
understand "go up [something]" as going.
understand "white door" as kitchendoor.
attic is a room. "As you enter the attic, you see pictures of Dudley all over the walls.[no line break]". 
dusty box is a container. it is closed and openable. it is not portable.
dusty box is in attic.
a book is a kind of thing. 
a toy is a kind of thing.
in dusty box is five toys.
instead of taking a toy:
	say "[first time]If you took one of Dudley's toys, he would notice. after he spent an hour counting them. if he could count.[only]You can't take that.".
the description of a toy is "[one of] Dudley's old favourite toy[or]This was an attempt for one of Dudley's favourite toys[or]one of Dudley's favourite toys[purely at random]".
the description of how to spoil your children is  "A comprehensive guide to help you ensure the overenrichment of your favourite child" .
the description of drills- an unabridged history is "A full and unabridged history on the subject of drills, drilling, drillmaking, and more!".
the description of 101 pompous complaints is "A list the best of pompous complaints and snide remarks.".
the description of the calorie cookbook is "a book of the meals with the highest possible calorie content.". the description of the smeltings schoolbook is "The smeltings schoolbook [line break] owner: Vernon Dursley".
How to spoil your children is a book in dusty box. 
every turn when in attic:
	if how to spoil your children is in dusty box:
		now the printed name of how to spoil your children is "and books with titles such as How to spoil your children";
	otherwise:
		now the printed name of how to spoil your children is "How to spoil your children".
Drills- an unabridged History is a book in dusty box.
101 pompous complaints is a book in dusty box.
High calorie cookbook is a book in dusty box.
Smeltings schoolbook is a book in dusty box.
kitchendoor is a door. the printed name is "white door". south of kitchendoor is hall. north of kitchendoor is kitchen.
kitchen is a room.
A road is a kind of room.
garden is a room.
garage is not portable.
Petunia is a person in the kitchen.
highchair is a supporter in the kitchen. it is not portable.
Dudley is on highchair.
Procedural rule while eating something: ignore the carrying requirements rule.
the Walls is scenery in the kitchen. "as you look at the walls you see that Dudley has thrown his cereal everywhere. 'little tyke' you chortle."
Cereal is on the walls. it is not portable. it is undescribed.
understand "clean [something]" as rubbing.
instead of rubbing cereal:
	if in kitchen:
		say "you grab a cloth from the sink and clean the mess up";
		now cereal is off-stage;
	otherwise:
		continue the action.
understand "wall" as walls.
before eating cereal:
say "that cereal's Dudleys. and it's also been in his mouth.";
stop the action.
Dudley is a person.
suitcase is a container in the kitchen. it is closed and openable. it is locked.  Rule for printing the name of the suitcase while listing contents: say "a suitcase". 
window is a thing in the kitchen. it is fixed in place. the description is "as you look out the window, you see a large tawny owl flutter past".
inside suitcase are three papers.
papers is a thing. it is portable.
inside suitcase is keys.
keys is a thing.
understand "paper" as papers.
the description of three papers is "The latest drill models - The Bk-44 model T, The Qz - 77, the T1000, and the HAL 6502.".
suitcase has a carrying capacity 10.
front door is north of the kitchen and south of the garden. front door is a door. front door is closed and openable.
the description of the garden is "you look around and see a driveway with the car on it, the garage where the car came out of, and the highway to the north.".
garage is a container in garden. it is enterable. it is closed and openable. it is opaque. 
understand "switch" as start button.
the description of the car is "[if locked] you might need to get your keys to unlock the car. they are inside the suitcase.[otherwise]your normal work vehicle, coloured a dark shade of Greyish-black.".
understand "drive  [direction]" as going.
understand "drive car [direction]" as going.
understand "fly [direction]" as going.
understand "fly broom [direction]" as going.
understand "fly broomstick [direction]" as going.
understand "drive ferrari [direction]" as going.
understand "drive enzo [direction]" as going.
understand "drive ferrari enzo [direction]" as going.
understand "drive through [something]" as going.
understand "shed" as garage.
understand "garage" as garage.
Ferrari Enzo is a vehicle.
start button is a device.
it is in the ferrari enzo.
light switch is a device in garage. it is not portable.
start button is a device. it is not portable.
the description of the front door is "[if unlocked]front door[otherwise]you need your suitcase to get to work, don't you?".
car is a vehicle. it is in garden. it is locked. keys unlock car. car is lit.
before entering car:
	if car is unlocked:
		now car is open.
outdoors is a kind of room.
understand "garage door" as garage.
 Definition: a room is offroad if it is not a road.
 Instead of going by a vehicle (called the auto) to somewhere offroad:
	 say "You can't drive [the auto] off-road.". 
instead of going to road when the player is not in a vehicle:
	unless player is on a rideable vehicle:
		say "it's a bit too long of a journey to walk all the way to work";
	otherwise:
		continue the action.
the description of the kitchen is "[if kitchen has not been visited]You enter the kitchen to say goodbye to Petunia and Dudley. Dudley is having a major tantrum, and is throwing cereal everywhere.[paragraph break]Petunia looks up. 'Good Morning'.[otherwise]You look around and see Dudley, in a highchair, and Petunia.".

every turn when in garden or garage:
	if light switch is switched on:
		now garage is lit;
	otherwise:
		now garage is not lit;

every turn when in garage:
	If light switch is switched on:
		if Garage is closed:
			now ferrari enzo is in garage.

every turn when in garage:
	if ferrari enzo is in garage:
		if Dursley has not been in ferrari enzo:
			if ferrari enzo has not been in garage for at least one turn:
				say  "as you close the garage, a secret hole opens in the floor, revealing a Ferrari, which is slowly brought out to ground level";
			otherwise:
				if the ferrari enzo is in garage:
					say "you can see your ferrari taking pride of place in your garage.";
				otherwise:
					say "big, grey, spacious, it's like any other garage you know".

every turn:
	if player is not in ferrari enzo:
		if player has been in ferrari enzo for at least one turn:
			now start button is switched off.
	

before going:
	if player's command includes "drive":
		unless Dursley is in a vehicle:
			say "you need to be in a car to drive.";
			stop the action.
			
before going:
	if player's command includes "fly":
		unless Dursley is on a broom:
			say "How is that possible?";
			stop the action.

every turn when in ferrari enzo:
	if ferrari enzo is in garage:
		if player is in ferrari enzo:
			if garage is open:
				if start button is switched on:
					say "you gently move the priceless car to the garden.";
					now ferrari enzo is in garden;
					now Dursley is in ferrari enzo;
			
every turn when in ferrari enzo:
	if ferrari enzo is in garage:
		if garage is closed:
			if start button is switched on:
				if start button has not been switched on for at least one turn:
					say "You need to open the garage before you can leave.".
				
every turn when in car:
	if Dursley is in car:
		if car is in highway:
			say "[if car has not been in highway for at least one turn]As you back out of privet drive, you notice a tabby cat out of the corner of your eye. you also notice that the cat looks like it is reading a map. you look round again, but the map has gone. as you drive round the corner of the road, you notice the cat reading the sign - no, looking at the sign; cats can't read maps or signs.[otherwise if car has been in highway for only one turn]  As you sit in the usual morning traffic jam, you notice how there seem to be a lot of strangely dressed people about. people in cloaks";
			
before going:
	if player's command matches "go up":
		unless player is in hall:
			unless player is in attic:
				say "Go up what?";
				stop the action;
	otherwise if player's command includes "go up":
		unless going through stairs:
			say "How would you go up that?";
			stop the action;
	otherwise:
		continue the action.

before going:
	if player's command includes "go up":
		if player is in attic:
			say "How would you go up the stairs when you are at the top?";
			stop the action;
	otherwise:
		continue the action.
		
before going:
	if player's command includes "go down":
		unless going through stairs:
			say "How would you go down that?";
			stop the action;
	otherwise:
		continue the action.

before going:
	if player's command includes "go down":
		if player is in hall:
			say "How would you go down the stairs when you are at the bottom?";
			stop the action;
	otherwise:
		continue the action.
		
		
[this part is purely for the numberlock]
Numlock is a room. it is north of dursley's bedroom.
zeroone is a thing.
oneone is a thing.
twoone is a thing.
threeone is a thing.
fourone is a thing.
fiveone is a thing.
sixone is a thing.
sevenone is a thing.
eightone is a thing.
nineone is a thing.
when play begins:
	if a random chance of 1 in 10 succeeds:
		now zeroone is in numlock;
	otherwise if a random chance of 1 in 10 succeeds:
		now oneone is in numlock;
	otherwise if a random chance of 1 in 10 succeeds:
		now twoone is in numlock;
	otherwise if a random chance of 1 in 10 succeeds:
		now threeone is in numlock;
	otherwise if a random chance of 1 in 10 succeeds:
		now fourone is in numlock;
	otherwise if a random chance of 1 in 10 succeeds:
		now fiveone is in numlock;
	otherwise if a random chance of 1 in 10 succeeds:
		now sixone is in numlock;
	otherwise if a random chance of 1 in 10 succeeds:
		now sevenone is in numlock;
	otherwise if a random chance of 1 in 10 succeeds:
		now eightone is in numlock;
	otherwise:
		now nineone is in numlock.
unlockingsuitcase is an action applying to nothing.
understand "unlock suitcase" as unlockingsuitcase.
understand "unlock case" as unlockingsuitcase.
every turn:
	if player's command includes "unlock suitcase":
		now command prompt is "Suitcase lock number>";
		stop the action;
	otherwise if player's command includes "unlock case":
		now command prompt is "Suitcase lock		 number>";
		stop the action;
	otherwise:
		now command prompt is ">".
Suitcasenumlock is an action applying to nothing.
understand "0" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "1" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "2" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "3" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "4" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "5" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "6" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "7" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "8" as suitcasenumlock when command prompt is "Suitcase lock number>".
understand "9" as suitcasenumlock when command prompt is "Suitcase lock number>".
							
Part 2 - Work

north of garden is the highway.
highway is a road.
understand "elevator button" as elevatorbutton.
person in cloak is a kind of person.
the plural of person in cloak is people in cloaks.
Grunnings Carpark is a road. it is west of the highway.
red car is a vehicle in Grunnings Carpark. it is locked. the description is "it's a daihatsu".
blue car is a vehicle in Grunnings Carpark. it is locked. the description is "it's a ford".
rainbow car is a vehicle in Grunnings Carpark. it is locked. the description is "it's a clown car".
green car is a vehicle in Grunnings Carpark. it is locked. the description is "it's a subaru".
carjacking is an action applying to one visible thing.
understand "carjack[something]" as carjacking.
understand "hijack[something]" as carjacking.
instead of carjacking something that is not a vehicle:
	say "How can you carjack that? It isn't a vehicle.".
instead of carjacking ferrari enzo:
	say "You own this vehicle already. why damage it?".
Instead of carjacking car:
	say "Why would you want to carjack your own car?".
before carjacking a vehicle:
	say "[if vehicle has not been unlocked for at least one turn]You smash open the windows with a satisfying, and very loud, noise of breaking glass.";
	now the description is "a smashed and battered car".
instead of carjacking a vehicle at least twice:
	say "That ones already broken".
every turn when in Grunnings Carpark:
	if the description of green car is "a smashed and battered car":
		now green car is unlocked;
	otherwise if the description of red car is "a smashed and battered car":
		now red car is unlocked;
	otherwise if the description of blue car is "a smashed and battered car":
		now blue car is unlocked;
	otherwise if the description of rainbow car is "a smashed and battered car":
		now rainbow car is unlocked.
instead of carjacking at least twice:
	say "[one of]Hi[or]Hello[purely at random]".
elevator is a container. it is opaque. it is open. it is enterable. it is not portable. it is in Grunnings Carpark.
elevatorbutton is a device. it is in the Grunnings Carpark. it is not portable. the printed name is "elevator button".
level 1button is a device. it is in elevator. the printed name is "up button". it is not portable.
Officestairs is a door. it is above Grunnings Carpark and below corridor. the printed name is "stairs".
understand "stairs" as officestairs.
Officestairs is open and not openable.
level 1 is a region. 
Work office is a room. it is in level 1.
the description of the office door is "you see an office door to the north with the words 'Vernon Dursley' on a plaque in front of it. [line break] there are other offices to either side of you.".
office door is a door. it is north of the corridor and south of work office.
the description of work is "as you enter your office, you see your desk, with a phone on it". 
desk is a supporter in work office.
the description of desk is "A standard work desk.".
corridor is a room. it is in level 1. 
understand "press [switch]" as switching on .
understand "push [switch]" as switching on.	
understand "press [button]" as switching on .
understand "push [button]" as switching on.
understand "press [start button]" as switching on .
understand "push [start button]" as switching on.
understand "press [elevatorbutton]" as switching on .
understand "push [elevatorbutton]" as switching on.	
understand "press [level 1button]" as switching on .
understand "push [level 1button]" as switching on.	
understand "up button" as level 1button.
every turn when in Grunnings Carpark:
	if Dursley is in elevator:
		if elevatorbutton is switched on:
			if Dursley has been in elevator for at least one turn:
				now elevator is in corridor;
				now Dursley is in elevator;
				say "you go up the elevator. when you look out of the elevator, you see there are offices to either side of you.";			
	otherwise if Dursley is not in elevator:
		if elevatorbutton is switched on:
			now elevator is in corridor;
			say "[if elevatorbutton has not been switched on at least twice]you press the button, but since you don't get into the elevator it goes up without you. you'll have to wait.".
			
every turn when in Grunnings Carpark:
	if Dursley is in elevator:
		if level 1button is switched on:
			if Dursley has been in elevator for at least one turn:
				now elevator is in corridor;
				now Dursley is in elevator;
				say "you go up the elevator. when you step off the elevator, you see there are offices to either side of you.";	
	otherwise if Dursley is not in elevator:
		if level 1button is switched on:
			now elevator is in corridor;
			say "[if elevatorbutton  has not been switched on at least twice and level 1button has not been switched on]you press the button, but since you don't get into the elevator it goes up without you. you'll have to wait.".		

every turn when in Grunnings Carpark:
	if elevatorbutton is switched on:
		now the elevatorbutton is switched off.
		
every turn when in Grunnings Carpark:
	if elevatorbutton is switched on:
		now the level 1button is switched off.

instead of switching on elevatorbutton three times:
	if elevator is in corridor:
		now elevator is in Grunnings Carpark;
		say "as you press the button, the elevator comes trundling back down and the doors open.".

every turn when in Grunnings Carpark:
	if Dursley is in car:
		if car is in Grunnings Carpark:
			if car has not been in Grunnings Carpark for at least one turn:
				say "you see few cars in the Carpark today.";
				
every turn when in Grunnings Carpark:
	if level 1button is switched on:
		now level 1button is switched off.