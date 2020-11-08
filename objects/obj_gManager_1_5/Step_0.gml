/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){
	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room1_1);
		write("spawn",4);
	}
	
	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room1_6);
		write("spawn",1);
	}
	
	
}

if(switch1.status){
	switch1.status=false;
	talking=true;
	dia=007;
}

/*
if(switch2.status){
	switch2.status=false;
	talking=true;
	dia=000;
	write("player_hp",10);
	write("player_mp",10);
	write("respawn",room1_5);
	ds_map_secure_save(global.save_data,global.file_name);
}*/





