/// @description Insert description here
// You can write your code in this editor
alarm_set(0,60);
player=instance_find(obj_player_real,0);
officer=instance_find(obj_npc_assistant,0);	

distance1=player.x-officer.x-50;