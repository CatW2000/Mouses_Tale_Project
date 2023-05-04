/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_textbox, 0, speaker.x - 280, speaker.y - 280);


//var padding = (sprite_width * 0.1);
var font = draw_get_font();
draw_set_font(font_PixelOperator);

//draw_text_ext(half_gui_width + 100, half_gui_height + 19, text, 13, sprite_width);
draw_text_ext(speaker.x - 280, speaker.y - 290, text, 13, sprite_width - 10);

draw_set_font(font);
