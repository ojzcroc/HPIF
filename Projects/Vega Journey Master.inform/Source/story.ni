"Vega Journey" by Orion Zymaris

[before releasing game, make a new version with not for release functions added for stats and other test commands for other players to use]
the file of npc placement is called "NPCPlacement".
sound of typewriter keys is the file "typewriter_key_1.ogg".
Include Real-Time Delays by Erik Temple.
Include Menus by Emily Short.
Include Glulx Image Centering by Emily Short.
Index map with EPS file.
Casting XYZZY is an action applying to nothing.
understand "xyzzy" as casting xyzzy.
carry out casting xyzzy:
	say "".
Space is a region.
Figure 1 is the file "Living Quarters Map.png".
Figure 2 is the file "Living Area Regions.png".
Figure 3 is the file "Spaceship only region for living area.png".
Spaceship is a region. it is in space.
Start is a room. the player is in start.
instead of looking in start:
	do nothing.
when play begins:
	now the command prompt is "What is your name? ".
self naming is an action applying to one visible thing.

understand "[any person]" as self naming when command prompt is "What is your name? ".

the description of a person is usually "[if noun is player]You[otherwise][printed name of noun][end if] came aboard this ship to avoid catastrophe on earth and to get to your new planet, Vega.[line break]You[if noun is not player], [printed name of noun][end if] and the rest of your brethren are the only hope for the human race.[paragraph break][if noun is player]You're[otherwise][printed name of noun] is[end if] a[job of noun], and a vital part of the ship's community.".

npcposrow is a number that varies. npcposrow is 0.

[make all people start in start]

all people have a number called rownum. the rownum of a person is usually 0.
Luke is a person. Luke is in start.
understand "Luke Antzoulatos" as Luke.
Cyril is a person. Cyril is in start.
understand "Cyril Lim" as Cyril.
Mia is a woman.
understand "Mia Vissenjoux" as Mia.
Mia is in start.
Kyria is a woman.
understand "Kyria Warwyk" as Kyria.
Kyria is in start.
Orion is a person.
understand "Orion Zymaris" As Orion.
Orion is in start.
Eric is a person.
understand "Eric Yang" as Eric.
Eric is in start.
Crystal is a woman.
understand "Crystal Brazilek" as Crystal.
Crystal is in start.
Hannah is a woman.
understand "Hannah Burnett" as Hannah.
Hannah is in start.
Grace is a woman.
understand "Grace Mcmillan" as Grace.
Grace is in start.
Olivia is a woman.
understand "Olivia Corrigan" as Olivia.
understand "Olly" as Olivia.
olivia is in start.
Katrina is a woman.
understand "Katrina Lee" as Katrina.
Katrina is in start.
Sean is a person.
understand "Sean Bourke" as Sean.
Sean is in start.
Jasper is a person. 
understand "Jasper Campisi" as Jasper.
Jasper is in start.
Max is a person.
understand "Maxim" as Max.
understand "Max Kugel" as Max.
understand "Maxim Kugel" as Max.
Max is in start.
Danii is a woman.
understand "Danii San Jose" as Danii. 
Danii is in start.
Noa is a woman.
understand "Noa Rotenberg" as Noa.
Noa is in start.
Liam is a person.
understand "Liam McGrath" as Liam.
Liam is in start.
Alex is a person.
understand "Alex Kling" as Alex.
Alex is in start.
Noah is a person.
understand "Noah Harbutt" as Noah.
Noah is in start.
Albert is a person.
understand "Albert ---" as Albert.
understand "Albie" as Albert.
Albert is in start.
Tomo is a person.
understand "Tomohiro" as Tomo.
understand "Tomohiro Sekine" as Tomo.
understand "Tomo Sekine" as Tomo.
Tomo is in start.
Rhys is a person.
understand "Rhys ---" as Rhys.
rhys is in start.
Kirsty is a woman.
understand "Kirsten" as Kirsty.
understand "Kirsty Goldberg" as Kirsty.
understand "Kirsten Goldberg" as Kirsty.
Kirsty is in start.
Aden is a person.
understand "Aden Miller" as Aden.
Aden is in start.
Mrs Vla is a woman.
understand "Vla" as Mrs Vla.
understand "Eugenia Vla" as Mrs Vla.
understand "Eugenia Vlahandreas" as Mrs Vla.
mrs Vla is in start.
Mr Pateman is a person.
understand "Pateman" as Mr Pateman.
understand "Brendan" as Mr Pateman.
understand "Brendan Pateman" as Mr Pateman.
mr Pateman is in start.
carry out self naming:
	unless the noun is in the bedroom of the noun:
		now the noun is in the bedroom of the noun;
		now the player is the noun;
		now the command prompt is ">";
		now npcposrow is the rownum of the noun;
		say "You are now [player's command].[line break]";
		repeat with O running through room keys:
			if a person (called owninger) carries O:
				unless owninger is the player:
					now the owner of O is owninger;
					now the printed name of O is "[owner]'s room key";
				otherwise if owninger is the player:
					now the printed name of O is "Your room key";
		read the file of npc placement into table 1;
		sort table 1 in name order;
		now the Position in row npcposrow of table 1 is  "[location]";
		write file of npc placement from table 1;
		continue the action;
	otherwise:
		say "[player's command]'s already being played.".
