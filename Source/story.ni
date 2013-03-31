"Harry Potter and the Philosopher's stone" by "Orion Zymaris"

The story headline is "Influenced by 'Harry Potter and the Philosopher's stone' by J.K. Rowling."

Chapter 1 - The boy who lived

Part 1 - The Dursleys

Current teletype character delay is a number variable. The current teletype character delay is 40.
Current teletype line break delay is a number variable. The current teletype line break delay is 400.
Current teletype paragraph break delay is a number variable. The current teletype paragraph break delay is 400.

To teletype (text-to-be-printed - an indexed text):
	repeat with N running from 1 to the number of characters in the text-to-be-printed:
		if character number N in the text-to-be-printed is "[line break]":
			wait (current teletype line break delay) milliseconds before continuing;
		if character number N in the text-to-be-printed is "[paragraph break]":
			wait (current teletype paragraph break delay) milliseconds before continuing;
		say "[character number N in the text-to-be-printed][run paragraph on]";
		wait (current teletype character delay) milliseconds before continuing, strictly.
		
To teletype (text-to-be-printed - an indexed text) at/with (speed - a number) ms/milliseconds/-- delay/--:
	change the current teletype character delay to the speed;
	teletype the text-to-be-printed.
To say change teletype delay to (speed - a number) ms/milliseconds/--:
	change the current teletype character delay to speed.
	
After printing the banner text:
	say "[bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help.)[roman type][paragraph break] Mr and Mrs Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.[line break]They were the last people you'd expect to be involved in anything strange or mysterious,  because they,just didn't hold with such nonsense.[paragraph break]However, they had a secret, and their greatest fear was that somebody would discover it.[line break]They didn't think they could bear it if anyone found out about the Potters.[paragraph break]Mrs Potter, Petunia's sister, and her husband and son, where as unDursleyish as it was possible to be.[line break]The Dursleys shuddered to think of what their friends and neighbours would think if they showed up on their street.[paragraph break]As you, Vernon Dursley, wake up, on a dull, grey Tuesday, you can hardly imagine that soon strange things will be happening all over the country.[paragraph break]".

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
  a multiroad is a kind of room.
Underlying relates various things to one thing.
the verb to underlie (he underlies, they underlie, he underlay, it is underlying, he is underlying) implies the underlying relation.
the verb to overlay (he is overlaying, they  overlay, he overlay, it is overlaying, he is overlaying) implies the reversed underlying relation.
putting under is an action applying to two things.
understand "put [any portable thing] under [any thing]" as putting under.
understand "hide [any portable thing] under [any thing]" as putting under.
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
carry out looking under a noun:
	if there is one thing underlying the noun:
		say "underneath the [noun] is [a list of things underlying the noun].";
	otherwise:
		say "There is nothing underneath [the noun]." instead.
		
after taking a noun:
	now the noun is not underlying anything;
	continue the action.


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
		stop the action;
	otherwise if the player is in the noun:
		say "That would be impossible.";
		stop the action.
		
before taking a noun when the noun is overlaying something (called the under-contents):
	now the under-contents are in the location;
	now the under-contents are described;
	say "As you pick up [the noun], you reveal [a list of things that are underlying the noun].[line break]";
	now the noun is not overlaying anything.
	

before teleporting to:
	now the player is not underlying anything;
	continue the action.
	
before doing anything:
	unless the player is underlying something:
		now underly is 0;
	otherwise:
		now the player is reclining.
		

going under is an action applying to one thing.
understand "go under [any thing]" as going under.
understand "get under [any thing]" as going under.
carry out going under:
		say "You go under [noun].[line break]";
		now the player underlies the noun;
		now underly is 1;
		now the player is reclining;
		now overlay is the noun.
instead of exiting when underly is 1:
	try getting out from under overlay.
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
		continue the action ;
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
		do nothing instead.
	
before doing anything:
	now already reported taking is 0.

a thing can be large. 
a thing can be small.
a thing can be medium. a thing is usually medium.
a thing can be huge.
The Dursley's house is a region.
Include Rideable Vehicles by Graham Nelson.
Include Menus by Emily Short.
Include Snippetage by Dave Robinson.
Include Mixed Extensions by Orion Zymaris.
Include Epistemology by Eric eve.
Include Conversation Framework by Eric Eve.
Include Real-Time Delays by Erik Temple.
Include Telephones by George Tryfonas.
Include Postures by Emily Short.
Include Basic Screen Effects by Emily Short. 
Include After Not Doing Something by Ron Newcomb.
Use authorial modesty. 
Release along with "Quixe" interpreter.
A procedural rule: ignore block drinking rule.
Uncle Vernon's Scene is a scene.
Uncle Vernon's Scene begins when Play begins.
Uncle Vernon's Scene ends when the venture of uncle vernon's scene is success.
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
understand "look in [mirror]" as examining.
understand "look in [window]" as examining.
understand "look out [window]"as examining.	
the description of the mirror is "[if player is wearing suit ]This one is business-like. nice and grey.[otherwise if player is wearing pyjamas]These pyjamas are great, with the little dollar signs all over them![otherwise if player is not wearing clothing]The best kind of suit - a birthday suit![otherwise]You look in the mirror.[one of]That outfit looks wonderful![or]That is spectacular. Nice and flashy. Just what you were looking for.[or]Those clothes are a very nice, vibrant shade.[or] In this outfit, the person in the mirror reminds you of your sister, Marge.[purely at random]".	
instead of taking inventory:
	if the player is carrying at least 6 things:
		continue the action;
	otherwise if the player is wearing at least 6 things:
		continue the action;
	otherwise:
		say "You are carrying [a list of things carried by the player][if the player wears something]. You are wearing [a list of things worn by the player][end if]." instead. 
the description of Dursley's bedroom is "You look around. There is a wardrobe, a bed, a bedside table with drawer attached, and a door to the east.".
the description of Dursley is "Your name is Vernon Dursley. You live at number four, privet drive.".
Dursley is a huge person.
a clock is a small thing. it is in dursley's bedroom. it is not portable.
the description of clock is "Hmm... The time is [time of day in words]... I ha[if the time of day is before 8:31 AM]ve[otherwise]d[end if] work [unless the time of day is 8:30 AM]at 8:30[otherwise]now[end if].".
Bed is a large thing in Dursley's bedroom.
bed is a large container. it is open.
the player is in bed.
understand "case" as suitcase.
Wardrobe is a large container in The Dursley's Bedroom. it is closed and openable.  the description of wardrobe is "A large wooden wardrobe, made of the finest materials to please Petunia.".
wardrobe is fixed in place.
A Mirror is in the wardrobe. it is not portable.
understand "cupboard" as wardrobe.
clothing is a kind of thing. suit is a kind of clothing. muumuu is a kind of clothing. wizards robes is a clothing. tutu is a kind of clothing. tie is a kind of clothing. Pyjamas is a clothing.
bedside table is a medium supporter in Dursley's bedroom.
bedside drawer is a part of bedside table.
the description of the bedside table is "This is your bedside table. It has a drawer attached.".
bedside drawer is a small container. it is closed and openable.
inside bedside drawer is a scrap of paper.
scrap of paper is a small thing.
the description of scrap of paper is "[random lock number]".
Dursley is wearing Pyjamas.  
before wearing clothing:
	if player is wearing pyjamas:
		now the pyjamas is in the wardrobe.
before wearing clothing:
	if player is wearing clothing:
		say "Even though you got the biggest clothing the store could sell you, you can barely wear one set of clothing, let alone two.";
		stop the action.
the wardrobe contains one suit and one muumuu and wizards robes and one tutu.
understand "work clothes" as suit.
clothing is wearable.
bedroomdoor is a door. it is closed and openable. the printed name is "bedroom door". the description is "You would inspect it, but you don't think much of people who do such nonsense.".
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
understand "[direction]" as going.
after opening stairs, say "You pull on the panel, lowering a set of stairs to the ground that lead to the roof.".
carry out climbing:
	if player's command includes "climb up":
		try going up;
	otherwise if player's command includes "climb down":
		try going down;
	otherwise if player's command includes "climb":
		try going up.
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
a broom can be occupied. a broom is usually not occupied.
after mounting broom:
	now the noun is occupied;
	continue the action.
