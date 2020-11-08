function stoolDestroyer_pre_upperbeam() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=5;//set the startUp the 40 frame
			
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
					

				//change state
				action_status=aStates.duration;
				movestun=5;				

				}
			break;
		
			case aStates.duration:

				if(movestun==0){
				action_status=aStates.recovery;
				movestun=5;
				
				}
			
			break;
		
			case aStates.recovery:

			if(movestun==0){
				action_status=aStates.off;
				status=states.attack5;
				movestun=-1;
			}
			break;
		}
			
	}



}
