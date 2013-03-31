The 2 Digit Number Lock by Orion Zymaris begins here.

A numlocknum is a kind of value. 9 9 specifies a numlocknum.
inputing numlock is an action applying to one numlocknum. understand "[numlocknum]" as inputing numlock.
Numlock is a room.
zeroone is a thing.
oneone is a thing.
twoone is a thing.
threeone is a thing.
fourone is a thing.
fiveone is a thing.
sixone is a thing.
sevenone is a thing.
eightone is a thing.
nineone is a thing.
zerothree is a thing.
onethree is a thing.
twothree is a thing.
threethree is a thing.
fourthree is a thing.
fivethree is a thing.
sixthree is a thing.
seventhree is a thing.
eightthree is a thing.
ninethree is a thing.
on is a thing.
th is a thing.
tumblerone is a thing.
tumblerthree is a thing.
when play begins:
	if a random chance of 1 in 10 succeeds:
		now zeroone is in numlock;
		now the description of on is "0";
	otherwise if a random chance of 1 in 10 succeeds:
		now oneone is in numlock;
		now the description of on is "1";
	otherwise if a random chance of 1 in 10 succeeds:
		now twoone is in numlock;
		now the description of on is "2";
	otherwise if a random chance of 1 in 10 succeeds:
		now threeone is in numlock;
		now the description of on is "3";
	otherwise if a random chance of 1 in 10 succeeds:
		now fourone is in numlock;
		now the description of on is "4";
	otherwise if a random chance of 1 in 10 succeeds:
		now fiveone is in numlock;
		now the description of on is "5";
	otherwise if a random chance of 1 in 10 succeeds:
		now sixone is in numlock;
		now the description of on is "6";
	otherwise if a random chance of 1 in 10 succeeds:
		now sevenone is in numlock;
		now the description of on is "7";
	otherwise if a random chance of 1 in 10 succeeds:
		now eightone is in numlock;
		now the description of on is "8";
	otherwise:
		now nineone is in numlock;
		now the description of on is "9".
		
when play begins:
	if a random chance of 1 in 10 succeeds:
		now zerothree is in numlock;
		now the description of th is "0";
	otherwise if a random chance of 1 in 10 succeeds:
		now onethree is in numlock;
		now the description of th is "1";
	otherwise if a random chance of 1 in 10 succeeds:
		now twothree is in numlock;
		now the description of th is "2";
	otherwise if a random chance of 1 in 10 succeeds:
		now threethree is in numlock;
		now the description of th is "3";
	otherwise if a random chance of 1 in 10 succeeds:
		now fourthree is in numlock;
		now the description of th is "4";
	otherwise if a random chance of 1 in 10 succeeds:
		now fivethree is in numlock;
		now the description of th is "5";
	otherwise if a random chance of 1 in 10 succeeds:
		now sixthree is in numlock;
		now the description of th is "6";
	otherwise if a random chance of 1 in 10 succeeds:
		now seventhree is in numlock;
		now the description of th is "7";
	otherwise if a random chance of 1 in 10 succeeds:
		now eightthree is in numlock;
		now the description of th is "8";
	otherwise:
		now ninethree is in numlock;
		now the description of th is "9".

suitcasenumlocking is an action applying to nothing.

every turn when command prompt is "Suitcase lock number>":
	if the word at the start of the player's command matches "0":
		if zeroone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "1":
		if oneone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "2":
		if twoone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "3":
		if threeone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "4":
		if fourone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "5":
		if fiveone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "6":
		if sixone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "7":
		if sevenone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "8":
		if eightone is in numlock:
			now tumblerone is in numlock;
	otherwise if the word at the start of the player's command matches "9":
		if nineone is in numlock:
			now tumblerone is in numlock.
					
every turn when command prompt is "Suitcase lock number>":
	if the word at the end of the player's command matches "0":
		if zerothree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "1":
		if onethree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "2":
		if twothree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "3":
		if threethree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "4":
		if fourthree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "5":
		if fivethree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "6":
		if sixthree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "7":
		if seventhree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "8":
		if eightthree is in numlock:
			now tumblerthree is in numlock;
	otherwise if the word at the end of the player's command matches "9":
		if ninethree is in numlock:
			now tumblerthree is in numlock.
						
unlockingsuitcasing is an action applying to nothing.
understand "unlock suitcase" as unlockingsuitcasing.
understand "unlock case" as unlockingsuitcasing.
instead of unlockingsuitcasing in the presence of suitcase:
	now command prompt is "Suitcase lock number>";
	stop the action.
	
every turn while the command prompt is "Suitcase lock number>":
	if player's command does not include "unlock suitcase":
		if player's command does not include "unlock case":
			now command prompt is ">".
			

rule for printing a parser error when the command prompt is "Suitcase lock number>":
	say "Why don't you try putting space between the digits of the number, e.g. 0 0" instead.
	
instead doing anything when the command prompt is "Suitcase lock number>":
	unless player's command includes "[numlocknum]":
		say "Why don't you try putting space between the digits of the number, e.g. 0 0" instead;
	otherwise:
		continue the action.
				
every turn when suitcase is locked:
	if tumblerone is in numlock:
		if tumblerthree is in numlock:
			say "[first time]You unlock the case with a slight [']click['].[only]";
			now suitcase is unlocked.

The 2 Digit Number Lock ends here