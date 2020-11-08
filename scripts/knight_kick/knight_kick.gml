function knight_kick() {
	hspd=0;
	//if it's the first frame
	if(movestun==-1){
		action_status=aStates.startUp;
		movestun=35;//set the startUp the 40 frame
				//lala
		critical=true;
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
					hitbox.attack=2;
					hitbox.stun=20;
					//hitbox's side is my side
					hitbox.side=side;
					//follow the sequence of angle,spd, life,inc
					var push_data=array(90-70*facing,40,15,-1);
					hitbox.push_data=push_data;
				
					//the difference in x of hitbox
					hitboxD_y=25;
					hitboxD_x=facing*0;
					with(hitbox){
						ds_list_add(white_list,other.hurtbox);
						image_xscale=4.5;image_yscale=1;
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
					movestun=50;
				
				}
			
			break;
		
			case aStates.recovery:
				critical=false;
				clear_hitbox();
				if(movestun==0){
					action_status=aStates.off;
					status=states.neutral;
				}
			break;
		}
			
	}



}