Rule for printing a parser error when the latest parser error is the noun did not make sense in that context error: 
	if the command prompt is "What is your name? ":
		say "You need a name of a person from 8S.";
	otherwise:
		do nothing.

Living area is a region.
Main Control room is a room in spaceship. 

the description of main Control room is "There are 8 doors here[if short descriptions is 1].[otherwise if short descriptions is 2].[otherwise]:[line break]A door leading southeast towards Orion's room:[line break]A door leading south towards Eric's room:[line break]A door leading southwest towards Crystal's room:[line break]A door leading west towards Alex's room:[line break]A door leading northwest towards Katrina's room:[line break]A door leading north towards Cyril's room:[line break]A door leading northeast towards Jasper's room:[line break]And a door leading east towards Hannah's room.".

to say display (fig - a figure name):
	display fig centered.

to display (fig - a figure name) at (fps - a number) fps:
	display fig centered;
	say "[paragraph break]";
	wait 1000 divided by fps ms before continuing;
	clear the screen.
ship's computer is a device in main control room. the printed name is "the ship's computer".

to say all people positions:
	try statisticing.

Table of options
Title	subtable		description	toggle
"Navigation"	Table of navigation	some text	a rule
"Map of Ship"	Table of Maps	--	--
"Settings"	--	"To use shortened room descriptions and shortened door names, type 'short descriptions' or 'short'.[line break]for long descriptions, type 'long descriptions' or 'long'.[line break]for shortened room descriptions only, type 'short room descriptions', and for shortened door descriptions only type 'short door descriptions'."	--
"Positions of Shipmates"	--	"[all people positions]"	--

Table of maps
Title	subtable	description	toggle
"[bracket]Display whole ship map[close bracket]"	a table name	some text	a rule
"Map of Living Area"	--	"Map of living area:[paragraph break]Ground floor:                                                   Second Floor:												   Third Floor:												   Fourth Floor:[line break][Display figure 1][paragraph break]Colour code:[line break][display figure 2]Room by room:[line break][display figure 3]"	--

Table of navigation
Title	subtable		description 	toggle
"Controls"	a table name 	""	a rule	
"Map of Journey"	--	""	--

carry out switching on ship's computer:
	teletype "Starting up...[line break]Organising navigational system...[line break][change teletype delay to 20 ms]Rerouting apathetic delay circuits...[line break][change teletype delay to 5 ms]Done.[paragraph break]"; 
	say "What do you want to do?(Type a choice)[line break]-Options[line break]-Steer ship[line break]-Input Destination[line break][if player is luke]-Program computer[line break][otherwise if player is Jasper]-Program computer[line break][otherwise if player is Orion]-Program computer[line break]" .
after switching on ship's computer:
	do nothing instead.

asking for options is an action applying to nothing.
understand "Options" as asking for options.
carry out asking for options when ship's computer is switched on:
	if the player is in main control room:
		now the current menu is the Table of Options;
		carry out the displaying activity;
		clear the screen;
		try looking.
