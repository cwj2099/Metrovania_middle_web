/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){
	/*if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_sectionA);
		write("spawn",1);
	}*/
}

if(!load("player_room_event1_triggered")){
	write("player_room_event1_triggered",true);
	instance_create_layer(x,y,"Managers",event_player_room1);
}

if(load("player_room_event1_end")&&!load("player_awake_dia1_read")){
	write("player_awake_dia1_read",true);
	dia=049;
	talking=true;
}

if(!talking&&load("player_awake_dia1_read")&&!load("player_room_event2_triggered")){
	write("player_room_event2_triggered",true)
	instance_create_layer(x,y,"Managers",event_player_room2);
}

if(!talking&&load("player_room_event2_end")&&!load("npc_assistant_dia1_read")){
	write("npc_assistant_dia1_read",true);
	dia=050;
	talking=true;
}



if((dia==50||dia==051||dia==052||dia==053||dia==054)&&dia_counter==1){
	selecting=true;
	op=004;
	

	switch(selection){
	case 1:
		dia=052;
		if(load("clue7_get")){dia=057;}
	break;
	
	case 2:
		dia=053;
		if(load("clue8_get")){dia=058;}
	break;
	
	case 3:
		dia=054;
		if(load("clue9_get")){dia=059;}
	break;
	
	case 4:
		write("npc_assistant_dia2_read",true);
		dia=056;
	break;
	}

	if(selection!=-1){
		selecting=false;
		talking=true;
		selection=-1;
		dia_counter=-1;
	}
}

if(!talking&&load("npc_assistant_dia2_read")&&!load("player_room_sys_read")){
	messaging=true;
	dia=021;
	write("player_room_sys_read",true);
}

if(switch1.status){
	switch1.status=false;
	/*dX=0;
	dY=0;
	var fade=instance_create_layer(x,y,"Boxes",event_fade_out);
	fade.groom=room_sectionA;
	write("spawn",1);*/
	messaging=true;
	dia=024;
}

if(switch2.status){
	switch2.status=false;
	instance_create_layer(switch3.x,switch3.y+25,"Boxes",event_teleport);
}

if(switch3.status){
	switch3.status=false;
	instance_create_layer(switch2.x,switch2.y+25,"Boxes",event_teleport);
}

if(switch4.status){
	switch4.status=false;
	with(obj_gameManager){event_user(0); }
}


