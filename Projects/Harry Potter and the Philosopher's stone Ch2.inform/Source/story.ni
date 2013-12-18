"Harry Potter and the Philosopher's Stone" by Orion Zymaris

The story headline is "Based on by 'Harry Potter and the Philosopher's stone' by J.K. Rowling. This game is not approved by J. K. Rowling. It exists because I am a fan of Harry Potter and text adventures, and is not a commercial venture.".

chapter 1 - Test facilities - not for release

to say itinerary:
	say "unfinished".
when play begins:
	now Harry Potter is wearing glasses;
	now donotdelay is 1;
	now bannerprinted is 1.
regionating is an action applying to nothing.
understand "current region" or "region" as regionating.
carry out regionating:
	say "[map region of the location]".
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

Current teletype line break delay is a number variable. The current teletype line break delay is 400.
Current teletype character delay is a number variable. The current teletype character delay is 40.
Current teletype paragraph break delay is a number variable. The current teletype paragraph break delay is 400.
To teletype (text-to-be-printed - an indexed text):
	repeat with N running from 1 to the number of characters in the text-to-be-printed:
		if character number N in the text-to-be-printed is "[line break]":
			wait (current teletype line break delay) milliseconds before continuing;
		if character number N in the text-to-be-printed is "[paragraph break]":
			wait (current teletype paragraph break delay) milliseconds before continuing;
		if character number N in the text-to-be-printed is "[italic type]":
			wait (current teletype paragraph break delay) milliseconds before continuing;
			say "[italic type][run paragraph on]";
		if character number N in the text-to-be-printed is "[roman type]":
			wait (current teletype paragraph break delay) milliseconds before continuing;
			say "[roman type][run paragraph on]";
		say "[character number N in the text-to-be-printed][run paragraph on]";
		wait (current teletype character delay) milliseconds before continuing, strictly.
To teletype (text-to-be-printed - an indexed text) at/with (speed - a number) ms/milliseconds/-- delay/--:
	change the current teletype character delay to the speed;
	teletype the text-to-be-printed.
To say change teletype delay to (speed - a number) ms/milliseconds/--:
	change the current teletype character delay to speed.
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
Include hpmenu by Orion Zymaris.
Include After Not Doing Something by Ron Newcomb.
to say wait (S - a number) ms/milliseconds/--:
	say "[run paragraph on]";
	if glulx timekeeping is supported:
		if donotdelay is 0:
			wait S ms before continuing;
		otherwise:
			continue the action.
bannerprinted is a number that varies. bannerprinted is 0.
to say now bannerprinted is 1:
	now bannerprinted is 1.
before printing the banner text when bannerprinted is 0:
	clear the screen;
	say "[bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help. You can also access Settings through the help menu) Also, you can skip the intro and other cut scenes by pressing enter, or by turning off time delays in the settings menu.[roman type][paragraph break]Nearly ten years had passed since the Dursleys had woken up to find their nephew in the front step, but Privet Drive had hardly changed at all. The sun rose on the same tidy front gardens and lit up the brass number four on the Dursley's front door; it crept into their living-room, which was almost exactly the same as it had been on the night when Mr Dursley had seen that fateful news report about the owls.[paragraph break][run paragraph on]";
	if glulx timekeeping is supported:
		wait 10000 ms before continuing;
		clear the screen;
	say "[if glulx timekeeping is supported][bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help. You can also access Settings through the help menu)[roman type][paragraph break][end if]Only the photographs on the mantlepiece really showed how much time had passed. Ten years ago, there had been lots of pictures of what looked like a large pink beach ball wearing different-coloured bobble hats - but Dudley Dursley was no longer a baby, and now the photographs showed a large, blond boy riding his first bicycle, on a roundabout at the fair, playing a computer game with his father, being hugged and kissed by his mother.[paragraph break][run paragraph on]";
	if glulx timekeeping is supported:
		wait 10000 ms before continuing;
		clear the screen;
	say "[if glulx timekeeping is supported][bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help. You can also access Settings through the help menu)[roman type][paragraph break][end if]The room held no sign at all that another boy lived in the house too.[line break]    Yet Harry Potter was still there, asleep at the moment, but not for long. His Aunt Petunia was awake and it was her shrill voice which made the first noise of the day.[paragraph break][run paragraph on]";
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
after doing anything when the location is Cupboard under the stairs :
	if the turn count is 2:
		say "'Up!' Screeches Petunia.";
		now turn count is 3;
		continue the action;
	else:
		continue the action.	
clothing is a kind of thing. clothing is wearable.
shirt is a kind of clothing. 
pants is a kind of clothing.
all people wear a shirt.
all people wear pants.
Uncle Vernon is a person. the description is "Large and porky, with very little neck, Uncle Vernon loves bossing you around. it's the only exercise he gets.".
Aunt Petunia is a woman.  the description is "Aunt Petunia's even bossier than Uncle Vernon. She hates things being dirty.".
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
			say "Uncle Vernon snatches back the newspaper.";
		otherwise:
			continue the action;
	otherwise:
		continue the action.
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
Bed is a container in Cupboard under the stairs. bed is open and not openable. bed is unlocked and not lockable. bed is enterable. Harry Potter is in bed. bed is fixed in place.
The description of Cupboard under the stairs is "You can[if glasses are not worn] barely[end if] see a small, dark room with lots of spiders and your few measly possessions. Not as interesting as the dream you were having - There had been a flying motorbike in it. You have a funny feeling that you've had the same dream before...[if glasses are not worn][paragraph break]You need your glasses.[end if]".
every turn during dudley's birthday breakfast:
	if the player is not harry potter:
		now the description of cupboard under the stairs is "Harry's room.".
every turn during zoo:
	if the player is not harry potter:
		now the description of cupboard under the stairs is "Harry's room.".
Hall is a room. It is in Dursley's house. the description of hall is "".
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
some assorted clothing is clothing in Cupboard under the stairs.
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
	say "You get the chess set out and fiddle with it for a while." instead.
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
		stop the action;
		rule succeeds;
	otherwise:
		say "There is nothing underneath [the noun].";
		stop the action;
		rule succeeds instead.
		
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
kitchen door is a door. it is west of hall and east of kitchen. kitchen door is lockable and unlocked.
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
piece of toast is a thing on the table in kitchen.
the description of piece of toast is "this looks like it's been here for 10 years..." .
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
Piers Polkiss is a person.
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
		say "[paragraph break]'Maybe you could just leave me here' you suggest. [paragraph break]'And come back and find the house in ruins?' says Aunt Petunia.[run paragraph on]";
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
Garden is a multiroad. it is in Dursley's house. the description of garden is "To the east is privet drive. [if the venture of zoo aftermath is pending]Looks like a nice place to spend the evening.".
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
		say "Uncle Vernon takes you aside. 'I[']m warning you, I'm warning you now, boy - any funny business, anything at all - and you'll be in that cupboard from now until Christmas. ' He proceeds, with some difficulty, to go through the front door.";
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
A road is a kind of room.
Definition: a room is offroad if it is not a road.
 Instead of going by a vehicle (called the auto) to somewhere offroad:
	unless going by a vehicle to a multiroad:
	 	say "You can't drive the [the auto] off-road.";
	 otherwise:
		continue the action.
instead of going to a road:
	unless going to a multiroad:
		unless going by a vehicle:
			unless going by rideable vehicle:
				say "That seems rather suicidal.";
			otherwise:
				continue the action;
		otherwise:
			continue the action;
	otherwise: 
		continue the action.
instead of exiting from a vehicle when the vehicle is in a road:
	say "That seems rather suicidal.".
instead of exiting from a rideable vehicle when the rideable vehicle is in a road:
	say "That seems rather suicidal.".
Privet'sstreets is a region.
highway is a road in Privet'sstreets. it is north of garden. the description is "The highway is filled with large company cars like your uncle's, and people roaring around on motorbikes.".
test me with "000/get up/s/w/cook food/wait/wait/wait/wait/e/e/open car/get in car/look/look/look/get out/n/wait/e/n/gonear camera/purloin stick/take camera/purloin camera/drop camera/take camera/gonear bird room/w/eat food/gonear reptile/look snake/get out/w/n/sleep/get up/s/u/nw/se/purloin vice/ne/sw/d/e/e/s/w/look/e/take mail/w/read mail/listen/n/take all/s/u/ne/sw/d/w/wait/wait/wait/wait/wait/look/open pocket/take all/e/fill kettle with water/w/look/listen/open window/open pocket/open bag of coins/take 5 knuts/put 5 knuts in pouch/w/get in/w/buy tickets/look at timetable/look at timetable/look at timetable/look at timetable/read list".
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
				say "You hear Dudley and Piers bickering.".				
