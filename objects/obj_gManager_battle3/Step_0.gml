/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(player){

	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_test);
		write("spawn",4);
	}

}

//process when not in chat
if(!talking&&!messaging){
	//if finished first talk
if(load("npc_boy_fic_dia1_read")){


	//if there is wall, break the wall
	if(wall1!=undefined){instance_destroy(wall1);wall1=undefined;}
	//if not powerup yet, through the powerup
	if(!load("glide_switch")&&powerUp1==undefined){
		powerUp1=instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_upgrade_glide);
	}
	else{powerUp1=undefined;}
	
	}
}




