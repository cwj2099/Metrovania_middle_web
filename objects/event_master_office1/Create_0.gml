/// @description Insert description here
// You can write your code in this editor
alarm_set(0,100);
player=instance_find(obj_player_real,0);
master=instance_find(obj_npc_master,0);	

distance1=master.x-player.x-50;
