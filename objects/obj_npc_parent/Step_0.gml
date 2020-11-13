/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
manager=instance_find(obj_gManager_parent,0);
interactable=collision_rectangle(x-50,y-50,x+50,y+50,obj_player,false,true);
if(abs(obj_player.x-x)<100){facing=sign(obj_player.x-x);}

//if player triggered the switch
if(interactable&&global.input_up_p){
	status=true;
	
	manager.talking=true;
	manager.dia=dia;
}