Current teletype character delay is a number variable. The current teletype character delay is 40.
Current teletype line break delay is a number variable. The current teletype line break delay is 400.
Current teletype paragraph break delay is a number variable. The current teletype paragraph break delay is 400.

to play (S - a sound name) occasionally:
	if a random chance of 1 in 2 succeeds:
		play S.
To teletype (text-to-be-printed - an indexed text):
	repeat with N running from 1 to the number of characters in the text-to-be-printed:
		if character number N in the text-to-be-printed is "[line break]":
			wait (current teletype line break delay) milliseconds before continuing;
		if character number N in the text-to-be-printed is "[paragraph break]":
			wait (current teletype paragraph break delay) milliseconds before continuing;
		say "[character number N in the text-to-be-printed][run paragraph on]";
		play sound of typewriter keys occasionally;
		wait (current teletype character delay) milliseconds before continuing, strictly.
		
To teletype (text-to-be-printed - an indexed text) at/with (speed - a number) ms/milliseconds/-- delay/--:
	change the current teletype character delay to the speed;
	teletype the text-to-be-printed.
To say change teletype delay to (speed - a number) ms/milliseconds/--:
	change the current teletype character delay to speed.
Release along with "quixe" interpreter.

Section 2 - Stats requesting

understand "stats" as statisticing.
instead of statisticing:
	say "[short descriptions][line break][positions of people][line break][printed name of player]  [npcposrow]".

section 3 - Statisticing

statisticing is an action applying to nothing.
The file of error reports (owned by another project) is called "errors". 
carry out statisticing:
	say "[positions of people][line break]";
to say positions of people:
	read file of npc placement into table 1;
	sort table 1 in name order;
	repeat through table 1:
		say "[Name entry] is in [Position entry]. [line break]".
Include Cheats by Orion Zymaris.
instead of changing player:
	say "Don't, that messes up the information exchange with the table of names and positions.".

Part 2 - Other characters

does the player mean doing anything to a person: it is very likely.

First floor is a region. it is in living area.
First floor landing is a room in First floor.

Third floor is a region.
Third floor landing is a room in third floor.

all people have a room called bedroom.
All people have some text called job.
Ground floor is a region in living area.
room key is a kind of thing. 
a room key is carried by every person.
owning relates one person (called the owner) to room key.
second floor is a region in living area.
Second floor landing is a room in second floor.

Orion's room is a room in Ground floor.
the bedroom of Orion is Orion's room.
the job of Orion is " research scientist".
the rownum of Orion is 23.

Alex's room is a room in Ground floor.
the bedroom of Alex is Alex's room.
the rownum of alex is 3.


Eric's room is a room in Ground floor.
the bedroom of Eric is Eric's room.
the job of Eric is " neuro surgeon".
the rownum of eric is 7.

Crystal's room is a room in Ground floor.
the bedroom of Crystal is Crystal's room.
the rownum of crystal is 4.

Katrina's room is a room in Ground floor.
the bedroom of Katrina is Katrina's room.
the job of Katrina is "n ice cream tester". 
the rownum of katrina is 11.

Cyril's room is a room in Ground floor.
the bedroom of Cyril is Cyril's room.
the rownum of cyril is 5.

Jasper's room is a room in Ground floor.
the bedroom of Jasper is Jasper's room.
the job of Jasper is " programmer".
the rownum of jasper is 10.

Kyria's room is a room in first floor.
the bedroom of Kyria is Kyria's room.
the job of kyria is " lawyer".
the rownum of kyria is 13.

Hannah's room is a room in Ground floor.
the bedroom of Hannah is Hannahs's room.
the job of Hannah is " teacher".
the rownum of hannah is 9.

Mia's room is a room in first floor.
the bedroom of Mia is Mia's room.
the rownum of mia is 17.

Liam's room is a room in first floor.
the bedroom of Liam is Liam's room.
the rownum of liam is 14.

Aden's room is a room in first floor.
the bedroom of Aden is Aden's room.
the rownum of aden is 1.

Danii's room is a room in first floor.
the bedroom of Danii is Danii's room.
the job of Danii is " basketball player".
the rownum of danii is 6.

Noa's room is a room in first floor.
the bedroom of Noa is Noa's room.
the rownum of noa is 20.
the job of Noa is " princess".

