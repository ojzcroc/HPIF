"Harry Potter and the Philosopher's stone" by "Orion Zymaris"

The story headline is "Based on 'Harry Potter and the Philosopher's stone' by J.K. Rowling."

Chapter 1 - The boy who lived

Part 1 - The Dursleys
    
After printing the banner text:
say "[line break][bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help.)[roman type][Paragraph break]Mr and Mrs Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much. They were the last people you'd expect to be involved in anything strange or mysterious,  because they, or rather you, just didn't hold with such nonsense.[paragraph break]As you wake up, on a dull, grey Tuesday, you can hardly imagine that soon strange things would be happening all over the country.[line break]You are Mr  Vernon Dursley, and are in your bedroom.[paragraph break]".
Uncle Vernon's Scene is a scene.
npcm is a kind of person. 
npcf is a kind of woman.
top is a kind of thing. it is wearable.
pants is a kind of thing. it is wearable.
all npcms wear pants.
all npcfs wear pants.
all npcms wear a top.
all npcfs wear a top.
the player is dursley.
Underlying relates various things to one thing.
the verb to underlie (he underlies, they underlie, he underlay, it is underlying, he is underlying) implies the underlying relation.
the verb to overlay (he is overlaying, they  overlay, he overlay, it is overlaying, he is overlaying) implies the reversed underlying relation.
taking another player's inventory is an action applying to one thing.
putting under is an action applying to two things.
understand "put [any thing] under [any thing]" as putting under.
understand "hide [any thing] under [any thing]" as putting under.
getting under is an action applying to one thing.
check putting under:
	if the noun is underlying the second noun:
		say "That's already under there!";
		stop the action.
carry out putting under:
		now the noun is underlying the second noun;
		now the second noun is overlaying the noun;
		say "You put [noun] under [second noun].";
		now the noun is off-stage.
after putting under:
	now the noun is in location;
	now the noun is undescribed.
after taking a thing:
	if the noun is undescribed:
		now the noun is described;
		continue the action;
	otherwise:
		continue the action.
instead of looking under a noun:
	if there is one thing underlying the noun:
		say "underneath the [noun] is [a list of things underlying the noun].";
	otherwise:
		say "There is nothing underneath [the noun].".
		
after taking a noun:
	now the noun is not underlying anything;
	continue the action.

understand "inv [a person]" as taking another player's inventory.
understand "[a person] inv" as taking another player's inventory.
understand "inventory [a person]" as taking another player's inventory.
understand "i [a person]" as taking another player's inventory.
understand "take [a person]'s inventory" as taking another player's inventory.
carry out taking another player's inventory:
	say "[the noun] is carrying [list of things carried by noun]. [the noun] is wearing [list of things worn by noun].".
check quitting the game:
	try saving the game.
Check restarting the game:
	try saving the game.
when play begins:
	now the time of day is 7:30 AM.
When play begins:
     now the left hand status line is "[score]/[turn count] [time of day]  [the player's surroundings]". 
When play begins:
	now the right hand status line is "[map region of the location]".
The taking action has an object called previous locale (matched as "from").

Setting action variables for taking:
	now previous locale is the holder of the noun.
		
underly is a number that varies. underly is 0.
			
instead of putting under when player's command includes "put me under [any thing]":
	now the player underlies the noun;
	now underly is 1;
	say "You put yourself under [the second noun].";
	now overlay is the second noun.
	
overlay is a thing that varies.

after printing the name of a room:
	if underly is 1:
		say " [roman type](under [overlay])".
		

before moving to:
	if the noun is the player:
		now underly is 0.
		
before putting under:
	if the second noun is carried by a person:
		say "That would be impossible.";
		stop the action;
	otherwise if the second noun is a rideable vehicle:
		say "That would not fit under there.";
		stop the action;
	otherwise if the second noun is worn by a person:
		say "That would be impossible.";
		stop the action;
	otherwise if the second noun is a person:
		say "That would be ridiculous.";
		stop the action.

