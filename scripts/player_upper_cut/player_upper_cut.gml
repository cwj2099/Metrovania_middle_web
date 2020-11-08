function player_upper_cut() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=8;//set the startUp the 5 frame
			
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
					var push_data=array(90-20*vf,20+2*abs(vf),10,-1);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*30;
					hitboxD_y=-30;

					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1.5;image_yscale=1.5;
					}
					//change state
					action_status=aStates.duration;
					movestun=12;
				
					//force send player upward
				
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-20*vf;force.owner=id;with(force){alarm_set(0,8);}
						force.spd=20+2*abs(vf);force.inc=-2;
					
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
					write("player_mp",load("player_mp")+0.2 );
				}
				if(movestun==1){	
					clear_hitbox();
					//the move
					//audio_play_sound(slash,5,false);
					hitbox=instance_create_layer(x+48*facing,y-20,"Boxes",obj_hitbox);
					var vf=global.input_right_d-global.input_left_d;
					hitbox.owner=id;
					hitbox.attack=8*damage_scaling
					hitbox.chip=4*damage_scaling
					hitbox.stun=30;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(90-20*vf,5+2*abs(vf),10,0);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*30;
					hitboxD_y=-30;

					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1.5;image_yscale=1.5;
					}
				}
				if(movestun==0){
					action_status=aStates.recovery;
					floating=true;alarm_set(2,15);
					movestun=4;
				
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