after dismounting:
	now the noun is not occupied;
	continue the action.
lily'sbroom is a large broom. it is in broomcupboard.
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
dusty box is a medium container. it is closed and openable. it is not portable.
dusty box is in attic.
a book is a kind of thing. 
a toy is a kind of thing.
in dusty box is three toys.
instead of taking a toy:
	say "[first time]If you took one of Dudley's toys, he would notice, after he spent an hour counting them.[only]You can't take that.".
the description of a toy is "[one of] Dudley's old favourite toy[or]This was Dudley's[or]one of Dudley's favourite toys[purely at random]".
the description of howto spoil your children handbook is  "A comprehensive guide to help you ensure the overenrichment of your favourite child." .
the description of drills- an unabridged history is "A full and unabridged history on the subject of drills, drilling, drillmaking, and more!".
the description of 101 pompous complaints is "A list of the best of pompous complaints and snide remarks.".
the description of the High calorie cookbook is "A book of the meals with the highest possible calorie content.". the description of the smeltings schoolbook is "The smeltings schoolbook [line break] owner: Vernon Dursley".
Howto spoil your children handbook is a book in dusty box. 
Drills- an unabridged History is a book in dusty box.
101 pompous complaints is a book in dusty box.
High calorie cookbook is a book in dusty box.
Smeltings schoolbook is a book in dusty box.
Petunia's diary is a book in attic.
instead of opening diary:
	try examining diary.
the printed name of howto spoil your children handbook is "how to spoil your children handbook".
before taking howto spoil your children handbook:
	now the printed name of howto spoil your children handbook is "how to spoil your children handbook".
rule for printing the name of howto spoil your children handbook when listing contents of dusty box: say "[first time]and books with titles such as [only]the how to spoil your children handbook".
every turn during uncle vernon's scene:
	unless howto spoil your children handbook is in dusty box:
		now the printed name of howto spoil your children handbook is "How to Spoil your Hhildren Handbook".
letter is a small thing.

before moving to:
	if player's command includes "handbook":
		now the printed name of howto spoil your children handbook is "How to Spoil your Children Handbook";
		move Howto to the second noun.
the description of letter is "You unfold the letter, and see a message written in the recognisable handwriting of Petunia's sister.[italic type][line break]Dear Petunia,[line break]     I hope you respond to this letter. I would really like to keep in touch! Three months since I went to hogwarts for the[line break]first time and already I feel like an old timer. I'm still wary of some of the teachers we have though. Some of them are[line break]downright horrible. There are also some real show-offs here too. James Potter is the most boisterous of them, but his[line break]friend Sirius is pretty self-centered too. On the other hand, the rest of his friends aren't bad. Remus Lupin is rather[line break]kind, and his friend Peter Pettigrew is quite well mannered, if frustratingly shy.[line break]The world of magic is amazing, and there's so much to do! We[paragraph break][roman type]The rest of the letter seems to have been torn off.".
before examining petunia's diary:
	now letter is in attic.
The description of Petunia's diary is "[first time]As you open the diary, a letter falls out, sent from Lilly Potter.[line break][only]A glance at the diary tells you it holds nothing interesting - just some old appointments and dates to keep.".
kitchendoor is a door. the printed name is "white door". south of kitchendoor is hall. north of kitchendoor is kitchen.
kitchen is a room in dursley's house.
a procedural rule: ignore block giving rule.
A road is a kind of room.
garden is a multiroad in dursley's house.
garage is not portable.
Petunia is a a medium npcf in the kitchen.
Petunia is edible. the description is "Petunia.".
Instead of eating Petunia:
	say "Why would you want to do that?".
definition: a broom is occupied if there is a person on it.
After saying hello to petunia when the venture of work is incomplete:
	if the description of Petunia is not "Your lovely wife.":
		now the description of Petunia is "Your lovely wife.";
		say "[if broom is occupied]'What on earth... How are you flying that?'[otherwise]'Good morning. How did you sleep?' Asks Petunia.[paragraph break]'Since there[']s Cereal all over the place, can you go get the broom and clean it up?'[no line break]";
		rule succeeds;
	otherwise:
		say "'Good morning' Says Petunia.[if broom is occupied] 'Why are you doing... (Petunia looks around nervously) Magic, in our house?'";
		rule succeeds.
		
after saying hello to dudley:
		say "You say hello to Dudley.[line break]'Shan't! Shan't!' Says Dudley." instead.
		
understand "hello [person]" as saying hello to.
understand "goodbye [person]" as saying goodbye to.
understand "bye [person]" as saying goodbye to.
understand "bye" as a person.
understand "Good morning [person]" as saying hello to.
understand "Good afternoon [person]" as saying hello to.
understand "How are you [person]" as saying hello to.
understand "How's it going [person]" as saying hello to.
understand "how are you going [person]" as saying hello to.
understand "how are you going [person]" as saying hello to.
understand "How are you doing [person]" as saying hello to.
understand "bros" as a person.
understand "morning [person]" as saying hello to.
understand "i'll be off then [person]" as saying goodbye to.
understand "i'll be off [person]" as saying goodbye to.
understand "byebye" as saying goodbye to.	
understand "Dudders" as dudley.
understand "say hello" as saying hello to [Petunia].
highchair is a large supporter in the kitchen. it is not portable.
Kitchentable is a large supporter in kitchen.
the printed name of kitchentable is "the kitchen table".
understand "kitchen table" as kitchentable.
food is a kind of thing. it is edible.
understand "table" as kitchentable.
foodlevel is a kind of value. the foodlevels are uneaten, half-eaten, and eaten. all foods have a foodlevel. the foodlevel of a food is usually uneaten.
instead of eating a food when the foodlevel of the noun is uneaten: 
	say "You take a big bite from the [noun].";
	now the foodlevel of the noun is half-eaten.
	
before eating a food when the foodlevel of the noun is half-eaten:
	say "You finish the [noun].";
	now the foodlevel of the noun is eaten;
	now the noun is off-stage instead.
A procedural rule:
	ignore standard report eating rule.
cup is a kind of thing.
understand "drink out of [cup]" as drinking.
understand "drink from [cup]" as drinking.
instead of drinking something that is not a cup:
	say "How would you manage that?".
piece of toast is a kind of food.
there are two pieces of toast on kitchentable.
the plural of piece of toast is pieces of toast.	
the description of piece of toast is "[if the venture of work is incomplete]looking at the small meal, you wonder if it will be enough to sustain you till your lunch-time doughnut.[otherwise]Toast, stale because it wasn't eaten this morning.".
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
dudley is seated.
Instead of eating Dudley:
	say "Even though you are able to eat half a cow's worth of meat in one sitting, you don't think you could eat Dudley.".
Procedural rule while eating something: ignore the carrying requirements rule.
fridge is a large container in the kitchen. it is not portable. it is closed and openable. the printed name is "a fridge".
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
Dudley is a large npcm.
suitcase is a medium number unlockable in the kitchen. it is closed and openable. it is locked.  Rule for printing the name of the suitcase while taking inventory: say "a suitcase".
report taking suitcase:
	if already reported taking is 0:
		say "You take the suitcase from [the previous locale]." instead;
	otherwise:
		do nothing instead.
check unlocking suitcase with:
	say "Enter the combination lock code:";
	rule succeeds.
