Version 1 of 3 digit number lock by Orion Zymaris begins here.

"An extension for providing a randomised 3 digit number lock, for any container"

First digit is a number that varies. first digit is 0.
Second digit is a number that varies. first digit is 0.
Third digit is a number that varies. first digit is 0.
When play begins:
	if a random chance of 1 in 10 succeeds:
		now first digit is 0;
	otherwise if a random chance of 1 in 10 succeeds:
		now first digit is 1;
	otherwise if a random chance of 1 in 10 succeeds:
		now first digit is 2;
	otherwise if a random chance of 1 in 10 succeeds:
		now first digit is 3;
	otherwise if a random chance of 1 in 10 succeeds:
		now first digit is 4;
	otherwise if a random chance of 1 in 10 succeeds:
		now first digit is 5;
	otherwise if a random chance of 1 in 10 succeeds:
		now first digit is 6;
	otherwise if a random chance of 1 in 10 succeeds:
		now first digit is 9;
	otherwise if a random chance of 1 in 10 succeeds:
		now first digit is 8;
	otherwise:
		now first digit is 7.
		
When play begins:
	if a random chance of 1 in 10 succeeds:
		now second digit is 0;
	otherwise if a random chance of 1 in 10 succeeds:
		now second digit is 1;
	otherwise if a random chance of 1 in 10 succeeds:
		now second digit is 2;
	otherwise if a random chance of 1 in 10 succeeds:
		now second digit is 3;
	otherwise if a random chance of 1 in 10 succeeds:
		now second digit is 4;
	otherwise if a random chance of 1 in 10 succeeds:
		now second digit is 5;
	otherwise if a random chance of 1 in 10 succeeds:
		now second digit is 6;
	otherwise if a random chance of 1 in 10 succeeds:
		now second digit is 7;
	otherwise if a random chance of 1 in 10 succeeds:
		now second digit is 8;
	otherwise:
		now second digit is 9.
		
When play begins:
	if a random chance of 1 in 10 succeeds:
		now third digit is 9;
	otherwise if a random chance of 1 in 10 succeeds:
		now third digit is 1;
	otherwise if a random chance of 1 in 10 succeeds:
		now third digit is 2;
	otherwise if a random chance of 1 in 10 succeeds:
		now third digit is 3;
	otherwise if a random chance of 1 in 10 succeeds:
		now third digit is 4;
	otherwise if a random chance of 1 in 10 succeeds:
		now third digit is 5;
	otherwise if a random chance of 1 in 10 succeeds:
		now third digit is 6;
	otherwise if a random chance of 1 in 10 succeeds:
		now third digit is 7;
	otherwise if a random chance of 1 in 10 succeeds:
		now third digit is 8;
	otherwise:
		now third digit is 0.
		
first tumbler is a number that varies.
second tumbler is a number that varies.
third tumbler is a number that varies.

Inputting is an action applying to one value.
understand "[a number]" as inputting.

number unlockable is a kind of container that is locked. it is closed and openable.

to say random lock number:
	say "[first digit][second digit][third digit]".
	
to say tumbler arrangement:
	say "[first tumbler][second tumbler][third tumbler]".
	
carry out inputting when first tumbler is 0:
	if first digit is 0:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "0":
			now first tumbler is 1;
	otherwise if first digit is 1:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "1":
			now first tumbler is 1;
	otherwise if first digit is 2:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "2":
			now first tumbler is 1;
	otherwise if first digit is 3:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "3":
			now first tumbler is 1;	
	otherwise if first digit is 4:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "4":
			now first tumbler is 1;
	otherwise if first digit is 5:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "5":
			now first tumbler is 1;	
	otherwise if first digit is 6:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "6":
			now first tumbler is 1;
	otherwise if first digit is 7:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "7":
			now first tumbler is 1;		
	otherwise if first digit is 8:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "8":
			now first tumbler is 1;		
	otherwise if first digit is 9:
		let T be indexed text;
		let T be the player's command;
		if character number 1 in T is "9":
			now first tumbler is 1;	
			
carry out inputting when second tumbler is 0:
	if second digit is 0:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "0":
			now second tumbler is 1;
	otherwise if second digit is 1:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "1":
			now second tumbler is 1;
	otherwise if second digit is 2:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "2":
			now second tumbler is 1;
	otherwise if second digit is 3:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "3":
			now second tumbler is 1;	
	otherwise if second digit is 4:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "4":
			now second tumbler is 1;
	otherwise if second digit is 5:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "5":
			now second tumbler is 1;	
	otherwise if second digit is 6:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "6":
			now second tumbler is 1;
	otherwise if second digit is 7:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "7":
			now second tumbler is 1;		
	otherwise if second digit is 8:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "8":
			now second tumbler is 1;		
	otherwise if second digit is 9:
		let U be indexed text;
		let U be the player's command;
		if character number 2 in U is "9":
			now second tumbler is 1;
	
