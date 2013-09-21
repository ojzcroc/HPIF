"Harry Potter and the Philosopher's Stone" by Orion Zymaris

The story headline is "Influenced by 'Harry Potter and the Philosopher's stone' by J.K. Rowling.".

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
Include hpmenu for chapter 2 by Orion Zymaris.
Include After Not Doing Something by Ron Newcomb.
to say wait (S - a number) ms/milliseconds/--:
	say "[run paragraph on]";
	if glulx timekeeping is supported:
		wait S ms before continuing.
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
a thing can be rippable. a thing is usually not rippable.
newspaper is a thing. it is in kitchen. newspaper is undescribed. newspaper is rippable.
ripping is an action applying to one thing.
understand "rip [something rippable]" as ripping.
carry out ripping:
	say "You rip [noun] into pieces.";
	now the noun is off-stage.
understand "paper" as newspaper.
after dropping newspaper:
	if uncle vernon is in kitchen:
		if location is kitchen:
			say "Uncle Vernon snatches back the newspaper.".
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
Bed is a container in Cupboard under the stairs. it is open and not openable. it is unlocked and not lockable. it is enterable. Harry Potter is in bed.
The description of Cupboard under the stairs is "You can[if glasses are not worn] barely[end if] see a small, dark room with lots of spiders and your few measly possessions. Not as interesting as the dream you were having - There had been a flying motorbike in it. You have a funny feeling that you've had the same dream before...[if glasses are not worn][paragraph break]You need your glasses.[end if]".
every turn during dudley's birthday breakfast:
	if the player is not harry potter:
		now the description of cupboard under the stairs is "Harry's room.".
every turn during zoo:
	if the player is not harry potter:
		now the description of cupboard under the stairs is "Harry's room.".
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
kitchen door is a door. it is west of hall and east of kitchen.
after going through kitchen door for the first time:
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
chair is a kind of supporter. there is a chair in kitchen. it allows sitting and standing.
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
instead of saying hello to Uncle Vernon during dudley's birthday breakfast:
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
understand "flip [something]" as cooking when the venture of Dudley's birthday breakfast is incomplete.
carry out cooking when the location is kitchen:
	if the noun is raw:
		say "You cook the eggs and bacon.";
	otherwise:
		say "You burn the eggs and bacon.".
things can be cooked or raw. things are usually raw.
after cooking:
	now the noun is cooked.
fridge is a container in kitchen. it is fixed in place. there are 6 eggs in fridge. fridge is closed and openable.
report dropping eggs:
	remove noun from play;
	say "you drop the egg[s] and can now see a small puddle of egg goo at your feet." ;
	if the map region of the location is Dursley's house:
		if petunia is in kitchen:
			say "'Clean that mess up!' screeches Aunt Petunia." instead.
before going during Dudley's birthday breakfast:
	if the location is kitchen:
		if cheats_bin is 0:
			say "Dudley hasn't started his breakfast yet. You shouldn't go yet, if you care for your health." instead.
Dudley is in kitchen.
Piers polkiss is a person.
after doing anything when the location is kitchen during dudley's birthday breakfast:
	if Harry Potter is in kitchen for 3 turns:	
		if aunt petunia is in kitchen:
			say "The telephone rings in the living room. Aunt Petunia goes to get it.";
			now Aunt Petunia is in hall;
			continue the action;
		otherwise:
			continue the action;
	otherwise if Harry Potter is in kitchen for 5 turns:
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
		now Uncle Vernon is in hall;
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
car is a vehicle. it is in garden. it is unlocked and lockable. it is closed and openable. it is transparent. the printed name of car is "the car".
rule for printing the name of car when doing anything to car:
	say "car".
rule for printing the name of car when not doing anything to car:
	say "car".
