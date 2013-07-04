Hpmenu for chapter 1 by Orion Zymaris begins here.

to say first daily activity:
	say "Getting up: [if player is not in bed][italic type]Success[roman type][end if][line break]".
to say second daily activity:
	say "Getting onto public roads: [if the location has been highway][italic type]Success[roman type][end if][line break]".
to say third daily activity:
	say "First phone call: [if the venture of customercall is success][italic type]Success[roman type][end if][line break]";
	say "Second call: [if the venture of mrmason call is success][italic type]Success[roman type][end if][line break]".
to say fourth daily activity:
	say "Lunch: [if bakers is visited][italic type]Success[roman type][end if][line break]".
to say fifth daily activity:
	say "Finishing work: [if the venture of work is success][italic type]Success[roman type][end if][line break]".
to say sixth daily activity:
	say "Watching television: [if television has been switched on]Success[end if][line break]".
to say seventh daily activity:
	say "Talking to petunia about Potters: [if venture of living-room cut scene is not incomplete]Success[end if][line break]".
to say eighth daily activity:
	say "Finishing day: [if the venture of uncle vernon's scene is success]Success[line break] ".
	
hint1 is indexed text that varies.
hint1 is "say 'get up' to get out of bed. applies to dursley's bedroom.[line break]".
hint2 is indexed text that varies.
hint2 is "open the wardrobe and try on some clothes. applies to dursley's bedroom.[line break]".
hint3 is indexed text that varies.
hint3 is "try looking in the bedside table's drawer. applies to dursley's bedroom.[line break]".
hint4 is indexed text that varies.
hint4 is "look at the clock. applies to dursley's bedroom.[line break]".
hint5 is indexed text that varies.
hint5 is "go downstairs and enter the kitchen. applies to landing.[line break]".
hint6 is indexed text that varies.
hint6 is "talk to petunia and dudley. applies to kitchen. applies to dudley and petunia.[line break]".
hint7 is indexed text that varies.
hint7 is "get car keys from inside suitcase to unlock car. type 'bedside' to find out where to get combination for the lock. applies to kitchen.[line break]".
hint8 is indexed text that varies.
hint8 is "maybe take a look around the other rooms of the house before leaving. you might find something interesting. applies to dursley's house.[line break]".
hint9 is indexed text that varies.
hint9 is "look in the garage. applies to garden.[line break]".
hint10 is indexed text that varies.
hint10 is "get in car and go north. then go west to enter grunnings carpark. applies to garden and highway.[line break]".
hint11 is indexed text that varies.
hint11 is "get out of car, go up elevator or stairs, and go north to enter dursley's office. applies to carpark, corridor, and work office or dursley's office or vernon's office.[line break]".
hint12 is indexed text that varies.
hint12 is "read the importand customer service document to recieve phone call. applies to work office or dursley's office or vernon's office.[line break]".
hint13 is indexed text that varies.
hint13 is "answer the customer's questions with simple answers, like 'hello', 'good', 'terrible'. applies to work office or dursley's office or vernon's office. applies to customer.[line break]" .
hint14 is indexed text that varies.
hint14 is "there is a prompt in the customer service document that tells you to 'call 8953' and so on. follow the words in the quotation marks. applies to work office or dursley's office or vernon's office. applies to customer.[line break]".
hint15 is indexed text that varies.
hint15 is "to recieve next phone call, read the rolodex. if it isn't on the right page, it will still make the call, although you should flip it till it says it is on today's page. applies to work office or dursley's office or vernon's office. applies to mr. mason.[line break]".
hint16 is indexed text that varies.
hint16 is "answer any niceties of mr. mason same as you did for the other customer. he will then ask for a drill that has a specific use. the list of specific uses for the drill is on a paper in the suitcase. if you left that at home, go to your cabinet and look through it untill you find the spare copy. applies to work office or dursley's office or vernon's office. applies to mr. mason.[line break]".
hint17 is indexed text that varies.
hint17 is "after finishing your calls, you should be let out to get lunch. take the money from your desk before going. applies to work office or dursley's office or vernon's office.[line break] ".
hint18 is indexed text that varies.
hint18 is "go downstairs, walk across the road, and enter the bakery. buy some lunch. a donut, maybe. applies to work office or dursley's office or vernon's office. applies to carpark. applies to bakery or bakers.[line break]".
hint19 is indexed text that varies.
hint19 is "when you walk out of the shop, 'listen' to the people on the street. you might find something of use in their conversation... applies to bakery or bakers. applies to street. [line break]".
hint20 is indexed text that varies.
hint20 is "go back across the road and back up to your office, where the rest of the day will go by in a cutscene. applies to carpark and street and work office or dursley's office or vernon's office.[line break]".
hint21 is indexed text that varies.
hint21 is "get out of the office and go back down to the carpark. get into your car and go back to your home. applies to grunnings carpark and highway and garden.[line break]".
hint22 is indexed text that varies.
hint22 is "go into the living room.sit down and turn on the tv - there might be something interesting. applies to hall and living room or living-room.[line break]".
hint23 is indexed text that varies.
hint23 is "after watching tv, petunia will eventually come into the room with some tea. maybe play some piano while waiting for her. when she does, drink the tea. you don't want to hurt her feelings, do you? applies to living-room and dursley's bedroom. applies to petunia.[line break]".
hint24 is indexed text that varies.
hint24 is "before going to bed, look out the window. applies to dursley's bedroom.[line break]".