before going under a thing:
	if the noun is carried by a person:
		say "That would be impossible.";
		stop the action;
	otherwise if the noun is worn by a person:
		say "That would be impossible.";
		stop the action;
	otherwise if the noun is the player:
		say "That would be laughable.";
		stop the action.
		
before taking a noun:
	if the noun is overlaying something (called the under-contents):
		now the under-contents are in the location;
		now the under-contents are described;
		say "As you pick up [the noun], you reveal [a list of things that are underlying the noun].[line break]";
		now the noun is not overlaying anything.
	

before teleporting to:
	now the player is not underlying anything;
	continue the action.
	
before doing anything:
	unless the player is underlying something:
		now underly is 0.
		

going under is an action applying to one thing.
understand "go under [any thing]" as going under.
understand "get under [any thing]" as going under.
carry out going under:
		say "You go under [noun].[line break]";
		now the player underlies the noun;
		now underly is 1;
		now overlay is the noun.
	
getting out from under is an action applying to one thing.
understand "get out from under [any thing]" as getting out from under.
carry out getting out from under:
	say "You get out from under [the noun].[line break]";
	now the player is not underlying anything;
	now the noun is not overlaying the player.

already reported taking is a number that varies. already reported taking is 0.
every turn when already reported taking is 1:
	now already reported taking is 0.
after taking something from the location when cheats_bin is 0:
	unless the thing is underlying something:
		say "You pick up [the noun] from the ground.";
		now already reported taking is 1;
		continue the action;
	otherwise if the noun is underlying nothing:
		say "You pick up [the noun] from the ground.";
		now already reported taking is 1;
		continue the action;
	otherwise if the noun is underlying something:
		say "You take [the noun] from under [list of things that are overlaying the noun].";
		now already reported taking is 1;
		continue the action.
		
Report taking something:
	if already reported taking is 0:
		say "You take [the noun] from [the previous locale]." instead;
	otherwise:
		stop the action.
	
before doing anything:
	now already reported taking is 0.


The Dursley's house is a region.
Include Rideable Vehicles by Graham Nelson.
Include Menus by Emily Short.
Include Snippetage by Dave Robinson.
Include Snippetage by Dave Robinson.
Include Mixed Extensions by Orion Zymaris.
Include Epistemology by Eric eve.
Include Conversation Framework by Eric Eve.
Include Real-Time Delays by Erik Temple.
Include telephones by George Tryfonas.
Include Postures by Emily Short.
The block listening rule is not listed in the check listening to rules.
A procedural rule: ignore block drinking rule.
Uncle Vernon's Scene is a scene.
Uncle Vernon's Scene begins when Play begins.
Uncle Vernon's Scene ends when the player carries dudley.
Dursley's bedroom is a dark room in dursley's house.
bedroomwindow is a  thing. it is in dursley's bedroom. the printed name is "bedroom window".
understand "window" as bedroomwindow.
understand "bedroom window" as bedroomwindow.
bedroomwindow is fixed in place. it is lit. it is described.
understand "look [bedroomwindow]" as examining.
understand "look out [bedroomwindow]" as examining.
the description of bedroomwindow is "you look out the window and see the lovely gray of Surrey suburbia.".
getting out is an action applying to nothing.
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
understand "mount" as mounting [rideable vehicle].
understand "dismount broom" as dismounting when player is on a broom.
understand "lift" as elevator.
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
the description of the mirror is "[if player is wearing suit ]This one is business-like. nice and grey.[otherwise if player is wearing pyjamas]These pyjamas are great, with the little dollar signs all over them![otherwise if player is not wearing clothing]The best kind of suit - a birthday suit![otherwise]You look in the mirror.[one of]That outfit looks wonderful![or]That is spectacular. Nice and flashy. Just what you were looking for.[or]That one is a very nice, vibrant shade.[or] In this outfit, the person in the mirror reminds you of your sister, Marge.[purely at random]".	
 Instead of taking inventory:     
	say "You are carrying [a list of things carried by the player][if the player wears something]. You are wearing [a list of things worn by the player][end if].". 