window is a medium thing in the kitchen. it is fixed in place. the description is "as you look out the window, you see [one of]a large tawny owl[or]a flock of small brown owls[or]a small white owl[or]a large white owl[purely at random] flutter past.".
inside suitcase are three papers.
papers is a small thing. it is portable.
inside suitcase is keys.
keys is a small thing.
understand "key" as keys.
understand "paper" as papers.
the description of three papers is "The latest drill models - The Bk 44 model T, The Qz  77, the T1000, and the HAL 6502.[line break]The Bk 44 model T is reccomended for hard work and long lasting life.[line break]The Qz 77 is reccomended for it's low, low price.[line break]The HAL 6502 is reccomended for use with smaller screws and where finesse is needed.[line break]The T1000 is reccomended for use with large bolts and large scale work.".
suitcase has a carrying capacity 10.
front door is north of the kitchen and south of the garden. front door is a door. front door is closed and openable.
the printed name of front door is "Front door".
the description of the garden is "you look around and see a driveway with the car on it, the garage where the car came out of, and the highway to the north.".
garage is a huge container in garden. it is enterable. it is closed and openable. it is opaque. 
understand "garage door" as garage.
understand "switch" as start button.
understand "car door" as car.
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
after not unlocking car with something, say "Hmm... I think the car keys are in my suitcase.".
outdoors is a kind of room.
understand "garage door" as garage.
 Definition: a room is offroad if it is not a road.
instead of going to a road when the player is not in a vehicle:
	unless road is highway:
		unless lily'sbroom is occupied:
			say "You need a vehicle to do that.";
	otherwise if lily'sbroom is occupied:
		continue the action;
	otherwise if the player is in carpark:
		if road is highway:
			now the player is in street;
	otherwise if the player is in street:
		if road is highway:
			now the player is in grunnings carpark;
	otherwise:
		say "You need a vehicle to do that.".
		
 Instead of going by a vehicle (called the auto) to somewhere offroad:
	if going to garden:
		continue the action;
	if going to grunnings carpark:
		continue the action;
	otherwise:
	 	say "You can't drive the [the auto] off-road.".
[fix description so it tells if people are there at the right times]
the description of the kitchen is "You look around the kitchen [if player is dudley]from your highchair [otherwise if player is petunia]from your chair [otherwise][end if]and see [if petunia is in kitchen][petunia][end if][if dudley is in kitchen][dudley][otherwise if dudley is on highchair][dudley][end if][if dursley is in kitchen][dursley][end if][if cereal is on-stage]cereal all over the walls, [end if]and a fridge.".

to say petunia:
	if player is petunia:
		say "[no line break] ";
	otherwise if player is dudley:
		say "Mummy at the table, ";
	otherwise:
		say "Petunia at the table, ".
to say dudley:
	if player is dudley:
		say "[no line break]";
	otherwise:
		say "Dudley on his highchair, ".
to say dursley:
	if player is dursley:
		say "[no line break]";
	otherwise if the player is dudley:
		say "Daddy, ";
	otherwise:
		say "Vernon, ".
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
instead of exiting from a rideable vehicle when the rideable vehicle is in a road:
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
				
before going to highway when in car:
	if player is in car:
		if car is in highway:
			say "[one of]As you back out of privet drive, you notice a tabby cat out of the corner of your eye. you also notice that the cat looks like it is reading a map. you look round again, but the map has gone. as you drive round the corner of the road, you notice the cat reading the sign - no, looking at the sign; cats can't read maps or signs.[or][stopping][line break][if the venture of work is incomplete]As you sit in the usual morning traffic jam, you notice how there seem to be a lot of strangely dressed people about. people in cloaks.[otherwise]The people in cloaks still seem to be around, and in large numbers.".
after going to highway when lily'sbroom is occupied for the first time:
	say "As you fly out to the highway, you notice a tabby cat out of the corner of your eye. you also notice that the cat looks like it is reading a map. you look round again, but the map has gone. as you drive round the corner of the road, you notice the cat reading the sign - no, looking at the sign; cats can't read maps or signs. The people on the street seem to be looking at you rather strangely.".
		

Part 2 - Work

Work is a scene.
work begins when the player is not in dursley's house.
work ends when the venture of work is success.
Grunnings is a region.
north of garden is the highway.
highway is a road.
the description is "[if the player is wearing wizards robes]As you sit in the usual morning traffic jam, you notice a lot of people around in robes. They seem to be surprised to see another person in robes on the road.[otherwise]As you sit in the usual morning traffic jam, you notice how there seem to be a lot of strangely dressed people about. people in cloaks.".
understand "elevator button" as elevatorbutton.
understand "button" as elevatorbutton.
person in cloak is a kind of person.
the plural of person in cloak is people in cloaks.
Grunnings Carpark is a multiroad in grunnings. it is west of the highway. "You can see the highway to the east. There is a small shop on the other side.".
red car is a vehicle in Grunnings Carpark. it is locked. the description is "This one seems to be a Daihatsu.".
blue car is a vehicle in Grunnings Carpark. it is locked. the description is "It's a Ford.".
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
		now the noun is open;
		now the description of the noun is "a smashed and battered car.";
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
elevator is a huge container. it is opaque. it is open. it is enterable. it is not portable. it is in Grunnings Carpark.
elevatorbutton is a device. it is in elevator. it is not portable. the printed name is "elevator button".
Officestairs is a stairs. it is above Grunnings Carpark and below corridor. the printed name is "stairs".
understand "stairs" as officestairs.
Officestairs is open and not openable.
level 1 is a region in grunnings. 
Work office is a room. it is in level 1.
the description of the office door is "you see an office door to the north with the words 'Vernon Dursley' on a plaque in front of it. [line break] there are other offices to either side of you.".
corridor is a room. it is in level 1. 
after reading a command when the player is in corridor:
	if the player's command includes "get in":
		unless elevator is in corridor:
			say "The elevator seems to be being used at the moment. There are stairs, you know. do you know what they are?" instead;
	otherwise if the player's command includes "push":
		unless elevator is in corridor:
			say "The elevator seems to be being used at the moment. There are stairs, you know. do you know what they are?" instead;	
	otherwise if the player's command includes "elevator":
		unless elevator is in corridor:
			say "The elevator seems to be being used at the moment. There are stairs, you know. do you know what they are?" instead;
	otherwise if the player's command includes "press":
		unless elevator is in corridor:
			say "The elevator seems to be being used at the moment. There are stairs, you know. do you know what they are?" instead.
understand "press [switch]" as switching on .
understand "push [switch]" as switching on.	
understand "press [button]" as switching on .
understand "push [button]" as switching on.
understand "press [start button]" as switching on .
understand "push [start button]" as switching on.
understand "press [elevatorbutton]" as switching on .
understand "push [elevatorbutton]" as switching on.
does the player mean switching on elevatorbutton: it is very likely.	
after switching on elevatorbutton when in elevator:
	unless the location is corridor:
		say "You go up the elevator. when you look out of the elevator, you see there are offices to either side of you.";
		now elevator is in corridor;
		now player is in elevator;
	otherwise if player is in elevator:
		say "You go down the elevator, back to the carpark.";
		now elevator is in carpark;
		now player is in elevator;
	otherwise:
		continue the action.
after switching on elevatorbutton when not in elevator:
	say "Since you pressed the button without getting in, you have to wait for the elevator to come back to the [location].";
	if glulx timekeeping is supported:
		wait 5000 milliseconds before continuing, strictly;
	say "The elevator comes back to the [location] with a soft pinging noise.";
		
every turn during uncle vernon's scene:
	if elevatorbutton is switched on:
		now the elevatorbutton is switched off.
		
every turn during uncle vernon's scene:
	if player is in car:
		if car is in Grunnings Carpark:
			if car has not been in Grunnings Carpark for at least one turn:
				say "you see few cars in the Carpark today. Must be lots of people skipping work today. Slackers. It's people like them that keep our profits down... ".

before going north when in corridor for the first time:
	if the time of day is at least 8:30 am:
		say "As you walk in, the Boss comes up to you. 'Late again, Dursley?' He says. 'Well, i hope this is the last time. Make sure you are here at 8:30 Tomorrow, On The Dot.'[paragraph break]";
		if glulx timekeeping is supported:
			wait 2000 milliseconds before continuing;
		say "[no line break]".
			
office door is a door. it is north of the corridor and south of work office.
the description of work is "[first time]As you enter your office, [only]You can see your desk, with a phone on it.". 
desk is a huge supporter in work office.
understand "ring [a number]" as dialling it on.
workwindow is a medium thing in work office. the printed name is "a window". it is fixed in place. the description is "as you look out the window, you see [one of]a large tawny owl[or]a flock of small brown owls[or]a small white owl[or]a large white owl[or]a ginger cat with bandy legs[purely at random] flutter past.".
understand "look out [workwindow]" as examining.
understand "window" as workwindow.
using is an action applying to one thing.
understand "use [something]" as using.
instead of taking the office phone when player's command includes "Pick up phone" for the first time:
	say "As you go to pick up the phone, it rings. You pick it up.";
	try dialling 893 on office phone.
