/// @description Insert description here
// You can write your code in this editor


if(isDying)
{
    if(image_index  > image_number - 1)
    {
        image_speed = 0;    
        instance_destroy();
    }
    return;
}

// Check if there is either NO FLOOR 20 pixels in our direction(xDir) OR if there IS a wall in front of us.
// y + 1 is to ignore the regular wall since rat is on the floor directly touching it
// y - 1 is the opposite, we ignore floor but look for the regular walls.(since 1 pixel above the floor is only detecting walls and ignoring the floor)

if(!place_meeting(x + (20 * xDir), y + 1, oWall) || place_meeting(x + xDir, y - 1, oWall))	//gives space so rat doesnt walk off wall
{																		//y-1 
	xDir *= -1;//go the other way
	//x += xDir;	- was preventing "stacking" and going left/right
}

x += xDir;

image_xscale = sign(xDir);




// Collide with the player (want to make animation)
if(collision_rectangle(x - sprite_width / 2, y - sprite_height / 2, x, y, o_Player, false, true))
{
	 if(global.Interact && o_catNPC.questProgress == 1)
    {
        isDying = true;
        image_speed = 1;
        image_index = 0;
        sprite_index = deathSprite;
    }
	/*
	if(global.Interact && o_catNPC.questProgress == 1)
	{
		instance_destroy();
	}
	*/
}

