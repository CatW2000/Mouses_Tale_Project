/// @description Insert description here
// You can write your code in this editor



if (fadeout = false) //fading into room
{
alpha = max(alpha - 0.005, 0);
}
else
{
alpha = min(alpha + 0.005, 1);	
}

if (global.RoomEnds = true)
{
	fadeout = true;	
}


if(alpha == 1 && fadeout == 1)
{
	if(global.room_location = 1)	//from home to park room
	{
		room_goto(Room_Park);
	}
	else if(global.room_location = 2 && (!instance_exists(o_DialogBox)))	//from park to outro room
	{
		room_goto(Room_Outro);
	}
	//if needs met to lose game, room_location is set to 3 & triggers this code:
	else if(global.room_location = 3)	
	{
		room_goto(Room_Game_Over);
	}	

		
}