/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
mask_index=spr_swordsman;


if(global.ePause){
	for(var i=0;i<20;i++)
	{alarm_set(i,alarm_get(i)+1);}
	clear_hitbox();exit;
}

if(Hp<=0){
	instance_destroy();
	instance_create_layer(x,y,"Boxes",obj_effect_boom);
	global.hitpause1=true;
	exit;
}

enemy_dizzyCheck()


if(hitstun<=0){
	swordsman_ai();
	swordsman_move();
	swordsman_action();
}
else{
	clear_hitbox();
	vspd=0;hspd=0;
	movestun=0;
	status=states.neutral;
}




event_inherited();