carry out using phone for the first time:
	say "As you go to pick up the phone, it rings. You pick it up.";
	try dialling 893 on office phone.
understand "hang up phone" as hanging up.
the office phone is a telephone. it is not portable. it is on the desk. the description of office phone is "Your battle scarred telephone, scratched from years of rage at wrong numbers and irritating customers.".
the calling number of office phone is 55527586.
a Customer is a person. mobilel is a telephone. the calling number of mobilel is 893. the owner of mobilel is customer.
ics document is a small thing on desk. The printed name is "an important customer service document".The description is "To do your job properly:[paragraph break]Unless the person is Mr Mason, or another experienced customer:[line break]First step:[line break]tell the customer to 'call 8953'. [line break]Next step:[line break]Tell them to 'ask for a [one of]HAL 6502[or]Bk 44 model T[or]T1000[purely at random]', our priciest model.(Don't tell them about it being pricey)[line break]".
rule for printing the name of ics document when taking ics document: say "the important customer service document".


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
5550168	"'Hello, this is Xander speaking... Hello? Hello? Who is this? Damn, i shouldn't have tried to fix the phone myself... Anya! Come here for a minute!'"
5550193	"Beep...Beep...Beep... i guess someone didn't pay their phone bill."
8953	"Hello. Would you like to buy... hang on... isn't that a number from our building? Yeah, it's that no good Dursley fellow! he's always prank calling us!".

bored is a number that varies. bored is 0.
every turn during customercall:
	if bored is 5:
		say "The customer gets bored and hangs up. 'If you remember, call me at 893.'";
		try saying goodbye to the customer;
		try silently hanging up;
		now bored is 0;
		now lexicon is table 1.
		
every turn during mrmason call:
	if rollerdex is familiar:
		unless dialyes/no is 1:
			if bored is at least 5:
				if office phone is inuse:
					say "Mr. Mason gets bored and hangs up. 'If you remember, call me at 12856.'";
					now the current interlocutor is nothing;
					try silently hanging up;
					now bored is 0;
					now lexicon is table 1.
			
every turn during uncle vernon's scene:
		increment bored.


instead of swearing obscenely or swearing mildly when dialyes/no is 1:
	unless the venture of customercall is success:
		say "'Well, my number is 893. Call me back if you ever gain a civil tongue. '";
		try saying goodbye to the customer;
		try hanging up;
		now lexicon is table 1 instead.

customercall is a scene.
customercall begins when dialyes/no is 1.
customercall ends when the venture of customercall is not incomplete.

dialyes/no is a number that varies. dialyes/no is 0.
after dialling 893 on the office phone:
	now dialyes/no is 1.
	
before hanging up when dialyes/no is 1:
	now dialyes/no is 0;
	now bored is 0;
	now lexicon is table 1.
	
after exiting from work office:
	unless dialyes/no is 0:
		now dialyes/no is 0;
		try saying goodbye to;
		try hanging up.
	
after teleporting to a noun:
	unless the noun is work office:
		unless dialyes/no is 0:
			now dialyes/no is 0;
			try silently hanging up.
		
after moving to:
	unless the second noun is work office:
		unless the second noun is in work office:
			unless dialyes/no is 0:
				now dialyes/no is 0;
				try silently hanging up.

every turn when the player is not in work office:
	now office phone is not inuse.
The lexicon is a table name that varies. The lexicon is Table 1.
[fix up the questions so they are all yes or no questions]

Table 1 - customer responses 
Topic	Customer
"good"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"great"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"epic"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"awesome"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"fine"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"well"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"bad"	"'[one of]That's no good! Now, how do I order the drill?[or]How awful. Now, how do i order the drill?[or]Great. Now, how do I make an order?[as decreasingly likely outcomes]'"
"terrible"	"'[one of]That's no good! Now, how do I order the drill?[or]How awful. Now, how do i order the drill?[or]Great. Now, how do I make an order?[as decreasingly likely outcomes]'"
"i feel good"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"i feel great"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"i feel epic"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"i feel awesome"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"i feel fine"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"i feel well"	"'[one of]Great. Now, how do I order the drill?[or]Wonderful. Now, how do i order the drill?[or]Now, how do I make an order?[purely at random]'"
"i feel bad"	"'[one of]That's no good! Now, how do I order the drill?[or]How awful. Now, how do i order the drill?[or]Great. Now, how do I make an order?[as decreasingly likely outcomes]'"
"i feel terrible"	"'[one of]That's no good! Now, how do I order the drill?[or]How awful. Now, how do i order the drill?[or]Great. Now, how do I make an order?[as decreasingly likely outcomes]'"


Table 2 - customer responses 2
Topic	Customer
"Call 8953"	"'Ok. And then what?' Asks the customer."
"Try calling 8953"	"'Ok. And then what?' Asks the customer."
"Try dialling 8953"	"'Ok. And then what?' Asks the customer."
"Try ringing 8953"	"'Ok. And then what?' Asks the customer."	

Table 4 - first half customer responses 3
Topic	Customer
"Call 8953"	"'Ok. And then what?' Asks the customer."
"Try calling 8953"	"'Ok. And then what?' Asks the customer."
"Try dialling 8953"	"'Ok. And then what?' Asks the customer."
"Try ringing 8953"	"'Ok. And then what?' Asks the customer."

table 5 - second half customer responses 3
Topic	Customer
"ask them for the Bk 44 model T"	"'Ok, Thanks. I'll do that.'"
"ask them for the HAL 6502"	"'Ok, Thanks. I'll do that.'"
"ask them for the Qz 77"	"'Ok, Thanks. I'll do that.'"
"ask them for the T1000"	"'Ok, Thanks. I'll do that.'"

responding to customer is an action applying to one topic.
understand "and [text]" as responding to customer when lexicon is table 5.
understand "ask [text]" as responding to customer when lexicon is table 5.
understand "try [text]" as responding to customer when lexicon is table 5.
understand "then [text]" as responding to customer when lexicon is table 5.
understand "get [text]" as responding to customer when lexicon is table 5.
understand "next[text]" as responding to customer when lexicon is table 5.
carry out responding to customer when lexicon is table 5:
	if the player's command includes "HAL":
		if the player's command includes "6502":
			try asking the customer about "ask them for the hal 6502";
	otherwise if the player's command includes "Bk":
		if the player's command includes "44":
			try asking the customer about "ask them for the hal 6502";
	otherwise if the player's command includes "Qz":
		if the player's command includes "77":
			try asking the customer about "ask them for the hal 6502";
	otherwise if the player's command includes "T1000":
		try asking the customer about "ask them for the hal 6502";
	otherwise:
		continue the action.
before asking or implicit-imploring or implicit-asking when lexicon is table 5:
	if the player's command includes "HAL":
		if the player's command includes "6502":
			try asking the customer about "ask them for the HAL 6502" instead;
	otherwise if the player's command includes "Bk":
		if the player's command includes "44":
			try asking the customer about "ask them for the hal 6502";
	otherwise if the player's command includes "Qz":
		if the player's command includes "77":
			try asking the customer about "ask them for the hal 6502";
	otherwise if the player's command includes "T1000":
		try asking the customer about "ask them for the hal 6502";
	otherwise:
		continue the action.
before asking the customer about a topic listed in the lexicon when lexicon is table 1:
	now bored is 0;
	now the lexicon is table 2;
	say "[customer entry][paragraph break]" instead.
understand "sure" or "fine" or "you can" or "sure you can" or "ok" or "yes you can" or "why not" as saying yes.
		
before saying yes during customercall:
	if dialyes/no is 1:
		if lexicon is table 2:
			now bored is 0;
			now the lexicon is table 4;
			say "'Great. Now, how do i get it?'" instead;
	otherwise:
		do nothing.
