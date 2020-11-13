/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!talking&&!messaging){
with(player){

	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_longHall);
		write("spawn",1);
	}
	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room_tutorial3);
		write("spawn",2);
	}
}


if(switch1.status){
	switch1.status=false;
	with(obj_gameManager){event_user(0);}
}

if(!load("room_city_portal1_dia1_read")){
	talking=true;
	dia=047;
	write("room_city_portal1_dia1_read",true);
}

if(!load("player_room_event1_triggered")){
	if(wall1==undefined){wall1=instance_create_layer(620,280,"Instances",obj_lockDoor);}
}
	
}