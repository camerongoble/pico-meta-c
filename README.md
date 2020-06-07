# pico-meta-c
Building a meta system for transferable characters between carts in PICO-8.  Indulge crazy combinations and level up across worlds!

This project started out as a conversation about games like Bard's Tale I-III, the Ultima series, and Mass Effect, which allowed players to import characters from previous games: powers, skills, and inventories at least a little intact.  We started imagining what it would be like for other games, particularly those in PICO-8, to import characters from other cartridges.  

What if Pac-Man and Bionic Commando teamed up to make their way through Castlevania?  These are the kind of questions we yearn to answer through gameplay.

We see this project using Entity/Component/System (ECS) methodology, to allow for common components in the data dictionary, entities (as characters) managed by the metacart, and systems implemented in the game carts.

This project began June 2020.

PROOF OF CONCEPT:
This repo was created with three POC files to show how tables from one cart could be saved, loaded, and altered by another.  

metacart.p8 -- Generates a starting character file in the form of parseable PICO-8 code

gamecart.p8 -- uses PICO-8's new #include function to load the character file, simulate gameplay, and export it back out.

character.p8l -- parseable PICO-8 code that builds the character table.

The idea here is to have one metacart that handles that lets the player select the character to play in the game carts.  Multiple game carts affect the character in different ways, each writing their changes back to the character file.  

Character tables are formatted according to a standardized dictionary, which this project will help begin as well.  Gamecarts will draw from the dictionary to grant abilities to characters during gameplay.

HOW TO USE:

Delete the character.pl8 file.

Run metacart in PICO-8.  Witness the character data.  Hit X to export.

Examine the new character.pl8 file in a text editor to verify the data.

Run gamecart in PICO-8.  Again, verify the data is correct.

Use O button to simulate gameplay, which changes the data.  

Use X button to re-export the character.

Re-examine the new character.pl8 file in a text editor to verify the data has changed.

TO DO: 

THere is obviously quite a way to go, primarily around establishing a dictionary of attributes and agreement about how such attributes are implemented across gamecarts.  THe ultimate vision is to be able to import a character from one gamecart into a gamecart of completely different genre and gameplay, and have that character behave in ways consumate with its build and prior experiences.  

IE:  Gandalf can throw flaming pinecones in the Lord of the Rings adventure game, and has similar awesome fire powers in a Buck Rogers RPG.