to say mason drill specifics:
	say "[if first digit is 1]work with large, tough, unweildy bolts[no line break][otherwise if first digit is 2]work with large, tough, unweildy bolts[no line break][otherwise if first digit is 3]working with small, fiddly screws[no line break][otherwise if first digit is 4]working with small, fiddly screws[no line break][otherwise if first digit is 5]hardiness and ability to withstand impact[no line break][otherwise if first digit is 6]hardiness and ability to withstand impact[no line break][otherwise]its low price[no line break][end if][no line break]?'" .
		
before saying no during uncle vernon's scene:
	if lexicon is table 2:
		if dialyes/no is 1:
			now bored is 0;
			now the lexicon is table 1;
			say "'Oh... ok. Thanks. If you remember, call me at 893.'";
			try saying goodbye to customer;
			try hanging up instead;
	otherwise if lexicon is table 2:
		if dialyes/no is 0:
			now bored is 0;
			now the lexicon is table 1;
			say "'Oh... ok. Thanks. If you remember, call me at 12856.'";
			try saying goodbye to mr mason;
			try hanging up instead;
	otherwise:
		do nothing.
		
before asking the customer about a topic listed in lexicon when lexicon is table 2:
	say "[customer entry]";
	now bored is 0;
	now lexicon is table 5 instead.	
		
before asking the customer about a topic listed in lexicon when lexicon is table 4:
	say "[Customer entry]";
	now bored is 0;
	now lexicon is table 5 instead.
before asking the customer about a topic listed in table 5 when lexicon is table 5:
	say "[customer entry]";
	now bored is 0;
	now lexicon is table 1;
	now the venture of customercall is a success;
	try hanging up instead.
	
venture is a kind of value. all scenes have a venture. The ventures are success and failure and incomplete and pending and half-complete. the venture of a scene is usually incomplete.

understand "try dialling [a number]" as dialling it on.
understand "try calling [a number]" as dialling it on.
understand "try ringing [a number]" as dialling it on.
before dialling 8953 on office phone when dialyes/no is 1:
	try asking the customer about "call 8953" instead.

rule for printing a parser error when dialyes/no is 1:
	increment bored;
	say "The customer doesn't understand you. Much like the rest of the world." instead.

saying is an action applying to one topic.
understand "[text]" as saying when dialyes/no is 1.

carry out saying:
	try asking the customer about it.
before asking the customer about a topic when dialyes/no is 1:
	increment bored;
	say "[one of]The customer doesn't understand you. Much like the rest of the world.[or]That seems like a rather pointless, if typical, thing for you to say. [as decreasingly likely outcomes]" instead.
instead of answering the customer that:
	try asking the noun about it.
instead of telling the customer about a topic:
	try asking the noun about it.
instead of saying hello to the customer for at least the second time:
	if the player's command includes "good":
		unless the player's command includes "morning":
			try asking the customer about "good";
	otherwise:
		say "'Hello again. How are you?'".

		
does the player mean saying hello to:
	if the player's command includes "good":
		unless the player's command includes "morning":
			it is very unlikely.

A chair is a kind of supporter. A chair is always enterable. Every chair allows seated.
office chair is a chair in office.
Rollerdex is a small thing on desk. the printed name is "a rolodex".
understand "rolodex" as rollerdex.
understand "roller" or "dex" as rollerdex.
the description of rollerdex is "Tuesday[paragraph break]Work for today:[paragraph break]Answer two customer phone calls:[line break]First call[if the venture of customercall is success]: [bold type]achieved[roman type][otherwise if the venture of customercall is failure]: [bold type]failed[roman type][otherwise].[end if][line break]Second call[if the venture of mrmason call is success]:[bold type]	achieved[roman type][otherwise if the venture of mrmason call is failure]:[bold type]	failed[roman type][otherwise if the venture of mrmason call is pending]:[bold type]	pending[roman type][otherwise].[end if]".
flipping is an action applying to one thing.
understand "flip [rollerdex]" as flipping.
understand "turn [rollerdex]" as flipping.
before doing anything to rollerdex for the first time:
	unless the current action is examining:
		unless the current action is flipping rollerdex:
			say "while [current action], you inadvertantly flip the rollerdex to a random page.[line break]";
			now the description of rollerdex is "[rollentrypermanent]";
			now rollentrypermanent is "[rollerdexentry]" instead.
before doing anything to rollerdex for at least the second time:
	if a random chance of 3 in 4 succeeds:
		unless the current action is examining:
			unless the current action is flipping rollerdex:
				say "while [current action], you inadvertantly flip the rollerdex to a random page.[line break]";
				now the description of rollerdex is "[rollentrypermanent]";
				now rollentrypermanent is "[rollerdexentry]" instead;
	otherwise:
		unless the current action is examining:
			unless the current action is flipping rollerdex:
				say "while [current action], you flip the rollerdex back to today's page.[line break]";
				now the description of rollerdex is "Tuesday[paragraph break]Work for today:[paragraph break]Answer two customer phone calls:[line break]First call[if the venture of customercall is success]: [bold type]achieved[roman type][otherwise if the venture of customercall is failure]: [bold type]failed[roman type][otherwise].[end if][line break]Second call[if the venture of mrmason call is success]:[bold type]	achieved[roman type][otherwise if the venture of mrmason call is failure]:[bold type]	failed[roman type][otherwise if the venture of mrmason call is pending]:[bold type]	pending[roman type][otherwise].[end if]" instead.
carry out flipping for the first time:
	say "you flip the rollerdex to a random page.";
	now the description of rollerdex is "[rollentrypermanent]";
		now rollentrypermanent is "[rollerdexentry]" instead.
carry out flipping for at least the second time:
	if a random chance of 3 in 4 succeeds:
		say "you flip the rollerdex to a random page.";
		now the description of rollerdex is "[rollentrypermanent]";
		now rollentrypermanent is "[rollerdexentry]" instead;
	otherwise:
		say "you flip the rollerdex back to today's page.";
		now the description of rollerdex is "Tuesday[paragraph break]Work for today:[paragraph break]Answer two customer phone calls:[line break]First call[if the venture of customercall is success]: [bold type]achieved[roman type][otherwise if the venture of customercall is failure]: [bold type]failed[roman type][otherwise].[end if][line break]Second call[if the venture of mrmason call is success]:[bold type]	achieved[roman type][otherwise if the venture of mrmason call is failure]:[bold type]	failed[roman type][otherwise if the venture of mrmason call is pending]:[bold type]	pending[roman type][otherwise].[end if]".	
		
table 6 - rollerdex entries day
Day	
"Monday"
"Tuesday"
"Wednesday"
"Thursday"
"Friday"
"Saturday"
"Sunday"

table 7 - rollerdex entries month
Month
"January"
"February"
"March"
"April"
"May"
"June"
"July"
"August"
"September"
"October"
"November"
"December"

table 8 - rollerdex entries days of months
DOM
"2nd"
"3rd"
"4th"
"5th"
"6th"
"7th"
"8th"
"9th"
"10th"
"11th"
"12th"
"13th"
"14th"
"15th"
"16th"
"17th"
"18th"
"19th"
"20th"
"21st"
"22nd"
"23rd"
"24th"
"25th"
"26th"
"27th"
"28th"

rollentrypermanent is indexed text that varies. 
when play begins:
	now rollentrypermanent is "[rollerdexentry]".

to say rollerdexentry:
	choose a random row from table 6;
	say "[Day entry] ";
	choose a random row from table 7;
	say "[month entry] ";
	choose a random row from table 8;
	say "[DOM entry] 1981[paragraph break]Call [one of]Doc Brown at 5554385[or]Mr Plow at 5553226[or]The Simpsons at 5558707[or]The Ghostbusters at 5552368[or]Buffy at 5550101[or]God at 5550123[or]Xander at 5550168[or]Dawn at 5550193[purely at random]";

	
after examining ics document:
	unless office phone is inuse:
		if the venture of customercall is incomplete:
			if glulx timekeeping is supported:
				wait 2000 ms before continuing;
			say "As you go about looking at the document, the phone rings. How convenient.[line break]You pick up the phone.[paragraph break]Hello? Says the voice on the other end of the line. ";
			now dialyes/no is 1;
			now bored is 0;
			try dialling 893 on the office phone.
