/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if(hurtbox.hitted){
	vspd=0;hspd=0;
	Hp-=hurtbox.damage;
	hitstun=hurtbox.stun;
	stunned=true;
	alarm_set(4,2);
}
if(global.ePause){clear_hitbox();exit;}

if(Hp<=0){
	instance_destroy();
	instance_create_layer(x,y,"Boxes",obj_effect_boom);
	exit;
}


if(hitstun<=0){
	zombie_ai();
	zombie_move();
	zombie_action();
}
else{
	clear_hitbox();
	movestun=0;
	status=states.neutral;
	
	if(!onGround||!onPlatform){
	vspd+=global.gForce;
	vspd=min(vspd,global.gMax);
	}
}




event_inherited();