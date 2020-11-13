/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){

	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_longHall4);
		write("spawn",3);
	}
	
	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room_tallTower);
		write("spawn",3);
	}
}