understand "car door" as car.
The zoo is a scene.
the zoo begins when the venture of Dudley's birthday breakfast is success.
the zoo ends when the venture of the zoo is success.
after doing anything during the zoo:
	if the map region of the location is Dursley's house :
		if Harry Potter is not in car:
			if Petunia is in car for 10 turns:
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
after going east when the location is hall during zoo:
	if the location of car is garden:
		say "Uncle Vernon takes you aside. 'I[']m warning you, I'm warning you now, boy - any funny business, anything at all - and you'll be in that cupboard from now until Christmas.'";
		now uncle vernon is in car.
after doing anything when in car during zoo:
	if the location is garden:
		say "[if uncle vernon is not in car]Uncle Vernon jumps in the car.[end if]'Everyone here?' says Uncle Vernon, craning his neck to check if everyone managed the short walk from the kitchen to the massively oversized and expensive company car.[run paragraph on][wait 2000 ms][line break]'Yes, let's go, let's go!' chorus Dudley and Piers.[run paragraph on]";
		now uncle vernon is in car;
		if glulx timekeeping is supported:
			wait 2000 ms before continuing;
		say "[paragraph break]The car pulls out of the driveway.";
		now car is closed;
		move car to highway;
		try silently looking;
		if glulx timekeeping is supported:
			wait 3000 ms before continuing;
		say "'...roaring along like maniacs, the young hoodlums,' says Uncle Vernon. [paragraph break]";
		increase the time of day by 15 minutes;
	otherwise:
		continue the action.
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
Privet'sstreets is a region.
highway is a road in Privet'sstreets. it is north of garden. the description is "The highway is filled with large company cars like your uncle's, and people roaring around on motorbikes.".
test me with "000/s/w/cook food/wait/wait/wait/wait/e/e/open car/get in car/look/look/look/get out/n/wait/wait/wait/wait/n/w/eat knickerbocker/e/s/e/look at snake/w/s/get in car/get out/w/n/get in bed".
understand "bike" or "motorbike" or "motorcycle" or "dream" or "dreams" or "nightmare" or "flying bike" or "flying motorbike" or "flying motorcycle" as "[dream]".
after entering car:
	set pronouns from uncle vernon;
	continue the action.
after telling uncle vernon about "[dream]":
	say "Uncle Vernon nearly crashes into the car in front. He turns right around and says, his face like a gigantic beetroot with a moustache, 'MOTORBIKES DON'T FLY!'".
after asking uncle vernon about "[dream]":
	say "Uncle Vernon nearly crashes into the car in front. He turns right around and says, his face like a gigantic beetroot with a moustache, 'MOTORBIKES DON'T FLY!'".
to say increase time of day by (S - a number) minutes:
	increase time of day by S minutes.
every turn during zoo:
	if the location is highway:
		if the player is in the car:
			if dudley is in the car:
				say "You hear Dudley and Piers bickering.[if the location has been highway for 2 turns]You're almost there.".				
le zoo is a region. the printed name is "the zoo".
the local zoo is a multiroad in le zoo. it is north of highway.
understand "poke [someone]" as attacking.
every turn during zoo:
	if the location is highway for 3 turns:
		try going north;
		say "You arrive at the zoo.";
		increase the time of day by 30 minutes;
		try opening car.
instead of going when in car:
	if cheats_bin is 0:
		say "You aren't at the wheel.";
	otherwise:
		continue the action.
the zoo entrance is a container in local zoo. it is enterable. it is open and not openable.
after exiting from car during the zoo:
	if dudley is in car:
		if the location is local zoo:	
			say "Dudley and Piers immediately push past you to get to the entrance, where they're selling ice-creams. Uncle Vernon chuckles and hops out, buying them both a large, chocolate ice-cream.";
			now Dudley is in zoo entrance;
			now Piers Polkiss is in zoo entrance;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
