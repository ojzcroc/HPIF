"Vega Journey" by Orion Zymaris
 
Include Real-Time Delays by Erik Temple.
Include Menus by Emily Short.
Include Glulx Image Centering by Emily Short.
Index map with EPS file.
Space is a region.
Figure 1 is the file "Living Quarters Map.png".
Figure 2 is the file "Living Area Regions.png".
Figure 3 is the file "Spaceship only region for living area.png".
Spaceship is a region. it is in space.
Start is a room. the player is in start.
when play begins:
	now the command prompt is "What is your name? ".
self naming is an action applying to one visible thing.

understand "[any person]" as self naming when command prompt is "What is your name? ".

the description of a person is usually "[if noun is player]You[otherwise][printed name of noun][end if] came aboard this ship to avoid catastrophe on earth and to get to your new planet, Vega.[line break]You[if noun is not player], [printed name of noun][end if] and the rest of your brethren are the only hope for the human race.[paragraph break][if noun is player]You're[otherwise][printed name of noun] is[end if] a[job of noun], and a vital part of the ship's community.".

Luke is a person. Luke is in Luke's room.
understand "Luke Antzoulatos" as Luke.
Cyril is a person. Cyril is in Cyril's room.
understand "Cyril Lim" as Cyril.
Mia is a woman.
understand "Mia Vissenjoux" as Mia.
Mia is in Mia's room.
Kyria is a woman.
understand "Kyria Warwyk" as Kyria.
Kyria is in Kyria's room.
Orion is a person.
understand "Orion Zymaris" As Orion.
Orion is in Orion's room.
Eric is a person.
understand "Eric Yang" as Eric.
Eric is in Eric's room.
Crystal is a woman.
understand "Crystal Brazilek" as Crystal.
Crystal is in Crystal's room.
Hannah is a woman.
understand "Hannah Burnett" as Hannah.
Hannah is in Hannah's room.
Grace is a woman.
understand "Grace Mcmillan" as Grace.
Grace is in Grace's room.
Olivia is a woman.
understand "Olivia Corrigan" as Olivia.
understand "Olly" as Olivia.
olivia is in olivia'a room.
Katrina is a woman.
understand "Katrina Lee" as Katrina.
Katrina is in Katrina's room.
Sean is a person.
understand "Sean Bourke" as Sean.
Sean is in Sean's room.
Jasper is a person. 
understand "Jasper Campisi" as Jasper.
Jasper is in Jasper's room.
Max is a person.
understand "Maxim" as Max.
understand "Max Kugel" as Max.
understand "Maxim Kugel" as Max.
Max is in Max's room.
Danii is a woman.
understand "Danii San Jose" as Danii. 
Danii is in Danii's room.
Noa is a woman.
understand "Noa Rotenberg" as Noa.
Noa is in Noa's room.
Liam is a person.
understand "Liam McGrath" as Liam.
Liam is in Liam's room.
Alex is a person.
understand "Alex Kling" as Alex.
Alex is in Alex's room.
Noah is a person.
understand "Noah Harbutt" as Noah.
Noah is in Noah's room.
Albert is a person.
understand "Albert ---" as Albert.
understand "Albie" as Albert.
Albert is in Albert's room.
Tomo is a person.
understand "Tomohiro" as Tomo.
understand "Tomohiro Sekine" as Tomo.
understand "Tomo Sekine" as Tomo.
Tomo is in Tomo's room.
Rhys is a person.
understand "Rhys ---" as Rhys.
rhys is in Rhys's room.
Kirsty is a woman.
understand "Kirsten" as Kirsty.
understand "Kirsty Goldberg" as Kirsty.
understand "Kirsten Goldberg" as Kirsty.
Kirsty is in Kirsty's room.
Aden is a person.
understand "Aden Miller" as Aden.
Aden is in Aden's room.
Mrs Vla is a woman.
understand "Vla" as Mrs Vla.
understand "Eugenia Vla" as Mrs Vla.
understand "Eugenia Vlahandreas" as Mrs Vla.
mrs Vla is in mrs Vla's room.
Mr Pateman is a person.
understand "Pateman" as Mr Pateman.
understand "Brendan" as Mr Pateman.
understand "Brendan Pateman" as Mr Pateman.
mr Pateman is in mr Pateman's room.
carry out self naming:
	if the noun is in the bedroom of the noun:
		now the noun is in the bedroom of the noun;
		now the player is the noun;
		now the command prompt is ">";
		say "You are now [player's command].[line break]";
		repeat with O running through room keys:
			if a person (called owninger) carries O:
				unless owninger is the player:
					now the owner of O is owninger;
					now the printed name of O is "[owner]'s room key";
				otherwise if owninger is the player:
					now the printed name of O is "Your room key";
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

Table of options
Title	subtable		description	toggle
"Navigation"	Table of navigation	some text	a rule
"Map of Ship"	Table of Maps	--	--
"Settings"	--	"To use shortened room descriptions and shortened door names, type 'short descriptions' or 'short'.[line break]for long descriptions, type 'long descriptions' or 'long'.[line break]for shortened room descriptions only, type 'short room descriptions', and for shortened door descriptions only type 'short door descriptions'."	--

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
	say "What do you want to do?(Type a choice)[line break]-Options[line break]-Steer ship[line break]-Input Destination[line break]" .
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
Release along with "quixe" interpreter.

Section 2 - not for release