le zoo is a region. the printed name is "the zoo".
the local zoo is a multiroad in le zoo. it is north of highway. the printed name of local zoo is "local zoo carpark". the description of local zoo is "to the north is the zoo's entrance.".
understand "poke [someone]" as attacking.
every turn during zoo:
	if the location is highway for 3 turns:
		move car to the local zoo;
		say "You arrive at the zoo. Uncle Vernon takes some time to park, as his car requires two spaces to do so.";
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
			now Uncle Vernon is in zoo entrance;
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
	if the player is not in car:
		if gorilla enclosure is not visited:
			if gone_to_zoo is 0:
				say "as you walk past, the lady at the entrance smiles and asks you if you would like something as well. Uncle Vernon and Aunt Petunia look at each other, before getting you a cheap lemon ice lolly. They grab you and drag you away before the lady can bestow any more kindness on you.";
				now Piers Polkiss is in gorilla enclosure;
				now dudley is in gorilla enclosure;
				now uncle vernon is in gorilla enclosure;
				now aunt petunia is in gorilla enclosure;
				now Harry Potter carries the lemon ice lolly;
				now gone_to_zoo is 1;
				say "[line break]'Well, have a look around everyone!' says Uncle Vernon. 'We've got a bit of time untill we have to go eat lunch. We should meet in the nocturnal animal ex... exh... er, room, when lunchtime comes around.' ";
				continue the action.
after entering zoo entrance for the first time:
	if gone_to_zoo is 0:
		say "as you walk past, the lady at the entrance smiles and asks you if you would like something as well. Uncle Vernon and Aunt Petunia look at each other, before getting you a cheap lemon ice lolly. They grab you and drag you away before the lady can bestow any more kindness on you.";
		try silently exiting;
		now gone_to_zoo is 1;
		try going north;
		now Piers Polkiss is in gorilla enclosure;
		now dudley is in gorilla enclosure;
		now uncle vernon is in gorilla enclosure;
		now aunt petunia is in gorilla enclosure;
		say "[line break]'Well, have a look around everyone!' says Uncle Vernon. 'We've got a bit of time untill we have to go eat lunch. We should meet in the nocturnal animal ex... exh... er, room, when lunchtime comes around.' ";
		now Harry Potter carries the lemon ice lolly.
licking is an action applying to one thing.
understand "lick [food]" as licking.
carry out licking:
	say "You lick [noun].".
the Gorilla's cage is a container. it is closed and not openable. it is lockable and locked. it is transparent.The Gorilla's cage is in gorilla enclosure.
there are 3 Gorillas in cage.
instead of examining gorillas, say "These look remarkably like Dudley; they're just missing the blond hair. And the attitude.".
the description of gorillas is "These look remarkably like Dudley; they're just missing the blond hair. And the attitude.".
the description of Gorilla enclosure is "You can see a few people goggling through the bars at the rather bored looking gorillas. To the north is the bird room - to the south, the zoo entrance. to the east, the reptile house. and west, the monkeys exhibit.".
The reptile house is a room in le zoo. it is east of gorilla enclosure.
The monkeys exhibit is a room in le zoo. it is west of gorilla enclosure.
The bird room is a room in le zoo. it is north of gorilla enclosure.
The marsupial place is a room in le zoo. it is east of the bird room.
the turtle room is a room in le zoo. it is west of monkeys exhibit.
the nocturnal room is a room in le zoo. it is north of the reptile house.
the nocturnal room walkway is a room. the description is "north of here is the marsupial room walkway.".
walkway stairs is a door in nocturnal room. it is above nocturnal room and below nocturnal room walkway. walkway stairs is open and not openable.
the marsupial place walkway is a room. it is north of nocturnal room walkway. the description of marsupial place walkway is "Below, you can see the marsupial room, and the ledge onto which Dudley dropped his camera, when he was up here.".
before examining down when the location is marsupial place walkway:
	say "you see the marsupial place, with its strange little animals, and Dudley's camera on a ledge." instead.
the endangered species room is a room in le zoo. it is north of the bird room.
the description of reptile house is "to the west is the gorilla enclosure. to the north, the nocturnal room. You can see a few bored looking snakes and lizards behind the glass.".
understand "reptile" or "animal" as snake.
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
 marsupials is a thing. it is fixed in place. it is undescribed. the description of marsupials is "They're pretty cute. That's odd, one of them looks like a pink ball of fluff. Cute, though.".
The marsupial cage is a transparent container in marsupial place. marsupials is in cage. marsupial cage is fixed in place. marsupial cage is closed and locked.
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
Camera challenge is a scene.
Camera challenge begins when the venture of camera challenge is pending.
Camera challenge ends when the venture of camera challenge is success.
Dudley's camera is a thing.
every turn during the zoo:
	if the location is nocturnal room for the first time:
		if the venture of camera challenge is incomplete:
			now the time of day is 12 hours;
			say "After a while of looking around the exhibits, Dudley, who has a remarkably short attention span, starts complaining. 'I want to eat', he says. 'Ok' says Uncle Vernon. 'Let's go get some food. And Harry, Dudley lost his camera in one of the exhibits. If you want lunch anytime soon, go and get it for him.' Dudley, Piers, Uncle Vernon, and Aunt Petunia leave without paying any attention to you. You've got to find Dudley's camera, and then your way to the zoo's cafe.";
			now dudley is in the zoo cafe;
			now Piers Polkiss is in the zoo cafe;
			now vernon is in the zoo cafe;
			now petunia is in the zoo cafe;
			now Dudley's camera is on shelf;
			now the venture of camera challenge is pending;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
shelf is a supporter in marsupial place. shelf is not portable.
rule for printing the name of shelf when looking:
	say "a shelf".
a long stick is a thing in the monkeys exhibit.
before taking Dudley's camera when the player does not have a long stick:
	say "You can't reach the shelf, and have no idea how Dudley managed to get it up there. You something to get it down with.";
	stop the action.
instead of putting Dudley's camera on shelf:
	say "You can't reach.".
garbage chute is a container in marsupial place. garbage chute is not portable. garbage chute is undescribed.
before taking Dudley's camera when the player has a long stick:
	if camera is on shelf:
		say "You use the stick to gently nudge the camera off the shelf. It falls into an open garbage chute you didn't notice beforehand.";
		now garbage chute is described;
		now camera is in waste disposal room;
		stop the action.
carry out searching garbage chute:
	say "you see a long pathway that keeps going down. It must come out into a waste disposal room. There has to be an entrance around somewhere...";
	stop the action.
carry out examining garbage chute:
	say "you see a long pathway that keeps going down. It must come out into a waste disposal room. There has to be an entrance around somewhere...";
	stop the action.
waste disposal room is a room. 
after taking Dudley's camera:
	now the venture of camera challenge is success.
every turn during camera challenge:
	if Dudley's camera is carried by the player:
		now the venture of camera challenge is success.
rubbish is a thing in waste disposal room. the description of rubbish is "a large, stench-laden pile of rubbish, generated by the zoo's visitors.". rubbish is fixed in place.
the description of Dudley's camera is "It is amazing that it isn't broken yet.".
understand "nudge [something]" as pushing.
instead of pushing dudley's camera, try taking dudley's camera.
hatch is a door. it is above waste disposal room and below endangered species room. hatch is closed and openable.
map is a thing. it is fixed in place. map is in marsupial place. The description is "The map shows the rooms around the zoo. There is a little symbol labelled 'hatch' in the endangered species room.".
before examining up when the player is in marsupial place:
	say "[first time]That explains how Dudley's camera got there.[only] There is a walkway above." instead.
Before going west when the player does not have dudley's camera:
	if the location is bird room:
		if the venture of Camera challenge is pending:
			say "You need to get the camera first.";
			stop the action;
		otherwise if the venture of camera challenge is not success:
			say "It isn't lunchtime yet.";
			stop the action;
		otherwise:
			continue the action.
