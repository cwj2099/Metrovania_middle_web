/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){

 if(place_meeting(x,y,other.door1)){
  dX=x-other.door1.x;
  dY=y-other.door1.y;
  room_goto(room2_5);
  write("spawn",3);
 }
 
  if(place_meeting(x,y,other.door2)){
  dX=x-other.door2.x;
  dY=y-other.door2.y;
  room_goto(room2_6);
  write("spawn",1);
 }
 
  if(place_meeting(x,y,other.door4)){
  dX=x-other.door4.x;
  dY=y-other.door4.y;
  room_goto(room2_5);
  write("spawn",1);
 }
 
 if(place_meeting(x,y,other.door3)){
  dX=x-other.door3.x;
  dY=y-other.door3.y;
  room_goto(room2_4);
  write("spawn",1);
 }

}


//dia