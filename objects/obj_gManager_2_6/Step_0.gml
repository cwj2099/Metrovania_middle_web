/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){

 if(place_meeting(x,y,other.door1)){
  dX=x-other.door1.x;
  dY=y-other.door1.y;
  room_goto(room2_7);
  write("spawn",2);
 }

 if(place_meeting(x,y,other.door2)){
  dX=x-other.door2.x;
  dY=y-other.door2.y;
  room_goto(room2_2_6);
  write("spawn",1);
 }
 
 if(place_meeting(x,y,other.door3)){
  dX=x-other.door3.x;
  dY=y-other.door3.y;
  room_goto(room2_5);
  write("spawn",4);
 }

}


//dia

/*Stones
///////////////////////
if(!load("stone_room2_6_3")||!stone3.status)
{with(stone3){x=-1000;y=-1000;}
write("stone_room2_6_3",false);}
*/