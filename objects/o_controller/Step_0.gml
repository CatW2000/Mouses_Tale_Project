/// @description Insert description here
// You can write your code in this editor

//Open / close menu with escape key
if (keyboard_check_pressed(vk_escape))
{
	if (!instance_exists(o_settingsMenu))
	{
		global.isSettingsOpen = true;
		instance_create_layer(x, y, "Settings_Menu", o_settingsMenu);
	}    
	else
	{
	    instance_destroy(o_settingsMenu);
		global.isSettingsOpen = false;
	}
}