lemon ice lolly is a food.
understand "go to [zoo entrance]" as entering.
entrance lady is a woman. She is in zoo entrance.
a Gorilla is a kind of person.
Gorilla Enclosure is a room in le zoo. it is north of local zoo.
gone_to_zoo is a number that varies. gone_to_zoo is 0.
before going north when the location is local zoo:
	if gorilla enclosure is not visited:
		if gone_to_zoo is 0:
			say "as you walk past, the lady at the entrance smiles and asks you if you would like something as well. Uncle Vernon and Aunt Petunia look at each other, before getting you a cheap lemon ice lolly. They grab you and drag you away before the lady can bestow any more kindness on you.";
			now piers polkiss is in gorilla enclosure;
			now dudley is in gorilla enclosure;
			now uncle vernon is in gorilla enclosure;
			now aunt petunia is in gorilla enclosure;
			now Harry Potter carries the lemon ice lolly;
			now gone_to_zoo is 1;
			say "'Well, have a look around everyone!' says Uncle Vernon.";
			continue the action.
after entering zoo entrance for the first time:
	if gone_to_zoo is 0:
		say "as you walk past, the lady at the entrance smiles and asks you if you would like something as well. Uncle Vernon and Aunt Petunia look at each other, before getting you a cheap lemon ice lolly. They grab you and drag you away before the lady can bestow any more kindness on you.";
		try silently exiting;
		try going north;
		now piers polkiss is in gorilla enclosure;
		now dudley is in gorilla enclosure;
		now uncle vernon is in gorilla enclosure;
		now aunt petunia is in gorilla enclosure;
		now gone_to_zoo is 1;
		say "'Well, have a look around everyone!' says Uncle Vernon. 'We've got a bit of time untill we have to go eat lunch.'";
		now Harry Potter carries the lemon ice lolly.
licking is an action applying to one thing.
understand "lick [food]" as licking.
carry out licking:
	say "You lick [noun].".
cage is a container. it is closed and not openable. it is lockable and locked. it is transparent. cage is in gorilla enclosure.
there are 3 Gorillas in cage.
the description of gorillas is "These look remarkably like Dudley; they're just missing the blond hair. And the attitude.".
the description of Gorilla enclosure is "You can see a few people goggling through the bars at the rather bored looking gorillas. To the north is the bird room - to the south, the zoo entrance. to the east, the reptile house. and west, the monkeys exhibit.".
The reptile house is a room in le zoo. it is east of gorilla enclosure.
The monkeys exhibit is a room in le zoo. it is west of gorilla enclosure.
The bird room is a room in le zoo. it is north of gorilla enclosure.
The marsupial place is a room in le zoo. it is east of the bird room.
the turtle room is a room in le zoo. it is west of monkeys exhibit.
the nocturnal room is a room in le zoo. it is north of the reptile house.
the endangered species room is a room in le zoo. it is north of the bird room.
the description of reptile house is "to the west is the gorilla enclosure. to the north, the nocturnal room. You can see a few bored looking snakes and lizards behind the glass.".
snake is a thing in reptile house. it is fixed in place. it is undescribed.  the description of snake is "The sign next to one of the snakes says 'Boa Constrictor, bred in Peru'.".
understand "snakes" as snake.
lizard is a thing in reptile house. it is fixed in place. it is undescribed. the description of lizard is "The lizards are sunbathing in the corner of their cage.".
understand "lizards" as lizard.
the description of monkeys exhibit is "to the east is the gorilla enclosure. to the west, the turtle room. Monkeys hang from branches in their enclosures, chattering.".
monkey is a thing in monkeys exhibit. it is fixed in place. it is undescribed. the description of monkey is "The monkeys are swinging around their cages, and rattling the bars.".
understand "monkeys" as monkey.
the description of the nocturnal room is "to the south is the reptile house. You can see a few creatures, sleeping.".
creature is a thing in nocturnal room. it is fixed in place. it is undescribed. the description of creature is "A bit boring, really. All the creatures in here are asleep.".
understand "creatures" as creature.
the description of bird room is "To the south is the gorilla exhibit. To the north, the endangered species room. To the east, the marsupial place. To the west, the zoo's cafe. Birds are flying freely around the room, picking at the bird feed around the room.".
birds is a thing in bird room. it is fixed in place. it is undescribed. the description of birds is "Flying around, and eating seeds. Occasionally, one of them lands on someone's head.".
understand "bird" as birds.
the description of marsupial place is "to the west is the bird room. There are small, furry little creatures in cages all around the room.".
 marsupials is a thing in marsupial place. it is fixed in place. it is undescribed. the description of marsupials is "They're pretty cute. that's odd, one of them looks like a pink ball of fluff. Cute, though.".
 understand "marsupial" as marsupials.
