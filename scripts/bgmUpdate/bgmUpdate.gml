// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bgmUpdate(sound){
	
	//if(global.bgm==undefined){global.bgm=sound;}
	//show_debug_message("title");
	if(global.bgm!=sound){
		if(global.bgm!=undefined)audio_sound_gain(global.bgm,0,500);
		audio_stop_sound(sound);
		audio_play_sound(sound,10,true);
		audio_sound_gain(sound,0,0);
		audio_sound_gain(sound,1,3000);
		global.bgm=sound;
	}
	else{audio_sound_gain(sound,1,3000);}
}