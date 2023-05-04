/// @description update camera

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//update camera object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//smooth camera movement
x = clamp(x, view_width_half, room_width - view_width_half);
y = clamp(y, view_height_half, room_height - view_height_half);

camera_set_view_pos(cam, x-view_width_half, y-view_height_half);