carry out inputting when third tumbler is 0:
	if third digit is 0:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "0":
			now third tumbler is 1;
	otherwise if third digit is 1:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "1":
			now third tumbler is 1;
	otherwise if third digit is 2:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "2":
			now third tumbler is 1;
	otherwise if third digit is 3:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "3":
			now third tumbler is 1;	
	otherwise if third digit is 4:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "4":
			now third tumbler is 1;
	otherwise if third digit is 5:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "5":
			now third tumbler is 1;	
	otherwise if third digit is 6:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "6":
			now third tumbler is 1;
	otherwise if third digit is 7:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "7":
			now third tumbler is 1;		
	otherwise if third digit is 8:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "8":
			now third tumbler is 1;		
	otherwise if third digit is 9:
		let V be indexed text;
		let V be the player's command;
		if character number 3 in V is "9":
			now third tumbler is 1.
			
carry out inputting in the presence of a number unlockable (called pnu):
	unless pnu is unlocked:
		if first tumbler is 1:
			if second tumbler is 1:
				if third tumbler is 1:
					say "You unlock [pnu].";
					now pnu is unlocked;
					now first tumbler is 0;
					now second tumbler is 0;
					now third tumbler is 0 instead;
	otherwise if pnu is unlocked:
		say "[stop if already unlocked]".
			
report inputting in the presence of a number unlockable (called prnu):
	unless prnu is unlocked:
		say "[Incorrect number lock]" ;
		now first tumbler is 0;
		now second tumbler is 0;
		now third tumbler is 0.
		
incorrect number lock is indexed text that varies. Incorrect number lock is "That doesn't seem right.".

stop if already unlocked is indexed text that varies. stop if already unlocked is "That's already unlocked.".
			
3 digit number lock ends here.

---- DOCUMENTATION ----

"For randomly generating numbers for padlocks and number unlocking objects. Can be used with all file types except Z machine version 5."


This extension provides you with the ability to have a randomly generated 3 digit number lock, which changes every game. At the moment, the proccessis fairly basic. You can only define one random number per game, and this number, if typed, will unlock any container in the location of the kind number unlockable. 

This extension cannot be used By Z machine Version 5.

To give the player the random number, include 
	"[random lock number]" in the description of an object.

To make something unlockable by the number, say 
	"[some object] is a number unlockable.".

To change the standard response to not inputting the correct number for the number lock, say:
 
	when play begins:
		now incorrect number lock is "That was a terrible guess.".
	
To change the set response to trying to unlock an already unlocked object, say;

	when play begins:
		now stop if already unlocked is "That is open already.".
	
At the moment, seeing as the set up for unlocking involves the name of the object during the command, I am unable to give the ability to change the set response to unlocking successfully, which is "You unlock [pnu]", where pnu is te object name.

every turn when the player types the random 3 digit number in the presence of the object, it will unlock it.

Example: * Safe and Sound - A safe that has a random unlocking number.

	*: "Safe and Sound"
	
	Include 3 Digit Number Lock by Orion Zymaris.

	Bank is a room.

	The table is a supporter in bank. Documents is a thing on table. the description is "The unlocking number for the safe is [random lock number].".
	understand "document" as documents.

	Pot plant is a person in bank.

	instead of doing anything to pot plant: say "That seems like it would be too noisy. Might get you noticed.".

	persuasion rule: persuasion succeeds.

	Burglar is a person in Bank. The player is Burglar. The description is "Lithe and small, you are the perfect person for a bank robbery.".

	Safe is a number unlockable in bank. it is fixed in place.

	Jewels is a thing inside safe. Money is a thing inside safe. the printed name is "100 000 Dollars". understand "dollars" as money. understand "100 000 dollars" as money. understand "100000 dollars" as money.

	Report opening safe:
		now the police_called_in of safe is calledin;
		say "You open the safe, to the sight of mounds of jewels and piles of money. You can hear the sounds of the police car in the distance. You'd better run." instead.

	police_called_in is a kind of value. the police_called_ins are Calledin and Notcalled. 
	safe has a police_called_in. the police_called_in of safe is notcalled.
	
	every turn when police_called_in of safe has been calledin for only two turns:
		say "as you are [current action], the cops burst into the bank.";
		end the story saying "You get bundled into a cop car and are sent off to the police station.".
	
	test one with "take plant/examine me/read document/111".
	test two with "open safe/take all/i".
	








	
		
	
		