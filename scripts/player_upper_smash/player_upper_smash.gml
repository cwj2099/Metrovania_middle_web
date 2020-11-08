function player_upper_smash() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=5;//set the startUp the 5 frame
			
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
				
					//the move
					audio_play_sound(slash,5,false);
					hitbox=instance_create_layer(x+48*facing,y-20,"Boxes",obj_hitbox);

					hitbox.owner=id;
					hitbox.attack=3;
					hitbox.stun=30;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(90,10,10,1);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*48;
					hitboxD_y=-20;

					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1.5;image_yscale=1.5;
					}
					//change state
					action_status=aStates.duration;
					movestun=15;
				
					//force send player upward
				
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90;force.owner=id;with(force){alarm_set(0,other.movestun);}
						force.spd=30;force.inc=-2;
					
						force.persistent=true;
						ds_list_add(forces,force);
					}
				

				}
			break;
		
			case aStates.duration:
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(hit1,1,false);
				
					write("player_mp",load("player_mp")+1.5);
				}
				if(movestun==0){
					action_status=aStates.recovery;
					floating=true;alarm_set(2,10);
					movestun=5;
				
				}
			
			break;
		
			case aStates.recovery:
				clear_hitbox();
				if(movestun==0){
					action_status=aStates.off;
					status=states.neutral;
				
				}
			break;
		}
			
	}
	//hello Bryam


}
