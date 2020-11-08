/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(status){
	status=false;
	if(!load("master_dia1_read")){
		write("master_dia1_read",true);
	}
}

if(load("master_dia1_read")){
	dia=034;
}