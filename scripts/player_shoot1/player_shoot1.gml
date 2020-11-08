function player_shoot1() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
	
		action_status=aStates.startUp;
		movestun=5;//set the startUp the 5 frame

				
				//the move
				audio_play_sound(slash,5,false);
				var b=instance_create_layer(x,y,"Boxes",obj_bullet_player);
				b.direction=90-90*facing;
				b.attack+=charge/5;

				charge=0;
				//force send player forward
				
				if(true){
					clear_force();
					var force=instance_create_layer(x,y,"Boxes",force_directional);
					force.angle=90+90*facing;force.owner=id;with(force){alarm_set(0,3);}
					force.spd=3+charge/20;force.inc=0;
					
					force.persistent=true;
					ds_list_add(forces,force);

				}
				
			if(!onGround&&!onPlatform){
					floating=true;alarm_set(2,3);
					floatingForce();
		}
	
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
			
			
				

				if(movestun==0){
					action_status=aStates.duration;
					movestun=1;
				}
			break;
		
			case aStates.duration:
			
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=1;
				}
			
			break;
		
			case aStates.recovery:

				if(movestun==0){
					action_status=aStates.off;
					status=states.neutral;

				}
			break;
		}
			
	}



}
