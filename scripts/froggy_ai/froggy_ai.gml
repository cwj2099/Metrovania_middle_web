function froggy_ai() {
	//if no player, try to find

	if(player==undefined){
		for(var i=0;i<100;i++){
			if(position_meeting(x+i*facing,y,obj_player)){
				player=instance_find(obj_player,0);
				status=states.alert;
				movestun=-1;
				break;
			}
		}
		if(hurtbox.hitted){player=instance_find(obj_player,0);}
	}

	else{
		if((point_distance(x,y,player.x,player.y)>=search+50)&&status=states.neutral){
			clear_hitbox();
			player=undefined;
		}
	}

	if(status==states.neutral){

			//reach wall, reverse
			if(place_meeting(x+facing*spd_walk,y-global.tolerance-sprite_height/2-1,obj_wall)){facing*=-1;}
			//reach borader, reverse
			else if(place_meeting(x+facing*spd_walk,y,obj_door_parent)){facing*=-1;}
			//reach falling, reverse
			else if(!place_meeting(x+facing*spd_walk,y+global.tolerance+sprite_height/2+1,obj_wall)){facing*=-1;}
			//reach over lap, reverse
			else if(position_meeting(x+sprite_width/2,y,obj_enemy_parent)){facing*=-1;}

	

		if(player!=undefined){
			facing=sign(player.x-x);
		
			if(abs(player.x-x)<=80){
				if(abs(player.y-y)<=80){
				clear_hitbox();
				status=states.attack1;
				movestun=-1;}
			}
		
			else if(abs(player.x-x)<=200){
				shouldShoot=random_range(0,100);
				if (shouldShoot<=3){
				clear_hitbox();
				status=states.attack2;
				movestun=-1;}
			}		

		}
	}
		

	



}
