function player_flashSlash() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=5;//set the startUp the 5 frame

		if(!onGround&&!onPlatform){
			floating=true;alarm_set(2,40);
			floatingForce();
		}
	

			
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
					//force send player forward
				
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-90*facing;force.owner=id;with(force){alarm_set(0,3);}
						force.spd=120;force.inc=0;
				
						force.persistent=true;
					
						ds_list_add(forces,force);

					}
				
					//change state
					action_status=aStates.duration;
					movestun=23;
				}
			
			break;
		
			case aStates.duration:
			
				if(movestun==13){global.hitpause=true;}

				if(movestun==3){
					//the move
					audio_play_sound(slash,5,false);
					hitbox=instance_create_layer(x-facing*180,y-20,"Boxes",obj_hitbox);

					hitbox.owner=id;
					hitbox.attack=6;
					hitbox.stun=45;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(90,15,45,-1);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*-180;
					hitboxD_y=-20;
					if(!(onGround||onPlatform)){hitboxD_y=0;}

					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=7;image_yscale=1.5;
					}
				}
			
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(hit1,1,false);
					if(!(onGround||onPlatform)){y-=5;}	
				
				}
			
				if(movestun==0){
					action_status=aStates.recovery;
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



}
