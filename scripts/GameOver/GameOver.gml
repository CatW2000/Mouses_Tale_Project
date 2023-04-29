// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameOver(){
	//if player has interacted with every object and o_human has returned to door
	if (o_breakable.can_interact == false
	&& o_breakable.can_interact_kitchen_open = true
	&& global.humanAway == false)
	{
		//room_goto(Room_Game_Over);
		global.room_location = 3;
	}
}