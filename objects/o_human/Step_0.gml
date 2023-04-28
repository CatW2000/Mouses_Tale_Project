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
else if(x != startX)//we are not at the start location, so we wait
{
	// this runs only if the first if statement is false which means we have reached our destination
	waitAtDestinationTimer -= delta_time / 1000000;// count down the time in seconds every frame.
}

if(x == startX || x == destinationX)
{
	sprite_index = spr_human_idle;//change back to idle sprite when not walking
}

if(waitAtDestinationTimer <= 0)//wait time is over
{
	waitAtDestinationTimer = destinationTimer;//reset wait time
	if(x != startX) destinationX = startX;//go back to start since we are in one of the locations with a fallen object
}

// If human is 100px away from starting position (to the right), it's considered "safe" and we can leave.
if(x > startX + 100)  { global.humanAway = true;  }	
else  { global.humanAway = false;  }

if(global.humanAway = true)  { run_hint++;  }
if(run_hint = 700)  {  showPopUpText("Hint: Use Shift + A / Shift + D to run!", 4);  }