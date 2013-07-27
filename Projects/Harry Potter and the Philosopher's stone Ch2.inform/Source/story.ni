"Harry Potter and the philosopher's stone" by Orion Zymaris

part 0 - Test facilities - not for release

when play begins:
	now Harry Potter is wearing glasses;
	now bannerprinted is 1;
	now cheats_bin is 1;
	try silently exiting.
taking another person's inventory is an action applying to one visible thing.
understand "inv [any person]" as taking another person's inventory.
understand "inv of [any person]" as taking another person's inventory.
understand "i [any person]" as taking another person's inventory.
understand "i of [any person]" as taking another person's inventory.
understand "inventory [any person]" as taking another person's inventory.
understand "inventory of [any person]" as taking another person's inventory.
carry out taking another person's inventory:
	say "[noun] is carrying [list of things carried by noun]. [noun] is wearing [list of things worn by noun].".
requesting item location is an action applying to one visible thing.
understand "locate [any thing]" as requesting item location.
carry out requesting item location:
	if the noun is on-stage:
		say "[noun] is in [the printed name of the location of the noun].";
		say "[noun] is [if noun is engaged]engaged[otherwise]not engaged[end if].";
	otherwise:
		say "[noun] is off-stage.".
the file of part 2 Error reports is called "parttwoerrors".
error reporting is an action applying to one topic.
understand "report error [text]" as error reporting.
error report retrieving is an action applying to nothing.
understand "error report" as error report retrieving.
understand "error reports" as error report retrieving.
understand "all error report" as error report retrieving.
understand "all error reports" as error report retrieving.
carry out error report retrieving:
	if the player's command includes "all":
		say "All error reports:[line break][text of the file of part 2 error reports]";
	otherwise:
		say "This game's error reports:[line break][text of the file of part 2 current error reports][line break]".
error number is a list of indexed text that varies. 
file of part 2 current error reports is called "parttwocurrenterrors".
rule for printing a parser error when the player's command includes "report error":
	cut the matched text;
	say "Error noted.";
	append "Game tester: [gametester]. Error [number of entries in error number plus 1][no line break]: [the player's command][line break]" to the file of part 2 error reports;
	add "," to error number;
	append "Error [number of entries in error number plus 1][no line break]: [the player's command]" to file of part 2 current error reports instead.	
carry out error reporting:
	if the player's command includes "report error":
		cut the matched text;
		say "Error noted.";
		append "Error [number of entries in error number plus 1][no line break]: [the player's command][line break]" to file of part 2 current error reports;
		add "," to error number;
		append "Game tester: [gametester]. Error [number of entries in error number][no line break]: [the player's command][line break]" to the file of part 2 error reports.
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
when play begins:
	write "" to the file of part 2 current error reports.
clearing all error reports is an action out of world.
understand "clear error reports" as clearing all error reports.
understand "clear all error reports" as clearing all error reports.
carry out clearing all error reports:
	say "You clear the error report section.";
	write "" to file of part 2 error reports.
	
chapter 2 - The Vanishing Glass

current chapter is a number that varies. current chapter is 2.
venture is a kind of value. all scenes have a venture. The ventures are success and failure and incomplete and pending and half-complete. the venture of a scene is usually incomplete.
Dudley's birthday breakfast is a scene.
Dudley's birthday breakfast begins when play begins.
Dudley's birthday breakfast ends when the venture of Dudley's birthday breakfast is success.
Dursley's house is a region.
Harry Potter is a person. the player is Harry Potter.
Cupboard under the stairs is a room. it is in Dursley's house.
Include Rideable Vehicles by Graham Nelson.
Include Menus by Emily Short.
Include Snippetage by Dave Robinson.
Include mixed extensions by Orion Zymaris.
Include Epistemology by Eric eve.
Include Conversation Framework by Eric Eve.
Include Real-Time Delays by Erik Temple.
Include Telephones by George Tryfonas.
Include Postures by Emily Short.
Include Basic Screen Effects by Emily Short. 
Include After Not Doing Something by Ron Newcomb.
to say wait (T - a number) ms:
	if glulx timekeeping is supported:
		wait T ms before continuing.
