"Matrix" by Orion Zymaris

Matrix is a room.
when play begins:
	teletype "aogbhosghosgd [change teletype delay to 12 ms]aarewwdefg".
to say apple:
	say "banana";

Include Real-Time Delays by Erik Temple.

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