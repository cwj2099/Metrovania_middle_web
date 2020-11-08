/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){
	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room1_5);
		write("spawn",2);
	}
	
	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room1_7);
		write("spawn",1);
	}
	
	if(place_meeting(x,y,other.door3)){
		dX=x-other.door3.x;
		dY=y-other.door3.y;
		room_goto(room1_8);
		write("spawn",2);
	}
	
}

if(!load("stone_room1_8_1")||!stone1.status){
	stone1.x=-2000;
	stone1.y=-2000;
	write("stone_room1_8_1",false);
}







