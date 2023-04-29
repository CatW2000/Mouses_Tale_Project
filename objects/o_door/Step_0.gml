/// @description Insert description here
// You can write your code in this editor


// + 50 y since the door is above the floor and we dont want to jump into it to leave.
if (place_meeting(x, y + 50, o_Player))
{
	if (global.Interact && global.humanAway == true)
	{
		//room_goto(Room_Park);	
		global.RoomEnds = true;
	}
}

GameOver();