the description of Dursley's bedroom is "You look around. There is a wardrobe, a bed, a bedside table with drawer attached, and a door to the east.".
the description of Dursley is "Your name is Vernon Dursley. You live at number four, privet drive. You are wearing [list of things worn by Dursley].".
Dursley is a person.
a clock is a thing. it is in dursley's bedroom. it is not portable.
the description of clock is "Hmm... The time is [time of day in words]... I have work at 8:30.".
a watch is a thing worn by dursley.
the description of watch is "[if time of day is before 8:00 AM]The time is [time of day].[otherwise if dursley has not been in carpark] I should get ready. it's already [the time of day to the nearest five minutes].".
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
the description of scrap of paper is "[description of on]  [description of th]".
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
bedroomdoor is a door. it is closed and openable. the printed name is "bedroom door".
west of bedroomdoor is Dursley's bedroom.
east of bedroomdoor is the hall.
understand "bedroom door" as bedroomdoor.
understand "door" as door.
hall is a room in dursley's house. "As you enter the hall, you see [if kitchen has been visited]the kitchen door to the north, [otherwise]a white door to the north,[end if][if attic has been visited] the attic stairs folded into the roof,[otherwise if stairs are closed]a latched panel in the roof,[otherwise] the stairs to the south, [end if]a cupboard to the east and the bedroom door to the west.".
stairs is a kind of door. it is usually open and not openable.
atticstairs is a stairs. it is above the hall. it is below the attic. it is closed and openable.
understand "Panel" as atticstairs.
understand "Latched panel" as atticstairs.
the printed name of atticstairs is "[if attic has been visited]Attic stairs[otherwise]a latched panel".
understand "up [something]" as going.
understand "down [something]" as going.	
understand "climb down [something]" as climbing.
understand "climb [something]" as climbing.
understand "climb up [something]" as climbing.
after opening stairs, say "You pull on the panel, lowering a set of stairs to the ground that lead to the roof.".
instead of climbing:
	if player's command includes "climb up":
		try going up;
	otherwise if player's command includes "climb down":
		try going down;
	otherwise if player's command includes "climb":
		try going up;
A procedural rule: ignore block climbing rule.
understand "ceiling panel" as stairs when the stairs are closed.
understand "attic stairs" as stairs.
understand "panel" as stairs when the stairs are closed.
understand "latched panel" as stairs when stairs are closed.
understand "stairs" as stairs.
broomcupboard is a room in dursley's house. it is east of hall. the printed name is "cupboard".
Paraphenalia is a kind of thing. 
Bag is a kind of paraphenalia.
the plural of bag is bags.
sock is a kind of paraphenalia.
the plural of sock is socks.
pencil is a kind of paraphenalia.
the plural of pencil is pencils.
a few bits of rubbish is paraphenalia. 
there are 3 bags in broomcupboard.
there are 4 socks in broomcupboard.
there are 20 pencils in broomcupboard. the description of a pencil is "All of the pencils have the name 'Petunia Evans' written on the base.".
a few bits of rubbish is in broomcupboard.
broom is a kind of rideable vehicle.
lily'sbroom is a broom. it is in broomcupboard.
the description of lily'sbroom is "As you examine the handle, you see the name Lily Potter engraved into it. and there's a card on the side - it says [italic type][line break]To Petunia[line break]     I leave you my old school broom. I never was any good at quidditch.[roman type] The handle says that it is a cleansweep five.".
the printed name is "broom".
understand "broomstick" as a broom.
understand "broom" as a broom.
understand "dismount broom" as dismounting when the player is on a broom.
a broom is portable.
the description of broomcupboard is "[if broomcupboard is unvisited]You walk in to the cupboard to be greeted by the sight of years of accumulated junk that Petunia insisted was kept away from the rest of the suspiciously clean house.[otherwise]You look around at the sight of lots of old things that no one can be bothered doing anything with."

before mounting a broom:
	if the broom is carried by player:
		try silently dropping the noun.

before dismounting when player was on lily'sbroom:
	now lily'sbroom is undescribed.

every turn during uncle vernon's scene:
	if lily'sbroom is undescribed:
		now lily'sbroom is carried by player;
		now lily'sbroom is described.
		
