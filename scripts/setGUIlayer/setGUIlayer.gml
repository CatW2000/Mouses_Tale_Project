// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setGUIlayer ()
{
	
s_border = 4;	//how far text is from the side of the menu
s_space = 18;	//space between the different options  (AKA _gap)

spr_width = sprite_get_width(spr_menu);
spr_height = sprite_get_height(spr_menu);


//resizing GUI to match:
var gX = display_get_width() / 3;
var gY = display_get_height() / 3;
//Should this be a global variable?
display_set_gui_size(gX, gY);		//<-- this increased gui sizewhen display width and height is divided by 4

//centering menu to screen:
half_gui_width = (gX / 2) - (spr_width / 2);
half_gui_height = (gY / 2) - (spr_height / 2);

}


/*
In 1080 and 720 



*/