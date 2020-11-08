/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if(load("npc_girl_kitty_collected")){
	dia=022;
	if(status){
		status=false;
		if(!load("npc_girl_dia3_read")){
			write("npc_girl_dia3_read",true);
		}
		else{
			write("npc_girl_dia4_read",true);
		}
	}

	if(load("npc_girl_dia3_read")){
		dia=023;
		
		if(!manager.talking&&!load("npc_girl_event1_triggered")){
			write("npc_girl_event1_triggered",true);
			instance_create_layer(x,y,"Managers",event_girl_1);
		}
	}
	
	if(load("npc_girl_event1_end")&&!load("npc_girl_dia4_read")){
		write("npc_girl_dia4_read",true);
		manager.dia=023;
		manager.talking=true;
	}
}
else{
	if(status){
		status=false;
		if(!load("npc_girl_dia1_read")){
			write("npc_girl_dia1_read",true);
		}
	}

	if(load("npc_girl_dia1_read")){
		dia=021;
	}
}

