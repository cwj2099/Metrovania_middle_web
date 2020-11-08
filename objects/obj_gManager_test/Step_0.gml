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
	dX=0;
	dY=0;
	var fade=instance_create_layer(x,y,"Boxes",event_fade_out);
	fade.groom=room_player_test;
	write("spawn",2);
}



