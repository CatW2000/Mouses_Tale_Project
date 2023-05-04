/// @description Insert description here
// You can write your code in this editor

// If there is no dialog box visible, can continue the dialog if the dialog queue is above 0
if(!instance_exists(o_DialogBox) && array_length(dialogTextQueue) > 0)
{	//creates instance of dialogue box:
	Say(dialogTextQueue[0], dialogSpeakerQueue[0]);	
	//then deletes instance from array:
	array_delete(dialogTextQueue, 0, 1);			
	array_delete(dialogSpeakerQueue, 0, 1);
}

if(instance_exists(o_DialogBox))  {  global.isDialogPlaying = true;  }
else  {  global.isDialogPlaying = false;  }