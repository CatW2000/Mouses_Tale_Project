/// @description Insert description here
// You can write your code in this editor
if(image_index  > image_number - 1)
{
	image_speed = 0;	
}

if (place_meeting(x, y, o_Player) && can_interact = true)
{
	if (global.Interact && can_interact)	//player presses E on key object
	{
		image_speed = 1;
		can_interact = false;//interact once only
		
		with(o_human)
		{
			self.destinationX = other.x;
		}
	}
}

if(global.kitchen_open = true)
{
	can_interact_kitchen_open = true;
}