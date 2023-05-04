/// @description Drawing menu WITH GUI

draw_sprite(spr_menu, 0, half_gui_width, half_gui_height);
draw_set_font(font_PixelOperator);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < array_length(menu_item[sub_menu]); i++)
{
	draw_set_color(c_white);
	if (i == index)  {  draw_set_color(c_yellow);  }

	var _str = menu_item[sub_menu][i];

	draw_text(half_gui_width + s_border, half_gui_height + s_border + s_space * i, _str);
}

