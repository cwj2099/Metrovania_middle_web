function template_ai() {
	//if no player, try to find
	if(player==undefined){
		for(var i=0;i<search;i++){
			if(position_meeting(x+i*facing,y,obj_player)){
				player=instance_find(obj_player,0);
				//if i just find player, I will be alerted
				status=states.alert;
				movestun=-1;
				break;
			}
		}
	}
	//if there is player, 
	else{
		//if too far away (witch search distance plus 50 here)
		if(abs(player.x-x)>=search+50&&status=states.neutral){
			//always clear hitbox when you are changing status & some other things
			clear_hitbox();
			player=undefined;
		}
	}

	if(status==states.neutral){
	
		if(player!=undefined){
			//change my facing toward the player
			facing=sign(player.x-x);
			//if I'm very close to the player
			if(abs(player.x-x)<=50){	
				clear_hitbox();
				status=states.attack1;
				movestun=-1;
			}

		}
	}
		

	



}
