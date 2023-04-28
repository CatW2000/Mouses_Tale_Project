/// @description open/close menu
/*
if (layer_exists("Settings_Menu"))
{
		layer_destroy_instances("Settings_Menu");
}	
else
{
	var menu = instance_create_layer(half_r_width, half_r_height, "Settings_Menu", o_settingsMenu);
  }
  */
  
  
 if (!layer_exists("Settings_Menu"))
{
	instance_create_layer(half_r_width, half_r_height, "Settings_Menu", o_settingsMenu);
}	
else
{
	layer_destroy_instances("Settings_Menu");
}
  
//**Both if-else statements only close the menu - it won't open from pressing escape key**