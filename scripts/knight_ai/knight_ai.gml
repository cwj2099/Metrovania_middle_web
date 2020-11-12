function knight_ai() {
	//if no player, try to find
	if(player==undefined){
		for(var i=0;i<search;i++){
			if(place_meeting(x+i*facing,y,obj_player)){
				player=instance_find(obj_player,0);
				status=states.alert;
				movestun=-1;
				break;
			}
		}
		if(stunned){
			status=states.alert;
			player=instance_find(obj_player,0);
			movestun=-1;
		}
	}
	//if there is player, 
	else{
		if((point_distance(x,y,player.x,player.y)>=search+150)&&status=states.neutral){
			clear_hitbox();
			player=undefined;

		}
	}

	if(status==states.neutral){
	
	
			//reach wall, reverse
		if(place_meeting(x+facing*spd,y,obj_wall)){status=states.special1;movestun=-1;}
			//reach borader, reverse
		else if(place_meeting(x+facing*spd,y,obj_door_parent)){facing*=-1;}
			//reach falling, reverse
		else if(!place_meeting(x+facing*spd,y+global.tolerance+sprite_height/2+1,obj_wall)){facing*=-1;}
			//reach over lap, reverse
		else if(position_meeting(x+sprite_width/2,y,obj_enemy_parent)){facing*=-1;}
	
		if(player!=undefined){
			//change my facing toward the player
			facing=sign(player.x-x);
			//if I'm very close to the player
			if(abs(player.x-x)<=75){	
				clear_hitbox();
				if(chain==0||chain==1){
					status=states.attack1;
					chain++;
				}
				else{status=states.attack2;chain=0;}
				movestun=-1;
			}

		}
	}
		

	



}
