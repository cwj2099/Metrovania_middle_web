// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ovelMan_attack1(){

	hspd=0;
	//if it's the first frame
	if(action_status==aStates.off){
		action_status=aStates.startUp;
		movestun=50;//set the startUp the 10 frame
		

	}
	//if it's not the first frame
	else {
		switch (action_status){
		
			case aStates.startUp:
				//if this is the end of the start up
				if(movestun==0){
				
					//the move
					audio_play_sound(slash,5,false);
					hitbox=instance_create_layer(x+10*facing,y-20,"Boxes",obj_hitbox);

					hitbox.owner=id;
					hitbox.attack=3;
					hitbox.stun=20;
					hitbox.side=side;
					//angle,spd, life,inc
					var push_data=array(90-70*facing,20,10,-1);
					hitbox.push_data=push_data;
				
					hitboxD_x=10*facing;
					hitboxD_y=-10;
					hitbox.image_angle=15*2*facing;
					with(hitbox){
						//alarm_set(0,15);
						sprite_index=spr_hitbox_stick;
						ds_list_add(white_list,other.hurtbox);
						image_xscale=3;image_yscale=13.5;
					
					
					}
				
					//change state
					action_status=aStates.duration;
					movestun=26;				

				}
			break;
		
			case aStates.duration:
				if(hitbox!=undefined){
					hitbox.image_angle+=-facing*(15+125)/25;
					hitboxD_x+=1*facing;
				}
				if(hitbox!=undefined&&hitbox.hitting){
					audio_play_sound(hit1,1,false);
						clear_force();
						var force=instance_create_layer(x,y,"Boxes",force_directional);
						force.angle=90+90*facing;force.owner=id;with(force){alarm_set(0,10);}
						force.spd=5;force.inc=0;

						ds_list_add(forces,force);	
				}
				if(movestun==0){

					action_status=aStates.recovery;
					movestun=75;
				
				}
			
			break;
		
			case aStates.recovery:
				clear_hitbox();
				if(movestun==0){	
					action_status=aStates.off;
					status=states.neutral;
					movestun=-1; 
				}
			break;
		}
			
	}
}