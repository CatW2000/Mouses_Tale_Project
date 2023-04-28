/// @description initializing array


s_border = 4;	//how far text is from the side of the menu
s_space = 18;	//space between the different options  (AKA _gap)

spr_width = sprite_get_width(spr_menu);
spr_height = sprite_get_height(spr_menu);

//centering the settings menu to the room size
half_r_width = (room_width / 2) - (spr_width / 2);
half_r_height = (room_height / 2) - (spr_height / 2);

//DS MODE
global.dsm_settings = ds_map_create();
//#macro set		global.dsm_settings

ds_map_add(set, "window", [1, ["On", "Off"]]);		//displays "off" at index 1 as default selection


//main menu submenu 0:
menu_item[0][0] = "Controls";		//maybe I make an asset that SHOWS controls in case (how would i get that to work?)
menu_item[0][1] = ["Window Mode ", "window"];
menu_item[0][2] = "Quit Game";
menu_item[0][3] = "Close Settings";
//maybe add audio settings if I can get audio in after game is finished.


//Controls submenu 1:
menu_item[1][0] = "Move Left: A";
menu_item[1][1] = "Move Right: D";
menu_item[1][2] = "Run: Shift + A/D";
menu_item[1][3] = "Jump: Spacebar";
menu_item[1][4] = "Back";

//implement: Allow settings menu to close when clicking off the settings
	//Will be done after cursor interaction
//Change

index = 0;		//menu index position

sub_menu = 0; //current sub menu