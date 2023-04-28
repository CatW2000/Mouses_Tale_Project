/// @description Insert description here
// You can write your code in this editor

xpos = 480;
alpha = 1;
fadeout = 0;

str = "";
print = "";	//creating typewriter effect

letter = 0;	//(AKA l)
next = 0;

skip_hint = false;
holdspace = 0; //user must hold space to skip cutscene.
	/*when user presses keys during cutscene zero, set holdspace = 1
	and tell user to hold space to skip cutscene	*/
	
//array that holds text to show in cutscene
strings[0] = "This is the story of a particularly adventurous house cat.";
strings[1] = "Because of his grey fur and spunky attitude, his human named him \"Mouse\".";
strings[2] = "Mouse thought it was a sick joke. He used to hunt many mice when he was a stray!";
strings[3] = "But he loved his human anyway, as weird as she was..";
strings[4] = "However, that didnt stop him from yearning to play outside again.";
strings[5] = "This is\nMouse's Tale.";

intro_end = false;



setGUIlayer();