understand "cupboard" as broomcupboard.
understand "go down [something]" as going.
understand "go up [something]" as going.
understand "down [something]" as going.
understand "up [something]" as going.
understand "white door" as kitchendoor.
attic is a room in dursley's house. "As you enter the attic, you see pictures of [unless player is dudley]Dudley[otherwise]you[end if] all over the walls.[no line break]". 
dusty box is a container. it is closed and openable. it is not portable.
dusty box is in attic.
a book is a kind of thing. 
a toy is a kind of thing.
in dusty box is three toys.
instead of taking a toy:
	say "[first time]If you took one of Dudley's toys, he would notice, after he spent an hour counting them.[only]You can't take that.".
the description of a toy is "[one of] Dudley's old favourite toy[or]This was Dudley's[or]one of Dudley's favourite toys[purely at random]".
the description of howto spoil your children handbook is  "A comprehensive guide to help you ensure the overenrichment of your favourite child." .
the description of drills- an unabridged history is "A full and unabridged history on the subject of drills, drilling, drillmaking, and more!".
the description of 101 pompous complaints is "A list the best of pompous complaints and snide remarks.".
the description of the High calorie cookbook is "a book of the meals with the highest possible calorie content.". the description of the smeltings schoolbook is "The smeltings schoolbook [line break] owner: Vernon Dursley".
Howto spoil your children handbook is a book in dusty box. 
Drills- an unabridged History is a book in dusty box.
101 pompous complaints is a book in dusty box.
High calorie cookbook is a book in dusty box.
Smeltings schoolbook is a book in dusty box.
Petunia's diary is a book in attic.
instead of opening diary:
	try examining diary.
the printed name of howto spoil your children handbook is "and books with titles such as how to spoil your children handbook".
before taking howto spoil your children handbook:
	now the printed name of howto spoil your children handbook is "how to spoil your children handbook".
every turn during uncle vernon's scene:
	unless howto spoil your children handbook is in dusty box:
		now the printed name of howto spoil your children handbook is "how to spoil your children handbook".
letter is a thing.

before moving to:
	if player's command includes "handbook":
		now the printed name of howto spoil your children handbook is "How to spoil your children handbook";
		move Howto to the second noun.
the description of letter is "You unfold the letter, and see a message written in the recognisable handwriting of Petunia's sister.[italic type][line break]Dear Petunia,[line break]     I hope you respond to this letter. I would really like to keep in touch! Three months since I went to hogwarts for the first time and already I feel like an old timer. I'm still wary of some of the teachers we have though. Some of them are downright horrible. There are also some real show-offs here too. James Potter is the most boisterous of them, but his friend Sirius is pretty self-centered too. On the other hand, the rest of his friends aren't bad. Remus Lupin is rather kind, and his friend Peter Pettigrew is quite well mannered, if frustratingly shy.[line break]The world of magic is amazing, and there's so much to do! We".
before examining petunia's diary:
	now letter is in attic.
The description of Petunia's diary is "[first time]As you open the diary, a letter falls out, sent from Lilly Potter.[line break][only]A glance at the diary tells you it holds nothing interesting - just some old appointments and dates to keep.".
kitchendoor is a door. the printed name is "white door". south of kitchendoor is hall. north of kitchendoor is kitchen.
kitchen is a room in dursley's house.
a procedural rule: ignore block giving rule.
A road is a kind of room.
garden is a room in dursley's house.
garage is not portable.
Petunia is an npcf in the kitchen.
Petunia is edible.
Instead of eating Petunia:
	say "Why would you want to do that?".
After saying hello to petunia:
	if the description of Petunia is not "Your lovely wife.":
		now the description of Petunia is "Your lovely wife.";
		say "'Good morning. How did you sleep?' Asks Petunia.[paragraph break]'Actually, seeing as there[']s Cereal all over the place, can you go get the broom and clean it up?'[if the time of day is after 8:00 AM]'Actually, don[']t. you should get going. you have work at 8:30.'[no line break][otherwise][no line break]";
	otherwise:
		say "'Good morning' Says Petunia.".
		
after saying hello to dudley:
		say "You say hello to Dudley.[line break]'Shan't! Shan't!' Says Dudley." instead.
		
