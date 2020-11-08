function swordsman_pre_uppercut() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=10;//set the startUp the 40 frame
			
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
					
				clear_force();
				var force=instance_create_layer(x,y,"Boxes",force_directional);
				force.angle=90+90*facing;force.owner=id;with(force){alarm_set(0,10);}
				force.spd=5;force.inc=0;
				ds_list_add(forces,force);

				//change state
				action_status=aStates.duration;
				movestun=10;				

				}
			break;
		
			case aStates.duration:

				if(movestun==0){
				action_status=aStates.recovery;
				movestun=10;
				
				}
			
			break;
		
			case aStates.recovery:

			if(movestun==0){
				action_status=aStates.off;
				status=states.attack3;
				movestun=-1;
			}
			break;
		}
			
	}



}
