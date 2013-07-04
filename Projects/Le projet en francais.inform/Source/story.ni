"Le Roi de Fihnargaia" by Eric Forgeot

The story genre is "Aventure".
The story creation year is 2009.
The story headline is "Une introduction à la fiction interactive".
The story description is "La rencontre du héros et de la famille royale".

Include French by Eric Forgeot.
Use French Language.

Use memory economy.
Use no scoring.

Use full-length room descriptions.

A person can be distracted. A person is usually not distracted.

Petit Couloir is a room.

The player is wearing a tablier. The poche is a part of tablier. The poche is a container. Inside poche is a cle. The cle is female.

Part 1 - Le Hall

The Grand Hall de Fihnargaia is a room. "Le Grand Hall de Fihnargaia est luxueusement meublé[if unvisited], vous ne vous lassez jamais de ce spectable grandiose. Vous semblez attendu[end if]. L[']unique sortie est au sud."

Some meubles are scenery in Grand Hall de Fihnargaia. Understand "meuble" or "meuble luxueux" or "meubles luxueux" as meubles.

Some gardes are men in Grand Hall de Fihnargaia.

Some meubles are scenery in Grand Hall de Fihnargaia. Understand "trone" or "trones" as meubles.

The estrade is a female scenery in Grand Hall de Fihnargaia.

Instead of opening meubles, say "Vous n[']êtes pas chez vous ici, et vous ne pouvez pas non plus vous permettre de faire comme chez vous devant la famille royales et ses nombreux gardes.".

The Petit Couloir is south from Grand Hall de Fihnargaia. Petit Couloir is outside from Grand Hall de Fihnargaia.

The description of Petit Couloir is "Les murs sont couverts de lampes brillant de mille feux. Au nord se trouve le grand hall où vous attend le roi, tandis que le couloir où vous vous trouvez actuellement oblique vers l[']est."

The hall_decor is scenery in Petit Couloir. Understand "grand hall" or "hall" as hall_decor. The printed name of hall_decor is "hall".

Some lampes are female device in Petit Couloir.
The lampes are undescribed.
The lampes are fixed in place.
The lampes are switched on.

Understand "lampe" as lampes.

The roi des nains is a man in Grand Hall de Fihnargaia.
The reine des nains is a woman in Grand Hall de Fihnargaia.

The indefinite article of the roi des nains is "le".
The indefinite article of the reine des nains is "la".

Instead of examining the Roi des Nains, say "Le roi des nains vous regarde avec bienveillance.".

Instead of talking to Roi des Nains for the first time, say "[italic type]'Bienvenue à toi Gjörfon, et merci de t'être présenté aussi promptement à ma requête. Si je t[']ai fait quérir, c[']est parce que je connais ton dévouement et ta fidélité en tant que cuisinier en chef de notre domaine.	Le mois dernier, tu nous avais servi un excellent hydromel lors de la fête de Räz-Trepft, et je viens d[']apprendre que l[']ambassadeur de la tribu des Flianglii devait venir ici à Fihnargaia en délégation spéciale, dès demain.	Pour le recevoir comme il se doit, je souhaite lui présenter cet hydromel qui représente tout notre savoir-faire artisanal.'[roman type][line break]"

Instead of examining the Reine des Nains, say "La reine fixe les pierres du mur d[']en face.".

Instead of doing something to pierres when Reine des Nains is not distracted and Roi des Nains is not distracted, say "Il serait inconvenant de tourner ainsi votre dos aux monarques.".

Instead of throwing tablier at reine des nains:
	say "De rage mais sans raison apparente, vous jetez votre tablier à la figure de la Reine. Son époux, malgré sa bonhommie légendaire, s[']en offusque, et il vous fait jeter dans les cachots sombres de Fihnargaia. [Line Break]Six mois plus tard, vous revoilà devant lui.".

Instead of kissing reine des nains:
	say "Sans raison apparente, vous vous jetez comme un malotru au cou de la Reine, et l[']embrassez sur la bouche. Le Roi, malgré sa bonhommie légendaire, s[']en offusque, et il vous fait jeter dans les cachots sombres de Fihnargaia. [Line Break]Six mois plus tard, vous revoilà devant lui.".

Instead of waving hands to reine des nains:
	say "Vous saluez la Reine, mais sans le faire exprès, votre geste est pris pour un bras d[']honneur. Le Roi, malgré sa bonhommie légendaire, s[']en offusque, et il vous fait jeter dans les cachots sombres de Fihnargaia.[Line Break]Six mois plus tard, vous revoilà devant lui.".