to say itinerary:
	say "[first daily activity][if player is not in bed][second daily activity][end if][if the location has been highway][third daily activity][end if][if the venture of mrmason call is success][fourth daily activity][end if][if bakers is visited][fifth daily activity][end if][if the venture of work is success][sixth daily activity][end if][if television has been switched on][seventh daily activity][end if][if venture of living-room cut scene is not incomplete][eighth daily activity][end if]"

Understand "hints" or "hint" as asking for hints.
asking for hints is an action applying to nothing.
carry out asking for hints:
	say "Type in a word to look for related hints. You can name an item, to find all hints relating to it, a person, or a room. Type 'all' to find a list of all hints. Warning: hints do not include easter eggs. Find those on your own.";
	now the command prompt is "Search:  ".

after reading a command when the command prompt is "Search:  ":
	let T be indexed text;
	let T be the player's command in lower case;
	if T exactly matches the text "all":
		say "1:[hint1][line break]2:[hint2][line break]3:[hint3][line break]4:[hint4][line break]5:[hint5][line break]6:[hint6][line break]7:[hint7][line break]8:[hint8][line break]9:[hint9][line break]10:[hint10][line break]11:[hint11][line break]12:[hint12][line break]13:[hint13][line break]14:[hint14][line break]15:[hint15][line break]16:[hint16][line break]17:[hint17][line break]18:[hint18][line break]19:[hint19][line break]20:[hint20][line break]21:[hint21][line break]22:[hint22][line break]23:[hint23][line break]24:[hint24][line break]";
		now the command prompt is ">";
		rule succeeds;
	if hint1 matches the text "[T]":
		say "[hint1][paragraph break]";
	if hint2 matches the text "[T]":
		say "[hint2][paragraph break]";
	if hint3 matches the text "[T]":
		say "[hint3][paragraph break]";
	if hint4 matches the text "[T]":
		say "[hint4][paragraph break]";
	if hint5 matches the text "[T]":
		say "[hint5][paragraph break]";
	if hint6 matches the text "[T]":
		say "[hint6][paragraph break]";
	if hint7 matches the text "[T]":
		say "[hint7][paragraph break]";
	if hint8 matches the text "[T]":
		say "[hint8][paragraph break]";
	if hint9 matches the text "[T]":
		say "[hint9][paragraph break]";
	if hint10 matches the text "[T]":
		say "[hint10][paragraph break]";
	if hint11 matches the text "[T]":
		say "[hint11][paragraph break]";
	if hint12 matches the text "[T]":
		say "[hint12][paragraph break]";
	if hint13 matches the text "[T]":
		say "[hint13][paragraph break]";
	if hint14 matches the text "[T]":
		say "[hint14][paragraph break]";
	if hint15 matches the text "[T]":
		say "[hint15][paragraph break]";
	if hint16 matches the text "[T]":
		say "[hint16][paragraph break]";
	if hint17 matches the text "[T]":
		say "[hint17][paragraph break]";
	if hint18 matches the text "[T]":
		say "[hint18][paragraph break]";
	if hint19 matches the text "[T]":
		say "[hint19][paragraph break]";
	if hint20 matches the text "[T]":
		say "[hint20][paragraph break]";
	if hint21 matches the text "[T]":
		say "[hint21][paragraph break]";
	if hint22 matches the text "[T]":
		say "[hint22][paragraph break]";
	if hint23 matches the text "[T]":
		say "[hint23][paragraph break]";
	if hint24 matches the text "[T]":
		say "[hint24][paragraph break]";
	now the command prompt is ">";
	rule succeeds.

Hpmenu for chapter 1 ends here.
