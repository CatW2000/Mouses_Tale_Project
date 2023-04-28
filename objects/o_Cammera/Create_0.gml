/// @description set up camera
// You can write your code in this editor

cam = view_camera[0];	//get id of camera that is created

follow = o_Player;	//variable that can follow the player, if multiple instances of o_Player,
					//it calls the oldest instance. Therefore, only want to use an object if there is
					//ONE instance of that object
							//what do you use instead then...
							
//camera_set_view_size(cam, 190, 200);

view_width_half = camera_get_view_width(cam) / 2;
view_height_half = camera_get_view_height(cam) / 2;

xTo = xstart;
yTo = ystart;

//settings_icon = o_settings_icon_inside;

