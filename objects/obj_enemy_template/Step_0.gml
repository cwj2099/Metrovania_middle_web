/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if(hurtbox.hitted){
	Hp-=hurtbox.damage;
	hitstun=hurtbox.stun;
}

if(Hp<=0){
	instance_destroy();
	instance_create_layer(x,y,"Boxes",obj_effect_boom);
	//if I'm the last one
	if(instance_number(obj_enemy_zombie)==0){global.ko=true;}
	exit;
}


if(hitstun<=0){
	//ai goes here
	//movement goes here
	//actions goes here
}
else{
	if(hitbox!=undefined){
		instance_destroy(hitbox);
		hitbox=undefined;
	}
	vspd=0;hspd=0;
	movestun=0;
	status=states.neutral;
}




event_inherited();