Noah's room is a room in floor.
the bedroom of Noah is Noah's room.
the rownum of noah is 21.

Albert's room is a room in first floor.
the bedroom of Albert is Albert's room.
the job of Albert is "n AFl player, BMXer, civil engineer, architect and builder".
the rownum of albert is 2.

Tomo's room is a room in Second floor.
the bedroom of Tomo is Tomo's room.
the rownum of tomo is 25.

Grace's room is a room in Second floor.
the bedroom of Grace is Grace's room.
the job of Grace is "n architect, interior designer".
the rownum of grace is 8.

Olivia's room is a room in Second floor.
the bedroom of Olivia is Olivia's room.
 the job of olivia is "n animal surgeon".
the rownum of olivia is 22.

Luke's room is a room in Second floor.
the bedroom of Luke is Luke's room.
the job of Luke is " programmer".
the rownum of luke is 15.

Sean's room is a room in Second floor.
the bedroom of Sean is Sean's room.
the job of Sean is " property developer".
the rownum of sean is 24.

Max's room is a room in Second floor.
the bedroom of Max is Max's room.
the job of Max is " professional tennis player and DJ".
the rownum of max is 16.

Kirsty's room is a room in Second floor.
the bedroom of Kirsty is Kirsty's room.
the rownum of kirsty is 12.

Rhys's room is a room in Second floor.
the bedroom of Rhys is Rhys's room.

Mrs Vla's room is a room in third floor.
the bedroom of Mrs Vla is Mrs Vla's room.
the job of Mrs Vla is "teacher".
the rownum of mrs vla is 19.

Mr Pateman's room is a room in third floor.
the bedroom of Mr Pateman is Mr Pateman's room.
the job of Mr Pateman is "teacher".
the rownum of mr pateman is 18.

staircase is a kind of door. it is lockable and unlocked.
Central staircase is a staircase. it is above main control room. it is below first floor landing.
a door is lockable and unlocked.

door from Orion to Eric is a door. the printed name is "a door".
door from Orion to Eric is west of Orion's room and east of Eric's room.

door from Eric to Crystal is a door. the printed name is "a door".
door from Eric to Crystal is west of Eric's room and east of Crystal's room.

door from Crystal to Alex is a door. the printed name is "a door".
door from Crystal to Alex is north of Crystal's room and south of Alex's room.

door from Alex to Katrina is a door. the printed name is "a door".
door from Alex to Katrina is north of Alex's room and south of Katrina's room.

door from Katrina to Cyril is a door. the printed name is "a door".
door from Katrina to Cyril is east of Katrina's room and west of Cyril's room. 

door from Cyril to Jasper is a door. the printed name is "a door".
door from Cyril to Jasper is east of Cyril's room and west of Jasper's room.

door from Jasper to Hannah is a door. the printed name is "a door".
door from Jasper to Hannah is south of Jasper's room and north of Hannah's room.

door from Hannah to Orion is a door. the printed name is "a door".
door from Hannah to Orion is south of Hannah's room and north of Orion's room.

door from main to Orion is a door. the printed name is "a door".
door from main to Orion is northwest of Orion's room and southeast of main control room.
door from main to Eric is a door. the printed name is "a door".
door from main to Eric is north of Eric's room and south of main control room.
door from main to Crystal is a door. the printed name is "a door".
door from main to Crystal is northeast of Crystal's room and southwest of main control room.
door from main to Alex is a door. the printed name is "a door".
door from main to Alex is east of Alex's room and west of main control room.
door from main to Katrina is a door. the printed name is "a door".
door from main to Katrina is southeast of Katrina's room and northwest of main control room.
door from main to Cyril is a door. the printed name is "a door".
door from main to Cyril is south of Cyril's room and north of main control room.
door from main to Jasper is a door. the printed name is "a door".
door from main to Jasper is southwest of Jasper's room and northeast of main control room.
door from main to Hannah is a door. the printed name is "a door".
door from main to Hannah is west of Hannah's room and east of main control room.
after going to main control room:
	now door from main to Orion is undescribed;
	now door from main to Eric is undescribed;
	now door from main to Crystal is undescribed;
	now door from main to Alex is undescribed;
	now door from main to Katrina is undescribed;
	now door from main to Cyril is undescribed;
	now door from main to Jasper is undescribed;
	now door from main to Hannah is undescribed;
	continue the action.
	
