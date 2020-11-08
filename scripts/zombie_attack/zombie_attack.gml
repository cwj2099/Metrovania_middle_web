function zombie_attack() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=30;//set the startUp the 40 frame
			
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
				
					//the move
					audio_play_sound(slash,5,false);
					hitbox=instance_create_layer(x+10*facing,y-20,"Boxes",obj_hitbox);

					hitbox.owner=id;
					hitbox.attack=1;
					hitbox.stun=20;
					hitbox.side=side;
					//angle,spd, life,inc
					var push_data=array(90-70*facing,10,10,-1);
					hitbox.push_data=push_data;
				
					hitboxD_x=facing*10;
					with(hitbox){
						//alarm_set(0,15);
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1;image_yscale=.7;
					
					
					}
						if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-60*facing;force.owner=id;with(force){alarm_set(0,10);}
						force.spd=10;force.inc=0;

						ds_list_add(forces,force);

					}
					//change state
					action_status=aStates.duration;
					movestun=30;				

				}
			break;
		
			case aStates.duration:
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(hit1,1,false);
									clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90+60*facing;force.owner=id;with(force){alarm_set(0,10);}
						force.spd=10;force.inc=0;

						ds_list_add(forces,force);	
				}
				if(movestun==0){

					action_status=aStates.recovery;
					movestun=20;
				
				}
			
			break;
		
			case aStates.recovery:
				clear_hitbox();
				if(movestun==0){	
					action_status=aStates.off;
					status=states.neutral;
				
					alarm_set(0,5);
				}
			break;
		}
			
	}
	//hello Bryam


}
