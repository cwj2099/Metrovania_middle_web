/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(load("boss_battle1_defeated")){
	dia=042;
}
else{
	if(status){
		status=false;
		if(!load("npc_MIB_fic_dia1_read")){
			write("npc_MIB_fic_dia1_read",true);
		}
	}
}