before doing anything except going when location is main control room:
	now door from main to Orion is undescribed;
	now door from main to Eric is undescribed;
	now door from main to Crystal is undescribed;
	now door from main to Alex is undescribed;
	now door from main to Katrina is undescribed;
	now door from main to Cyril is undescribed;
	now door from main to Jasper is undescribed;
	now door from main to Hannah is undescribed;
	continue the action.

instead of going when the location is main control room:
	now door from main to Orion is described;
	now door from main to Eric is described;
	now door from main to Crystal is described;
	now door from main to Alex is described;
	now door from main to Katrina is described;
	now door from main to Cyril is described;
	now door from main to Jasper is described;
	now door from main to Hannah is described;
	continue the action. 
	
after going from main control room:
	now door from main to Orion is described;
	now door from main to Eric is described;
	now door from main to Crystal is described;
	now door from main to Alex is described;
	now door from main to Katrina is described;
	now door from main to Cyril is described;
	now door from main to Jasper is described;
	now door from main to Hannah is described;
	continue the action. 
[Floor 2]

door from Kyria to Mia is a door. the printed name is "a door".
door from Kyria to Mia is west of Kyria's room and east of Mia's room.

door from Mia to Liam is a door. the printed name is "a door".
door from Mia to Liam is west of Mia's room and east of Liam's room.

door from Liam to Aden is a door. the printed name is "a door".
door from Liam to Aden is north of Liam's room and south of Aden's room.

door from Aden to Danii is a door. the printed name is "a door".
door from Aden to Danii is north of Aden's room and south of Danii's room.

door from Danii to Noa is a door. the printed name is "a door".
door from Danii to Noa is east of Danii's room and west of Noa's room.

door from Noa to Noah is a door. the printed name is "a door".
door from Noa to Noah is east of Noa's room and west of Noah's room.

door from Noah to Albert is a door. the printed name is "a door".
door from Noah to Albert is south of Noah's room and north of Albert's room.

door from Albert to Kyria is a door. the printed name is "a door".
door from Albert to Kyria is south of Albert's room and north of Kyria's room.

door from landing to Kyria is a door. the printed name is "a door".
door from landing to Kyria is northwest of Kyria's room and southeast of first floor landing.
door from landing to Mia is a door. the printed name is "a door".
door from landing to Mia is north of Mia's room and south of first floor landing.
door from landing to Liam is a door. the printed name is "a door".
door from landing to Liam is northeast of Liam's room and southwest of first floor landing.
door from landing to Aden is a door. the printed name is "a door".
door from landing to Aden is east of Aden's room and west of first floor landing.
door from landing to Danii is a door. the printed name is "a door".
door from landing to Danii is southeast of Danii's room and northwest of first floor landing.
door from landing to Noa is a door. the printed name is "a door".
door from landing to Noa is south of Noa's room and north of first floor landing.
door from landing to Noah is a door. the printed name is "a door".
door from landing to Noah is southwest of Noah's room and northeast of first floor landing.
door from landing to Albert is a door. the printed name is "a door".
door from landing to Albert is west of Albert's room and east of first floor landing.

after going to first floor landing:
	now door from landing to Kyria is undescribed;
	now door from landing to Mia is undescribed;
	now door from landing to Liam is undescribed;
	now door from landing to Aden is undescribed;
	now door from landing to Danii is undescribed;
	now door from landing to Noa is undescribed;
	now door from landing to Noah is undescribed;
	now door from landing to Albert is undescribed;
	continue the action.

before doing anything except going when the location is first floor landing:
	now door from landing to Kyria is undescribed;
	now door from landing to Mia is undescribed;
	now door from landing to Liam is undescribed;
	now door from landing to Aden is undescribed;
	now door from landing to Danii is undescribed;
	now door from landing to Noa is undescribed;
	now door from landing to Noah is undescribed;
	now door from landing to Albert is undescribed;
	continue the action.