Instead of giving tablier to reine des nains:
	say "Vous détachez votre tablier pour le présenter à la Reine, mais maladroit comme vous l[']êtes, vous détachez en même temps votre pantalon qui tombe à vos pied. La Reine n[']a pas l[']air intéressé. Le Roi, malgré sa bonhommie légendaire, s[']en offusque (ou est vaguement jaloux), et il vous fait jeter dans les cachots sombres de Fihnargaia.[Line Break]Six mois plus tard, vous revoilà devant lui.".

Before showing tablier to reine des nains for the first time:
	say "Vous détachez votre tablier pour le présenter à la Reine, mais maladroit comme vous l[']êtes, vous détachez en même temps votre pantalon qui tombe à vos pied.";
	try showing tablier to reine des nains;
	say "Le Roi, malgré sa bonhommie légendaire, s[']en offusque (ou est vaguement jaloux), et il vous fait jeter dans les cachots sombres de Fihnargaia.[Line Break]Six mois plus tard, vous revoilà devant lui.";
	stop the action.

Instead of attacking reine des nains:
	say "Vous montez sur l[']estrade où se trouve le couple royal, mettez votre poing comme un marteau et l[']abattez de toute vos forces sur la tête de la reine. Malgré sa bonhommie légendaire, son époux s[']en offusque (ou est vaguement jaloux), et il vous fait jeter dans les cachots sombres de Fihnargaia.[Line Break]Six mois plus tard, vous revoilà devant lui.".

Before giving or showing chope to reine des nains:
	if hydromel is inside chope
		begin;
			say "Vous tendez la chope à la royale souveraine, qui boit l[']hydromel d[']une seule traite. Elle se lève, titubante, et tombe ivre morte. Malgré sa bonhommie légendaire, son époux s[']en offusque, et il vous fait jeter dans les cachots sombres de Fihnargaia.[Line Break]Six mois plus tard, vous revoilà devant lui.";
			stop the action;
		otherwise;
			continue the action;
	end if.

Instead of giving hydromel to reine des nains, try giving chope to reine des nains.

Before giving or showing chope to roi des nains:
	if hydromel is inside chope
		begin;
			say "Vous tendez la chope à votre souverain, qui la porte a ses lèvres, et boit une longue rasade d[']hydromel d[']un air satisfait. Puis il passe la chope à son épouse pour qu'elle goûte également.";
			now roi des nains is distracted;
			now reine des nains is distracted;
			say "[line break]Le couple royal est très satisfait, la prochaine fête sera une réussite, à n[']en pas douter !";
			end the story saying "Vous avez gagné";
			stop the action;
		otherwise;
			continue the action;
	end if.

Instead of giving hydromel to roi des nains, try giving chope to roi des nains.

Some pierres are scenery in Grand Hall de Fihnargaia. Understand "mur" or "murs" or "pierre" as pierres.

Part 2 - La cuisine

Cuisines is east from Petit Couloir. The description of cuisines is "Votre univers est continuellement empli de vapeurs et d[']effluves agréables, et une dizaines de commis s[']activent aux fourneaux ou derrière de succulentes pâtisseries.".

Some commis are men in cuisines.
Some fourneaux are scenery in cuisines.

Some patisseries are in cuisines. Patisseries are edible and female. The printed name of patisseries is "pâtisseries".

Instead of smelling patisseries, say "Une bonne odeur appétissante...".

The grimoire is in cuisines.

Instead of consulting grimoire about "hydromel", say "Pour préparer de l[']hydromel, il faut mettre ensemble de l[']eau, du miel et des levures, et faire ensuite le rituel de Târ Ru Thrin, qui consiste à monter sur le tonneau et dire les phrases consacrées (seul un maître cuisinier peut le faire).".

Instead of consulting grimoire about "l'hydromel", try consulting grimoire about "hydromel".

Instead of examining grimoire, say "Ce sont des recettes de cuisine.".
Instead of reading grimoire, say "Vous pouvez consulter le grimoire au sujet du sujet qui vous intéresse, mais c'est sans doute le thème de l[']hydromel qui vous préoccupe le plus en ce moment...".

A tonneau is a container in cuisines. An eaux is female in tonneau. Understand "eau" as eaux. The printed name of eaux is "eau". The indefinite article of eaux is "de l[']".

