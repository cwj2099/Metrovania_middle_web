function swordsman_ai() {
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
		if(stunned){status=states.alert;player=instance_find(obj_player,0);}
	}

	else{
		if((point_distance(x,y,player.x,player.y)>=search+150)&&status=states.neutral){
			clear_hitbox();
			player=undefined;
		}
	}
	if(chain_count>=3&&status==states.neutral){status=states.dizzy;chain_count=0;chain=states.neutral;movestun=-1;}

	if(status==states.neutral){
			critical=false;
			//reach wall, reverse
			if(place_meeting(x+facing*spd_run,y-global.tolerance-sprite_height/2-1,obj_wall)){facing*=-1;}
			//reach borader, reverse
			else if(place_meeting(x+facing*spd_run,y,obj_door_parent)){facing*=-1;}
			//reach falling, reverse
			else if(!place_meeting(x+facing*spd_run,y+global.tolerance+sprite_height/2+1,obj_wall)){facing*=-1;}
			//reach over lap, reverse
			else if(position_meeting(x+sprite_width/2,y,obj_enemy_parent)){facing*=-1;}

	
		/*
		if(player!=undefined){
			facing=sign(player.x-x);


			if(abs(player.x-x)<=100){
					var hitStatus=random_range(0, 1);
					if(player.y+30<=y){
					clear_hitbox();
					status=states.pre3;
					movestun=-1;
					}

					else if (hitStatus>=0.4){
					clear_hitbox();
					status=states.pre1;
					movestun=-1;
					}
					if (hitStatus<0.4){
					clear_hitbox();
					status=states.pre4;
					//status=states.attack4;
					movestun=-1;
					}
				}


				else if(abs(player.x-x)>=200)
				{
					if(player.y+30<=y){
						clear_hitbox();
						status=states.pre3;
						movestun=-1;
					}
					else{
						clear_hitbox();
						status=states.pre2;
						//status=states.attack2;
						movestun=-1;
					}
				}
			}
			*/

	
		if(player!=undefined){
			facing=sign(player.x-x);
			if(chain==states.neutral){
				var ran=irandom(1);
				if(player.y+30<=y){
					clear_hitbox();
					status=states.pre3;
					movestun=-1;
					chain=states.pre4;
					chain_count=1;
				}
				else if(ran==1){
					clear_hitbox();
					status=states.pre2;
					movestun=-1;
					chain=states.pre1;
					chain_count=1;
				}
				else if(ran==0){
					clear_hitbox();
					status=states.pre1;
					movestun=-1;
					chain=states.pre4;
					chain_count=1;
				}
			}
			else{
				clear_hitbox();
				status=chain;
				movestun=-1;
				chain_count++;
			}
		
		}
	
	}

	if(status==states.attack4&&chain==states.pre4&&chain_count==2&&action_status==aStates.duration){
		if(player.y+30<=y){chain=states.pre3;}
		else{chain=states.pre2;}
	}

	if(status==states.attack1&&chain==states.pre1&&chain_count==2&&action_status==aStates.duration){
		if(player.y+30<=y){chain=states.pre3;}
		else{chain=states.pre2;}
	}



		

	



}
