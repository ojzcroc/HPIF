"Harry Potter and the philosopher's stone" by Orion Zymaris

chapter 2 - The Vanishing Glass

current chapter is a number that varies. current chapter is 2.
Dursley's house is a region.
Harry Potter is a person. the player is Harry Potter. Harry Potter is wearing a shirt. harry Potter is wearing pants.
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
	say "[bold type]Welcome to An Interactive Fiction version of Harry Potter.[line break][italic type]                (If you ever need help, type help.)[roman type][paragraph break]Nearly ten years had passed since the Dursleys had woken up to find their nephew in the front step, but Privet Drive had hardly changed at all. The sun rose on the same tidy front gardens and lit up the brass number four on the Dursley's front door; it crept into their living-room, which was almost exactly the same as it had been on the night when Mr Dursley had seen that fateful news report about the owls.[paragraph break][run paragraph on]";
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
Aunt Petunia is a person.
Uncle Vernon is a person.
Dudley is a person.
Bed is a container in Cupboard under the stairs. it is open and not openable. it is unlocked and not lockable. Harry Potter is in bed.
The description of Cupboard under the stairs is "You can[if glasses are not worn] barely[end if] see a small, dark room with lots of spiders and your few measly possessions. Not as interesting as the dream you were having - There had been a flying motorbike in it. You have a funny feeling that you've had the same dream before...".
Hall is a room. It is in Dursley's house.
Cupboard door is a door. it is south of Cupboard under the stairs and north of Hall. it is closed and openable. it is unlocked and lockable.
Clothing is a kind of thing. clothing is wearable.
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
	otherwise:
		say "[noun] is off-stage.".
a pair of shoes is clothing in Cupboard under the stairs.
Check wearing shoes:
	if socks are not worn:
		say "What, with no socks?" instead.
turn counting is an action applying to nothing.
understand "turn count" as turn counting.
carry out turn counting:
	say "[turn count]".
the description of Harry Potter is "You're rather small and skinny for your age... the only thing you like about your appearance is your lighting shaped scar.".
a chess set is a thing in Cupboard under the stairs. The description is "A battered old chess set you found in the corner of the cupbard. However boring it might be, it's less boring than being lectured by uncle Vernon.".
a roll of sellotape is a thing in Cupboard under the stairs. The description is "I thought i'd keep this after Dudley kept breaking my glasses.".
glasses is a thing in Cupboard under the stairs. it is wearable. The description is "At least they had the common decency to get me glasses. Then again, if they didn't, i'd be useless to them, wouldn't I?".
after going through cupboard door:
	say "'Get a move on, I want you to look after the bacon. And don't you dare let it burn, I want everything perfect on Duddy's birthday.'. You see the kitchen door slam as Petunia walks through and closes it.";
	continue the action.
groaning is an action applying to nothing.
understand "groan" as groaning.
report groaning when the location is hall:
	if the location of petunia is kitchen:
		say "'What did you say?' snaps Aunt Petunia.";
	else:
		say "You groan.".
Underlying relates various things to one thing.
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
white door is a door. it is west of hall and east of kitchen.
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
Table is a thing in kitchen.