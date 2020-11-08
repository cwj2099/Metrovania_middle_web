/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(status){
	status=false;
	if(!load("npc_assistant_dia1_read")){
		write("npc_assistant_dia1_read",true);
	}
}

if(load("npc_assistant_dia1_read")){
	dia=037;
}

