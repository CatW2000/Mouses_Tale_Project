/// @description Insert description here
// You can write your code in this editor

if surface_get_width(application_surface)!=window_get_width()
	&& surface_get_height(application_surface)!=window_get_height()
{
surface_resize(application_surface, display_get_width(), display_get_height());
}