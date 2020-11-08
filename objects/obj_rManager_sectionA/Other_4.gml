/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(load("spawn")==1||load("spawn")==3){
	instance_create_layer(x,y,"Instances",event_fade_in);
}
