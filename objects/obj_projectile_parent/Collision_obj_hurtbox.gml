/// @description Insert description here
// You can write your code in this editor
if(other.side!=side&&other.status&&!other.hitted){
	instance_destroy(self);
	audio_play_sound(sound,1,0);

	other.hitted=true;
	other.push_data=push_data;
	other.damage=attack;
	other.stun=stun;

	instance_create_layer(x,y,"Boxes",deathAni);
}