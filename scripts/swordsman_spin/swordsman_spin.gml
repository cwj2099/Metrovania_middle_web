function swordsman_spin() {
	hspd=0;
	//if it's the first frame
	if(action_status==aStates.off){
		action_status=aStates.startUp;
		movestun=25;//set the startUp the 40 frame
		critical=true;		
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
				
					//the move
					audio_play_sound(slash,5,false); 

					var push_data=array(90-70*facing,15,10,-1);
					hitbox= create_hitbox(id,2,20,-1,2,push_data,0,35,5.3,1);
					if(true){
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90-90*facing;force.owner=id;with(force){alarm_set(0,10);}
						force.spd=0;force.inc=0;

						ds_list_add(forces,force);

					}
					//change state
					action_status=aStates.duration;
					movestun=25;				

				}
			break;
		
			case aStates.duration:
				var push_data=array(90-70*facing,15,10,-1);
				hitbox=create_hitbox(id,1.5,20,-1,2,push_data,0,35,5.3,1);
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(hit1,1,false);
				}
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=20;
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
	//hello Bryam


}
