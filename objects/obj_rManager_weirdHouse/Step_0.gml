/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){
	if(place_meeting(x,y,other.door1)){
		dX=0;
		dY=0;
		room_goto(room_square);
		write("spawn",2);

	}
}
//if the girl provided information 
if(load("npc_girl_dia4_read")&&!load("manager_weirdHouse_dia1_read")){
	write("manager_weirdHouse_dia1_read",true);
	talking=true;
	dia=028;
}

if(load("manager_weirdHouse_dia1_read")){
	switch1.x=300;
	switch1.y=280;
}
else{switch1.x=-100;switch1.y=-100;}

if(switch1.status){
	switch1.status=false;
	room_goto(room_city_001);
	write("spawn",1);
}