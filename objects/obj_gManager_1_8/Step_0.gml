/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){
	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room1_7);
		write("spawn",2);
	}
	
	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room1_6);
		write("spawn",3);
	}
	
	
}


if(!load("stone_room1_8_1")||!stone1.status){
	stone1.x=-2000;
	stone1.y=-2000;
	write("stone_room1_8_1",false);
}


if(load("roll_enable")){
	with(switch1){x=-1000;y=-1000;/*alarm_set(0,1);*/}
	
}

if(switch1.status){
	switch1.status=false;
	write("roll_enable",true);
	messaging=true;
	dia=008;
}






