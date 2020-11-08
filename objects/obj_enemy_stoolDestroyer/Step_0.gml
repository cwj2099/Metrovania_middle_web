/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
hurtbox.image_xscale=3;
hurtbox.image_yscale=7;
hurtboxD_y=30;

if(hurtbox.hitted){
	vspd=0;hspd=0;
	Hp-=hurtbox.damage;
	alarm_set(4,2);
}
if(global.ePause){clear_hitbox();exit;}

if(Hp<=0){
	instance_destroy();
	instance_create_layer(x,y,"Boxes",obj_effect_boom);
	exit;
}


if(hitstun<=0){
	stoolDestroyer_ai();
	stoolDestroyer_move();
	stoolDestroyer_action();
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