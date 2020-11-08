function player_beat_down() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=8;//set the startUp the 5 frame
		floating=true;alarm_set(2,5);
			
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
					var vf=global.input_right_d-global.input_left_d;
					hitbox.owner=id;
					hitbox.attack=8*damage_scaling
					hitbox.chip=4*damage_scaling
					hitbox.stun=30;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(-90+20*vf,60,100000,0);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*24;
					hitboxD_y=0;

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
						force.angle=-90+5*vf;force.owner=id;with(force){alarm_set(0,10000);}
						force.spd=60;force.inc=0;
					
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
				}
				if(onGround||onPlatform){
					clear_force();
					audio_play_sound(smash,5,false);
					//instance_create_layer(x+26*facing,y+20,"Boxes",obj_effect_smash);
					clear_hitbox();
					hitbox=instance_create_layer(x+26*facing,y-10,"Boxes",obj_hitbox);

					hitbox.owner=id;
					hitbox.attack=8*damage_scaling
					hitbox.chip=4*damage_scaling
					hitbox.stun=30;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(90-120*facing,10,10,-1);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*26;
					hitboxD_y=20;

					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=2;image_yscale=1;
					}		
				
					movestun=0;
				}
				//you can not end until striked down
				else{movestun=2;}
			
				if(movestun==0){				
					action_status=aStates.recovery;
					movestun=12;
				
				}
			
			
			
			break;
		
			case aStates.recovery:
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(magic,1,false);
					if(hitbox.critical){audio_play_sound(punch1,2,false);global.hitpause2=true;}
					global.hitpause=true;
					write("player_mp",load("player_mp")+0.1);
				}
			
				if(movestun==0){
					clear_hitbox();
					action_status=aStates.off;
					status=states.neutral;
				
				}
			break;
		}
			
	}
	//hello Bryam


}
