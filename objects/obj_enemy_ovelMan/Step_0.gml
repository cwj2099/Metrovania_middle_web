/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(global.ePause){clear_hitbox();exit;}

if(Hp<=0){
	instance_destroy();
	instance_create_layer(x,y,"Boxes",obj_effect_boom);
	exit;
}


if(hitstun<=0){
	ovelMan_ai();
	ovelMan_move();
	ovelMan_action();
}
else{
	clear_hitbox();
	movestun=0;
	status=states.neutral;
	hspd=0;
	
	if(!onGround||!onPlatform){
	vspd+=global.gForce;
	vspd=min(vspd,global.gMax);
	}
}
event_inherited();

