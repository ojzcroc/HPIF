"Harry Potter and the Philosopher's stone" by "Orion Zymaris"

The story headline is "Based on 'Harry Potter and the Philosophers stone' by J.K. Rowling."

Chapter 1 - The boy who lived

Part 1 - The Dursley's

After printing the banner text:
say " [line break] Mr and Mrs Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much. They were the last people you'd expect to be involved in anything strange or mysterious, because they just didn't hold with such nonsense.[paragraph break]as you wake up, on a dull, grey Tuesday,you can hardly imagine that soon strange things would be happening all over the country.[line break]You are Mr Dursley, and are in your bedroom.".
dursley's bedroom is a room. 
bed is not portable.
before opening the wardrobe:
	if player is in bed:
		say "You reach up to open the wardrobe, but you can't quite get there. you need to get up first.";
		stop the action.			
before opening the bedroom door:
	if player is in bed:
		say "You should be out of bed before trying to reach the door.";
		stop the action.	
understand "look in [mirror]" as examining .
understand "look in [window]" as examining .
understand "look out [window]" as examining .		
the description of the mirror is "[if dursley is wearing suit ]This one is business-like. nice and grey.[otherwise if dursley is wearing pyjamas]these are great, with the little dollar signs all over them![otherwise if dursley is not wearing anything]the best kind of suit - a birthday suit![otherwise]You look in the mirror.[one of]That outfit looks wonderful![or]That is spectacular. Nice and flashy. Just what you were looking for.[or]that one is a very nice, vibrant shade.[or] in this outfit, the person in the mirror reminds you of your sister, Marge.[purely at random]".	
The player is Dursley.
the description of dursley's bedroom is "you look around. there is a wardrobe, a bed, a bedside table with drawer attached, and a door to the east.".
the description of Dursley is "Your name is Vernon Dursley. you live at number four, privet drive. you are wearing [list of things worn by dursley].".
Dursley is a person.
Bed is a thing in dursley's bedroom.
bed is a container. it is open.
the player is in bed.
understand "read [paper]" as examining.
understand "case" as suitcase.
Wardrobe is a container in The Dursley's Bedroom. it is closed and openable.
understand "drive  [direction]" as going.
understand "drive car [direction]" as going.
understand "drive ferrari [direction]" as going.
understand "drive enzo [direction]" as going.
understand "drive ferrari enzo [direction]" as going.
understand "drive through [something]" as going.
understand "shed" as garage.
understand "garage" as garage.
before entering highway:
	if ferrari enzo is in highway:
		say "you can't get out on the road!";
		stop the action.
		
before going:
	if player's command includes "drive":
		unless dursley is in a vehicle:
			say "you need to be in a car to drive.";
			stop the action.
	
every turn when in garage:
	if player is in ferrari enzo:
		if garage is open:
			if start button is switched on:
				say "you gently move the priceless car to the garden";
				now ferrari enzo is in garden;
				now dursley is in ferrari enzo;
			otherwise:
				if player is in ferrari enzo:
					if garage is closed:
						if start button is switched on:
							say "".
				
before going from a vehicle:
	if dursley is in a road:
		say "You really think that's a good idea?";
		stop the action.
wardrobe is fixed in place.
A Mirror is in the wardrobe. it is not portable.
understand "cupboard" as wardrobe.
clothing is a kind of thing. suit is a kind of clothing. mumu is a kind of clothing. set of wizards robes is a kind of clothing. tutu is a kind of clothing. tie is a kind of clothing. Pyjamas is a clothing.
bedside table is a supporter in dursley's bedroom.
bedside drawer is a part of bedside table.
the description of the bedside table is "this is your bedside table. it has a drawer attached.".
bedside drawer is a container. it is closed and openable.
paper slip is a thing inside bedside drawer. 
the description is "the paper slip has the numbers 213 on it.".
Dursley is wearing Pyjamas.
before wearing clothing:
	if player is wearing pyjamas:
		now the pyjamas is in the wardrobe.
before wearing clothing:
	if player is wearing clothing:
		say "even though you got the biggest clothing the store could sell you, you can barely wear one set of clothing, let alone two.";
		stop the action.