The description of tonneau is "Un gros tonneau grand deux fois comme vous, qui vous sert à brasser de la bière ou de l[']hydromel. Il y a un petit robinet à son extrémité.".

Instead of unlocking tonneau with cle, say "Cela aurait vraiment été une bonne idée de pouvoir empêcher quiconque de se servir dans le tonneau, car parfois on croirait que ce qu'il contient à tendance à s[']évaporer, mais le tonnelier n[']était pas assez habile pour y poser un verrou.".

Instead of swimming when eaux is in tonneau, say "Voilà ! C'est exactement à cela que sert l[']eau, et à cela uniquement. Par contre, il n[']y en a qu'un fond dans ce tonneau, et il servira malgré tout à brasser l[']hydromel.".

Rule for printing the name of tonneau:
say "tonneau";
omit contents in listing.

The robinet is a part of tonneau.

An hydromel is a thing. The indefinite article of hydromel is "de l[']".

Instead of drinking hydromel, say "Ce n[']est pas l[']envie qui vous en manque, mais le Roi préfèrerait être servi avant.".

Instead of drinking eaux, say "Pouah ! Boire de l[']eau devant tout ce monde, et c'est l[']assurance d[']être la risée de Fihnargaia en très peu de temps. Il ne sera pas dit que Drâh Bar Ruhk s[']abreuve d[']eau !"

Instead of climbing tonneau:
	say "Vous escaladez le grand tonneau et faites un peu le pitre dessus pour amuser vos employés, en dansant, chantant et grimaçant. Puis, la comédie terminée, vous redescendez au sol.";

Instead of climbing tonneau when pot de miel is in tonneau and pot de levures is in tonneau:
	say "Vous escaladez le grand tonneau et faites un peu le pitre dessus pour amuser vos employés, en dansant, chantant et grimaçant. Puis, le rituel terminé, vous redescendez au sol. La magie a sans doute opéré, comme d[']habitude.";
	remove pot de miel from play;
	remove eaux from play;
	remove pot de levures from play;
	move hydromel to tonneau.

Instead of turning robinet when hydromel is not in tonneau:
	say "Vous vous êtes engagé à ne tourner ce robinet que quand du bon hydromel sera dedans.".

Instead of turning robinet when hydromel is in tonneau:
	move hydromel to chope;
	move chope to player;
	say "Vous prenez une chope et la remplissez avec de l[']hydromel.".

The grande armoire is a female container in cuisines. It is closed and openable. It is locked.

The cle unlocks grande armoire.

Instead of pushing or pulling chaise, say "Cette chaise est bien là où elle est."

The pot de miel is in armoire. The pot de levures is in armoire.

The chope is female container in armoire.

The chaise is a supporter in cuisines. The chaise is female and enterable.

Instead of going east when location is Petit Couloir and the grand Hall de Fihnargaia is not visited, say "Le Roi vous ayant convoqué, vous feriez bien de ne pas le faire attendre. Vous retournerez à vos cuisines ensuite.".

Instead of talking to commis, say "Vous murmurez rapidement quelques ordres à vos commis pour arranger les derniers détails du repas en cours.".

Instead of listening to commis, say "Ils chantonnent tout en travaillant, et parfois certains disent du mal de vous. Sans doute ne vous ont-il pas entendu arriver.".

Test me with "ouvrir lampes/fermer lampes/allumer lampes/eteindre lampes/allumer lampes/aller au nord/examiner meubles/ouvrir meubles/saluer le roi/parler au roi/regarder la reine/laisser tablier/prendre tablier/mettre tablier/jeter tablier vers le roi/embrasser le roi/donner tablier au roi/donner tablier au roi/attaquer les gardes/attendre/inventaire/test bad/test cuisine".

Test bad with "embrasser la reine/jeter tablier vers la reine/saluer la reine/donner tablier à la reine/montrer tablier à la reine/attaquer la reine"

Test cuisine with "sud/est/sentir tonneau/pousser tonneau/tirer tonneau/pousser chaise/tirer chaise/tourner chaise/tourner robinet/grimper sur tonneau/boire eaux/nager/grimper sur armoire/verrouiller tonneau avec cle/verrouiller armoire avec cle/deverrouiller armoire avec cle/chanter/sentir patisseries/manger patisseries/x grimoire/lire grimoire/consulter grimoire au sujet de hydromel/ouvrir armoire/prendre miel/prendre levures/mettre miel dans tonneau/mettre levures dans tonneau/escalader tonneau/tourner robinet/ouest/nord/donner chope au Roi"


