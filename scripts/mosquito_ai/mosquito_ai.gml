function mosquito_ai() {
	//if no player, try to find

	if(player==undefined){
		for(var i=0;i<search;i++){
			if(position_meeting(x+i*facing,y,obj_player)){
				player=instance_find(obj_player,0);
				status=states.alert;
				movestun=-1;
				break;
			}
		}
		if(stunned){player=instance_find(obj_player,0);}
	}

	else{
		if((point_distance(x,y,player.x,player.y)>=search+150)&&status=states.neutral){
			clear_hitbox();
			player=undefined;
		}
	}

	if(status==states.neutral){

			//reach wall, stop
			if(place_meeting(x+facing*spd_run,y-global.tolerance-sprite_height/2-1,obj_wall)){hspd=0;}
			if(place_meeting(x,y+facing*spd_run,obj_wall)){vspd=0;}
			//reach border, stop
			else if(place_meeting(x+facing*spd_walk,y,obj_door_parent)){hspd=0;}
			else if(place_meeting(x,y+facing*spd_run,obj_wall)){vspd=0;}
			//reach over lap, reverse
			else if(position_meeting(x+sprite_width/2,y,obj_enemy_parent)){hspd=-hspd;vspd=-vspd;}

	

		if(player!=undefined){
			facing=sign(player.x-x);
		
			if(abs(player.x-x)<=50){
				clear_hitbox();
				status=states.attack1;
				movestun=-1;
			}

		}
	}
		

	



}