after going from first floor landing:
	now door from landing to Kyria is described;
	now door from landing to Mia is described;
	now door from landing to Liam is described;
	now door from landing to Aden is described;
	now door from landing to Danii is described;
	now door from landing to Noa is described;
	now door from landing to Noah is described;
	now door from landing to Albert is described;
	continue the action.
instead of going when the location is first floor landing:
	now door from landing to Kyria is described;
	now door from landing to Mia is described;
	now door from landing to Liam is described;
	now door from landing to Aden is described;
	now door from landing to Danii is described;
	now door from landing to Noa is described;
	now door from landing to Noah is described;
	now door from landing to Albert is described;
	continue the action.
	 
	
the description of first floor landing is "There are 8 doors here[if short descriptions is 1].[otherwise if short descriptions is 2].[otherwise if short descriptions is 0]:[line break]A door leading southeast to Kyria's room:[line break]A door leading south to Mia's room:[line break]A door leading southwest to Liam's room:[line break]A door leading west to Aden's room:[line break]A door leading northwest to Danii's room:[line break]A door leading north to Noa's room:[line break]A door leading northeast to Noah's room:[line break]And a door leading east to Albert's room".

Central staircase2 is a staircase. it is above first floor landing. it is below second floor landing. the printed name is "Central staircase".
understand "central staircase" as central staircase2. understand "staircase" as central staircase2.

[floor 3]

door from Tomo to Grace is a door. the printed name is "a door".
door from Tomo to Grace is west of Tomo's room and east of Grace's room.

door from Grace to Rhys is a door. the printed name is "a door".
door from Grace to Rhys is west of Grace's room and east of Rhys's room.

door from Rhys to Kirsty is a door. the printed name is "a door".
door from Rhys to Kirsty is north of Rhys's room and south of Kirsty's room.

door from Kirsty to Max is a door. the printed name is "a door".
door from Kirsty to Max is north of Kirsty's room and south of Max's room.

door from Max to Sean is a door. the printed name is "a door".
door from Max to Sean is east of Max's room and west of Sean's room.

door from Sean to Luke is a door. the printed name is "a door".
door from Sean to Luke is east of Sean's room and west of Luke's room.

door from Luke to olivia is a door. the printed name is "a door".
door from Luke to olivia is south of Luke's room and north of olivia's room.

door from olivia to Tomo is a door. the printed name is "a door".
door from olivia to Tomo is south of olivia's room and north of Tomo's room.

door from second landing to Tomo is a door. the printed name is "a door".
door from second landing to Tomo is northwest of Tomo's room and southeast of second floor landing.
door from second landing to Grace is a door. the printed name is "a door".
door from second landing to Grace is north of Grace's room and south of second floor landing.
door from second landing to Rhys is a door. the printed name is "a door".
door from second landing to Rhys is northeast of Rhys's room and southwest of second floor landing.
door from second landing to Kirsty is a door. the printed name is "a door".
door from second landing to Kirsty is east of Kirsty's room and west of second floor landing.
door from second landing to Max is a door. the printed name is "a door".
door from second landing to Max is southeast of Max's room and northwest of second floor landing.
door from second landing to Sean is a door. the printed name is "a door".
door from second landing to Sean is south of Sean's room and north of second floor landing.
door from second landing to Luke is a door. the printed name is "a door".
door from second landing to Luke is southwest of Luke's room and northeast of second floor landing.
door from second landing to olivia is a door. the printed name is "a door".
door from second landing to olivia is west of olivia's room and east of second floor landing.

after going to second floor landing:
	now door from second landing to Tomo is undescribed;
	now door from second landing to Grace is undescribed;
	now door from second landing to Rhys is undescribed;
	now door from second landing to Kirsty is undescribed;
	now door from second landing to Max is undescribed;
	now door from second landing to Sean is undescribed;
	now door from second landing to Luke is undescribed;
	now door from second landing to olivia is undescribed;
	continue the action.

before doing anything except going when the location is second floor landing:
	now door from second landing to Tomo is undescribed;
	now door from second landing to Grace is undescribed;
	now door from second landing to Rhys is undescribed;
	now door from second landing to Kirsty is undescribed;
	now door from second landing to Max is undescribed;
	now door from second landing to Sean is undescribed;
	now door from second landing to Luke is undescribed;
	now door from second landing to olivia is undescribed;
	continue the action.

