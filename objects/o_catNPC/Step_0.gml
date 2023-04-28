/// @description Insert description here
// You can write your code in this editor

if(collision_rectangle(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width * 2, y, o_Player, false, true))
{
	if (global.Interact && !instance_exists(o_DialogBox))
	{
		if(questProgress == 0)
		{
			QueueDialog("FARM CAT: Oh hello... I haven't seen you before.", self);
			QueueDialog("FARM CAT: Do you think you could help me?", self);
			QueueDialog("MOUSE: What do you need help with?", o_Player);
			QueueDialog("FARM CAT: Well you see, I am an old farmcat and my skills are not what they used to be.", self);
			QueueDialog("FARM CAT: I don't want my human to worry about me...", self);
			QueueDialog("FARM CAT: Could you catch the rats around here for me?", self);
			QueueDialog("MOUSE: Of course!", o_Player);
			
			questProgress = 1;
		}
		else if(questProgress == 1 && instance_exists(o_Rat))
		{
			Say("FARM CAT: How is it going?", self);	
		}
		else if(questProgress == 1)
		{
			Say("FARM CAT: Thank you for helping me out. You're a great pal!", self);	
			questProgress = 2;
		}
	}
}