understand "look [things]" as examining.
the zoo cafe is a room in le zoo. it is west of bird room. the description of zoo cafe is "To the east is the bird room.".
definition: something is unnocupied if there is nothing on it.
cafe table is a supporter in zoo cafe.
Dudley's knickerbocker glory is food on the cafe table. 
after going west when the location is zoo cafe for the first time:
	if the venture of camera challenge is success:
		say "'You took your time!' says uncle vernon. 'Dudley didn[']t want to finish his knickerbocker glory; It's too small for him. You can have the rest of this one.' Uncle Vernon wrenches the camera from your grasp, and gives it to Dudley.";
		move camera to Dudley;
		move dudley to a random chair in zoo cafe;
		move petunia to a random unnocupied chair in the zoo cafe;
		move uncle vernon to a random unnocupied chair in the zoo cafe;
		move Piers Polkiss to a random unnocupied chair in the zoo cafe;
		continue the action.
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
understand "food" as your knickerbocker glory.
report kicking:
	say "You kick [noun], causing them to yelp and jump backwards, looking annoyed.".
your knickerbocker glory is food on the cafe table. The description of your knickerbocker glory is "Half eaten, and considerably smaller than Dudley's new one.".
The description of Dudley's knickerbocker glory is "Bigger than your serving, but disappearing at an incredible rate. Dudley's eating could win him some prizes.".
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
after going east when the location is reptile house for the first time:
	say "Dudley stands with his nose pressed against the glass. 'Make it move', he whines. Uncle Vernon taps on the glass, but the snake won't budge.";
	continue the action.
after examining snake during zoo:
	say "You wouldn't be surprised if it had died of boredom - with no company except stupid people drumming their fingers on the glass trying to disturb it all day long. It was worse than having a cupboard as a bedroom, where the only visitor was Aunt Petunia hammering on the door to wake you up - at least he got to visit the rest of the house.[wait 10000 ms][paragraph break]The snake suddenly opened it's beady eyes. Slowly, very slowly, it raised its head until its eyes were on a level with yours.[wait 6000 ms][paragraph break][italic type]It winked.[roman type][paragraph break]The snake jerked its head towards Uncle Vernon and Dudley,  then raised its eyes to the ceiling. It gave Harry a look that said quite plainly: [italic type]'I get that all the time'[roman type][wait 4000 ms]'I know', you murmur through the glass, although you don't know if the snake can hear you. 'It must be really annoying.'[wait 4000 ms][line break]The snake nods vigorously.[wait 2000 ms]'Where do you come from, anyway?' You ask.[wait 2000 ms]The snake jabs its tail at a little sign next to the glass. You peer at it.  [italic type]Boa Constrictor, Brazil.[roman type][wait 2000 ms][line break]'Was it nice there?'[wait 1000 ms][line break]The boa constrictor jabbed its tail at the sign again and you read on. [wait 2000 ms][line break][italic type]This specimen was bred in the zoo.[roman type][wait 2000 ms][paragraph break]'Oh, I see - so you've never been to Brazil?'[line break]As the snake shook its head, a deafening shout behind you made both you and the snake jump. 'DUDLEY! MR DURSLEY! COME AND LOOK AT THIS SNAKE! YOU WON'T BELIEVE WHAT IT'S DOING!'[wait 2000 ms][line break]'Out of the way, you', snarls Dudley, punching you in the ribs. You fall. When you look back at the snake's enclosure, you see Piers and Dudley jumping back with howls of horror. The glass has vanished, and the snake is slithering awat across the floor. [wait 2000 ms][paragraph break][italic type]'Brazil, here I come ... Thankssss, amigo.'[roman type][paragraph break][wait 1000 ms] You see everyone standing around, looking shocked. 'Well, we should go', says a rather uncomfortable looking Uncle Vernon. He steers you out to the carpark, and the rest of the group follows suit.";
	now harry potter is in car;
	now uncle vernon is in car;
	now dudley is in car;
	now piers polkiss is in car;
	now aunt petunia is in car;
	now the venture of zoo is success;
	say "As everyone gets into the car, Dudley and Piers start talking loudly about the snake. Dudley was telling them how it had nearly bitten off his leg, while Piers was swearing it had tried to squeeze him to death. 'Harry was talking to it, weren't you, Harry?' says Piers. Uncle Vernon turns the colour of beetroot. The journey home seems to take an age.";
	move car to garden;
	increase time of day by 30 minutes.
after going west when the location is hall:
	if the venture of zoo is success:
		if piers is on-stage:
			say "'Bye Dudley', says Piers. The front door slams as he leaves. Uncle Vernon rounds on you, and says 'Go - cupboard - stay - no meals,' before collapsing into a chair. Aunt Petunia runs to fetch him some brandy.";
			now the description of cupboard under the stairs is "You can see a small, dark room with lots of spiders and your few measly possessions.";
			now Uncle Vernon is in hall;
			now Aunt Petunia is in hall;
			now Dudley is in hall;
			remove piers from play;
		otherwise:	
			continue the action;
	otherwise:	
		continue the action.
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
Privet Drive is a room in Privet'sstreets.. it is east of garden. the description of Privet Drive is "The garden is to the west.".
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
The dursley's Wardrobe is a container in The Dursley's Bedroom. it is closed and openable.  the description of wardrobe is "A large wooden wardrobe, made of the finest materials to please Your Aunt.".
wardrobe is fixed in place.
A Mirror is in the wardrobe. it is not portable.
understand "cupboard" as wardrobe.
clothing is a kind of thing. suit is a kind of clothing. muumuu is a kind of clothing. wizards robes is a clothing. tutu is a kind of clothing. tie is a kind of clothing. Pyjamas is a clothing.
bedside table is a supporter in Dursley's bedroom.
bedside drawer is a part of bedside table.
the description of the bedside table is "This is a bedside table. It has a drawer attached.".
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
all people can be asleep.
all people can be awake.
definition: a person is awake if they are not asleep.
juice box is a thing.
after entering bed when the venture of zoo is success:
	if juice box is off-stage:
		now the time of day is 9:00 pm;
		say "Exhausted by the day, you collapse into bed. You wait until night, so you can go and get food from the kitchen without the Dursleys catching you. In the meantime, you sit and think.[wait 4000 ms][paragraph break]You have lived with the Dursleys for almost  ten years, ten miserable years, as long as you can remember, ever since you were a baby and your parents died in a car crash. [wait 4000 ms][paragraph break]You can't remember being there when your parents died. Sometimes, you can recall a strange vision: a blinding flash of green light and a burning pain on your forehead. This, you suppose, was the crash, though you can't imagine where the green light might've come from.[paragraph break][wait 6000 ms] You can't remember your parents, and the Dursleys never talked about them. He wasn't allowed to ask questions, and there were no photos of them in the house.[wait 4000 ms][paragraph break]When you were younger, you had dreamed and dreamed of an unknown relation coming to tak you away, but this never happened; The Dursleys were your only family.[wait 4000 ms][paragraph break]Yet, sometimes, it seemed as though strangers in the street seemed to know you. Very strange strangers they were, too.[wait 4000 ms][paragraph break]A tiny man in a violet top had bowed to you once while out shopping, and a wild-looking old woman dressed in green had waved merrily to him once. A bald man in a very long purple coat had actually shaken his hand in the street the other day and then walked away without a word.[wait 6000 ms][paragraph break]The weirdest thing about all these people was the way they seemed to vanish, the second you tried to take a closer look.[wait 4000 ms][paragraph break]At school, you have no one. Everybody knew that Dudley's gang hated that odd Harry Potter in his baggy old clothes and broken glasses, and nobody liked to disagree with Dudley's gang. [paragraph break]Sometime during your musings, you fall asleep.";
		now Harry is asleep;
		remove egg from play;
		now juice box is in waste disposal room;
		remove bacon from play;
		now all presents are undescribed;
	otherwise:
		continue the action.
instead of sleeping when the location is cupboard under the stairs:
	try entering bed.
Release along with "Quixe" interpreter.

chapter 3 - the letters from no-one

zoo aftermath is a scene.
zoo aftermath begins when the venture of zoo aftermath is pending.
zoo aftermath ends when the venture of zoo aftermath is success.
Gordon is a person. 
Dennis is a person. 
Malcolm is a person.
before doing anything when the location is cupboard under the stairs:
	if the player is asleep:
		say "You wake up.";
		now the time of day is 7:30 am;
		now Harry is not asleep;
		now cupboard door is closed;
		now the venture of zoo aftermath is pending;		
		now Dudley is in hall;
		now Piers is in hall;
		now Dennis is in hall;
		now Gordon is in hall;
		now Malcolm is in hall.