the description of endangered species room is "To the south is the bird exhibit. Many odd, rare creatures are in here, behind glass.".
endangered animal is a thing in endangered species room. it is fixed in place. it is undescribed. the description of endangered animal is "In here are all manner of odd creatures from exotic places.".
understand "endangered species" as endangered animal.
understand "endangered animals" as endangered species.
understand "animal" as endangered species.
understand "animals" as endangered species.
understand "creature" as endangered species.
understand "creatures" as endangered species.
the description of turtle room is "to the east is the monkeys exhibit. Turtles and tortoises are wandering slowly around their cages.".
tortoise is a thing in turtle room. tortoise is fixed in place. it is undescribed. the description of tortoise is "the tortoises are slowly wandering around their cages.".
understand "tortoises" as tortoise.
turtles is a thing in turtle room. turtles is fixed in place. turtles is undescribed. the description of turtles is "the turtles are slowly wandering around their cages.".
understand "turtle" as turtles.
after doing anything when the map region of the location is le zoo for 7 turns:
	now the time of day is 12 hours;
	say "After a while of looking around the exhibits, Dudley, who has a remarkably short attention span, starts complaining. 'I want to eat', he says. 'Ok' says Uncle Vernon. 'Let's go get some food.' Dudley, Piers, Uncle Vernon, and Aunt Petunia leave without paying any attention to you. You've got to find your way to the zoo's cafe.";
	now dudley is in the zoo cafe;
	now piers polkiss is in the zoo cafe;
	now vernon is in the zoo cafe;
	now petunia is in the zoo cafe.
understand "look [things]" as examining.
the zoo cafe is a room in le zoo. it is west of bird room. the description of zoo cafe is "To the east is the bird room.".
definition: something is unnocupied if there is nothing on it.
after going west when the location is zoo cafe:
	if Dudley's knickerbocker glory is in the zoo cafe:
		say "'You took your time!' says uncle vernon. 'Dudley didn[']t want to finish his knickerbocker glory; It's too small for him. You can have the rest of this one.'";
		move dudley to a random chair in zoo cafe;
		move petunia to a random unnocupied chair in the zoo cafe;
		move uncle vernon to a random unnocupied chair in the zoo cafe;
		move piers polkiss to a random unnocupied chair in the zoo cafe;
		continue the action.
cafe table is a supporter in zoo cafe.
there are 4 chairs in zoo cafe. 
before sitting on chairs in zoo cafe:
	say "You can't sit down. The others took all the seats. Dudley took two.";
	rule succeeds.
instead of sitting down when the location is zoo cafe:
	if cheats_bin is 0:
		say "You can't sit down. The others took all the seats. Dudley took two.";
		rule succeeds;
	otherwise:
		continue the action.
kicking is an action applying to one thing.
understand "kick [someone]" as kicking.
report kicking:
	say "You kick [noun], causing them to yelp and jump backwards, looking annoyed.".
your knickerbocker glory is food on the cafe table. The description of your knickerbocker glory is "Half eaten, and considerably smaller than Dudley's new one.".
Dudley's knickerbocker glory is food on the cafe table. The description of Dudley's knickerbocker glory is "Bigger than your serving, but disappearing at an incredible rate. Dudley's eating could win him some prizes.".
instead of eating Dudley's knickerbocker glory:
	if cheats_bin is 0:
		say "You couldn't do that; Dudley would punch it right back out of you.";
		stop the action;
	otherwise:
		continue the action.
does the player mean eating your knickerbocker glory:
	it is likely.
after eating your knickerbocker glory:
	remove Dudley's knickerbocker glory from play;
	say "'Right! let's look at some more things, shall we? How about the reptile house?' says Uncle Vernon. The others leave, without looking at you.";
	now Dudley is in reptile house;
	now Uncle Vernon is in reptile house;
	now Aunt Petunia is in reptile house;
	now Piers Polkiss is in reptile house.
