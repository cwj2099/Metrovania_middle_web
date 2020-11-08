/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){

	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_test1);
		write("spawn",1);
	}
}


if(switch1.status){
	switch1.status=false;
	room_goto(room_tutorial3);
	write("spawn",2);
}