statisticing is an action applying to nothing.
The file of error reports (owned by another project) is called "errors". 
understand "stats" as statisticing.
carry out statisticing:
	say "[short descriptions][line break][positions of people]".
to say positions of people:
	read file of npc placement into table 1;
	repeat through table 1:
		say "[Name entry] is in [Name entry][line break]".

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

Alex's room is a room in Ground floor.
the bedroom of Alex is Alex's room.

Eric's room is a room in Ground floor.
the bedroom of Eric is Eric's room.
the job of Eric is " neuro surgeon".

Crystal's room is a room in Ground floor.
the bedroom of Crystal is Crystal's room.

Katrina's room is a room in Ground floor.
the bedroom of Katrina is Katrina's room.
the job of Katrina is "n ice cream tester". 

Cyril's room is a room in Ground floor.
the bedroom of Cyril is Cyril's room.

Jasper's room is a room in Ground floor.
the bedroom of Jasper is Jasper's room.
the job of Jasper is " programmer".

Kyria's room is a room in first floor.
the bedroom of Kyria is Kyria's room.

Hannah's room is a room in Ground floor.
the bedroom of Hannah is Hannahs's room.
the job of Hannah is " teacher".

Mia's room is a room in first floor.
the bedroom of Mia is Mia's room.

Liam's room is a room in first floor.
the bedroom of  Liam is Liam's room.

Aden's room is a room in first floor.
the bedroom of Aden is Aden's room.

Danii's room is a room in first floor.
the bedroom of Danii is Danii's room.
the job of Danii is " basketball player".

Noa's room is a room in first floor.
the bedroom of Noa is Noa's room.

Noah's room is a room in floor.
the bedroom of Noah is Noah's room.

Albert's room is a room in first floor.
the bedroom of Albert is Albert's room.
the job of Albert is "n AFl player, BMXer, civil engineer, architect and builder".

Tomo's room is a room in Second floor.
the bedroom of Tomo is Tomo's room.

Grace's room is a room in Second floor.
the bedroom of Grace is Grace's room.
the job of Grace is "n architect, interior designer".

Olivia's room is a room in Second floor.
the bedroom of Olivia is Olivia's room.
 the job of olivia is "n animal surgeon".

Luke's room is a room in Second floor.
the bedroom of Luke is Luke's room.
the job of Luke is " programmer".

Sean's room is a room in Second floor.
the bedroom of Sean is Sean's room.
the job of Sean is " property developer".

Max's room is a room in Second floor.
the bedroom of Max is Max's room.
the job of Max is " professional tennis player and DJ".

Kirsty's room is a room in Second floor.
the bedroom of Kirsty is Kirsty's room.

Rhys's room is a room in Second floor.
the bedroom of Rhys is Rhys's room.

Mrs Vla's room is a room in third floor.
the bedroom of Mrs Vla is Mrs Vla's room.
the job of Mrs Vla is "teacher".

Mr Pateman's room is a room in third floor.
the bedroom of Mr Pateman is Mr Pateman's room.
the job of Mr Pateman is "teacher".

[make a central staircase that leads to the higher levels, and have 9 rooms in a square per each of the three levels, the central room on the bottom level being the main control centre]
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

section 2 - file sharing

use MAX_STATIC_DATA of 500000.
when play begins:
	write "" to file of npc placement;
	write file of npc placement from table 1.

Table 1 - Names and positions
Name (indexed text) 	Position (indexed text)
an indexed text	an indexed text
""	""
with 20 blank rows

the file of npc placement (owned by another project) is called "NPCPlacement".
rowcount is a number that varies. rowcount is 0.
after going to a room (called position) (this is the pc position rule):
	read file of npc placement into table 1;
	if table 1 is empty:
		choose a blank row in table 1;
		now Position entry is  "[location]";
		now Name entry is "[printed name of player]";
		write file of npc placement from table 1;
		continue the action;
	otherwise:
		now rowcount is 0;
		repeat through table 1:
			increment rowcount;
		choose row rowcount in table 1;
		let npcpos be an object;
		repeat with pos running through rooms:
			if Position entry is the printed name of pos:
				now npcpos is pos;
		repeat with pers running through people that are not the player:
			if Name entry is the printed name of pers:
				now pers is in npcpos;
	choose a blank row in table 1;
	now Position entry is  "[location]";
	now Name entry is "[printed name of player]";
	write file of npc placement from table 1;
	continue the action.
	
after doing anything except going (this is the npc position determining rule):
	read file of npc placement into table 1;
	now rowcount is 0;
	repeat through table 1:
		increment rowcount;
	choose row rowcount in table 1;
	let npcpos be an object;
	repeat with pos running through rooms:
		if position entry is the printed name of pos:
			now npcpos is pos;
	repeat with pers running through people that are not the player:
		if Name entry is the printed name of pers:
			unless pers is in npcpos:
				now pers is in npcpos;
				if npcpos is the location:
					say "[pers] has entered [npcpos].";
	continue the action.
					
section 1 - file sharing part 2

Table 2 - people's positions
Person (indexed  text)	Plac (indexed text)
"Orion"
"Eric"

[the file of npc placement is called "NPCPlacement".
after going to a room (called position):
	repeat with name running through people:
		if the player is name:
			now the place corresponding to a person of "[name]" in table 2 is "[position]".]
			
[make it so that all people have a variable object that is their current room, so that the information can be read off]. 
	


			