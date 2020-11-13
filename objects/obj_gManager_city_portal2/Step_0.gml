/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!talking&&!messaging){
with(player){

	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_tallTower);
		write("spawn",2);
	}
	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room_battle1);
		write("spawn",1);
	}
}


if(switch1.status){
	switch1.status=false;
	with(obj_gameManager){event_user(0);}
}


}