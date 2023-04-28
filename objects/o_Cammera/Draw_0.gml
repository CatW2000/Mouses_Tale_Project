/// @description keep resolution and aspect ratio

//this statement keeps aspect ratio and prevents pixel lag / artifacting:
if surface_get_width(application_surface)!=window_get_width()
	&& surface_get_height(application_surface)!=window_get_height()
{
surface_resize(application_surface, display_get_width(), display_get_height());
}
