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




if(!load("player_room_event1_triggered")){
	if(!load("room_city_portal1_event1_triggered")){
	//talking=true;
	//dia=047;
	if(!global.noInput){
	instance_create_layer(x,y,"Instances",event_portal1);
	write("room_city_portal1_event1_triggered",true);
	}
}
//if event 1 is end
else if(load("room_city_portal1_event1_end")){
	if(!load("room_city_portal1_dia1")){
		talking=true;
		dia=047;
		write("room_city_portal1_dia1",true);
	}
	//if talk is end
	else{
		var fade=instance_create_layer(x,y,"Instances",event_fade_out);
		fade.groom=room_player_test;
		write("spawn",2);
	}
}
}
	
}