instead of going east when the location is hall:
	if Dennis is in hall:
		say "You can't; Dennis takes up the whole doorway, and won't move. You might have to wait until they move.";
	otherwise:
		continue the action.
remote control airplane is a thing. the description is "it was crashed by Dudley. Never let him become a pilot.".
before opening cupboard door when the location is cupboard under the stairs during zoo aftermath:
	now the description of hall is "Dudley is here, with his friends Piers, Malcolm, Gordon, and half of Dennis; the other half of Dennis is out the front door, since they're too large to all fit into the one room. Though all of Dudley's friends are big and stupid, Dudley, being the biggest and stupidest of the lot, is the leader. They seem to be laughing at a story Dudley just told them about knocking Mrs Figg over while riding his bike for the first time. You'd like to go outside for a walk, but they're blocking the way. Hang on, didn't Dudley have a broken air rifle? What if I could fix it?";
	now Dudley's camera is in Dudley's second room;
	now the description of Dudley's camera is "Broken.";
	now remote control airplane is in Dudley's second room.
every turn during zoo aftermath:
	if the location is landing:
		if Dennis is in hall:
			say "You can hear the sound of Dudley's friends exiting the house. Now you can go for a walk.";
			remove malcolm from play;
			remove gordon from play;
			remove Piers from play;
			now the description of hall is "";
			remove dennis from play.
Air rifle is a thing in Dudley's second room. the description of air rifle is "I could use this. If Dudley hadn't sat on it and bent it. I could fix it though... [if the venture of zoo aftermath is pending]I just need a vice. Maybe in the garage...".
garage is a container. the description is "a grey box.". garage is in garden. garage is openable and closed. garage is enterable.
toolbox is a container in garage. the description of toolbox is "a box of Uncle Vernon's tools, almost completely unused.".
Hammer is a thing in toolbox.
Stanley knife is a thing in toolbox.
Saw is a thing in toolbox.
Vice is a thing in garage. the description is "a heavy duty clamp.".
after entering garage during zoo aftermath:
	if air rifle is carried:
		if the description of air rifle is not "a fully functioning air rifle. It isn't very powerful, but it would hurt.":
			say "You grab the vice and use it to hold one end of the air rifle, and slowly bend it back into shape.";
			now the description of air rifle is "a fully functioning air rifle. It isn't very powerful, but it would hurt.".
fixing is an action applying to one thing.
understand "fix [something]" as fixing.
report fixing:
	say "What is there to fix about [noun]?".
carry out fixing air rifle:
	if vice is carried:
		say "You fix the air rifle";
		now the description of air rifle is "a fully functioning air rifle. It isn't very powerful, but it would hurt.";
		stop the action;
		rule succeeds;
	otherwise:
		continue the action.
after going east when the location is privet drive during zoo aftermath:
	say "You spend the rest of the day [if air rifle is not carried]avoiding Dudley's gang.[otherwise]chasing Dudley's gang and shooting them with the air rifle.[end if]You go home, go to sleep, and get up again next morning.[wait 4000 ms][paragraph break]";
	now the venture of zoo aftermath is success;
	now the time of day is 7:30 am;
	now the player is in cupboard under the stairs.
the letters from no-one is a scene.
the letters from no-one begins when the venture of zoo aftermath is success.
the letters from no-one ends when the venture of the letters from no-one is success.
harry's uniform is a thing. 
sink is a thing in kitchen.
after going west when the location is kitchen during the letters from no-one:
	if harry's uniform is not seen:
		now Harry's uniform is in sink;
		remove newspaper from play;
		now Dudley is in kitchen;
		now Uncle Vernon is in kitchen;
		now Aunt Petunia is in kitchen;
		say "You come into the kitchen in the morning to have your nostrils assaulted by a horrible smell. The smell seems to be coming from a container in the sink, full of grey water and rags. 'What is this?', you ask your Aunt. 'Your new school uniform', she says. 'I'm dyeing some of Dudley's old things gray for you. It'll look just like everyone else's when i[']ve finished.' Uncle Vernon and Dudley enter the room, their noses wrinkled from the smell of your uniform.";
	otherwise:
		continue the action.
mail is a container. mail is openable and not open.
after doing anything when the location is kitchen during the letters from no-one:
	if newspaper is not in kitchen:
		now newspaper is in kitchen;
		now mail is in hall;
		say "Uncle Vernon opens his newspaper, and Dudley bangs his Smeltings stick on the table. You hear the click of a letter-box and the sound of letters flopping on the doormat. Uncle Vernon tells Dudley to get it. Dudley tells you to get it. You tell Dudley to get it. Dudley tries to hit you with his Smeltings stick. You go to get the letters.";
		continue the action;
	otherwise:
		continue the action.
after doing anything when the location is kitchen during the letters from no-one:
	if piece of toast is on table:
		remove piece of toast from play;
		say "Your Aunt takes the toast and throws it out. 'How long has that been there?' She asks. No-one answers her. She seems miffed that she isn't getting any attention.";
		continue the action;
	otherwise:
		continue the action.
every turn during letters from no-one:
	if mail is in hall:
		if mail is unseen:
			say "I said, 'You get the letters. Don't stuff up the continuity of the story. It's rude.";
		otherwise:
			continue the action;
	otherwise:
		continue the action.
understand "letter" or "letters" as mail. 
after taking mail for the first time:
	say "As you examine the mail, you see a postcard from Aunt Marge, who was on holiday, something that looked like a bill and - [italic type]a letter for Harry[roman type]. No one ever sends you letters, but here it was, a letter, adressed so plainly there could be no mistake:[paragraph break][italic type]Mr H. Potter[line break]The Cupboard under the Stairs[line break]4 Privet Drive[line break]Little Whinging[line break]Surrey[paragraph break][roman type]The thick, yellowish envelope has a purple wax seal on the back, bearing a coat of arms. 'Hurry up, boy!' shouted Uncle Vernon from the kitchen. 'What are you doing, checking for letter-bombs?' You hear him chuckling merrily.".
the description of mail is "[italic type]Mr H. Potter[line break]The Cupboard under the Stairs[line break]4 Privet Drive[line break]Little Whinging[line break]Surrey[paragraph break][roman type]The thick, yellowish envelope has a purple wax seal on the back, bearing a coat of arms.".
after going west when the location is kitchen during letters from no-one:
	if mail is carried:
		say "'Finally', says Uncle Vernon. You give him the other letters, and keep your own.";
		now the description of kitchen is "Uncle Vernon sits reading his mail, as you should be.";
		now the printed name of mail is "letter";
		continue the action;
	otherwise:	
		continue the action.
instead of examining mail when the location is kitchen:
	try opening mail.
before opening mail during the letters from no-one:
	if the location is not kitchen:
		say "You need to take Uncle Vernon his mail first.";
		stop the action;
	otherwise:
		say "'Marge's ill', Uncle Vernon informed Aunt Petunia. 'Ate a funny whelk...'[line break]'Dad!' said Dudley suddenly. 'Dad, Harry's got something!'[line break]Right before you unfold the heavy parchment letter, it is jerked sharply out of your hand by your Uncle.[wait 3000 ms][line break]'That[']s mine!', you say, trying to snatch it back.[line break]'Who'd be writing to you?' sneered Uncle Vernon, glancing at the letter. His face turned green. 'P-P-Petunia!' he gasped.[wait 3000 ms][line break]Dudley tried to grab the letter, but your Uncle held it out of his reach. Aunt Petunia took it and read the first line. For a moment it looked as though she might faint. She clutched her throat and made a choking noise. [wait 4000 ms][line break]'Vernon! Oh my goodness - Vernon!'[paragraph break]'I want to read it' [if the player is Harry]you say[otherwise]Harry says[end if], at the same time as Dudley. 'Get out, both of you,' croaks Uncle Vernon, 'OUT!', before he grabs both [if the player is harry]you[otherwise]Harry[end if] and Dudley by the neck and throws you out of the room.";
		now Dudley is in hall;
		now the description of kitchen is "";
		now kitchen door is closed;
		now kitchen door is locked;
		now the description of hall is "You can hear Uncle Vernon and Aunt Petunia arguing.";
		now Harry is in hall;
		now Uncle Vernon has mail;
		stop the action.
