/// @description Insert description here
// You can write your code in this editor
alarm_set(0,100);
player=instance_find(obj_player_real,0);
officer=instance_find(obj_npc_assistant,0);	


camera_set_view_size(view_camera[0],320,180);
player.image_angle=-90;
player.y+=30;
player.x-=50;

distance1=player.x-officer.x-50;
