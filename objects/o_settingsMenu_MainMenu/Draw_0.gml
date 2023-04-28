/// @description Drawing menu NOT USING GUI

//if esc is pressed, or settings button is clicked, then it draws the menu sprite and adds 
//2d settings menu 

//draw_sprite_ext(spr_menu, 0, x, y, s_width / sprite_width, s_height / sprite_height,
//	0, c_white, 1);
	
draw_sprite(spr_menu, 0, half_r_width, half_r_height);

	
//draw options:

draw_set_font(font_PixelOperator);

draw_set_valign(fa_top);
draw_set_halign(fa_left);

 

for (var i = 0; i < array_length(menu_item[sub_menu]); i++)
{
	draw_set_color(c_white);
	if (i == index)
	{
	draw_set_color(c_yellow);	
}
	
	//is this menu item selectable, or just plain text? - not fully functioning yet
	if is_array(menu_item[sub_menu][i])
	{
		//store menu array
		var menu_array = menu_item[sub_menu][i];	
		
		//get map array
		var map_array = set[? menu_array[1]];
		
		//get limit or choices array
		var limits_array = map_array[1];
		
		//integer or text?
		if is_real(limits_array[0])
		{
			var _str = menu_array[0] + string(map_array[0]);	
		}
		else
		{
			var _str = menu_array[0] + limits_array[map_array[0]];
		}
	}
	else	//if plain text
	{
		var _str = menu_item[sub_menu][i];
	}
	
	draw_text(half_r_width + s_border, half_r_height + s_border + s_space * i, _str);
}

	


/*
draw_text_color(x + s_border, y + s_border + s_space * i, menu_item[i],
		menu_text_color, menu_text_color, menu_text_color, menu_text_color, 1);
*/