understand "hello [person]" as saying hello to.
understand "goodbye [person]" as saying goodbye to.
understand "bye [person]" as saying goodbye to.
understand "Good morning [person]" as saying hello to.
understand "How are you [person]" as saying hello to.
understand "How's it going [person]" as saying hello to.
understand "How is it going [person]" as saying hello to.
understand "bros" as a person.
understand "morning [person]" as saying hello to.
understand "i'll be off then [petunia]" as saying goodbye to.
understand "i'll be off [petunia]" as saying goodbye to.
understand "byebye" as saying goodbye to.	
understand "Dudders" as dudley.
understand "say hello" as saying hello to [Petunia].
highchair is a supporter in the kitchen. it is not portable.
Kitchentable is a supporter in kitchen.
the printed name of kitchentable is "the kitchen table".
understand "kitchen table" as kitchentable.
understand "table" as kitchentable.
food is a kind of thing. it is edible.
foodlevel is a kind of value. the foodlevels are uneaten, half-eaten, and eaten. all foods have a foodlevel. the foodlevel of a food is usually uneaten.
instead of eating a food when the foodlevel of the noun is uneaten: 
	say "You take a big bite from the [noun].";
	now the foodlevel of the noun is half-eaten;
	
before eating a food when the foodlevel of the noun is half-eaten:
	say "You finish the [noun].";
	now the foodlevel of the noun is eaten;

A procedural rule: ignore standard report eating rule.
cup is a kind of thing.
understand "drink out of [cup]" as drinking.
understand "drink from [cup]" as drinking.
instead of drinking something that is not a cup:
	say "How would you manage that?".
piece of toast is a kind of food.
there are two pieces of toast on kitchentable.
the plural of piece of toast is pieces of toast.	
the description of piece of toast is "looking at the small meal, you wonder if it will be enough to sustain you till your lunch-time donut.".
report drinking:
	if the drinklevel of the noun is overflowing:
		say "You gulp down some [noun].";
		now the drinklevel of the noun is half-empty;
	otherwise if the drinklevel of the noun is half-empty:
		say "You gulp down some [noun]. Now the cup is empty.";
		now the drinklevel of the noun is droplets.
check drinking:
	if the drinklevel of the noun is droplets:
		say "how can you drink from an empty cup?" instead.
coffee cup is a cup on kitchentable. 
rule for printing the name of coffee cup when taking coffee cup: say "the coffee cup".
the printed name of coffee cup is "a coffee cup".
rule for printing the name of coffee cup when drinking coffee cup: say "coffee".
before drinking coffee cup:
	if player's command matches "drink coffee cup":
		say "How would you manage that?" instead;
	otherwise if player's command matches "drink cup":
		say "How would you manage that?" instead.
		
drinklevel is a kind of value. the drinklevels are overflowing, half-empty, and droplets.
all cups have a drinklevel. the drinklevel of a cup is usually overflowing.

Dudley is on highchair.
dudley is edible.
Instead of eating Dudley:
	say "Even though you are able to eat half a cow's worth of meat in one sitting, you don't think you could eat Dudley.".
Procedural rule while eating something: ignore the carrying requirements rule.
fridge is a container in the kitchen. it is not portable. it is closed and openable. the printed name is "a fridge".
rule for printing the name of fridge when listing contents: say "the fridge".
rule for printing the name of fridge while opening fridge: say "fridge".
Steak is a food inside fridge. the description is "This looks like a good, proper size for a steak. what does it weigh... twenty, twenty five pounds? A whole half a cow's worth...". the printed name of steak is "a steak".
rule for printing the name of steak when eating steak: say "steak".
the Walls is scenery in the kitchen. "as you look at the walls you see that Dudley has thrown his cereal everywhere. 'little tyke!' you chortle."
Cereal is on the walls. it is not portable. it is undescribed.
understand "clean [something]" as rubbing.
check rubbing cereal:
	if in kitchen:
		if player is carrying a broom:
			say "you grab the broom and clean the mess up. 'Thank you Vernon'." instead;
			now cereal is off-stage.
			
