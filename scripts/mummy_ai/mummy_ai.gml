function mummy_ai() {
	 player=instance_find(obj_player,0);


	if(status==states.neutral){

			//reach wall, reverse
			if(place_meeting(x+facing*spd,y-global.tolerance-sprite_height/2-1,obj_wall)){facing*=-1;}
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
		

			if(point_distance(x,y,player.x,player.y)<250){
				clear_hitbox();
				status=states.attack1;
				movestun=-1;
			}
			else{
				clear_hitbox();
				status=states.attack2;
				movestun=-1;
			}
		}
	}


}