after going from second floor landing:
	now door from second landing to Tomo is described;
	now door from second landing to Grace is described;
	now door from second landing to Rhys is described;
	now door from second landing to Kirsty is described;
	now door from second landing to Max is described;
	now door from second landing to Sean is described;
	now door from second landing to Luke is described;
	now door from second landing to olivia is described;
	continue the action.
	
instead of going when the location is second floor landing:
	now door from second landing to Tomo is described;
	now door from second landing to Grace is described;
	now door from second landing to Rhys is described;
	now door from second landing to Kirsty is described;
	now door from second landing to Max is described;
	now door from second landing to Sean is described;
	now door from second landing to Luke is described;
	now door from second landing to olivia is described;
	continue the action.
	 
Central staircase3 is a staircase. it is above second floor landing. it is below third floor landing. the printed name is "Central staircase".
understand "central staircase" as central staircase3. understand "staircase" as central staircase3.

the description of second floor landing is "There are 8 doors here[if short descriptions is 1].[otherwise if short descriptions is 2].[otherwise if short descriptions is 0]:[line break]A door leading southeast to Tomo's room:[line break]A door leading south to Grace's room:[line break]A door leading southwest to Rhys's room:[line break]A door leading west to Kirsty's room:[line break]A door leading northwest to Max's room:[line break]A door leading north to Sean's room:[line break]A door leading northeast to Luke's room:[line break]And a door leading east to Olivia's room".

[fourth floor]

door from third landing to mrs Vla is a door. the printed name is "a door".
door from third landing to mrs Vla is east of mrs Vla's room and west of third floor landing.

door from third landing to mr Pateman is a door. the printed name is "a door".
door from third landing to mr Pateman is west of mr Pateman's room and east of third floor landing.

[for all doors]

requesting short descriptions is an action applying to nothing. 
requesting long descriptions is an action applying to nothing.
Short descriptions is a number that varies. short descriptions is 0.
understand "short descriptions" as requesting short descriptions.
understand "long descriptions" as requesting long descriptions.
understand "short door descriptions" as requesting short descriptions.
understand "short room descriptions" as requesting short descriptions.
check preferring abbreviated room descriptions:
	try requesting short descriptions instead.
check preferring unabbreviated room descriptions:
	try requesting long descriptions instead.
check preferring sometimes abbreviated room descriptions:
	try requesting short descriptions instead.
carry out requesting short descriptions:
	if the player's command includes "room":
		say "Room descriptions are now shortened.";
		now short descriptions is 2;
	otherwise if the player's command includes "door":
		say "Door descriptions are now shortened.";
		now short descriptions is 3;
	otherwise:
		say "Room and door descriptions are now shortened.";
		now short descriptions is 1.
carry out requesting long descriptions:
	say "Room and door descriptions are now lengthened.";
	now short descriptions is 0.

after opening a door:
	set pronouns from the noun;
	continue the action.
after going through a door:
	set pronouns from the noun;
	continue the action.
after closing door:
	set pronouns from the noun;
	continue the action.
	
rule for printing the name of a door when opening a door: say "the door".
rule for printing the name of a door when closing a door: say "the door".
rule for printing the name of a door when going through a door: say "the door".

After printing the name of a door:
 	unless going through door:
		unless opening door:
			unless closing door:
				unless going:
					unless examining a direction:
						say " [if short descriptions is 1]([direction of the item described from the location])[otherwise if short descriptions is 3]([direction of the item described from the location])[otherwise]leading [direction of the item described from the location] towards [the other side]";
					otherwise if examining a direction:
						say " leading towards [the other side].".

instead of examining a direction (called direction):
	let x be the door direction of the location;
	if x is a door:
		unless direction is up:
			unless direction is down:
				say "to the [direction] is [x]";
			otherwise if direction is down:
				say "Below you is [x]";
		otherwise if direction is up:
			say "Above you is [x]";
	otherwise:
		say "You see nothing unexpected in that direction.".

the description of a door is usually "[printed name] leading [direction of the item described from the location] towards [the other side].".