check rubbing cereal:
	if in kitchen:
		if player is not carrying a broom:
			say "With what?" instead.

understand "wall" as walls.
before eating cereal:
say "that cereal's Dudleys. and it's also been in his mouth.";
stop the action.
Dudley is an npcm.
suitcase is a container in the kitchen. it is closed and openable. it is locked.  Rule for printing the name of the suitcase while taking inventory: say "a suitcase".
report taking suitcase:
	say "You take the suitcase from [the previous locale]".
window is a thing in the kitchen. it is fixed in place. the description is "as you look out the window, you see [one of]a large tawny owl[or]a flock of small brown owls[or]a small white owl[or]a large white owl[purely at random] flutter past".
inside suitcase are three papers.
papers is a thing. it is portable.
inside suitcase is keys.
keys is a thing.
understand "key" as keys.
understand "paper" as papers.
the description of three papers is "The latest drill models - The Bk-44 model T, The Qz - 77, the T1000, and the HAL 6502.".
suitcase has a carrying capacity 10.
front door is north of the kitchen and south of the garden. front door is a door. front door is closed and openable.
the printed name of front door is "Front door".
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
does the player mean moving to car: it is very likely.
outdoors is a kind of room.
understand "garage door" as garage.
 Definition: a room is offroad if it is not a road.
instead of going to road when the player is not in a vehicle:
	unless player is on a rideable vehicle:
		unless road is grunnings carpark:
			say "it's a bit too long of a journey to walk all the way to work.";
	otherwise:
		continue the action.
 Instead of going by a vehicle (called the auto) to somewhere offroad:
	if going to garden:
		continue the action;
	if going to grunnings carpark:
		continue the action;
	otherwise:
	 	say "You can't drive the [the auto] off-road.".
the description of the kitchen is "[one of]You enter the kitchen to say goodbye to Petunia and [if player is dudley]You[otherwise]Dudley[end if]. [if player is dudley]You[otherwise]Dudley[end if] is having a major tantrum, and is throwing cereal everywhere.[or]You look around and see [if player is dudley]Daddy at the table[otherwise]Dudley in a highchair[end if], [if cereal is in kitchen]Cereal splattered on the walls,[otherwise][end if]the kitchen table, and [if player is dudley]Mummy[otherwise if player is dursley]Petunia[otherwise if player is petunia]a fridge[end if].[stopping]"

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
		if player has not been in ferrari enzo:
			if ferrari enzo has not been in garage for at least one turn:
				say  "as you close the garage, a secret hole opens in the floor, revealing a Ferrari, which is slowly brought out to ground level";
			otherwise:
				if the ferrari enzo is in garage:
					say "you can see your ferrari taking pride of place in your garage.";
				otherwise:
					say "big, grey, spacious, it's like any other garage you know".

every turn during uncle vernon's scene:
	if player is not in ferrari enzo:
		if player has been in ferrari enzo for at least one turn:
			now start button is switched off.
			
instead of exiting from a vehicle when the vehicle is in a road:
	say "That seems rather suicidal".

before going:
	if player's command includes "drive":
		unless player is in a vehicle:
			say "you need to be in a car to drive.";
			stop the action.
			
before going:
	if player's command includes "fly":
		unless player is on a broom:
			say "How is that possible?";
			stop the action.

every turn when in ferrari enzo:
	if ferrari enzo is in garage:
		if player is in ferrari enzo:
			if garage is open:
				if start button is switched on:
					now ferrari enzo is in garden;
					now player is in ferrari enzo;
					
report switching on start button:
	if ferrari enzo is in garage:
		if player is in ferrari enzo:
			if garage is open:
				say "you gently move the priceless car to the garden." instead;
			
every turn when in ferrari enzo:
	if ferrari enzo is in garage:
		if garage is closed:
			if start button is switched on:
				if start button has not been switched on for at least one turn:
					say "You need to open the garage before you can leave.".
				
