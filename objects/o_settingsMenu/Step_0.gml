/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);

var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);

var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

var _move = _down - _up;
var _hmove = _right - _left;

if _move != 0
{
	//move index
	index += _move;
	
	//clamp values:
	//var _size = array_length_2d(menu_item, sub_menu)
	var _size = array_length(menu_item[sub_menu]);
	if (index < 0)
	{	//at start, so loop to menu end
		index = _size - 1;			
	}
	else if (index >= _size)
	{	//at end, so loop to menu start
		index = 0;	
	}
}

if (_select || (is_array(menu_item[sub_menu][index]) && _hmove != 0))
{
	switch(sub_menu)
	{
		case 0:
			//main menu:
			switch(index)
			{
				case 0:
				//controls
				sub_menu = 1;
				index = 5;
				
				break;
		
				case 1:
				//main menu
				room_goto(Main_Menu);
				break;
		
				case 2:
				//quit game
				game_end();
				break;
		
				case 3:
				//close settings
				layer_destroy_instances("Settings_Menu");
				global.isSettingsOpen = false;
				break;
			}
		break;
		
		case 1:	//controls:
			switch(index)
			{
				case 0:
				//move left
				break;
		
				case 1:
				//move right
				break;
				
				case 2:
				//run
				break;
		
				case 3:
				//jump
				break;
		
				case 4:
				//interact
				break;
				
				case 5:
				//back
				sub_menu = 0;
				index = 0;
				
				break;

			}
		break;
	}
}

/*
function change_menu (_move, _key)
{
	var map_array = set[? _key];
	
	var limits_array = map_array[1];
	
	if (is_real(limits_array[0]))
	{
	var _min = limits_array[0];
	var _max = limits_array[1];
	}

	else
	{
	var _min = limits_array[0];
	var _max = array_length(limits_array) - 1;
	}
	
	//move selection
	map_array[@ 0] = clamp(_move + map_array[0], _min, _max);
		//clamp - ensures the selection does not go beyond the limits given
	
}
*/





