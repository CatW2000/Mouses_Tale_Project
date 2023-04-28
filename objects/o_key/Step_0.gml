/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, o_Player))
{
	if (global.Interact)	//player presses E on key object
	{
		instance_destroy(id); 
		//instance_destroy([id, execute_event_flag]);
		global.hasKey = true
	}
}