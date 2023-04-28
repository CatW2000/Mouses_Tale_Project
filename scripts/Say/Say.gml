// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Say(text, speaker){
	var instance = instance_create_depth(0, 0, -500, o_DialogBox);
	with(instance)
	{
		self.text = text;
		//self.timer = string_length(text) * 5;
		self.speaker = speaker;
	}

}

