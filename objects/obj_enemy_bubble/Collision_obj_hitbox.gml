/// @description Insert description here
// You can write your code in this editor
if(other.side!=side){
	instance_destroy();
	audio_play_sound(magic,1,false);
	global.hitpause=true;
	
	var effect=instance_create_layer((other.x+x)/2,(other.y+y)/2,"Boxes",obj_effect_slash);
	effect.dir=other.dir;
	effect.push=other.attack/5;
}