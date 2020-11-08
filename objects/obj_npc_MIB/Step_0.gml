/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(load("manager_city_001_sys1_read")){
	dia=031;
}
else{
if(status){
	status=false;
	if(!load("npc_MIB_dia1_read")){
		write("npc_MIB_dia1_read",true);
	}
}

if(load("npc_MIB_dia1_read")){
	dia=027;
}
}


