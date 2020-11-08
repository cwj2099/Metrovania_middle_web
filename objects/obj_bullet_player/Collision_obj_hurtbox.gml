/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(ds_list_find_index(white_list,other.id)==-1&&other.side!=side&&other.status&&!other.hitted){
	ds_list_add(white_list,other.id);	
	if(attack<20){instance_destroy(self);}
	audio_play_sound(sound,1,0);

	other.hitted=true;
	other.push_data=push_data;
	other.damage=attack;
	other.stun=stun;

	var effect=instance_create_layer(x,y,"Boxes",deathAni);
	if(direction==0){effect.dir=1;}
	else{effect.dir=-1;}
	effect.push=attack/5;
}