requesting the map is an action out of world.
understand "map" as requesting the map.
carry out requesting the map:
	clear the screen;
	say "Map of living area:[paragraph break]Ground floor:                                                   Second Floor:												   Third Floor:												   Fourth Floor:[line break][Display figure 1][paragraph break]Colour code:[line break][display figure 2]Room by room:[line break][display figure 3]";
	wait for any key;
	clear the screen;
	try looking.

section 2 - file sharing

use MAX_STATIC_DATA of 500000.

Table 1 - Names and positions
Name (indexed text)	Position (indexed text)	
"Orion"	"Start"	
"Jasper"	"Start"	
"Kyria"	"Start"	
"Hannah"	"Start"	
"Eric"	"Start"	
"Grace"	"Start"	
"Olivia"	"Start"	
"Alex"	"Start"	
"Noa"	"Start"	
"Danii"	"Start"	
"Noah"	"Start"	
"Max"	"Start"	
"Aden"	"Start"	
"Albert"	"Start"	
"Liam"	"Start"	
"Tomo"	"Start"	
"Mr Pateman"	"Start"	
"Mrs Vla"	"Start"	
"Katrina"	"Start"	
"Kirsty"	"Start"	
"Cyril"	"Start"	
"Luke"	"Start"	
"Mia"	"Start"	
"Crystal"	"Start"	
"Sean"	"Start"	


rowcount is a number that varies. rowcount is 0.
after going to a room (called position)(this is the pc position rule):
	read file of npc placement into table 1;
	mark file of npc placement as ready to read;
	sort table 1 in name order;
	now rowcount is 0;
	sort table 1 in name order;
	repeat through table 1:
		let npcpos be an object;
		repeat with pers running through people that are not the player:
			unless location of pers is Start:
				repeat with pos running through rooms:
					if Position in row npcposrow of table 1 is the printed name of pos:
						now npcpos is pos;
						say "3";
						if Name entry is the printed name of pers:
							now pers is in npcpos;
							now the Position in row npcposrow of table 1 is  "[location]";
							write file of npc placement from table 1;
		continue the action.
		
after doing anything except going to a room(this is the npc position determining rule):
	read file of npc placement into table 1;
	mark file of npc placement as ready to read;
	sort table 1 in name order;
	now rowcount is 0;
	sort table 1 in name order;
	repeat through table 1:
		let npcpos be an object;
		repeat with pers running through people that are not the player:
			unless location of pers is Start:
				repeat with pos running through rooms:
					if position entry is the printed name of pos:
						now npcpos is pos;
						if Name entry is the printed name of pers:
							if Position entry is the printed name of npcpos:
								unless pers is in npcpos:
									if the location of pers is location of player:
										say "[unless npcpos is Start][pers] has left [location of pers].[otherwise][no line break]";
										now pers is in npcpos;
										if npcpos is the location:
											say "[unless npcpos is Start][pers] has entered [npcpos].[otherwise][no line break]";
	continue the action.
	
when play ends:
	read file of npc placement into table 1;
	now the position in row npcposrow of table 1 is "Start".
	
check restarting the game:
	read file of npc placement into table 1;
	now the position in row npcposrow of table 1 is "Start";
	write file of npc placement from table 1;
	continue the action.
	
check quitting the game:
	read file of npc placement into table 1;
	now the position in row npcposrow of table 1 is "Start";
	write file of npc placement from table 1;
	continue the action.

part 3 - Story

Hydroponic gardens is a room. it is in spaceship.
Plant is a kind of thing. it is fixed in place.
corn plant is a kind of plant.
there are 5 corn plants in hydroponic gardens.
before eating a plant, say "You should wait till it's grown before eating it." instead.
tomato plant is a kind of plant.
there are 5 tomato plants in hydroponic gardens.
[player created object is a kind of thing.
creating objects is an action applying to one topic.
understand "create [text]" as creating objects.
understand "[text]" as a player created object.
carry out creating objects:
	if the player's command includes "create ":
		cut the matched text;
		now the printed name of PlCrOb is  "[player's command]".
PlCrOb is a player created object. the printed name is "PCO". it is in orion's room.
before doing something to a player created object:
	if the player's command includes the printed name of the noun:
		continue the action;
	otherwise:
		do nothing.]
