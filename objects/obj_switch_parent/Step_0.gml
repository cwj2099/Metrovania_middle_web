/// @description Insert description here
// You can write your code in this editor
interactable=place_meeting(x,y,obj_player);

//if player triggered the switch
if(interactable&&(global.input_up_p||global.input_interact)){
	status=!status;
	audio_play_sound(interact,5,false);
}