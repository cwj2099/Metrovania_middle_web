/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){

 if(place_meeting(x,y,other.door1)){
  dX=x-other.door1.x;
  dY=y-other.door1.y;
  room_goto(room2_7);
  write("spawn",1);
 }


 


}


//dia

/*Stones
///////////////////////
if(!load("stone_room2_6_3")||!stone3.status)
{with(stone3){x=-1000;y=-1000;}
write("stone_room2_6_3",false);}
*/