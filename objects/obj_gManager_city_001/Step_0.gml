/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!talking&&!messaging){
with(player){

	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_tutorial1);
		write("spawn",1);
	}
}


if(switch1.status){
	switch1.status=false;
	room_goto(room_weirdHouse);
	write("spawn",2);
}

if(load("manager_city_001_dia1_read")&&!load("manager_city_001_sys1_read")){
	write("manager_city_001_sys1_read",true);
	dia=018;
	messaging=true;
}

if(e1!=undefined){
	if(!instance_exists(e1)){
		instance_destroy(w1);
		w1=undefined;
		e1=undefined;
		write("manager_city_001_e1_dead",true);
		talking=true;
		dia=30;
	}
}
if(load("manager_city_001_e1_dead")){
	switch1.x=300;
	switch1.y=280;
}
else{
	switch1.x=-100;
	switch1.y=-100;
}
}