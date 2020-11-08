function player_firstSlash() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=4;//set the startUp the 5 frame
	
		if(!onGround&&!onPlatform){
			floating=true;alarm_set(2,20);
			floatingForce();
		}
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
				
					//the move
					audio_play_sound(wind3,1,false);
					hitbox=instance_create_layer(x+48*facing,y-20,"Boxes",obj_hitbox);

					hitbox.owner=id;
					hitbox.attack=7*damage_scaling;
					hitbox.chip=2;
					hitbox.stun=20;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(90-70*facing,3,7,0);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*40;
					hitboxD_y=0;

					with(hitbox){
						//alarm_set(0,15);
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1.3;image_yscale=1.5;
					}
					//change state
					action_status=aStates.duration;
					movestun=8;
				
					//force send player forward
				
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-90*facing;force.owner=id;with(force){alarm_set(0,5);}
						force.spd=5;force.inc=0;
					
						force.persistent=true;
						ds_list_add(forces,force);

					}
				

				

				}
			break;
		
			case aStates.duration:
				if(hitbox!=undefined&&hitbox.hitting){
					punches++;
					dashAttack=true;
					upperCut=true;
					audio_play_sound(punch2,1,false);
					if(hitbox.critical){audio_play_sound(punch1,2,false);global.hitpause2=true;}
					clear_force();
					write("player_mp",load("player_mp")+3);
					global.hitpause=true;
					if(!(onGround||onPlatform)){y-=1.5;}
				
					if(hitbox.push_back){
						opposite_force();
					}
				}
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=2;
				}
			
			break;
		
			case aStates.recovery:
				clear_hitbox();
				if(movestun==0){
					action_status=aStates.off;
					status=states.neutral;
				
					chain=states.attack2;
					alarm_set(0,20);
				}
			break;
		}
			
	}



}
