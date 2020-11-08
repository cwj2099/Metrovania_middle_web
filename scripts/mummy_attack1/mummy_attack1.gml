function mummy_attack1() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
	 action_status=aStates.startUp;
	 movestun=40;//set the startUp to 20 frame
   
	}
	//if it's not the first frame
	else {
	 switch (action_status){
  
	  case aStates.startUp:
		 if(movestun>20){
			dir=point_direction(x,y,player.x,player.y);
		 }
		 else{ critical=true;}
		 //if this is the end of the start up
		 if(movestun==0){
    
	    //the move
	    audio_play_sound(slash,5,false);
 
	    //change state
	    action_status=aStates.duration;
	    movestun=20;    
	

	
		if(true){
			clear_force();
			var force=instance_create_layer(x,y,"Boxes",force_directional);
			force.angle=dir;force.owner=id;with(force){alarm_set(0,other.movestun);}
			force.spd=10;force.inc=-.1;
					
			ds_list_add(forces,force);
		}

	   }
	  break;
  
	  case aStates.duration:
	   if(hitbox!=undefined&&hitbox.hitting){
	    audio_play_sound(hit1,1,false);
	   }
	   if(movestun==0){
	    action_status=aStates.recovery;
	    movestun=70;
	
    
	   }
   
	  break;
  
	  case aStates.recovery:
	   clear_hitbox();
	   critical=false;
	   if(movestun==50){
		   clear_force();
			var force=instance_create_layer(x,y,"Boxes",force_directional);

			if(dir<180){force.angle=270;}
			else{force.angle=90;}
			force.owner=id;with(force){alarm_set(0,10);}
			force.spd=10;force.inc=0;
					
			ds_list_add(forces,force);
	   }
	   if(movestun==0){
	    action_status=aStates.off;
	    status=states.neutral;
    
	    alarm_set(0,5);
	   }
	  break;
	 }
   
	}



}
