/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
switch1.sprite_index=spr_charged;

w1=undefined;
e1=undefined;
if(!load("manager_city_001_dia1_read")){
	write("manager_city_001_dia1_read",true);
	//create monster and wall
	w1=instance_create_layer(620,280,"Instances",obj_wall);
	w1.sprite_index=spr_lockDown;w1.visible=true;
	e1=instance_create_layer(560,240,"Instances",obj_enemy_zombie);
	e1.Hp=100;
	//move portal away
	switch1.x=-100;
	switch1.y=-100;
	
	dia=029;
	talking=true;
}

piece=piece001;