every turn when in car:
	if player is in car:
		if car is in highway:
			say "[if car has not been in highway for at least one turn]As you back out of privet drive, you notice a tabby cat out of the corner of your eye. you also notice that the cat looks like it is reading a map. you look round again, but the map has gone. as you drive round the corner of the road, you notice the cat reading the sign - no, looking at the sign; cats can't read maps or signs.[otherwise if car has been in highway for only one turn]  As you sit in the usual morning traffic jam, you notice how there seem to be a lot of strangely dressed people about. people in cloaks";
			
before going:
	if player's command matches "go up":
		unless player is in hall:
			unless player is in attic:
				say "Go up what?";
				stop the action;
	otherwise if player's command includes "go up":
		unless going through a stairs:
			say "How would you go up that?";
			stop the action;
	otherwise:
		continue the action.
		
before going:
	if player's command matches "up":
		unless player is in hall:
			unless player is in attic:
				say "Go up what?";
				stop the action;
	otherwise:
		continue the action.

before going:
	if player's command includes "up":
		if player is in attic:
			say "How would you go up the stairs when you are at the top?";
			stop the action;
	otherwise:
		continue the action.
		
before going:
	if player's command includes "go down":
		unless going through a stairs:
			say "How would you go down that?";
			stop the action;
	otherwise:
		continue the action.
		
before going:
	if player's command includes "down":
		unless going through a stairs:
			say "How would you go down that?";
			stop the action;
	otherwise:
		continue the action.

before going:
	if player's command includes "down":
		if player is in hall:
			say "How would you go down the stairs when you are at the bottom?";
			stop the action;
	otherwise:
		continue the action.
		

Part 2 - Work

Grunnings is a region.
north of garden is the highway.
highway is a road.
understand "elevator button" as elevatorbutton.
understand "button" as elevatorbutton.
person in cloak is a kind of person.
the plural of person in cloak is people in cloaks.
Grunnings Carpark is a room in grunnings. it is west of the highway.
red car is a vehicle in Grunnings Carpark. it is locked. the description is "This one seems to be a Daihatsu".
blue car is a vehicle in Grunnings Carpark. it is locked. the description is "it's a ford".
rainbow car is a vehicle in Grunnings Carpark. it is locked. the description is "is this- is this a clown car?".
green car is a vehicle in Grunnings Carpark. it is locked. the description is "This one looks rather old. Bloody owners can't even be bothered to work for a new car.".
carjacking is an action applying to one visible thing.
understand "carjack[something]" as carjacking.
understand "hijack[something]" as carjacking.
instead of carjacking something that is not a vehicle:
	say "How can you carjack that? It isn't a vehicle.".
instead of carjacking ferrari enzo:
	say "You own this vehicle already. why damage it?".
Instead of carjacking car:
	say "Why would you want to carjack your own car?".
check carjacking a vehicle:
	if a random chance of 1 in 2 succeeds:
		say "As you break into the car, the alarm goes off. Now the police will be after you.";
	otherwise if the description of the noun is not "a smashed and battered car.":
		say "You smash open the windows with a satisfying, and very loud, noise of breaking glass.";
		now the description is "a smashed and battered car.";
	otherwise if the description of the noun is "a smashed and battered car.":
		say "That one's already broken.".

every turn when in Grunnings Carpark:
	if the description of green car is "a smashed and battered car.":
		now green car is unlocked;
	otherwise if the description of red car is "a smashed and battered car.":
		now red car is unlocked;
	otherwise if the description of blue car is "a smashed and battered car.":
		now blue car is unlocked;
	otherwise if the description of rainbow car is "a smashed and battered car.":
		now rainbow car is unlocked.
elevator is a container. it is opaque. it is open. it is enterable. it is not portable. it is in Grunnings Carpark.
elevatorbutton is a device. it is in elevator. it is not portable. the printed name is "elevator button".
Officestairs is a stairs. it is above Grunnings Carpark and below corridor. the printed name is "stairs".
understand "stairs" as officestairs.
Officestairs is open and not openable.
level 1 is a region in grunnings. 
Work office is a room. it is in level 1.
the description of the office door is "you see an office door to the north with the words 'Vernon Dursley' on a plaque in front of it. [line break] there are other offices to either side of you.".
office door is a door. it is north of the corridor and south of work office.
the description of work is "as you enter your office, you see your desk, with a phone on it.". 
desk is a supporter in work office.
the office phone is a telephone. it is not portable. it is on the desk. the description of office phone is "Your battle scarred telephone, scratched from years of rage at wrong numbers and irritating customers.".
the calling number of office phone is 55527586.
a Customer is a person. mobilel is a telephone. the calling number of mobilel is 893. the owner of mobilel is customer.


