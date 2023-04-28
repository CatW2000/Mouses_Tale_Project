/// @description movement, collision, and animation
//edited

//Player interacts with object (E)
global.Interact = keyboard_check_pressed(ord("E"));

//freezes player actions
if(global.isDialogPlaying) return;
if(global.isSettingsOpen) return;


//get player inputs: true or false aka 1 or 0... can be used in math equations
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

run_left = keyboard_check(ord("A")) && keyboard_check(vk_shift);
run_right = keyboard_check(ord("D")) && keyboard_check(vk_shift);

//calculate movement:
var _move = key_right - key_left;	//if left AND right held, no movement (1 - 1 = 0)
var run_move = run_right - run_left;	
hsp = _move * walksp;
vsp = vsp + grv; 

if(run_move != 0) hsp = run_move * runsp;

/*

//double jump:
if (place_meeting(x, y+1, oWall))
{
    jumps = jumpsMax;
    grounded = true
}
else grounded = false

if (keyJump) && (jumps > 0)
{
    if grounded = true
    {
        jumps -= 1
        vsp = -jumpSpeed;
    }
    else
    {
        jumps -= jumps;
        vsp = -jumpSpeed;
    }
}

*/

if (place_meeting(x, y+1, oWall)) && (key_jump) //asking if key jump press is true
{
	vsp = -jumpsp;
}

//Horizontal Collision (Walk):
if(place_meeting(x+hsp, y, oWall))  //if player hitbox overlaps with oWall, returns true
{   
	
	while (!place_meeting(x+sign(hsp), y+1, oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x, y + vsp, oWall))  //if player hitbox overlaps with oWall, returns true
{   
	
	while (!place_meeting(x, y+sign(vsp), oWall))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;


//Animation:
if (!place_meeting(x, y+1, oWall))		//while jumping in the air
{
	
	if (vsp > 0)	//if falling down
	{
		image_speed = 0.7;
		sprite_index = spr_player_jump_down;
	}
	else			//if jumping upwards
	{ 
		image_speed = 1.3
		sprite_index = spr_player_jump_up;
	}	
}
else
{
	if (hsp == 0)		//while not moving
	{
		image_speed = 1;
		sprite_index = spr_player_idle;
	}
	else if(run_move != 0)
	{
	image_speed = 1;
	sprite_index = spr_player_run;
	}
	else
	{
	image_speed = 1;
	sprite_index = spr_player_walk;
	}
	
}
if (keyboard_check(ord("E")))
{
	sprite_index = spr_player_interact;	
}
if (hsp != 0)
{
	image_xscale = sign(hsp);		//scales image horizontally based on right or left movement

}

 