to say itinerary:
	say "FIXME".
bannerprinted is a number that varies. bannerprinted is 0.
to say now bannerprinted is 1:
	now bannerprinted is 1.
before printing the banner text when bannerprinted is 0:
	clear the screen;
	say "[bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help.) Also, you can skip the intro and other cut scenes by pressing enter.[roman type][paragraph break]Nearly ten years had passed since the Dursleys had woken up to find their nephew in the front step, but Privet Drive had hardly changed at all. The sun rose on the same tidy front gardens and lit up the brass number four on the Dursley's front door; it crept into their living-room, which was almost exactly the same as it had been on the night when Mr Dursley had seen that fateful news report about the owls.[paragraph break][run paragraph on]";
	if glulx timekeeping is supported:
		wait 10000 ms before continuing;
		clear the screen;
	say "[if glulx timekeeping is supported][bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help.)[roman type][paragraph break][end if]Only the photographs on the mantlepiece really showed how much time had passed. Ten years ago, there had been lots of pictures of what looked like a large pink beach ball wearing different-coloured bobble hats - but Dudley Dursley was no longer a baby, and now the photographs showed a large, blond boy riding his first bicycle, on a roundabout at the fair, playing a computer game with his father, being hugged and kissed by his mother.[paragraph break][run paragraph on]";
	if glulx timekeeping is supported:
		wait 10000 ms before continuing;
		clear the screen;
	say "[if glulx timekeeping is supported][bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help.)[roman type][paragraph break][end if]The room held no sign at all that another boy lived in the house too.[line break]    Yet Harry Potter was still there, asleep at the moment, but not for long. His Aunt Petunia was awake and it was her shrill voice which made the first noise of the day.[paragraph break][run paragraph on]";
	if glulx timekeeping is supported:
		wait 10000 ms before continuing;
		clear the screen;
	say "Up! Get up! Now![run paragraph on]";
	if glulx timekeeping is supported:
		wait 3000 ms before continuing;
		clear the screen;
	now bannerprinted is 1.
when play begins:
	now turn count is 0.
after doing anything when the location is Cupboard under the stairs:
	if the turn count is 1:
		say "'Up!' Screeches Petunia.";
		now turn count is 2;
		continue the action;
	else:
		continue the action.
clothing is a kind of thing. clothing is wearable.
shirt is a kind of clothing. 
pants is a kind of clothing.
all people wear a shirt.
all people wear pants.
Aunt Petunia is a woman.  the description is "Aunt Petunia's even bossier than Uncle Vernon. She hates things being dirty.".
Uncle Vernon is a person. the description is "Large and porky, with very little neck, Uncle Vernon loves bossing you around. it's the only exercise he gets.".
newspaper is a thing. it is in kitchen. newspaper is undescribed.
understand "paper" as newspaper.
before taking newspaper:
	if Uncle Vernon is in kitchen:
		if location is kitchen:
			move newspaper to player;
			say "'Hey!' Says Uncle Vernon. 'Give that back!'" instead;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
rule for printing the name of uncle vernon when looking:
	if the location is kitchen:
		if newspaper is in kitchen:
			if player does not have newspaper:
				say "Uncle Vernon (hiding behind a newspaper)";
			otherwise:
				say "Uncle Vernon (looking annoyed)";
		otherwise:
			say "Uncle Vernon";
	otherwise:
		say "Uncle Vernon".
Dudley is a person. The description is "Larger than Uncle Vernon, who is not an inconsiderable size, Dudley would look like a pig in a wig if the average pig was a lot larger.".
Bed is a container in Cupboard under the stairs. it is open and not openable. it is unlocked and not lockable. Harry Potter is in bed.
The description of Cupboard under the stairs is "You can[if glasses are not worn] barely[end if] see a small, dark room with lots of spiders and your few measly possessions. Not as interesting as the dream you were having - There had been a flying motorbike in it. You have a funny feeling that you've had the same dream before...[if glasses are not worn][paragraph break]You need yout glasses.[end if]".
Hall is a room. It is in Dursley's house.
Cupboard door is a door. it is south of Cupboard under the stairs and north of Hall. it is closed and openable. it is unlocked and lockable.
a pair of socks is clothing in Cupboard under the stairs.
report wearing pair of socks:
	say "You flick a spider off the socks and hurriedly put them on." instead.
