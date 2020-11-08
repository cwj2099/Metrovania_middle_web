function player_thirdSlash() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=4;//set the startUp the 5 frame
			
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
				
					//the move
					audio_play_sound(wind3,5,false);
					hitbox=instance_create_layer(x+48*facing,y-20,"Boxes",obj_hitbox);

					hitbox.owner=id;
					hitbox.attack=14*damage_scaling;;
					hitbox.chip=4;
					hitbox.stun=25;
					hitbox.dir=facing;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(90-30*facing,12,24,-.5);
					hitbox.push_data=push_data;
					
					hitboxD_x=facing*40;
					hitboxD_y=0;
					if(!(onGround||onPlatform)){hitboxD_y=0;}

					with(hitbox){
						//alarm_set(0,15);
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1.5;image_yscale=1.5;
					}
					//change state
					action_status=aStates.duration;
					movestun=12;
				
					//force send player forward
					if(true){
						//clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-90*facing;force.owner=id;with(force){alarm_set(0,10);}
						force.spd=5;force.inc=0;
					
						force.persistent=true;
						ds_list_add(forces,force);
					}
				
					if(!onGround&&!onPlatform){
						floating=true;alarm_set(2,15);
						floatingForce();
						if(!(onGround||onPlatform)){y-=5;}	
					}			
				
					if(hitbox.push_back){
						opposite_force();
					}
				}
			break;
		
			case aStates.duration:
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(punch2,1,false);
					if(hitbox.critical){audio_play_sound(punch1,2,false);global.hitpause2=true;}
					clear_force();
					global.hitpause=true;
					if(!(onGround||onPlatform)){y-=1.5;}	

				
					write("player_mp",load("player_mp")+5);
					if(hitbox.push_back){
						opposite_force();
					}
				}
			
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=12;
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