report listening when the location is hall during letters from no-one:
	if Harry is in hall:
		if Uncle Vernon is in kitchen:	
			if Aunt Petunia is in kitchen:
				if Uncle Vernon has mail:
					say "[first time]'Vernon,' Aunt Petunia says, 'look at the address - how could they possibly know where he sleeps? You don't think they're watching the house?'[wait 3000 ms][line break]'Watching - spying - might be following us,' mutters Uncle Vernon. [line break]'What should we do? Write back?' says your Aunt.[line break]'No, No, We'll ignore it. if they don't get an answer ... yes, that's best ... we won't do anything ...'[wait 4000 ms][line break]'But - '[wait 1000 ms][line break]'I'm not having one in the house! Didn't we swear that we'd stamp him out of this dangerous nonsense?'[wait 3000 ms][paragraph break][only]You can hear Uncle Vernon and Aunt Petunia walking around the room, muttering. Your cupboard door stands open." instead;
					now cupboard door is open;
					now the description of hall is "";
				otherwise:
					continue the action;
			otherwise:
				continue the action;
		otherwise:	
			continue the action;
	otherwise:	
		continue the action.
after going north when the location is cupboard under the stairs during letters from no-one:
	if uncle vernon has mail:
		now the time of day is 6:00 pm;
		now bed is in Dudley's second room;
		say "You spend the rest of the day thinking up ways of getting your letter back. After getting home from work, Uncle Vernon did something he'd never done before: he visited you in your cupboard. 'Where's my letter?' you ask. 'Who wrote to me?'[line break]'No one. it was adressed to you by mistake,' says Uncle Vernon. 'I have burned it.' 'It was [italic type]not[roman type] a mistake', you say. 'It had my cupboard on it.'[line break]'SILENCE!' yells Uncle Vernon. 'Er - yes, Harry - about this cupboard, We think you're getting a bit big for it... we think it might be nice if you moved into Dudley's second room. You can grab all your things and move up now.'";
		now Dudley is in Dudley's bedroom;
		now the description of hall is "";
		now the description of Dudley's second room is "You can see all of Dudley's old junk. It seems Uncle Vernon moved your bed up here.";
		now the printed name of Dudley's second room is "Your new room".
Mini tank is a thing in Dudley's second room. the description of mini tank is "a mini tank that Dudley had one used to run over your next door neighbour's dog.".
Bird cage is a thing in Dudley's second room. the description of bird cage is "This once held a parrot, but Dudley swapped it for the air rifle.".
bookshelf is a supporter in Dudley's second room. the description of bookshelf is "The books on here look like the only things that are untouched.".
Dudley's books is a thing on bookshelf. the description of Dudley's books is "A variety of books, ranging from those appropriate to Dudley, such as the hungry catterpillar, to more complex books such as Eragon and Harry Potter and the Philosopher's Stone. Wait...".
shooting is an action applying to one thing.
understand "shoot [anything]" as shooting.
before shooting:
	if air rifle is carried:
		if the description of air rifle is "a fully functioning air rifle. It isn't very powerful, but it would hurt.":
			continue the action;
		otherwise:	
			say "The air rifle's broken";
	otherwise:
		say "With what?".
understand "shoot [anyone]" as shooting.
carry out shooting:
	say "You shoot [noun] with the air rifle. [if noun is a person][noun] yells.[otherwise][end if]".
The post is a scene. 
The post begins when the venture of the post is pending.
The post ends when the venture of the post is success.
after going northeast when the location is dudley's second room during the letters from no-one:
	if the printed name of Dudley's second room is "Your new room":
		repeat with X running through things carried by player:
			silently try dropping X;
		now the time of day is 7:30 am;
		say "You walk into the room and drop all of your things on the ground. Yesterday, you would've given anything to be up here. Today, you would rather be in the cupboard, without it. From downstairs, you hear the sound of Dudley complaining about you taking his room, mingled with the sound of Uncle Vernon yelling. It appears that more letters were forced through the letter-box, through the crack between the door and the wall, and the window in the downstairs toilet. Over the next few days, more letters find their way into the house. [paragraph break]One fine Sunday morning, after waking, Aunt Petunia calls you for breakfast.";
		now kitchen door is open;
		now kitchen door is unlocked;
		now the venture of letters from no-one is success;
		now the venture of the post is pending;
		now the description of hall is "You see Uncle Vernon sitting in front of the letterbox, boarding it up.";
	otherwise:
		continue the action.
The sea is a region.
Shack is a room in the sea. the description is "There is another small room to the east.".
sofa is a supporter in shack. sofa is fixed in place.
fireplace is a container in shack. fireplace is fixed in place.
incorporeal thing is a kind of thing.
fire is an incorporeal thing. fire is fixed in place.
instead of taking fire, say "Dudley might be stupid enough to try, but not you.".
after going west when the location is kitchen during the post:
	now Uncle Vernon is in kitchen;
	say "Uncle Vernon comes into the room. 'No post on Sundays,' he reminded them all happily, 'no damn letters today -'[line break]Something came whizzing down the chimney as he spoke and caught him sharply on the head. Next moment, thirty or forty letters pelt out of the fireplace. While the others duck, You jump and try to catch one - [line break]'Out! OUT!'";
	if glulx timekeeping is supported:
		wait 5000 ms before continuing;
	say "[line break]Uncle Vernon seizes you around the waist and throws you into the hall, while the others run after. The kitchen door closes behind them. 'That does it.' says Uncle Vernon. 'I want you all ready to leave in five minutes. We[']re going away. Just pack some clothes. No arguments!'";
	if glulx timekeeping is supported:
		wait 5000 ms before continuing;
	increase time of day by 10 minutes;
	say "[line break]Ten minutes later, everyone was in the car, speeding along the highway. They drove. And drove. Even Aunt Petunia didn't dare ask where they were going. After spending the night in a hotel, the family was back on the road again.";
	if glulx timekeeping is supported:
		wait 4000 ms before continuing;
	now time of day is 4:00 pm;
	say " 'Wouldn't it be better just to go home, dear?' Aunt Petunia suggested. Uncle Vernon pays no attention. After hours of roaming, the car stops at the coast and Uncle Vernon gets out, locking the door at the same time. After a while, Dudley starts complaining. 'It's Monday, and the Great Humberto's on tonight. I want to stay somewhere with [italic type]television[roman type].'[line break]If it is Monday, then it's your birthday tomorrow. Of course, your birthdays are never very fun - last year, you recieved a coat-hanger and a pair of old socks that used to belong to Uncle Vernon. Still, you weren't eleven every day.[paragraph break]";
	if glulx timekeeping is supported:
		wait 10000 ms before continuing;
	say "Uncle Vernon comes, smiling, back to the car, carrying a long, thin package, which he wouldn't tell Petunia about. 'Found the perfect place!' he says. 'Come on! Everyone out!'[line break]You walk along the coast, before coming to a halt in front of an old rowing boat which your Uncle says was lent to you buy the  toothless old man standing next to him. Everyone hops into the boat, and are soon rowing towards a small, miserable looking shack on a rock in the middle of the ocean.[paragraph break]";
	if glulx timekeeping is supported:
		wait 8000 ms before continuing;
	say "After reaching the rock, everyone gratefully clambers out of the boat. The shack smells horribly like seaweed. Uncle Vernon, who promised he'd brought rations, turned out to be in possession of four packets of crisps, and four bananas. After eating, he chucks the empty crisp packets into the fire and tries to light it, but they just shrivel up. 'Could do with some of those letters now, eh?' he says. Aunt Petunia and Uncle Vernon go into the only other room, and Dudley sleeps on the sofa. You get the floor. You check Dudley's watch, on his arm which is sticking over the side of the sofa. [paragraph break]Five minutes to go.";
	now the time of day is 11:54 pm;
	now Harry Potter is in Shack;
	now Dudley is in Shack;
	now Aunt Petunia is in Shack;
	now Uncle Vernon is in Shack.