the description of desk is "A standard work desk.".

after saying hello to the customer:
	now bored is 0;
	say "'Hello. How are you?'".
	
filing cabinet is a large thing in work office. it is fixed in place. the printed name is "a filing cabinet".
fcdrawer is a medium container. it is part of filing cabinet. it is closed and openable. the printed name is "Drawer".
understand "drawer" as fcdrawer.
understand "drawers" as fcdrawer.
before opening filing cabinet, try opening fcdrawer instead.
before examining filing cabinet, try opening fcdrawer instead.
instead of opening fcdrawer, say "as you open the drawer, you see [one of]your complaints section, which takes a whole drawer on it's own[or]some boring papers to send off[or]some work that you filed yesterday[or]your collection of the yearly editions of 101 pompous complaints[or]a paper on which is written:[line break]The latest drill models - The Bk 44 model T, The Qz  77, the T1000, and the HAL 6502.[line break]The Bk 44 model T is reccomended for hard work and long lasting life.[line break]The Qz 77 is reccomended for it's low, low price.[line break]The HAL 6502 is reccomended for use with smaller screws and where finesse is needed.[line break]The T1000 is reccomended for use with large bolts and large scale work[or]a paper on which is written:[line break]The latest drill models - The Bk 44 model T, The Qz  77, the T1000, and the HAL 6502.[line break]The Bk 44 model T is reccomended for hard work and long lasting life.[line break]The Qz 77 is reccomended for it's low, low price.[line break]The HAL 6502 is reccomended for use with smaller screws and where finesse is needed.[line break]The T1000 is reccomended for use with large bolts and large scale work[purely at random].". 
the description of filing cabinet is "A typical filing cabinet, full of unanswered complaints that you still need to send to the relevant people.".

instead of dialling 893 on office phone when the venture of customercall is success:
	say "Unless there's something important to tell the customer, i wouldn't reccomend it.".

instead of dialling 12856 on office phone when the venture of mrmason call is success:
	say "Unless there's something important to tell Mr Mason, i wouldn't reccomend it.".

