/*
The parent of all game room manager
*/

// Inherit the parent event
event_inherited();
type="game";
world=1;
player=instance_find(obj_player,0);
door1=instance_find(obj_door1,0);
door2=instance_find(obj_door2,0);
door3=instance_find(obj_door3,0);
door4=instance_find(obj_door4,0);

spawn1=instance_find(obj_spawn1,0);
spawn2=instance_find(obj_spawn2,0);
spawn3=instance_find(obj_spawn3,0);
spawn4=instance_find(obj_spawn4,0);

respawn=instance_find(obj_respawn,0)

stone1=instance_find(obj_stone1,0);
stone2=instance_find(obj_stone2,0);

switch1=instance_find(obj_switch1,0);
switch2=instance_find(obj_switch2,0);
switch3=instance_find(obj_switch3,0);
switch4=instance_find(obj_switch4,0);


contact1=instance_find(obj_contact1,0);
contact2=instance_find(obj_contact2,0);
contact3=instance_find(obj_contact3,0);
contact4=instance_find(obj_contact4,0);
contact5=instance_find(obj_contact5,0);
contact6=instance_find(obj_contact6,0);

option1=instance_create_layer(100,60,"Managers",obj_option1);
option2=instance_create_layer(280,60,"Managers",obj_option1);
option3=instance_create_layer(100,180,"Managers",obj_option1);
option4=instance_create_layer(280,180,"Managers",obj_option1);

options=ds_grid_create(2,2);

for(var i=0;i<ds_grid_width(options);i++){
	for(var j=0;j<ds_grid_height(options);j++){
		options[# i,j]=-1;
	}
}
options[# 0,0]=option1;options[# 1,0]=option2;
options[# 0,1]=option3;options[# 1,1]=option4;
//draw talking ui stuff
dia=0;
talking=false;
messaging=false;
dia_counter=-1;
screenShot=undefined
selecting=false;//status
op=0;//option id
selection=-1;//result
global.oselected=option1;//indicator

piece=piece001;



