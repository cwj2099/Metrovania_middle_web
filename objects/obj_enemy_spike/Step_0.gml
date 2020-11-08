/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if(hurtbox.hitted){
	Hp-=hurtbox.damage;
	stunned=false;
	alarm_set(4,2);
}
if(global.ePause){clear_hitbox();exit;}

if(Hp<=0){
	instance_destroy();
	instance_create_layer(x,y,"Boxes",obj_effect_boom);
	global.hitpause1=true;
	exit;
}


if(hitstun<=0){
	spike_ai();
	spike_action();
}
else{
	clear_hitbox();
	vspd=0;hspd=0;
	movestun=0;
	status=states.neutral;
}




event_inherited();