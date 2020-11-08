/// @description Insert description here
// You can write your code in this editor

global.noInput=true;
if(alarm_get(0)>0){
	camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])+3.2,camera_get_view_height(view_camera[0])+1.8);
	player.facing=-1;
}

if(alarm_get(1)>0){
	player.facing=-1;
	player.y-=1;
	player.image_angle+=3;
}