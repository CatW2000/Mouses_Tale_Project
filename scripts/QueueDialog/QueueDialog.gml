// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function QueueDialog(text, speaker){
	
	with(oDialogManager)
	{	
		//push text made in npc object to array
		array_push(self.dialogTextQueue, text);
		array_push(self.dialogSpeakerQueue, speaker);
	}
}