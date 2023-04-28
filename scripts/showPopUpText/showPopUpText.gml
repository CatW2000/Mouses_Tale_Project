// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function showPopUpText(text, timer)
{
	var instance = instance_create_layer(0, 0, "layer_popup_text", oPopUpText);
	with(instance)
	{
		self.text = text;
	}
	
	myTimer = time_source_create(time_source_game, timer, time_source_units_seconds, instance_destroy, [instance]);
	time_source_start(myTimer);
}