[the times are offset because the check for time of day comes before the time of day refreshes]	
Hagrid is a person.
Hagrid's scene is a scene. 
Hagrid's scene begins when the venture of post is success.
Hagrid's scene ends when the venture of Hagrid's scene is success.
every turn when the location is Shack:
	if the time of day is 11:55 pm:
		say "4 minutes to go.";
	otherwise if the time of day is 11:56 pm:
		say "3 minutes to go.";
	otherwise if the time of day is 11:57 pm:
		say "2 minutes to go.";
	otherwise if the time of day is 11:58 pm:
		say "1 minute to go.";
	otherwise if the time of day is 11:59 pm:
		now fire is in fireplace;
		say "BOOM. [wait 1000 ms]The whole shack shivered. You sit bolt upright. Someone was outside, knocking to come in. [line break]BOOM. [wait 1000 ms]They knocked again. Dudley jerked awake. 'Where[']s the cannon?' he said stupidly. [line break]There was a crash as Uncle Vernon skidded into the room, holding a rifle in his hands - now they knew what was in the package that he had brought with him.[line break]'Who's there?' he shouted. 'I warn you - I'm armed!;[line break]There was a pause. Then -[line break]SMASH![line break]The door was knocked off of its hinges and landed on the floor. A giant of a man was standing in the doorway. [wait 5000 ms]The giant squeezed his way into the hut. He picked up the door and fitted it back into it's frame. He turned around to look at them. [wait 4000 ms][line break]'Couldn't make us a cup o' tea, could yeh? It's not been an easy journey...'[line break] The stranger strolled over to the sofa and told Dudley to move. Dudley instead ran squeaking over to his parents. [wait 4000 ms][line break]'An here's Harry!' said the giant.";
		now the venture of post is success;
		now Hagrid is in shack;
	otherwise:
		say "[no line break]";
		continue the action.
		
chapter 4 - the keeper of keys	
	
cake is a thing. the description is "It says 'Happy Birthday Harry' on it.".
after doing anything during Hagrid's scene:
	say "[first time]'I demand that you leave at one, sir!' says Uncle Vernon. 'You are breaking and entering!'[line break]The giant wrenched the gun out of Uncle Vernon's hands, and bent it into a knot, before throwing it aside. [line break]'I haven' seen you since you was only a baby. I[']m Hagrid, by the way. Rubeus Hagrid. I got summat for yeh - it's in my coat. Here you go.' [paragraph break]He gives you a box which he removed from his jacket, which, upon opening, contained a large chocolate cake with [italic type]Happy Birthday Harry[roman type] written on it in green icing. 'You wouldn['] mind making some tea and sausages, would yeh? they're in my coat. Start by getting out the tea pot and puttin['] some tea leaves in it. Then go to the other room to get some water.' Hagrid bent down in front of the fire, and when he stood up a fire was roaring in the grate. [only][no line break]"; 
	now cake is in shack;
	now hagrid's coat is in shack;
	now the description of shack is "There is another small room to the east. a fire is crackling merrily in the grate.";
	continue the action.
hagrid's coat is clothing. hagrid's coat is carried by hagrid. the description of hagrid's coat is "there are a whole bunch of pockets all around the coat. try opening a pocket.".
pocket is a container. pocket is part of hagrid's coat. pocket is closed and openable.
teapot is a container in pocket. understand "pot" as teapot.
understand "a pocket" as pocket.
tea leaves is a thing in pocket.
blanket is a thing in shack.
The Second bedroom is a room. it is east of shack. the description of second bedroom is "The small room in which your aunt and uncle sleep. The door is to the west.".
second bedroom is in sea.
A mouldy old bed is a container in second bedroom. bed is enterable. bed is not portable.
Dirty sink is a container in second bedroom. sink is fixed in place.
water is a thing. 
after taking water, try inserting water into teapot.
understand "kettle" as teapot.
water is in Dirty sink.
filling is an action applying to two things.
understand "fill [something] with [something]" as filling.
report filling:
	if noun is not teapot:
		say "I don't know if that's a good idea. It might be. I just don't know.".
carry out filling teapot for the first time during hagrid's scene:
	if water is in dirty sink:
		if the location is second bedroom:
			if teapot is carried:
				if hagrid does not carry hagrid's coat:
					now water is in teapot;
					try silently moving to hagrid's coat;
					say "You fill the teapot with water. From the other room, Hagrid calls out to you. 'How're you going there, Harry? anyway, I'm the keeper of keys at Hogwarts. Yeh'll know all about Hogwarts, o['] course. [line break]'Er, no' you call back. 'Sorry'.[wait 3000 ms][line break]'[italic type]Sorry?'[roman type] barks Hagrid. 'It's them that should be sorry! I knew you weren't getting the letters, but I still thought you'd know about Hogwarts, fer crying out loud! Didn't you ever wonder where your parents learnt it all?[wait 3000 ms][line break]'All what?'[wait 1000 ms][line  break]'ALL WHAT! Don['] you know - Don't you know anything, about yer parents world?[wait 2000 ms][line break]'What world?[wait 1000 ms][line break]'DURSLEY!' booms Hagrid.";
			stop the action;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
carry out inserting water into teapot during hagrid's scene:
	if the location is second bedroom:
		if teapot is carried:
			if hagrid does not carry hagrid's coat:
				say "You fill the teapot with water. From the other room, Hagrid calls out to you. 'How're you going there, Harry? anyway, like I told you, I'm the keeper of keys at Hogwarts. Yeh'll know all about Hogwarts, o['] course. [line break]'Er, no' you call back. 'Sorry'.[wait 3000 ms][line break]'[italic type]Sorry?'[roman type] barks Hagrid. 'It's them that should be sorry! I knew you weren't getting the letters, but I still thought you'd know about Hogwarts, fer crying out loud! Didn't you ever wonder where your parents learnt it all?[wait 3000 ms][line break]'All what?'[wait 1000 ms][line  break]'ALL WHAT! Don['] you know - Don't you know anything, about yer parents world?[wait 2000 ms][line break]'What world?[wait 1000 ms][line break]'DURSLEY!' booms Hagrid.";
			now water is in teapot;
			move hagrid's coat to hagrid;
			stop the action;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
bag of coins is a container. bag of coins is openable and closed.
there are 10 knuts in bag of coins.
there are 10 sickles in bag of coins.
there are 10 galleons in bag of coins.
instead of opening hagrid's coat, try opening pocket.
after going west when the location is shack during hagrid's scene:
	if teapot is carried:
		if water is in teapot:
			say "As you enter, Hagrid says 'You never told him? You kept it from him for all these years?'[wait 2000 ms][line break]'Kept [italic type]what[roman type] from me?' you ask eagerly.[wait 2000 ms][line break]'STOP! I FORBID YOU!' says Uncle Vernon, panicking.[wait 2000 ms][line break]'Ah, go boil yer heads, both of yeh,' says Hagrid. 'Ruddy great Muggles. Harry - yer a wizard.'[wait 4000 ms][line break]'I'm a [italic type]what?[roman type]' you ask. [line break]'A wizard, and a good one i'd reckon, once yer trained up a bit. It's time you read your  letter.' Hagrid hands you a letter.";
			now harry carries mail;
			now mail is closed;
			now the description of mail is "[italic type]Mr H. Potter[line break]The Floor[line break]Hut-on-the-Rock[line break]The Sea[roman type][line break]The thick, yellowish envelope has a purple wax seal on the back, bearing a coat of arms. You gingerly open the envelope.";
			try opening mail;
			try examining mail;
			if glulx timekeeping is supported:
				wait 6000 ms before continuing;
			say "[line break]You look up. 'What does it mean, they await my owl?'[line break]Hagrid, appearing to just have his memory jogged, reaches inside one of his coat's many pockets, and extracts a real, live owl. He also extracts a quill and a roll of parchment. You read the letter he is writing upside down:[paragraph break]";
			teletype "[italic type]Dear Mr Dumbledore,[line break]Given Harry his letter. Taking him to buy his things tomorrow.[line break]Weather's horrible. Hope you're well.[line break]Hagrid[roman type]";
			say "[paragraph break]He rolls it up, and gives it to the owl, which takes the letter and flies out the window. Uncle Vernon regains his courage. 'I WILL NOT PAY FOR SOME CRAKPOT OLD FOOL TO TEACH HIM MAGIC TRICKS!' he yells. He had gone too far. Hagrid seizes his umbrella, and thunders 'NEVER - INSULT - ALBUS - DUMBLEDORE - IN - FRONT - OF - ME!'[wait 7000 ms][line break]He brought the umbrella swishing down through the air, and the next second there was a cracking sound, and Dudley was dancing around, holding his fat bottom. When he turned, they saw a pigs tail stiching out of a hole in his pyjamas. Dudley's parents grabbed him and threw him into the next room, before slamming the door shut. 'Alright Harry, it'd do to get some sleep before tomorrow. Here, use this.' says Hagrid. He gives you his coat to sleep under, which you promptly do. [wait 6000 ms][line break]You wake next morning.";
			now hagrid is asleep;
			now harry is asleep;
			now pocket is closed;
			now bag of coins is in pocket;
			now time of day is 7:00 am;
			now the venture of hagrid's scene is half-complete.