instead of taking inventory:
	if the player is carrying at least 6 things:
		continue the action;
	otherwise if the player is wearing at least 6 things:
		continue the action;
	otherwise:
		say "You are carrying [a list of things carried by the player][if the player wears something]. You are wearing [a list of things worn by the player][end if]." instead. 
before going south:
	if the location is cupboard under the stairs:
		if glasses are not worn:
			say "you need your glasses first!" instead.
a pair of shoes is clothing in Cupboard under the stairs.
Check wearing shoes:
	if socks are not worn:
		say "What, with no socks?" instead.
turn counting is an action applying to nothing.
understand "turn count" as turn counting.
carry out turn counting:
	say "[turn count]".
the description of Harry Potter is "You're rather small and skinny for your age... the only thing you like about your appearance is your lighting shaped scar.".
a chess set is a thing in Cupboard under the stairs. The description is "A battered old chess set you found in the corner of the cupbard. However boring it might be, it's less boring than being lectured by Uncle Vernon.".
playing is an action applying to one thing.
understand "play [something]" as playing.
report playing:
	say "how can you play that?".
report playing chess set:
	say "You get the chess set out and fiddle with it for a while.".
a roll of sellotape is a thing in Cupboard under the stairs. The description is "You thought you'd keep this after Dudley kept breaking your glasses.".
glasses is a thing in Cupboard under the stairs. it is wearable. The description is "At least they had the common decency to get you glasses. Then again, if they didn't, you'd be useless to them, wouldn't you? ".
after going through cupboard door for the first time:
	say "'Get a move on, I want you to look after the bacon. And don't you dare let it burn, I want everything perfect on Duddy's birthday.' [line break]You see the kitchen door slam as Petunia walks through and closes it. The sound of the frying pan being put on the cooker emenates from the kitchen. You'd better cook the breakfast.";
	continue the action.
groaning is an action applying to nothing.
understand "groan" as groaning.
report groaning when the location is hall:
	if the location of petunia is kitchen:
		say "'What did you say?' snaps Aunt Petunia.";
	else:
		say "You groan.".
every turn during dudley's birthday breakfast:
	if the map region of the location is dursley's house:
		if the location is not kitchen:
			if the time of day is 7:50 am:
				say "Aunt Petunia comes into the room and grabs you by the scruff of the neck, and drags you to the kitchen to cook Dudley's bacon.";
				move Harry Potter to the kitchen;
				now cooker is engaged;
			otherwise:
				continue the action;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
[every turn:
	say time of day.]
underlying relates various things to one thing.
the verb to underlie (he underlies, they underlie, he underlay, it is underlying, he is underlying) implies the underlying relation.
the verb to overlay (he is overlaying, they  overlay, he overlay, it is overlaying, he is overlaying) implies the reversed underlying relation.
putting it under is an action applying to two things.
understand "put [any portable thing] under [any thing]" as putting it under.
understand "hide [any portable thing] under [any thing]" as putting it under.
getting under is an action applying to one thing.
check putting it under:
	if the noun is underlying the second noun:
		say "That's already under there!";
		stop the action.
carry out putting under:
		now the noun is underlying the second noun;
		now the second noun is overlaying the noun;
		now the noun is off-stage;
		continue the action.
after putting under:
	now the noun is in location;
	now the noun is undescribed;
	continue the action.
report putting under:
		say "You put [noun] under [second noun].".
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
	now the left hand status line is "[score]/[turn count] [time of day]  [the player's surroundings]";
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
understand "tape" as sellotape.
clearing the screen is an action out of world.
understand "clear the screen" as clearing the screen.
carry out clearing the screen:
	clear the screen.