the wardrobe contains one suit and one mumu and one set of wizards robes and one tutu.
understand "work clothes" as suit.
clothing is wearable.
bedroom door is a door. it is closed and openable.
west of bedroom door is dursley's bedroom.
east of bedroom door is the kitchen.
kitchen is a room.
A road is a kind of room.
garden is a room.
Petunia is a person in the kitchen.
highchair is a supporter in the kitchen. it is not portable.
Dudley is on highchair.
the Walls is scenery in the kitchen. "as you look at the walls you see that dudley has thrown his cereal everywhere. 'little tyke' you chortle."
Cereal is on the walls. it is not portable.
before eating cereal:
say "that cereal's Dudleys. and it's also been in his mouth.";
stop the action.
Dudley is a person.
Suitcase is a container in the kitchen. it is closed and openable. it is locked and lockable.
window is a thing in the kitchen. it is fixed in place. the description is "as you look out the window, you see a large tawny owl flutter past".
inside suitcase are three papers.
papers is a thing. it is portable.
inside suitcase is keys.
keys is a thing.
understand "paper" as papers.
the description of three papers is "The latest drill models - The Bk-44 model T, The Qz - 77, the T1000, and the HAL 6502.".
suitcase has a carrying capacity 10.
south of the kitchen is front door. front door is a door. it is closed and openable. through front door is garden.
the description of the garden is "you look around and see a driveway with the car on it, the garage where the car came out of, and the highway to the north.".
garage is a container in garden. it is enterable. it is closed and openable. it is opaque. 
understand "switch" as start button.
the description of the car is "[if locked] you might need to get your keys to unlock the car. they are inside the suitcase.[otherwise]your normal work vehicle, coloured a dark shade of Greyish-black.".
Ferrari Enzo is a vehicle.
start button is a device.
it is in the ferrari enzo.
light switch is a device in garage. 
start button is a device.
the description of the front door is "[if unlocked]front door[otherwise]you need your suitcase to get to work, don't you?".
car is a vehicle. it is in garden. it is locked.
outdoors is a kind of room.
understand "garage door" as garage.
 Definition: a room is offroad if it is not a road.
 Instead of going by a vehicle (called the auto) to somewhere offroad:
     say "You can't drive [the auto] off-road.". 
instead of going to road when the player is not in a vehicle:
	say "it's a bit too long of a journey to walk all the way to work".
the description of the kitchen is "as you finish getting ready, you go out to the kitchen to say goodbye to Petunia and Dudley. Dudley is having a major tantrum, and is throwing Cereal everywhere.". 
		
This is the Garden rule:
	if Dursley is in garden:
		now the description of the kitchen is "as you look around, you see all the gleaming white walls that are Aunt Petunia's obsession.";
		
		
every turn when in garden:
	if player is carrying suitcase:
		if keys are in suitcase:
			if suitcase is unlocked:
				now car is unlocked;
				say "as you walk out to the garden, you unlock your car with the keys in your case.";
		otherwise:
			now car is locked;
		
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
					say "big, grey, spacious, it's like any other garage you know"
			
every turn when in car:
	if dursley is in car:
		if car is in highway:
			say "[if car has not been in highway for at least one turn]as you back out of privet drive, you notice a tabby cat out of the corner of your eye. you also notice that the cat looks like it is reading a map. you look round again, but the map has gone. as you drive round the corner of the road, you notice the cat reading the sign - no, looking at the sign; cats can't read maps or signs.[otherwise if car has been in highway for at least one turn] [line break] as you sit in the usual morning traffic jam, you notice how there seem to be a lot of strangely dressed people about. people in cloaks";		
		
Part 2 - Work

north of garden is the highway.
highway is a road.
person in cloak is a kind of person.
the plural of person in cloak is people in cloaks.
carpark is a road. it is west of the highway.
lots of cars is a thing. it is in carpark. it is not portable.
elevator is a container. it is opaque. it is open. it is enterable. it is not portable. it is in carpark.
elevator button is a device. it is in the elevator. it is not portable.
up button is a device. it is in carpark. it is not portable.
level 1 is a region.
Work office is a room. it is in level 1.
the description of the office door is "you see an office door to the north with the words 'Vernon Dursley' on a plaque in front of it. [line break] there are doors to either side of you.".
office door is a door. it is north of the corridor and south of work office.
the description of work is "as you enter your office, you see your desk, with a phone on it". 
desk is a supporter in work office.
the description of desk is "A standard work desk.".
corridor is a room. it is in level 1.
understand "press [switch]" as switching on .
understand "push [switch]" as switching on.	
understand "press [button]" as switching on .
understand "push [button]" as switching on.
understand "press [up button]" as switching on .
understand "push [up button]" as switching on.			
every turn when in carpark:
	if dursley is in elevator:
		if elevator button is switched on:
			if dursley has been in elevator for at least one turn:
				now elevator is in corridor;
				now dursley is in elevator;
				say "you go up the elevator. when you step off the elevator, you see there are doors to either side of you.";			
	otherwise if dursley is not in elevator:
		if elevator button is switched on:
			now elevator is in corridor;
			say "you press the button, but since you don't get into the elevator it goes up without you. you'll have to wait.";
	otherwise if dursley is not in elevator:
		if elevator button is switched on:
			now elevator is in corridor;
			say "you press the button, but since you don't get into the elevator it goes up without you. you'll have to wait.".
		
every turn when in carpark:
	if elevator button is switched on:
		now the elevator button is switched off.
		
instead of switching on up button three times:
	if elevator is in corridor:
		now elevator is in carpark;
		say "as you press the button, the elevator comes trundling back down and the doors open.".
			
every turn when in carpark:
	if dursley is in car:
		if car is in carpark:
			if car has not been in carpark for at least one turn:
				say "you see cars stretching away to the left and to the right in the carpark. in the carpark, there is an open elevator.";
			
















































			


			

			

        
		

		

