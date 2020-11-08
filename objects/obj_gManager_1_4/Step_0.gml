/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){
	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room1_3);
		write("spawn",2);
	}
	
	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room1_1);
		write("spawn",3);
	}
	

}


//stone
//since the they are the same stone
if(!load("stone_room1_1_1")||!stone1.status)
//because there's a delay before the destory, I move it away first
{with(stone1){x=-1000;y=-1000;/*alarm_set(0,1);*/}
write("stone_room1_1_1",false);}

//switches
if(load("attack_switch")==1){
	with(switch1){x=-1000;y=-1000;/*alarm_set(0,1);*/}
	
}

if(switch1.status){
	switch1.status=false;
	write("attack_switch",true);
	messaging=true;
	dia=006;
}


