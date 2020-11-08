/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(alarm_get(0)>0){
	draw_set_color(c_maroon);
	draw_text(100,100,name);
}

