function player_dropKick() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		//set the startUp the 5 frame
		if(load("player_mp")>5){
			global.super=true;
			effect_create_above(ef_ring,x,y,1,c_yellow);
			audio_play_sound(prepare,5,false);
			movestun=45;
			floating=true;alarm_set(2,55);

		}
		else{
			movestun=5;
			floating=true;alarm_set(2,15);
		}
		floatingForce();
					
			
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
					hitbox.attack=5*(load("player_mp")*load("player_mp"));
					write("player_mp",0);
					hitbox.chip=8*(1+(load("player_mp")-2)/4);
					hitbox.stun=30;
					hitbox.side=side;
				
					//angle,spd, life,inc
					var push_data=array(90-80*facing,13,20,-.5);
					hitbox.push_data=push_data;
					hitbox.dir=facing;
				
					hitboxD_x=facing*24;
					hitboxD_y=0;
					if(!(onGround||onPlatform)){hitboxD_y=0;}

					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1.3;image_yscale=1.5;
					}
					//change state
					action_status=aStates.duration;
					movestun=5;
				
					//force send player forward
				
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-135*facing;force.owner=id;with(force){alarm_set(0,other.movestun);}
						force.spd=25;force.inc=-1;
					
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
					global.hitpause2=true;
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90+30*facing;force.owner=id;with(force){alarm_set(0,10);}
						force.spd=25;force.inc=-1;
					
						force.persistent=true;
					
						ds_list_add(forces,force);

					}
					action_status=aStates.recovery;
					movestun=15;
				
					//write("player_mp",load("player_mp")+0.2);
				}
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=15;
				
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