Table of Misdialled Numbers (continued)
number	retort 
5554385	"The Doc will be with you about twenty seconds ago." 
000	"Even though there are some odd looking people outside, it does not legitimise calling the police." 
999	"Even though there are some odd looking people outside, it does not legitimise calling the police."
911	"Even though there are some odd looking people outside, it does not legitimise calling the police."
5558707 	"The Simpsons phone was accidentally made radioactive after Homer had a night of drinking. They dare not touch it."
5552368	"Who you gonna call? obviously not the ghost busters. They must be out of business." 
5553223	"The Simpsons phone was accidentally made radioactive after Homer had a night of drinking. They dare not touch it."
5553226	"Call Mr. Plow, that's my name, that name again is Mr. Plow. "
5550101	"Unless there's slaying to be done, I wouldn't reccomend it."
5550123	"For Holy assistance on earth, press 1. For Heavenly Guidance, press 2. For tomorrow's football results, press 3."
5550168	"'Hello? Hello? Who is this? Damn, i shouldn't have tried to fix the phone myself... Anya! Come here for a minute!'"
5550193	"Beep...Beep...Beep... i guess someone didn't pay their phone bill."

dialyes/no is a number that varies. dialyes/no is 0.
after dialling 55527586 on the office phone:
	now dialyes/no is 1.
	
after hanging up:
	now dialyes/no is 0.
	
Table of customer responses part 1
Player	Customer
"Good"	"[one of]That's great[or]Great... now, can you help me? i'm looking to buy a drill[purely at random]"

A chair is a kind of supporter. A chair is always enterable. Every chair allows seated.
office chair is a chair in office.
after doing anything in work office for the third turn:
	unless dialyes/no is 1:
		say "As you examine the office, the phone rings. Grumbling, you pick it up.";
		now dialyes/no is 1;
		try dialling 893 on office phone.
		
before taking office phone for the first time:
	unless dialyes/no is 1:
		say "As you reach out, the phone rings.";
		try dialling 893 on the office phone instead.
the description of desk is "A standard work desk.".
after saying hello to the customer:
	say "'Hello. How are you?'".

corridor is a room. it is in level 1. 
understand "press [switch]" as switching on .
understand "push [switch]" as switching on.	
understand "press [button]" as switching on .
understand "push [button]" as switching on.
understand "press [start button]" as switching on .
understand "push [start button]" as switching on.
understand "press [elevatorbutton]" as switching on .
understand "push [elevatorbutton]" as switching on.
does the player mean switching on elevatorbutton: it is very likely.	
every turn during uncle vernon's scene:
	if player is in elevator:
		if elevatorbutton is switched on:
			if player has been in elevator for at least one turn:
				now elevator is in corridor;
				now player is in elevator;
				say "you go up the elevator. when you look out of the elevator, you see there are offices to either side of you.";	
	otherwise if player is not in elevator:
		if elevatorbutton is switched on:
			say "Since you pressed the button without getting in, you have to wait for the elevator to come back to ground level.";
			if glulx timekeeping is supported:
				wait 5000 milliseconds before continuing, strictly;
			say "The elevator comes back to the carpark with a soft pinging noise.";
		
every turn during uncle vernon's scene:
	if elevatorbutton is switched on:
		now the elevatorbutton is switched off.
		
every turn during uncle vernon's scene:
	if player is in car:
		if car is in Grunnings Carpark:
			if car has not been in Grunnings Carpark for at least one turn:
				say "you see few cars in the Carpark today. Must be lots of people skipping work today. Slackers. It's people like them that keep our profits down... ";
				

				
Release along with "Quixe" interpreter.

					