Kitchen is a room. it is in Dursley's house.
the description of kitchen is "[if Dudley is in kitchen]You see Dudley here, counting his presents.".
white door is a door. it is west of hall and east of kitchen.
after going through white door for the first time:
	now the printed name of white door is "the kitchen door";
	now cooker is engaged;
	say "Your Uncle makes a rare attempt to look at you and barks 'Comb your hair!' by way of a morning greeting.";
	continue the action.
understand "hello [person]" as saying hello to.
understand "goodbye [person]" as saying goodbye to.
understand "bye [person]" as saying goodbye to.
understand "bye" as a person.
understand  "howdy" as hailing.
understand "howdy [person]" as saying hello to.
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
Petunia is in kitchen.
food is a kind of thing. it is edible.
kitchen table is a thing in kitchen. 
the description of kitchen table is "Oh, there's the table! You couldn't see it under all of Dudley's presents.".
there are two pieces of toast on the table.
the description of toast is "this looks like it's been here for 10 years..." .
present is a kind of thing. there are 37 presents in kitchen.
the description of presents is "It looks as though Dudley got that new computer he wanted, not to mention his second television and the racing bike. Why would he want a bike though? The only exercise he enjoys is beating you up. Not that he can catch you very easily.".
after reading a command when the location is kitchen:
	if the player's command includes "take":
		if the player's command includes "present":
			say "You'd better not. Those are Dudley's.";
			rule succeeds;
		otherwise if the player's command includes "presents":
			say "You'd better not. Those are Dudley's.";
			rule succeeds;
		otherwise if the player's command includes "all":
			say "You'd better not. Those are Dudley's.";
			rule succeeds;
	otherwise if the player's command includes "steal":
		if the player's command includes "present":
			say "You'd better not. Those are Dudley's.";
			rule succeeds;
		otherwise if the player's command includes "presents":
			say "You'd better not. Those are Dudley's.";
			rule succeeds;
		otherwise if the player's command includes "all":
			say "You'd better not. Those are Dudley's.";
			rule succeeds.
understand "steal [things]" as taking.
instead of doing anything when the player's command includes "steal":
	say "That would be immoral.".
cooker is a thing in kitchen. it is not portable. the printed name is "a cooker".
rule for printing the name of cooker when going to:
	say "the cooker".
going to it is an action applying to one thing.
understand "go to [something]" as going to it.
things can be engaged or not engaged. things are usually not engaged.
carry out going to it:
	say "you move over to [noun].";
	now noun is engaged.
the description of cooker is "A cooker, as clean as the rest of Petunia's territory.".
the frying pan is a container. it is open and not openable. it is unlocked and not lockable. it is on cooker. the printed name of frying pan is "the frying pan".
Uncle Vernon is in kitchen.
instead of saying hello to aunt petunia:
	say "'What do you want?' she snaps.";
	rule succeeds.
instead of saying hello to Uncle Vernon:
	say "'Comb your hair!' barks Uncle Vernon.";
	rule succeeds.
cooking is an action applying to one thing.
egg is food. it is in frying pan.
bacon is food. it is in frying pan.
understand "food" as bacon when the location is kitchen.
understand "breakfast" as bacon when the location is kitchen.
understand "cook [something]" as cooking.
understand "make [something]" as cooking when the venture of Dudley's birthday breakfast is incomplete.
understand "fry [something]" as cooking when the venture of Dudley's birthday breakfast is incomplete.
carry out cooking when the location is kitchen:
	say "You cook the eggs and bacon.".
fridge is a container in kitchen. it is fixed in place. there are 6 eggs in fridge. fridge is closed and openable.
report dropping eggs:
	remove noun from play;
	say "you drop the egg[s] and can now see a small puddle of egg goo at your feet." ;
	if the map region of the location is Dursley's house:
		if petunia is in kitchen:
			say "'Clean that mess up!' screeches Aunt Petunia." instead.
test me with "get up/wear glasses/s/w".
before going during Dudley's birthday breakfast:
	if the location is kitchen:
		say "Dudley hasn't started his breakfast yet. You shouldn't go yet, if you care for your health." instead.
