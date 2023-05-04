/// @description Insert description here
// You can write your code in this editor

if(x != destinationX)
{
	if(x < destinationX)
	{
		x += 2;
		image_xscale = 1;
		if(x > destinationX) x = destinationX;
	}
	else
	{
		x -= 2;
		image_xscale = -1;
		if(x < destinationX) x = destinationX;
	}
	
	image_speed = 1;
	sprite_index = spr_human_walk;
	
}
//Not at the start location and at destination, so wait:
else if(x != startX)
{
	waitAtDestinationTimer -= delta_time / 1000000;
	//counts down the time in seconds every frame.
}

if(x == startX || x == destinationX)
{
	sprite_index = spr_human_idle;
}

//if wait time is over:
if(waitAtDestinationTimer <= 0)
{	//reset wait time:
	waitAtDestinationTimer = destinationTimer;
	//make starting location the new destination
	if(x != startX) destinationX = startX;
}

//If human is 100px away from starting position then player can leave:
if(x > startX + 100)  { global.humanAway = true;  }	
else  { global.humanAway = false;  }
//timer until hint is given:
if(global.humanAway = true)  { run_hint++;  }
if(run_hint = 700)  {  showPopUpText("Hint: Use Shift + A / Shift + D to run!", 4);  }