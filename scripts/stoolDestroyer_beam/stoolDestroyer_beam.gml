function stoolDestroyer_beam() {
	     hspd=0;
	//if it's the first frame
	if(movestun==-1){
	 action_status=aStates.startUp;
	 movestun=1;//set the startUp to 20 frame
	 critical=true;
   
	}
	//if it's not the first frame
	else {
	 switch (action_status){
  
	  case aStates.startUp:
	  	vspd=0;
	   //if this is the end of the start up
	   if(movestun==0){
    
	    //the move

		audio_play_sound(hit1, 1, 0);
	
	    //change state
	    action_status=aStates.duration;
	    movestun=40;    

	   }
	  break;
  
	  case aStates.duration:
	  	vspd=0;
		instance_create_layer(x,y,"Boxes",obj_enemy_upperbeam);
	   if(movestun==0){
	    action_status=aStates.recovery;
	    movestun=20;
    
	   }
   
	  break;
  
	  case aStates.recovery:
  
		critical=false;
	   if(movestun==0){
	    action_status=aStates.off;
	    status=states.neutral;
    
	    alarm_set(0,5);
	   }
	  break;
	 }
   
	}



}
