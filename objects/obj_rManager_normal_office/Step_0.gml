/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){
	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room_sectionA);
		write("spawn",3);
	}
}

if(switch1.status){
	switch1.status=false;
	dX=0;
	dY=0;
	var fade=instance_create_layer(x,y,"Instances",event_fade_out);
	fade.groom=room_sectionA;
	write("spawn",3);
}

if(switch2.status){
	switch2.status=false;
	dX=0;
	dY=0;
	var fade=instance_create_layer(x,y,"Instances",event_fade_out);
	fade.groom=room_office;
	write("spawn",1);
}