after opening mail during hagrid's scene:
	if water is in teapot:
		if the location is shack:
			if hagrid is in shack:
				now the description of mail is "You unfold the letter and read: [paragraph break]HOGWARTS SCHOOL OF WITHCRAFT AND WIZADRY[paragraph break][italic type]Headmaster: Albus Dumbledore[line break](Order of Merlin, First Class, Grand Sorc., Chf. Warlock,[line break]Supreme Mugwump, International Confed. of Wizards[paragraph break]Dear Mr Potter,[line break]    We are pleased to inform you that you have a place at Hogwarts School of Witchcraft and Wizardry. Please find enclosed a list of all necessary books and equipment.[line break]    Term begins on 1 September. We await your owl by no later than 31 July. [paragraph break]Yours sincerely,[paragraph break][roman type]Minerva McGonagall[line break]Deputy Headmistress.".
instead of searching hagrid's coat, try examining hagrid's coat.
instead of looking under hagrid's coat, try examining hagrid's coat.
instead of looking when the venture of hagrid's scene is half-complete:
	if the location is shack:
		if player is asleep:
			say "[first time]You keep your eyes screwed shut, knowing that the events of yesterday where a dream. You are at home in your cupboard, waiting for your Aunt to knock on the door. [only]Waiting for her to knock...";
		otherwise:
			continue the action;
	otherwise:
		continue the action.
a person can be asleep.
definition: a person is awake if they are not asleep.
carry out listening when the venture of hagrid's scene is half-complete:
	if the location is shack:
		say "[first time]You hear a loud tapping noise. There's Aunt Petunia, you think, come to wake you up. You wished that yesterday was real, that you really where going off to a wizards school. You open your eyes, to the sight of the dark, damp hut. The tapping is coming from an owl, by the closed window. [only]Hagrid is lying in a corner, snoring loudly.";
		now harry is awake;
		now harry is not asleep;
		stop the action;
		rule succeeds;
	otherwise:
		continue the action.
a window is a container in shack. a window is not portable. a window is openable and closed.
owl is a thing.
instead of opening pocket when the venture of Hagrid's scene is half-complete:
	unless owl is in shack:
		say "You shouldn't; That's not yours. Besides, who knows what could be in there... Did it just wriggle?";
	otherwise:
		say "[first time]You open one of the pockets at random, and find a large bunch of keys. Another pocket yields mint humbugs. Then you find slug pellets, and three more packets of sausages, before finally stumbling across a bag of strange-looking coins.[only][no line break]";
		continue the action.
after opening pocket when the venture of Hagrid's scene is half-complete:
	stop the action;
	rule succeeds.
the rock is a room. the description is "You can see Uncle Vernon's borrowed rowing boat bobbing in the water.".
the shack's door is a door.
the shack's door is west of the shack and east of the rock. the printed name of the shack's door is "the shack's door".
after opening a window:
	say "You open the window, and the owl flies in. The owl drops a newspaper on Hagrid, before beginning to attack Hagrid's coat. 'Hagrid, there's an owl', you say. 'Pay [']im', responds Hagrid. 'There's money in one o['] my coat pockets. Give him five Knuts. They're the little bronze ones. The Silver ones're called Sickles, and the gold are Galleons.'";
	now owl is in shack.
instead of taking owl, say "It doesn't seem like the owl would appreciate that. It ruffles it's feathers at you.".
instead of taking hagrid's coat, say "That's not yours.".
pouch is a container. pouch is open and openable. pouch is part of owl.
after opening bag of coins, say "The owl holds out its leg, displaying a little, open pouch. It watches you expectantly.".
every turn when the venture of hagrid's scene is half-complete:
	if there are 5 knuts in pouch:
		if owl is in shack:
			now owl is off-stage;
			say "The owl flutters out the open window. Hagrid gets up, yawning loudly, and says 'Best be off Harry. Lots to do.' He notices you looking at the coins in the bag, and says 'I wouldn['] worry [']bout money; Your parents left you some. It's in the wizard's bank, Gringotts.  We'll go there soon enough.' Hagrid takes his coat and walks out the door.";
			now bag of coins is off-stage;
			now pocket is off-stage;
			now Hagrid is wearing hagrid's coat;
			now Hagrid is in rock;
			now the venture of Hagrid's scene is success;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
every turn during hagrid's scene:
	unless there are at least 25 things in bag of coins:
		say "You shouldn't take Hagrid's money.".
boat is a container in rock. boat is enterable. boat is not openable and open.
Diagonalley is a scene.
Diagonalley begins when the venture of hagrid's scene is success.
Diagonalley ends when the venture of diagonalley is success.
street is a room.
every turn when the location is rock during diagonalley:
	if boat is in rock:
		if street is unvisited:
			say "'Well, get in Harry', says Hagrid.";
		otherwise:
			continue the action;
	otherwise:
		continue the action.
after entering boat during diagonalley:
	if boat is in rock:
		if street is unvisited:	
			now Hagrid is in boat;
			say "Hagrid jumps in the boat next to you, squishing you against the side. He looks at the boat. 'Seems a shame to row', he says. He glances over his shoulder, before saying 'If I sped things up a bit, would you mind not mentioning it at Hogwarts?'[line break]'Sure,' you say. Hagrid retrieves his pink umbrella from inside his coat and taps the side of the boat. The boat sped away towards the harbour. 'Hagrid, what's a muggle?'[wait 5000 ms][line break]'It's what we call non-magic folk, and your family are the biggest group o['] muggles I've ever seen, and I don't just mean physical size!'[wait 2000 ms][line break]'What about my parents?' you ask.[line break]Hagrid sighs. 'Your parents were a great witch and wizard, but even the greatest aren't invulnerable.  I can't tell yeh everythin['], Because no-one knows all of it... [wait 4000 ms][line break]It begins with a person called - called -'[wait 2000 ms][line break]'Called what?' you ask.[wait 1000 ms][line break]'Blimey, it's incredible you don't know his name, everyone in our world does - I don['] like sayin['] the name if I don't have to, and I'm not alone in that.'[wait 2000 ms][line break]'Why not?'[wait 1000 ms][line break]'Because people are still scared, even after all this time... See, there was this wizard who went... bad. As bad as you could go. His name was... was [wait 4000 ms][line break]'Was what?'[wait 1000 ms][paragraph break][italic type]'Voldemort[roman type].' [wait 2000 ms][paragraph break]Hagrid shuddered. 'Anyway, about 20 years ago, he started gathering followers, and he found loads of people. Some afraid, and some just power hungry, because he had power. Dark days, Harry. Didn't know who you could trust. Hogwarts was one o['] the only safe places left, because of Dumbledore, the headmaster. Your mum and dad were at Hogwarts then, and as good a witch and wizard as I ever knew. They were close to Dumbledore. [wait 6000 ms][line break]And then, one day, at Hallowe'en ten years ago, he went to find them. He came to your house, and -'[wait 2000 ms][line break]Hagrid pulled a spotted handkerchief out of his pocket and blew his nose. [paragraph break]'You-know-who killed your parents. And then - and this is the mysterious bit - he tried to kill you too. Turned his wand on you, and ended up destroying himself, while you just got a scar. No one knows what happened to him afterwards, except that he hasn't been seen since. I took you from the house personally, took you to the muggles, and you'd know the rest better than I would,' he says, sighing. The boat bumps up against the harbor wall, and you climb out onto the street.";
			now boat is in street;
			now Hagrid is in street;
			now Harry is in street;
		otherwise:
			continue the action;
	otherwise:
		continue the action.
Passers-by is a person in street. 
rule for printing the name of passers-by when doing something to passers-by:
	say "they".
