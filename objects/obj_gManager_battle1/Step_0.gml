/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){

	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_city_portal2);
		write("spawn",1);
	}

}

//process when not in chat
if(!talking&&!messaging){
	//if finished first talk
if(load("npc_MIB_fic_dia1_read")){
	//if not defeated yet
	if(!load("boss_battle1_defeated")){
		obj_npc_MIB_fic.x=-9999; 
		if(wall1==undefined){
			wall1=instance_create_layer(1260,400,"Instances",obj_lockDoor);
		}
		if(boss1==undefined){
			audio_stop_sound(bgm_battle2);
			audio_play_sound(bgm_battle2,10,true);
			audio_sound_gain(bgm_battle2,1,1000);
			boss1=instance_create_layer(460,400,"Instances",obj_enemy_swordsman);
		}
		else{
			if(!instance_exists(boss1)){
				write("boss_battle1_defeated",true);
			}
			else{bX=boss1.x;bY=boss1.y;}
		}
	}
	//if defeated
	else{
		audio_sound_gain(bgm_battle2,0,1000);
		obj_npc_MIB_fic.x=bX;
		//if there is wall, break the wall
		if(wall1!=undefined){instance_destroy(wall1);wall1=undefined;}
		//if not powerup yet, through the powerup
		if(!load("doubleJump_switch")&&powerUp1==undefined){
			powerUp1=instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_upgrade_doubleJump);
		}
		else{powerUp1=undefined;}
		
		if(load("npc_MIB_fic_dia2_read")&&!load("clue7_get")){
			write("clue7_get",true);
			write("clue_collected",load("clue_collected")+1);
			messaging=true;
			dia=023;
		}
	}
}

}




