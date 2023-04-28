/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x+2, y, o_Player))	//if colliding with o_blocking_kitchen
{		
	//if player presses E on  o_blocking_kitchen and has the key
	
	if (global.Interact && global.hasKey = true)	
	{
		instance_destroy(o_blocking_kitchen); 
		with(o_breakable)
		{
			self.can_interact = true;
		}
		global.kitchen_open = true;
		showPopUpText("The door to outside is open! But that human is standing in the way... Find a way to distract her and escape!", 10);
		//instance_destroy([id, execute_event_flag]);
			//event flag is pop-up text "The door to outside is open. Find a way to distract the human"
	}
	else	
	{	
		if !instance_exists(o_textbox_2)
	    {
	       instance_create_layer(x, y, "layer_popup_text", o_textbox_2);
	   
	    }
	}
}

else	//if not colliding with o_blocking_kitchen
{
	if (instance_exists(o_textbox_2))
	{
		instance_destroy(o_textbox_2);
	}
	
}

if(global.kitchen_open = true)
{
	instance_destroy(o_textbox_2);	
}

