function player_roll() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		audio_play_sound(dash,5,false);
		action_status=aStates.startUp;
		movestun=1;//set the startUp the 5 frame
	
		floating=true;
		alarm_set(2,15);
	
		hurtbox.status=false;
		alarm_set(1,15);
	
		chain=undefined;//clear chain
			
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
				
					action_status=aStates.duration;
					movestun=13;
				
					//force send player forward
				
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.owner=id;with(force){alarm_set(0,13);}
						force.spd=10;
						if(global.input_right_d){
							if(global.input_up_d){force.angle=45;}
							else if(global.input_down_d){force.angle=-45;}
							else {force.angle=0;}
						}
						else if(global.input_left_d){
							if(global.input_up_d){force.angle=135;}
							else if(global.input_down_d){force.angle=225;}
							else {force.angle=180;}
						}
						else if(global.input_up_d){force.angle=90;}
						else if(global.input_down_d){force.angle=270;}
						else{force.angle=90-90*facing;}
					
						force.persistent=true;
						ds_list_add(forces,force);
					}
				

				}
			break;
		
			case aStates.duration:
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=5;
				
				}
				if(movestun>5){
				with(hurtbox){
					var box= instance_place(x,y,obj_hitbox);
					if(box!=noone&&box.side!=side&&!global.hitpause4&&!global.ePause){
						global.hitpause4=true;
						write("player_mp",load("player_mp")+11);
						effect_create_above(ef_ring,x,y,4,c_purple);
						whichSound=0;
						if (whichSound=0){
						audio_play_sound(rollBlock_alt1, 1, 0);
						}
						else if (whichSound=1){audio_play_sound(rollBlock_alt2, 1, 0);}
						alarm_set(1,10);
					
						action_status=aStates.recovery;
						movestun=5;
					}
				}
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
