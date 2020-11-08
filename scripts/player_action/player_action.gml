function player_action() {
	//jump can cancel some of the moves
	if(global.input_B_p&&jumpCancelable()&&(onGround||onPlatform||doubleJump||rising))
	{status=states.neutral;clear_hitbox();clear_force();input_create();chain=undefined;movestun=0;floating=false;}

	if(status!=states.upper_cut&&status!=states.special1&&(onGround||onPlatform)){upperCut=true;flyKick=true}
	if(onGround||onPlatform){punches=3;dashAttack=true;roll=true;}
	if(hitbox!=undefined&&hitbox.hitting){punches=3;dashAttack=true;upperCut=true;flyKick=true;roll=true;}
	if(floating){vspd=.5;}


	//neutral state, can accpet most move
	if(status==states.neutral||status==states.gliding){
		enforced=false;
		//only change the facing in neutral state
		if(global.input_right_d&&global.input_left_d){facing=facing;}
		else if(global.input_left_d){facing=-1;}
		else if(global.input_right_d){facing=1;}
	
		if((global.input_up_d||global.input_L_d)&&!(onGround||onPlatform)){status=states.gliding;}
		else{status=states.neutral;}
	
		//attack button pressed
		if((global.input_A_p||check_buffer(global.input_A_q,buffer))&&load("attack_switch")&&punches>0){
			//the move to be used is strongly connected with chain
			switch (chain){
				case undefined:
					clear_hitbox();
					status=states.attack1;
					movestun=-1;
					punches--;
				
				break;
			
				case states.attack1:
					clear_hitbox();
					status=states.attack1;
					movestun=-1;
					punches--;
				
				break;
					
				case states.attack2:
					clear_hitbox();
					chain=undefined;
					status=states.attack2;
					movestun=-1;
					punches--;
				break;
					
				case states.attack3:
					clear_hitbox();
					chain=undefined;
					status=states.attack3;
					movestun=-1;
					punches--;
				break;
			}	
		
			//if its not during a chain and double pressed one direction, do the dash slash
		
		}	
	

	
	
		/*
		if((global.input_Y_d||global.input_Lt_d)&&load("attack_switch")&&charge==0){
			if(load("player_mp")>=1.5){
		
			write("player_mp",load("player_mp")-1);
			clear_hitbox();
			charge=1;

			}
	
		}
		if(charge>0){
		
			if(global.input_Y_d||global.input_Lt_d){
				charge=min(charge+2,130);
			}
			else{
				status=states.special2;
				movestun=-1;
			}
		}*/
		/*if(charge>0){
			if(!global.input_A_d){
				if(charge>=30){
					clear_hitbox();
					if(global.input_up_d){status=states.upper_cut;}
					else if(global.input_down_d){status=states.beat_down;}
					else{status=states.dash_attack;}
					movestun=-1;
				}
				charge=0;
			}
		
		}*/


	}

	else{running=false;}


	//if(global.input_A_d&&load("attack_switch")){charge=min(charge+1,30);}


	if(global.input_R_p&&status!=states.roll&&load("roll_enable")&&roll){
		
			write("player_hp",load("player_mp")/5+load("player_hp"));
			write("player_mp",0);
		
			roll=false;
			clear_hitbox();
			status=states.roll;
			movestun=-1;
			punches=3;
	}

	if(global.input_A_p){
		if(dirDouble>0&&dashAttack&&status!=states.dash_attack){
				clear_hitbox();
				running=false;
				status=states.dash_attack;
				movestun=-1;
			}

		
		
			//regardless the chain, if up is pressed and unground, do the upper cut
			if(global.input_up_d&&upperCut&&status!=states.upper_cut){
				upperCut=false;
				clear_hitbox();
				status=states.upper_cut;
				movestun=-1;
			}
			//if in air and pressed down, do the beat down
			if(global.input_down_d&&!(onGround||onPlatform)&&status!=states.beat_down){
				clear_hitbox();
				status=states.beat_down;
				movestun=-1;
			}	
		
				
	}
	if((global.input_X_p||check_buffer(global.input_X_q,buffer))&&load("attack_switch")&&status!=states.special1&&flyKick){
			flyKick=false;
			clear_hitbox();
			status=states.special1;
			movestun=-1;

	}

	switch(status){
		case states.birth:
			if(movestun==-1){movestun=60;}
			else{movestun--;}
		
			if(movestun<=0){status=states.neutral;}
		break;
	
		case states.death:
			if(movestun==-1){movestun=30;}
			else{movestun--;}
		
			if(movestun<=0){instance_destroy();room_goto(room_death);}
		break;
		case states.neutral:
			hitbox=undefined;
		break;
	
		case states.attack1:
			player_firstSlash();
		break;
	
		case states.attack2:
			player_secondSlash();
		break;
	
		case states.attack3:
			player_thirdSlash();
		break;
	
		case states.upper_cut:
			player_upper_cut();
		break;
	
		case states.beat_down:
			player_beat_down();
		break;
	
		case states.roll:
			player_roll();
		break;
	
		case states.dash_attack:
			player_dashSlash();
		break;
	
		case states.gliding:
			vspd=min(.6,vspd);
		break;
	
		case states.special1:
			player_fly_kick();
		break;
	
		case states.special2:
			player_shoot1();
		break;
	}







}
