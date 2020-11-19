function player_dashSlash() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=4;//set the startUp the 5 frame
		if(global.input_right_d&&global.input_left_d){facing=facing;}
		else if(global.input_left_d){facing=-1;}
		else if(global.input_right_d){facing=1;}
					
		if(!onGround&&!onPlatform){
			floating=true;alarm_set(2,15);
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
					audio_play_sound(slash,1,false);
					hitbox=instance_create_layer(x+48*facing,y-20,"Boxes",obj_hitbox);

					hitbox.owner=id;
					hitbox.attack=16*damage_scaling
					hitbox.chip=8*damage_scaling
					hitbox.stun=30;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(90-80*facing,5,20,-.25);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*40;
					hitboxD_y=0;
					if(!(onGround||onPlatform)){hitboxD_y=0;}

					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1.3;image_yscale=1.5;
					}
					//change state
					action_status=aStates.duration;
					movestun=16;
				
					//force send player forward
				
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-90*facing;force.owner=id;with(force){alarm_set(0,7);}
						force.spd=30;force.inc=-3;
					
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
					audio_play_sound(magic,1,false);
					if(hitbox.critical){audio_play_sound(punch1,2,false);global.hitpause2=true;}
					global.hitpause=true;
					//clear_force();
					if(!(onGround||onPlatform)){y-=5;}	
				
					write("player_mp",load("player_mp")+0.2);
				}
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=4;
				
				}
			
			break;
		
			case aStates.recovery:
				clear_hitbox();
				if(movestun==0){
					action_status=aStates.off;
					status=states.neutral;
				
					alarm_set(0,20);
				}
			break;
		}
			
	}



}