[Mr mason's phone call]
table 9 - drill order part of mrmason call
Topic	Mason
"Xc912"	"'Thanks.'"
"Xc914"	"That doesn't sound right... I think that range is suited for something else."

table 10 - chatting part of mrmason call
topic	Mason
"Xc913"	"'Well, goodbye Dursley.'"

Mrmason call is a scene.				
mrmason call begins when the phone is inuse.
after reading a command during work:
	unless the command prompt is "What do you want to write: ": 
		if the venture of work is incomplete:
			let T be indexed text;
			let T be the player's command;
			replace the regular expression "\p" in T with "";
			change the text of the player's command to T.
mrmason call ends when the venture of mrmason call is not incomplete.
Mr Mason is a person. the printed name is "Mr. Mason".
Mason's phone is a telephone. the owner of mason's phone is Mr Mason. the calling number of Mason's phone is 12856.
after examining rollerdex:
	if the venture of Mrmason call is incomplete:
		unless the phone is inuse:
			say "After reading the rolodex, you look out the window to see an owl perched on the windowsill. How strange.[paragraph break]";
			if glulx timekeeping is supported:
				wait 2000 ms before continuing;
			now bored is 0;
			say "The phone rings[if dialyes/no has been 1] again[end if].";
			try dialling 12856 on office phone.

after saying hello to mr mason:
	 say "'Hello Dursley. This is Mr. Mason.'[paragraph break]";
	 if glulx timekeeping is supported:
		 wait 2000 milliseconds before continuing;
	 say "'Can I order another 50 drills? the last ones where excellent.'";
	 now bored is 0;
	 now the lexicon is table 2.
	 
before saying yes during mrmason call:
	if lexicon is table 2:
		now bored is 0;
		now the lexicon is table 9;
		say "'That's great. Now, what drills would you reccomend for [mason drill specifics]" instead;
	otherwise:
		do nothing.
	
understand "try [text]" as responding to customer when lexicon is table 9.
understand "I [text]" as responding to customer when lexicon is table 9.
understand "reccomend [text]" as responding to customer when lexicon is table 9.
understand "the [text]" as responding to customer when lexicon is table 9.
understand "a [text]" as responding to customer when lexicon is table 9.
understand "HAL [text]" as responding to customer when lexicon is table 9.
understand "T1000" as responding to customer when lexicon is table 9.
understand "BK [text]" as responding to customer when lexicon is table 9.
understand "Qz [text]" as responding to customer when lexicon is table 9.
understand "[text]" as responding to customer when lexicon is table 10.
carry out responding to customer when lexicon is table 9:
	if first digit is 3:
		if the player's command includes "HAL 6502":
			try responding to customer "Xc912";
	otherwise if first digit is 4:
		if the player's command includes "HAL 6502":
			try responding to customer "Xc912";
	otherwise if first digit is 1:
		if the player's command includes "T1000":
			try responding to customer "Xc912";
	otherwise if first digit is 2:
		if the player's command includes "T1000":
			try responding to customer "Xc912";
	otherwise if first digit is 5:
		if the player's command includes "Bk 44":
			try responding to customer "Xc912";
	otherwise if first digit is 6:
		if the player's command includes "Bk 44":
			try responding to customer "Xc912";
	otherwise if the player's command includes "Qz 77":
		try responding to customer "Xc912".
		
report responding to customer when lexicon is table 9:
	unless responding to customer "xc912":
		say "'That doesn't sound right... I think that range is suited for something else.'[line break]".
		
before responding to customer a topic listed in the lexicon when the lexicon is table 9:
	say "[mason entry][paragraph break]";
	if glulx timekeeping is supported:
		wait 1500 ms before continuing;
	say "Mr. Mason continues. 'You know, we've been having a lot of strange events today. Our building site is continually being swooped by owls, even during the day. And there's also some other strange things happening. Shooting stars and the likes.'";
	now lexicon is table 10 instead.
	

before doing anything except hanging up or saying goodbye to when lexicon is table 10:
	say "'Hmmm... Well, goodbye Dursley.'";
	now the venture of mrmason call is success;
	now lexicon is table 1;
	rule succeeds;
	try hanging up.
before responding to customer when lexicon is table 10:
	say "'Hmmm... Well, goodbye Dursley.'";
	now lexicon is table 1;
	now the venture of mrmason call is success;
	try hanging up instead.
after reading a command when the lexicon is table 10:
	let T be indexed text; 
	let T be the player's command; 
	replace the regular expression "\p" in T with ""; 
	change the text of the player's command to T. 
	
instead of swearing obscenely or swearing mildly when office phone is inuse:
	if dialyes/no is 0:
		unless the venture of customercall is success:
			say "'My number is 12586. call me back if you ever gain a civil tongue.' Says Mr. Mason, rather coldly.";
			try saying goodbye to mr mason;
			try hanging up.
	
a writeable is a kind of thing.
notepad is a writeable on desk. 
notepad desc is indexed text that varies. notepad desc is "The notepad has never been written in, and is blank.".
the description of notepad is "[notepad desc]".
penquill is a kind of thing.
pen is a penquill on desk.
understand "[text]" as "[writeable desc]".
written on is indexed text that varies. 
writing intro is an action applying to one thing.
understand "write on [any thing]" as writing intro.
understand "write in [any thing]" as writing intro.
carry out writing intro:
	if the noun is a writeable:
		say "[no line break]";
		now the command prompt is "What do you want to write: ";
	otherwise:
		say "You can't write on that.".

carry out writing on when the command prompt is "What do you want to write: ":
	say "You write '[the player's command]'.[line break]";
	now notepad desc is the player's command instead.
before doing anything when the command prompt is "What do you want to write: ":
	unless the player's command includes "write on":
		unless the player's command includes "write in":
			now the command prompt is ">";
			say "You write '[the player's command]'.[line break]";
			now notepad desc is the player's command instead;
			continue the action.
understand "write [text] on [something]" as a mistake ("You can't write like that - say 'write on [noun]', and on the next turn say  '[bracket]some text[close bracket]'.").
understand "write on [something] with [something]" as a mistake ("You can't write like that - say 'write on [noun]', and on the next turn say '[bracket]some text[close bracket]'.").
understand "write [text] in [something]" as a mistake ("You can't write like that - say 'write in [noun]', and on the next turn say  '[bracket]some text[close bracket]'.").
understand "write in [something] with [something]" as a mistake ("You can't write like that - say 'write in [noun]', and on the next turn say '[bracket]some text[close bracket]'.").
writing on is an action applying to one topic.
understand  "[text]" as writing on when the command prompt is "What do you want to write: ".
before writing intro:
	if the player is carrying a penquill:
		continue the action;
	otherwise:
		say "You can't write on something without a pen." instead.

	
After reading a command when the command prompt is "What do you want to write: ":
	if word at the start of the player's command includes "write":
		cut the matched text;
		now notepad desc is the player's command;
		say "You write '[player's command]'";
		now the command prompt is ">" instead;
	otherwise:
		now notepad desc is the player's command;
		now the command prompt is ">";
		say "You write '[player's command]'" instead.
		

		
test me with "Orion/stats/Get up/open drawer/read paper/take paper/open wardrobe/look in mirror/wear muumuu/look in mirror/e/stats/go up stairs/read diary/read letter/open box/take cookbook/read history/go down stairs/e/stats/take broom/look at broom/ride broom/fly w/go through white door/stats/say hello to petunia/eat dudley/eat toast/drink coffee/open fridge/n/n/stats/look/w/stats/get off/get in elevator/press button/get out/stats/n/stats/call 893/hello/good/sure/call 8953/try asking for a hal 6502/call 12856/hello/wait/sure/try the hal 6502/try the t1000/try the qz 77/try the bk 44 model t/wait/hmmm.../read dex/flip dex/read dex/call 5552368/take pen/take coin/take coin/write on notepad/Write Major irrelivancies/s/press button/wait/get in elevator/press button/get out/e/go through shop door/stats/look at shop attendant/look/buy roll/pay coin/eat roll/w/w/go up/n/wait/s/go down/mount broom/e/s/get off broom/s/hello petunia/w/sit down/turn on tv/wait/look couch".

test two with "Orion/gonear carpark/gonear work/call 893/hello/good/call 8953/ask for a t1000/read rolodex/hello/wait/sure/try the T1000/try the hal 6502/try the qz 77/try the bk 44 model t/hmmm.../take coins/s/go down/e/e/buy roll/pay coin/w/w/go up/n/wait/gonear living-room/turn on tv".

does the player mean doing anything to living-room: it is likely.
every turn during work:
	if the venture of customercall is success:
		if the venture of mrmason call is success:
			unless the venture of work is half-complete:
				now the time of day is 12:30 AM;
				if glulx timekeeping is supported:
					wait 1000 ms before continuing;
				say "Your boss walks into the office. 'Good Job', he says. 'I see you've made a few good sales. go, take a break. have some lunch.'.";
				now the venture of work is half-complete.
				
Section 1 - Stats - Not for release

the file of Error reports is called "Errors".
error reporting is an action applying to one topic.
understand "report error [text]" as error reporting.
error report retrieving is an action applying to nothing.
understand "error report" as error report retrieving.
understand "error reports" as error report retrieving.
understand "all error report" as error report retrieving.
understand "all error reports" as error report retrieving.
carry out error report retrieving:
	if the player's command includes "all":
		say "All error reports:[line break][text of the file of error reports]";
	otherwise:
		say "This game's error reports:[line break][text of the file of current error reports][line break]".
error number is a list of indexed text that varies. 
file of current error reports is called "currenterrors".
rule for printing a parser error when the player's command includes "report error":
	cut the matched text;
	say "Error noted.";
	append "Game tester: [gametester]. Error [number of entries in error number plus 1][no line break]: [the player's command][line break]" to the file of error reports;
	add "," to error number;
	append "Error [number of entries in error number plus 1][no line break]: [the player's command]" to file of current error reports instead.	
carry out error reporting:
	if the player's command includes "report error":
		cut the matched text;
		say "Error noted.";
		append "Error [number of entries in error number plus 1][no line break]: [the player's command][line break]" to file of current error reports;
		add "," to error number;
		append "Game tester: [gametester]. Error [number of entries in error number][no line break]: [the player's command][line break]" to the file of error reports.
statisticing is an action out of world. understand "stats" as statisticing.
understand "room stats" as statisticing.
understand "object stats" as statisticing.
carry out statisticing:
	if the player's command includes "room":
		say "You have been to [number of visited rooms] out of [number of rooms] room[s].[paragraph break]";
		repeat with item running through rooms:
			say "[item] is [if item is visited]Visited[line break][otherwise]not visited[line break]";
	otherwise if player's command includes "object":
		say "You have seen [number of seen things]:[line break]You know of [number of known things]:[line break]You are familiar with [number of familiar things]:[line break] things out of [number of things]";
	otherwise:
		say  "dialyes/no is [dialyes/no][line break]lexicon current table is [lexicon][line break]the venture of customercall is [venture of customercall][line break]office phone is [if office phone is inuse]Inuse[otherwise]not Inuse[end if][line break]The venture of mrmason call is [venture of mrmason call][line break]mobilel is [if mobilel is inuse]inuse[otherwise]not inuse[end if][line break]last turn's action was [whist][line break]Bored is [bored][line break]The three digit number lock is [random lock number][line break]The tumblers are [tumbler arrangement][line break]the venture of work is [venture of work][line break]added score is [added score][line break]player's command: [player's command][line break]Play success is [play_success][line break]The location is [location][line break]Current region is [map region of the location][line break]Credit is [credit][line break]venture of work is [venture of work][line break]Remembered product is [remembered product][line break]Current interlocutor is [current interlocutor]";

			
whist is a stored action that varies.
before doing anything:
	unless current action is statisticing:
		now whist is current action.
after reading a command when the player's command includes "gonear work":
	unless player has been in carpark:
		move player to grunnings carpark, without printing a room description;
		continue the action.
Clearing error report is an action out of world.
understand "clear error reports" as clearing error report.
understand "clear all error reports" as clearing error report.
carry out clearing error report:
	say "all error reports are now cleared.[line break]";
	write "" to file of error reports.
the file of player commands is called "allplayercommands".
when play begins:
	write "" to file of current error reports;
	write "" to file of current player commands.
gametester is indexed text that varies.
when play begins:
	now the command prompt is "Name: ".
after reading a command when the command prompt is "Name: ":
	unless the player's command includes "test":
		now gametester is the player's command;
		say "Your name for this pre-release test is '[gametester]'.[line break]";
		now the command prompt is ">" instead;
	otherwise:
		continue the action.
play_success is a number that varies. play_success is 0.
before doing anything:
	append "Action: [current action] [paragraph break]" to the file of player commands;
	append "Action: [current action] [paragraph break]" to the file of current player commands;
	continue the action.
after doing anything except clearing player command report:
	now play_success is 1;
	continue the action.
after reading a command:
	append "Game tester: [gametester][line break]Command: [player's command][line break]"  to the file of player commands;
	append "Game tester: [gametester][line break]Command: [player's command][line break]"  to the file of current player commands;
	now play_success is 0;
	continue the action.
reading player command report is an action out of world.
understand "all player reports" as reading player command report.
report reading player command report:
	say "[text of the file of player commands][line break]";
	continue the action.
reading current player command report is an action out of world.
understand "player report" as reading current player command report.
report reading current player command report:
	say "[text of the file of current player commands][line break]";
	continue the action.
clearing player command report is an action out of world.
understand "clear player reports" as clearing player command report.
understand "clear all player reports" as clearing player command report.
carry out clearing player command report:
	say "You clear the player report section.";
	write "" to file of player commands.
file of current player commands is called "currentplayereports".
				
Part 3 - Shopping and finishing work

after reading a command during uncle vernon's scene:
	if the player's command includes "cross road" :
		if the location is grunnings carpark:
			now the player is in street;
		otherwise if the location is street:
			now the player is in grunnings carpark.
after reading a command during uncle vernon's scene:
	if the player's command includes "cross highway":
		if the location is grunnings carpark:
			now the player is in street;
		otherwise if the location is street:
			now the player is in grunnings carpark.	
street is a room. "The grunnings building looms large to the west of you.".it is east of highway. 
bakery door is a door. the printed name is "a shop door". it is east of street and west of bakers.
rule for printing the name of bakery door when opening bakery door: say "the door".
rule for printing the name of bakery door when going through bakery door: say "the door".
understand "shop door" as bakery door.
after going through bakery door when the location is bakers:
	say "'Good morning! How may i help you, sir?' asks the shop attendant.";
	unless shop attendant is the current interlocutor:
		try silently saying hello to shop attendant.
Bakers is a room. the printed name is "The Baker's".
Shop attendant is an npcm in bakers. the description is "The nametag reads 'Hello! My Name is [italic type]Mr. Finnigan[roman type]'.".  He is improper-named.
understand "Mr Finnigan" as shop attendant when shop attendant is proper-named.
understand "Finnigan" as shop attendant when shop attendant is proper-named.
after examining shop attendant:
	now the printed name is "Mr. Finnigan";
	now shop attendant is proper-named.
a foods display case is a transparent closed container in bakers. it is fixed in place.
after examining foods display case, stop the action.
doughnut is a food in foods display case. the printed name is "[if doughnut is in foods display case]a [end if]doughnut".
understand "donut" as doughnut.
bun is food in foods display case. the printed name is "[if bun is in foods display case]a [end if]bun".
breadstick is food in foods display case. the printed name is "[if breadstick is in foods display case]a [end if]breadstick".
rule for printing the name of doughnut when taking doughnut: say "doughnut".
rule for printing the name of doughnut when giving doughnut to yourself: say "doughnut".
rule for printing the name of bun when taking bun: say "bun".
rule for printing the name of bun when giving bun to yourself: say "bun".
rule for printing the name of breadstick when taking breadstick: say "breadstick".
rule for printing the name of breadstick when giving breadstick to yourself: say "breadstick".
small roll is a kind of food. the plural of small roll is small rolls. 
there are 2 small rolls in foods display case.
pound coin is a kind of thing.
understand "pounds" as pound coin.
understand "pay [someone] [things preferably held]" as giving it to (with nouns reversed).
[Fix buying something with second coin, or remove second coin]
credit is a number that varies. credit is 0.
before giving the pound coin to the shop attendant: 
	if remembered product is not dursley:
		if remembered product is in foods display case:
			increment credit;
			try giving remembered product to the player;
	otherwise:
		increment credit;
		say "'Now, what do you want?'".
before giving something in foods display case to the player when in bakers:
	if the credit is at least 1:
		if the noun is in foods display case:
			move the noun to the player;
			say "'Ok. Here's your [noun].'";
			decrease credit by 1 instead;
		otherwise if a noun is in foods display case:
			move the noun to the player;
			say  "'Ok. Here's your [noun].'";
			decrease credit by 1 instead;
		otherwise if the noun is not in foods display case:
			say "'We're out of those, sorry.'" instead;
	otherwise: 
		say "'You need to pay for that. That'll be a pound.'" ;
		now remembered product is the noun instead.
remembered product is a object that varies.
when play begins:
	now remembered product is dursley.
wanting is an action applying to one thing.
understand "I want [something]" as wanting.
understand "Can i have [something]" as wanting.
before buying anything when in bakers, try giving the noun to the player instead.
before wanting, try giving the noun to the player instead.
there is two pound coins on desk.
instead of asking the shop attendant to try doing anything, try giving the second noun to the player.
instead of requesting the shop attendant for anything, try giving the second noun to the player.
persuasion rule for asking shop attendant to try doing anything: persuasion succeeds.
instead of looking when location is street:
	if bakers is visited:
		try listening instead;
	otherwise:
		continue the action.
after going to street when bakers is visited:
	say "[first time]As you stroll out of the shop, you notice another group of robed people standing further down the road. I wonder what they could be talking about talking about?[paragraph break][only][no line break]";
a procedural rule: if the player is in street, ignore the block listening rule.
after reading a command during uncle vernon's scene:
	if  the player is in street:
		if bakers is visited:
			if the player's command includes "look" for the first time:
				try listening to instead.
carry out listening when in street:
	if bakers is visited:
		say "You hear snatched whispers from the people in cloaks. 'The Potters, that's right, that's what i heard -'[line break]yes,  their son, Harry...'";
		reject the player's command;
	otherwise:
		continue the action.
		
before going north when the location is corridor:
	if bakers is visited:
		if the venture of work is half-complete:
			say "You rush over to the phone and pick it up, but part-way through putting in your home phone number, you realise that you're overreacting, and put the phone down.[paragraph break]";
			if glulx timekeeping is supported:
				wait 3000 ms before continuing;
			say "Still,you find it difficult to focus for the rest of the day. Why where the wizards talking about your sister's son?[paragraph break]";
			wait 2000 ms before continuing;
			say "Even though you have your chance to yell at a few people, your heart isn't in it.[line break]When the boss comes in to tell you that you can go home, you barely notice.";
			now the time of day is 5:00 pm;
			now the venture of work is success;
			continue the action.
after going to grunnings carpark when the venture of work is success for the first time:
	say "As you're a bit distracted, you don't see where you are going, and you bump into someone. [line break]'Sorry', you say gruffly, before realising that this small man is wearing a violet cloak.[paragraph break]";
	if glulx timekeeping is supported:
		wait 4000 ms before continuing;
	say "'[no line break]Don't be sorry, my dear sir, for nothing could upset me today![line break]Rejoice, for You-Know-Who has gone at last![line break]Even Muggles such as yourself should be celebrating, this happy, happy day!'[paragraph break][no line break]". 
does the player mean doing anything to car: it is likely.
does the player mean moving to car: it is likely.
after entering car:
	if the location is grunnings carpark:
		if the venture of work is success:
			say "As you get into the car, you hope that the events of today were all in your imagination, even though imagination is something which you do not approve of.";
	otherwise:
		continue the action.
after going to garden when the venture of work is success:
	now the description of garden is "You notice the cat from this morning sitting on the garden wall. Despite your attempts to shoo it away, it is still sitting there, looking sternly at you.".
carry out saying hello to petunia during uncle vernon's scene:
	if the venture of work is success:
		say "'Good afternoon. How was your day, Vernon?' Asks petunia.";
	otherwise:
		continue the action.
Living-room is a room in dursley's house. 
living-room door is a door. it is west of kitchen and east of living-room.
Armchair is a chair in living-room.
understand "chair" as armchair.
Couch is a chair in living-room.
after reading a command when the player's command matches "sit down":
	set pronouns from armchair;
	change the text of the player's command to "Sit on it".
Television is a device in living-room.
understand "TV" as television.
report switching on television:
	say "[if the venture of work is incomplete]You turn on the Television, but the only thing on is Children's shows.[otherwise]As you switch in the television, you are greeted with the sight of the last few minutes of the evening news.[paragraph break]'And finally, bird-watchers everywhere have reported that the nation's owls have been behaving very unusually today.[line break]Although owls normally hunt at night and are hardly ever seen in daylight, there have been hundreds of sightings of these birds flying in every direction since sunrise.[paragraph break]Experts are unable to explain why the owls have suddenly changed their sleeping pattern. Most mysterious.[paragraph break]And now, over to Jim McGuffin with the weather. Going to be any more showers of owls tonight, Jim?'.[paragraph break]";
	if glulx timekeeping is supported:
		wait 7000 ms before continuing;
	say "'Well, Ted, I don[']t know about that, but it's not only the owls that have been acting oddly today.[line break]Viewers as far apart as Kent, Yorkshire, and Dundee have been phoning in to tell me that instead of the rain I promised yesterday, they've had a downpour of shooting stars![line break]Perhaps people have been celebrating Bonfire Night early - it's not untill next week, folks! But I can promise a wet night tonight." instead.
