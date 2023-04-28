/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_fade, 0, 0, 0, 760, 520, 0, c_black, alpha);

draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font_PixelOperator)

draw_text(half_gui_width + 55, 320, print);

if (skip_hint = true)
{
	draw_text(half_gui_width + 55, 35, "Hold spacebar to skip");
}