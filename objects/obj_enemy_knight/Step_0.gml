/// @des  cription Insert description here
// You can write your code in this editor

// Inherit the parent event
//enemy_hurtCheck();

if(global.ePause){
	for(var i=0;i<20;i++)
	{alarm_set(i,alarm_get(i)+1);}
	clear_hitbox();exit;
}
//show_debug_message("excuse me?");

enemy_dizzyCheck()
if(global.ePause){clear_hitbox();exit;}

if(Hp<=0){
	instance_destroy();
	instance_create_layer(x,y,"Boxes",obj_effect_boom);
	instance_create_layer(x-50,y-50,"Boxes",obj_effect_boom);
	instance_create_layer(x+50,y-50,"Boxes",obj_effect_boom);
	 global.hitpause1=true;
	 
	exit;
}


if(hitstun<=0){
	knight_ai();
	knight_move();
	knight_action();
}
else{
	clear_hitbox();
	vspd=0;hspd=0;
	movestun=0;
	status=states.neutral;

}




event_inherited();