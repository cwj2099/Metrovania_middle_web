function template_attack() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=40;//set the startUp the 40 frame
				//lala
	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up, then initial the hitbox
				if(movestun==0){
				
					//play the sound
					audio_play_sound(slash,5,false);
					//create the hitbox
					hitbox=instance_create_layer(x+48*facing,y-20,"Boxes",obj_hitbox);
					
					//inital the values of the hitbox
					hitbox.owner=id;
					hitbox.attack=3;
					hitbox.stun=10;
					//hitbox's side is my side
					hitbox.side=side;
					//follow the sequence of angle,spd, life,inc
					var push_data=array(90-90*facing,5,5,1);
					hitbox.push_data=push_data;
				
					//the difference in x of hitbox
					hitboxD_x=20;
					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=1;image_yscale=.7;
					}
					//change state
					action_status=aStates.duration;
					movestun=10;				

				}
			break;
		
			case aStates.duration:
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(hit1,1,false);
				}
				if(movestun==0){
					action_status=aStates.recovery;
					movestun=10;
				
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



}
