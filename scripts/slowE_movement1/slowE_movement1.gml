// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slowE_movement1(){

	hspd=0;
	//if it's the first frame
	if(action_status==aStates.off||movestun==-1){
		action_status=aStates.startUp;
		movestun=28;//set the startUp the 10 frame
		facing=sign(player.x-x);
		if(true){
				clear_force();
				var force=instance_create_layer(x,y,"Boxes",force_directional);
				force.angle=90+90*facing;force.owner=id;with(force){alarm_set(0,30);}
				force.spd=5;force.inc=-0.01;

				ds_list_add(forces,force);

		}
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
				
					
					
				
				//change state
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