Dudley is in kitchen.
Piers polkiss is a person.
after doing anything when the location is kitchen during dudley's birthday breakfast:
	if Harry Potter is in kitchen for 3 turns:	
		say "The telephone rings in the living room. Aunt Petunia goes to get it.";
		now Aunt Petunia is in hall;
	otherwise if Harry Potter is in kitchen for 6 turns:
		now Aunt Petunia is in kitchen;
		say "Aunt Petunia enters the kitchen looking angry and worried. 'Bad news, Vernon. Mrs Figg's broken her leg. She can't take him' she says, jerking her head towards you. Dudley looks horrified. 'He's not coming on my birthday!'[run paragraph on]";
		if glulx timekeeping is supported:
			wait 4000 ms before continuing;
		say "[paragraph break]'Maybe you could just leave me here' you suggest. 'And come back and find the house in ruins?' says Aunt Petunia.[run paragraph on]";
		if glulx timekeeping is supported:
			wait 4000 ms before continuing;
		say "[paragraph break]'I won't blow up the house,' you say.[run paragraph on]";
		if glulx timekeeping is supported:
			wait 4000 ms before continuing;
		say "[paragraph break]'I suppose we could take him to the zoo, and leave him in the car,' says Aunt Petunia.[run paragraph on]";
		if glulx timekeeping is supported:
			wait 4000 ms before continuing;
		say "[line break]'The car's new, he's not sitting in it alone...'[line break]Dudley begins to cry loudly. He's not really crying, it's been years since he's done that, But he knows that Aunt Petunia will give him anything he wants if he does.[run paragraph on]";
		if glulx timekeeping is supported:
			wait 6000 ms before continuing;
		say "[paragraph break]That's the doorbell. Must be Piers Polkiss, Dudley's friend. Dudley's stopped pretending to cry.[run paragraph on]";
		if glulx timekeeping is supported:
			wait 4000 ms before continuing;
		say "[line break]'Alright, let's go,' says Petunia. Everyone leaves the kitchen and gets into the Dursley's car.";
		now the description of kitchen is "";
		now the venture of Dudley's birthday breakfast is success;
		now Aunt Petunia is in car;
		now Uncle Vernon is in car;
		now Dudley is in car;
		now Piers Polkiss is in car;
	otherwise:
		continue the action.
a procedural rule:
	ignore block listening rule.
report listening:
	say "there's nothing to hear.".
report listening during Dudley's birthday breakfast:
	if Dudley is in kitchen:
		say "You hear the sound of Dudley loudly ripping open his presents." instead.
understand "load" as restoring the game.
a multiroad is a kind of room.
Garden is a multiroad. it is in Dursley's house.
front door is a door. it is east of hall. it is west of garden.
car is a vehicle. it is in garden. it is unlocked and lockable. it is closed and openable. it is transparent.
understand "car door" as car.
The zoo is a scene.
the zoo begins when the venture of Dudley's birthday breakfast is success.
the zoo ends when the venture of the zoo is success.
after doing anything during the zoo:
	if the map region of the location is Dursley's house :
		if Harry Potter is not in car:
			if Petunia is in car for 4 turns:
				say "'Hurry up!' Shrieks Petunia.";
			otherwise:
				continue the action;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
Living-room is a room. it is in Dursley's house.
living-room door is a door. it is south of hall and north of living-room.
understand "wear [things]" as wearing.
understand "loook" as looking.
understand "eggs" as egg. 
after entering car during the zoo:
	say "'Everyone here?' says Uncle Vernon, craning his neck to check if everyone managed the short walk from the kitchen to the massively oversized and expensive company car.[run paragraph on][wait 2000 ms][line break]'Yes, let's go, let's go!' chorus Dudley and Piers.".
the car allows seated and standing.
a multiroad is a kind of room.
A road is a kind of room.
Definition: a room is offroad if it is not a road.
 Instead of going by a vehicle (called the auto) to somewhere offroad:
	unless going by a vehicle to a multiroad:
	 	say "You can't drive the [the auto] off-road.";
	 otherwise:
		continue the action.
instead of exiting from a vehicle when the vehicle is in a road:
	say "That seems rather suicidal.".
instead of exiting from a rideable vehicle when the rideable vehicle is in a road:
	say "That seems rather suicidal.".
highway is a road. it is north of garden.