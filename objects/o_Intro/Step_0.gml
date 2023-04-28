/// @description Insert description here
// You can write your code in this editor

camera_set_view_pos(view_camera[0], xpos, -30)
//xpos = 700 initially
xpos = min(xpos+0.3, 1000);	//move camera to the right by 0.3 pixels the bed is centered on the screen

if(xpos = 1000)  { intro_end = true; }


if (!fadeout)		//if fadeout is 0
{
alpha = max(alpha - 0.005, 0);
}
else
{
alpha = min(alpha + 0.005, 1);	
}

letter += 0.5	//adds letters slowly

print = string_copy(str,1,letter);		//string copy begins at 1, start copying at beginning
									//copying the str variable into print
									
//"100" dictates how long after the string is fully drawn out the text disappears. Depends on letter variable	
//moves to next array string, ensuring it doesn't cycle past last array, hence "-1"
if (letter > string_length(str) + 80) && (next < array_length_1d(strings)-1)
{
	letter = 0;
	next++;
	if(next == array_length_1d(strings) - 1)
	{
		holdspace++;
	}
}

									
str = strings[next];

if (keyboard_check_direct(vk_space))
{
	skip_hint = true;
	holdspace++;      //increments holdspace for every frame the spacebar is held down
}

if(holdspace > 80 || intro_end = true)
{
	fadeout = 1;
}

if(alpha == 1 && fadeout == 1)
{
	room_goto_next();
}