after going east when the location is reptile house:
	say "Dudley stands with his nose pressed against the glass. 'Make it move', he whines. Uncle Vernon taps on the glass, but the snake won't budge.".
after examining snake:
	say "You wouldn't be surprised if it had died of boredom - with no company except stupid people drumming their fingers on the glass trying to disturb it all day long. It was worse than having a cupboard as a bedroom, where the only visitor was Aunt Petunia hammering on the door to wake you up - at least he got to visit the rest of the house.[wait 2000 ms][paragraph break]The snake suddenly opened it's beady eyes. Slowly, very slowly, it raised its head until its eyes were on a level with Harry's.[wait 2000 ms][paragraph break][italic type]It winked.[roman type][paragraph break]The snake jerked its head towards Uncle Vernon and Dudley,  then raised its eyes to the ceiling. It gave Harry a look that said quite plainly: [italic type]'I get that all the time'[roman type][wait 1000 ms]'I know', you murmur through the glass, although you don't know if the snake can hear you. 'It must be really annoying.'[wait 2000 ms][line break]The snake nods vigorously.[wait 2000 ms]'Where do you come from, anyway?' You ask.[wait 2000 ms]The snake jabs its tail at a little sign next to the glass. You peer at it.  [italic type]Boa Constrictor, Brazil.[roman type][wait 2000 ms][line break]Was it nice there?'[wait 1000 ms][line break]The boa constrictor jabbed its tail at the sign again and you read on. [wait 2000 ms][line break][italic type]This specimen was bred in the zoo.[roman type][wait 2000 ms][paragraph break]'Oh, I see - so you've never been to Brazil?'[line break]As the snake shook its head, a deafening shout behind you made both you and the snake jump. 'DUDLEY! MR DURSLEY! COME AND LOOK AT THIS SNAKE! YOU WON'T BELIEVE WHAT IT'S DOING!'[wait 2000 ms][line break]'Out of the way, you', snarls Dudley, punching you in the ribs. You fall. When you look back at the snake's enclosure, you see Piers and Dudley jumping back with howls of horror. The glass has vanished, and the snake is slithering awat across the floor. [wait 2000 ms][paragraph break][italic type]'Brazil, here I come ... Thankssss, amigo.'[roman type]";
	now the description of reptile house is "to the west is the gorilla enclosure. to the north, the nocturnal room. You can see a few bored looking snakes and lizards behind the glass. You see everyone standing around, looking shocked. 'Well, we should go', says a rather uncomfortable looking Uncle Vernon.";
	now the venture of zoo is success.
after entering car:
	if the venture of zoo is success:
		say "Dudley and Piers start talking loudly about the snake. Dudley was telling them how it had nearly bitten off his leg, while Piers was swearing it had tried to squeeze him to death. 'Harry was talking to it, weren't you, Harry?' says Piers. Uncle Vernon turns the colour of beetroot.";
		move car to garden;
		increase time of day by 30 minutes.
after going west when the location is hall:
	say "'Bye Dudley', says Piers. The front door slams as he leaves. Uncle Vernon rounds on you, and says 'Go - cupboard - stay - no meals,' before collapsing into a chair. Aunt Petunia runs to fetch him some brandy.".
