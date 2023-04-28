/// @description Creating action event for button click

if(mouse_check_button_pressed(mb_left))		
{	
	if (position_meeting(mouse_x, mouse_y, id))
	{
		image_index = 1;
		room_goto_next();
	}
}

if (mouse_check_button_released(mb_left))
{
   if (position_meeting(mouse_x, mouse_y, id))
	{
		image_index = 0;
	}
}