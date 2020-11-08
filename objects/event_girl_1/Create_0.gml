/// @description Insert description here
// You can write your code in this editor
global.noInput=true;

player=instance_find(obj_player_real,0);
girl=instance_find(obj_npc_girl,0);

distance1=player.x-girl.x;
catX=player.x;
catY=player.y;

enum event_states{
	step1,
	step2,
	step3,
	step4
}

status=event_states.step1;