Dining room is a room in dursley's house.
Toilets is a room in dursley's house. it is northeast of hall.
the hall door is a door. the printed name is "Dining room door". the hall door is northeast of dining room. the hall door is southwest of hall.
the living room door is a door. the living room door is east of dining room. the living room door is west of living-room.
Landing is a room in dursley's house.
Staircase is a door. it is open and not openable.  staircase is above hall and below landing.
Bathroom is a room in dursley's house. it is west of landing.
Dursley's bedroom is a room in dursley's house.
Dudley's bedroom is a room in dursley's house.
Dudley's second room is a room in dursley's house.
Dursley's bedroom door is a door. it is southeast of landing and northwest of dursley's bedroom.
Dudley's bedroom door is a door. it is northwest of landing and southeast of dudley's bedroom.
Dudley's second room door is a door. it is northeast of landing and southwest of dudley's second room.
attic is a room in dursley's house.
attic stairs is a door. it is open and openable. it is above landing and below attic.
the mantlepiece is a supporter in living-room. it is not portable.
photo is a kind of thing. 
there are five photos on the mantlepiece.
The description of photos is "You see photos of a large, blond boy riding his first bicycle, on a roundabout at the fair, playing a computer game with his father, being hugged and kissed by his mother.".
Instead of taking a photo, say "You should leave these. They're family possessions. And Uncle Vernon would kill you if you took one.".
living-room door is a door. it is south of hall and north of living-room. the printed name is "the living-room door".
Piano is a supporter in living-room.
sheet music is a thing on piano.
understand "play [something]" as playing.
understand "play with [something]" as playing.
report playing:
	say "You attempt to play [noun], but to no avail.".
report playing piano:
	say "You sit down, and bash out something reminiscent of an old Beatles song." instead.
Stool is a chair in living-room.
Armchair is a chair in living-room.
understand "chair" as Armchair.
Couch is a chair in living-room.
Television is a device in living-room.
understand "TV" as television.
There are 5 chairs in dining room. 
dining room table is a thing in dining room. table is fixed in place.
a set of drawers is a thing in Dudley's bedroom. it is not portable. the description of set of drawers is "Another hoard of Dudley's favourite toys..". 
Dudley's drawers is a container. it is closed and openable.
instead of opening set of drawers, try opening Dudley's drawers.
there are seven small toys in dudley's drawers.
instead of searching the set of drawers, try searching Dudley's drawers.
understand "drawer" as Dudley's drawers.
Dudley's wardrobe is a container in dudley's second room. it is not portable. it is closed and openable.
the description of dudley's second room is "A place for Dudley to keep his old toys. Nearly everything in here is broken.".
broken toys is a thing in dudley's second room. it is fixed in place. the description of broken toys is "You can see bits and pieces of broken toys all over the place.".
Bath is a container in bathroom. it is open and not openable. it is not portable. it is enterable.
Toilet2 is a thing in bathroom. the description is "As clean as the rest of the room.". the printed name is "Toilet".
understand "toilet" as toilet2.
report using toilet2:
	say "That isn't vital right now." instead.
Sink2 is a thing in bathroom. the description is "One of the few things to escape Petunia's scrubbing, the sink is a little smudged and dirty.". the printed name is "Sink".
understand "sink" as sink2.
report using sink2:
	say "You turn on the tap, rub some soap into your hands, and scrub them thoroughly." instead.
Tap2 is a device. it is part of sink2. the printed name is "Tap".
understand "tap" as tap2.
instead of turning tap2, try using sink2 instead.
instead of switching on tap2, try using sink2 instead.
instead of using tap2, try using sink2 instead.
understand "faucet" as tap2.
Privet Drive is a room in Privet'sstreets.. it is east of garden. the description of Privet Drive is "your garden is to the west.".
jumping out of is an action applying to one thing.
understand "jump out of [bedroomwindow]" as jumping out of.
understand "jump out [bedroomwindow]" as jumping out of.
understand "jump [bedroomwindow]" as jumping out of.
carry out jumping out of bedroomwindow:
	now the player is in Privet Drive;
	say "you jump out of the window.".
Toilet1 is a thing in toilets. the description is "As clean as the rest of the room.".the printed name is "Toilet".
understand "toilet" as toilet1.
report using toilet1:
	say "That isn't vital right now." instead.
Sink1 is a thing in toilets. the description is "One of the few things to escape Petunia's scrubbing, because it often has water running into it.". the printed name is "Sink".
understand "sink" as sink1.
report using sink1:
	say "You turn on the tap, rub some soap into your hands, and scrub them thoroughly." instead.
