/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){
	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room1_2);
		write("spawn",1);

	}

	if(place_meeting(x,y,other.door2)){
		dX=x-other.door2.x;
		dY=y-other.door2.y;
		room_goto(room1_4);
		write("spawn",2);
	}
	
	if(place_meeting(x,y,other.door3)){
		dX=x-other.door3.x;
		dY=y-other.door3.y;
		room_goto(room1_5);
		write("spawn",1);
	}
}

///////////////////////
//Stones
///////////////////////
if(!load("stone_room1_1_1")||!stone1.status)
{with(stone1){x=-1000;y=-1000;alarm_set(0,1);}
write("stone_room1_1_1",false);}

if(!load("stone_room1_1_2")||!stone2.status)
{with(stone2){x=-1000;y=-1000;alarm_set(0,1);}
write("stone_room1_1_2",false);}