The description of street is "The station is to your west. Passers-by stare at you as you walk through the street. Hagrid being twice as tall as a normal man, and the way he kept pointing out ordinary things like parking meters and saying loudly 'See that Harry? Things these Muggles dream up, eh?', might've had something to do with it.".
public streets is a region.
street is in public streets.
the description of Passers-by is "They look away quickly as you look at them.".
the station is a room in public streets. the station is west of street.
the description of the station is "a greyish, gloomy room presents itself to you. The train tracks run along one side.".
tracks is scenery in station.
timetilltrain is indexed text that varies. timetilltrain is "in 6 minutes.".
every turn during diagonalley:
	if the location is station:
		if timetilltrain is "in 6 minutes.":
			now timetilltrain is "in 5 minutes.";
		otherwise if timetilltrain is "in 5 minutes.":
			now timetilltrain is "in 4 minutes.";
		otherwise if timetilltrain is "in 4 minutes.":
			now timetilltrain is "in 3 minutes.";
		otherwise if timetilltrain is "in 3 minutes.":
			now timetilltrain is "in 2 minutes.";
		otherwise if timetilltrain is "in 2 minutes.":
			now timetilltrain is "in 1 minute.";
		otherwise if timetilltrain is "in 1 minute.":
			now timetilltrain is "coming now.".
the description of tracks is "Long, greyish metal bars the train runs on. Hagrid marvels at them as well.".
timetable is a thing in station. timetable is fixed in place. the description is "The next train is to London, [timetilltrain]".
ticket machine is a container in station. ticket machine is fixed in place. the description is "The machine says that it is 2 pounds for a ticket.".
ticket machine is closed and not openable.
muggle money is a thing.
before going west during diagonalley:
	if the location is street:
		if station is unvisited:
			say "'Now, I don't understand this muggle money,' says Hagrid. 'Can you please go and buy tickets from the machine? Here's some money.'";
			now Harry carries muggle money.
tickets is a thing in ticket machine.
understand "track" as tracks.
understand "train track" as tracks.
understand "train tracks" as tracks.
understand "ticket" as tickets.
understand "ticket from machine" as tickets.
understand "tickets from ticket machine" as tickets.
understand "ticket from ticket machine" as tickets.
understand "tickets from machine" as tickets.
ticket machine is transparent.
before buying tickets for the first time:
	say "you pay the machine for the ticket.";
	now Harry carries tickets;
	now muggle money is off-stage;
	stop the action;
	rule succeeds.
train is a container. train is enterable. train is closed and openable. train is not portable. train is transparent.
understand "door" and "train door" as train.
instead of dropping letter, say "You still need that!".
school list is a thing. the description is "HOGWARTS SCHOOL OF WITCHCRAFT AND WIZARDRY[paragraph break]Uniform[line break][italic type]First year students will require:[line break]    1. Three sets of plain work robes (black)[line break]    2. One plain pointed hat (black) for day wear[line break]    3. One pair of protective gloves (dragon hide or similar)[line break]    4. One winter cloak (black, silver fastenings)[line break]Please note that all pupils['] clothes should carry name tags[paragraph break][roman type]Set Books[line break][italic type]All students should have a copy of each of the following:[line break][roman type]The standard Book of Spells (Grade 1) [italic type] by Miranda Goshawk[line break][roman type]A History of Magic [italic type]by Bathilda Bagshot[line break][roman type]Magical Theory [italic type]by Adalbert Waffling[line break][roman type]A Beginner's Guide to  Transfiguration [italic type]by Emeric Switch[line break][roman type]One Thousand Magical Herbs and Fungi [italic type]by Phyllida Spore[line break][roman type]Magical Drafts and Potions [italic type]by Arsenius Jigger[line break][roman type]Fantastic Beasts and Where to Find Them [italic type]by Newt Scamander[line break][roman type]The Dark Forces: A Guide to Self-Protection [italic type]by Quentin Trimble[paragraph break][roman type]Other Equipment[line break]    [italic type]1 wand[line break]    1 cauldron (pewter, standard size 2)[line break]    1 set glass or crystal phials[line break]    1 telescope[line break]    1 set brass scales[paragraph break]Students may also bring an owl OR a cat OR a toad[paragraph break][roman type]PARENTS ARE REMINDED THAT FIRST YEARS ARE NOT ALLOWED THEIR OWN BROOMSTICKS".
every turn during diagonalley:
	if train is unseen:
		if timetilltrain is "coming now.":
			if the location is station:
				now train is in station;
				say "The train rushes into the station. Hagrid grabs your arm and drags you onto the train. 'Now, have you still got that letter? It's got a list of your school things inside it.' .";
				now school list is in mail;
				now Hagrid is in train;
				now Harry is in train.
leaky cauldron is a room.
after examining school list during diagonalley:
	if Harry is in train:
		if leaky cauldron is not visited:
			say "[wait 3000 ms]'Can we buy all of this in London?' you ask. [line break]'If you know where to go', says Hagrid. 'Hey look, we're here!'[line break]Hagrid pulls you off the train and into a small bar. 'This, Harry, is the leaky cauldron.'";
			now harry is in leaky cauldron;
			now hagrid is in leaky cauldron;
			say "The barman asks 'The usual, Hagrid?'[line break]'Can't. Tom, I'm on Hogwarts Business. I'm taking Harry here to buy his school things.'[wait 2000 ms][line break]The room goes quiet. 'Good lord. Can it be... can it be Harry Potter?'[line break]What seems like the entire bar queues up to shake your hand; some keep coming back. [line break]'Welcome back Mr Potter, Welcome back!'[line break]'So proud, Mr Potter, I'm just so proud - '[line break]'P-P-Potter, c-can't tell you how p-pleased I am to meet you.'[line break]'Harry, this is Professor Quirrell. He's a Hogwarts teacher.' says Hagrid.".
the description of leaky cauldron is "The leaky cauldron is small, dark and shabby. A few old women sit in one corner, drinking sherry. The barman was talking to a little man in a top hat. Everyone seems to know Hagrid. ".
Tom is a person in leaky Cauldron. the description of tom is "Tom, an old, bald and wizened gentleman, is the bartender of the leaky cauldron. Tom is standing with his back up against the wall. It looks like he's covering something.".
after saying hello to tom, say "'Is there anything I can do for you, Mister Potter?' Tom wheezes.".
button is a thing in leaky cauldron. button is undescribed.
your drink is a thing.
carry out pushing button:
	if button is undescribed:
		say "Tom is in the way.";
		stop the action;
	otherwise:
		say "You press the button.";
		stop the action;
		rule succeeds.
report pushing button:
	do nothing.
after doing anything in leaky cauldron:
	if button is described:
		now button is undescribed;
		say "Tom moves back over to his spot. [line break]'Here you go, here's your drink.'";
		now your drink is on bar;
		continue the action.
after reading a command when the location is leaky cauldron:
	if word number 1 in the player's command is "buy":
		if Tom is in leaky cauldron:
			let T be indexed text;
			let T be the player's command;
			replace word number 1 in T with "";
			say "Tom turns around to make you the[T], revealing a button on the wall.";
			now button is described;
			stop the action;
			rule succeeds.
adrink is a thing. adrink is on bar. the printed name of adrink is "drink". understand "drink" as adrink.
instead of requesting tom for something:
	say "Tom turns around to make you a [second noun], revealing a button on the wall.";
	now button is described;
	stop the action;
	rule succeeds.
Dedalus Diggle is a person in leaky cauldron. the description of Dedalus is "Diggle appears very excited to meet you. You recognise him. He was the one who bowed to you once in a shop.".
old woman is a kind of person. the plural of old women is old women. the description of old woman is "The group are all staring at you. The bottle of Sherry, for the first time, sits forgotten on their table.".
Professor Quirrell is a person in leaky cauldron. the description of professor Quirrell is "A young man, pale and thin, Professor Quirrell appears extremely jumpy. If he's a professor at Hogwarts, it must be an interesting place.".
Doris Crockford is a person in leaky cauldron. the description of Doris Crockford is "Doris shakes your hand again.".
A small table is a thing in leaky cauldron. the description of a small table is "The little table is surrounded by the group of old women, who, before you entered were drinking sherry, but are now staring open mouthed at you. ".
there are 5 chairs in leaky cauldron.
there is 5 old women in leaky cauldron.
a rusty old door is a door.
london is a region. leaky cauldron is in london.
courtyard is a room.
bar is a supporter in leaky cauldron. the description of bar is "The bar is highly polished from all the glasses that have slid across its surface.".
a rusty old door is west of courtyard and east of the leaky cauldron.
the description of courtyard is "'See? I told you that you're famous. Even Professor Quirrell was trembling ter meet yeh - mind you, he's usually tremblin[']. Poor bloke. He was fine until he went on a trip one year to experience the dark arts first hand, but they say he met some vampires in the Black Forest and he had some trouble with a hag, and he's never been the same since.'".