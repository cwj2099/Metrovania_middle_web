function swordsman_stab() {
	hspd=0;
	//if it's the first frame
	if(action_status==aStates.off){
		action_status=aStates.startUp;
		movestun=25;//set the startUp the 25 frame
		critical=true;
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up, then initial the hitbox
				if(movestun==0){
				
					//play the sound
					audio_play_sound(slash,5,false);
					//create the hitbox
					hitbox=instance_create_layer(x-150*facing,y,"Boxes",obj_hitbox);
					
					//inital the values of the hitbox
					hitbox.owner=id;
					hitbox.attack=3;
					hitbox.stun=20;
					//hitbox's side is my side
					hitbox.side=side;
					//follow the sequence of angle,spd, life,inc
					var push_data=array(90-90*facing,20,15,-1);
					hitbox.push_data=push_data;
				
					//the difference in x of hitbox
					hitboxD_x=facing*50;
					hitboxD_y=0;
					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=3.5;image_yscale=0.7;
					}
				
					//send swordsman forward
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-90*facing;force.owner=id;with(force){alarm_set(0,10);}
						force.spd=20;force.inc=0;

						ds_list_add(forces,force);

					}
					//change state
					action_status=aStates.duration;
					movestun=10;				

				}
			break;
		
			case aStates.duration:
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(hit1,1,false);
				}
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=50;
					critical=false;
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



}
