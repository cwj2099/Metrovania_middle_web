function stoolDestroyer_pre_slash() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=20;//set the startUp the 40 frame
			
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
					
				clear_force();
				var force=instance_create_layer(x,y,"Boxes",force_directional);
				force.angle=90-60*facing;force.owner=id;with(force){alarm_set(0,10);}
				force.spd=20;force.inc=0;
				ds_list_add(forces,force);


				//change state
				action_status=aStates.duration;
				movestun=10;				

				}
			break;
		
			case aStates.duration:
				if(movestun==0){
				action_status=aStates.recovery;
				movestun=20;
				
				}
			
			break;
		
			case aStates.recovery:
						hspd=lerp(hspd,2*spd_run*(-facing),global.fric);

			if(movestun==0){
				action_status=aStates.off;
				status=states.attack1;
				movestun=-1;
			}
			break;
		}
			
	}



}
