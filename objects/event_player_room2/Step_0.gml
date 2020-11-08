/// @description Insert description here
// You can write your code in this editor

global.noInput=true;

if(alarm_get(0)>0){
	player.facing=-1;
	officer.facing=1;
	officer.x+=distance1/60;
}