Tap1 is a device. it is part of sink1. the printed name is "Tap".
understand "tap" as tap1.
understand "faucet" as tap1.
instead of turning tap1, try using sink1 instead.
instead of switching on tap1, try using sink1 instead.
instead of using tap1, try using sink1 instead.
bedroomwindow is a  thing. it is in dursley's bedroom. the printed name is "bedroom window".
understand "window" as bedroomwindow.
understand "bedroom window" as bedroomwindow.
bedroomwindow is fixed in place. it is lit. it is described.
understand "look [bedroomwindow]" as examining.
understand "look out [bedroomwindow]" as examining.
the description of bedroomwindow is "you look out the window and see the lovely gray of Surrey suburbia.".
getting out is an action applying to nothing.
understand "pj's" as pyjamas.
the description of Dursley's bedroom is "You look around. There is a wardrobe, a bed, a bedside table with drawer attached, and a door to the north-west.".
The dursley's Bed is a thing in Dursley's bedroom.
bed is a container. it is open.
The dursley's Wardrobe is a container in The Dursley's Bedroom. it is closed and openable.  the description of wardrobe is "A large wooden wardrobe, made of the finest materials to please Petunia.".
wardrobe is fixed in place.
A Mirror is in the wardrobe. it is not portable.
understand "cupboard" as wardrobe.
clothing is a kind of thing. suit is a kind of clothing. muumuu is a kind of clothing. wizards robes is a clothing. tutu is a kind of clothing. tie is a kind of clothing. Pyjamas is a clothing.
bedside table is a supporter in Dursley's bedroom.
bedside drawer is a part of bedside table.
the description of the bedside table is "This is your bedside table. It has a drawer attached.".
bedside drawer is a container. it is closed and openable.
using is an action applying to one thing.
understand "use [something]" as using.
report using:
	say "What exactly do you want to use it for?".
attic is a room in dursley's house. "As you enter the attic, you see pictures of [unless player is dudley]Dudley[otherwise]you[end if] all over the walls.[no line break]". 
dusty box is a container. it is closed and openable. it is not portable.
dusty box is in attic.
a book is a kind of thing. 
a toy is a kind of thing.
in dusty box is three toys.
instead of taking a toy:
	say "[first time]If you took one of Dudley's toys, he would notice.[line break]after he spent an hour counting them.[only]You can't take that.".
the description of a toy is "[one of] Dudley's old favourite toy[or]This was Dudley's[or]one of Dudley's favourite toys[purely at random].".
the description of howto spoil your children handbook is  "A comprehensive guide to help you ensure the over-enrichment of your favourite child." .
the description of drills- an unabridged history is "A full and unabridged history on the subject of drills, drilling, drillmaking, and more!".
the description of 101 Pompous Complaints is "A list of the best of Pompous Complaints and snide remarks.".
the description of the High calorie cookbook is "A book of the meals with the highest possible calorie content.". the description of the smeltings schoolbook is "The smeltings schoolbook [line break] owner: Vernon Dursley".
Howto spoil your children handbook is a book in dusty box. 
Drills- an unabridged History is a book in dusty box.
101 Pompous Complaints is a book in dusty box.
High calorie cookbook is a book in dusty box.
Smeltings schoolbook is a book in dusty box.
the printed name of howto spoil your children handbook is "how to spoil your children handbook".
before taking howto spoil your children handbook:
	now the printed name of howto spoil your children handbook is "how to spoil your children handbook".
rule for printing the name of howto spoil your children handbook when listing contents of dusty box: say "[first time]and books with titles such as [only]the how to spoil your children handbook".
every turn:
	unless howto spoil your children handbook is in dusty box:
		now the printed name of howto spoil your children handbook is "How to Spoil your Children Handbook".
letter is a thing.
before moving to:
	if player's command includes "handbook":
		now the printed name of howto spoil your children handbook is "How to Spoil your Children Handbook";
		move Howto to the second noun.
some random objects is a thing in attic. the description is "some random bits and pieces, left by Dudley.".
after entering bed when the venture of zoo is success:
	now the time of day is 9:00 pm;
	say "Exhausted by the day, you collapse into bed, and fall asleep immediately.".