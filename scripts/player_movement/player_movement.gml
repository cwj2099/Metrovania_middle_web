function player_movement() {



	//determine if it is double clicked? If true let running be true
	if(global.input_left_p){
		if(check_buffer(global.input_left_q,double_tap)){running=true;dirDouble=20;}
	}
	if(global.input_right_p){
		if(check_buffer(global.input_right_q,double_tap)){running=true;dirDouble=20;}
	}
	dirDouble=max(0,dirDouble-1);

	if(abs(hspd)>=spd_walk-.5){running=true;}

	//x movement
	move_left=global.input_left_d;
	move_right=global.input_right_d;

	//if not pressing left or right, no longer runs
	if(!move_left&&!move_right){running=false;}



	//direction determination
	var xx=move_right-move_left;
	//the speed varies when it's running or not
	if(running){hspd=lerp(hspd,xx*spd_run,global.fric);}
	else{hspd=lerp(hspd,xx*spd_walk,global.fric);}

	if(abs(hspd)<.2){hspd=0;}


	//y movement

	//determine player is on ground or not
	if(place_meeting(x,y+1,obj_wall)&&!place_meeting(x,y,obj_wall)){onGround=true;}
	else{
		//tolerance, if player is about to fall when it just left the platform, he can still jump 
		if(place_meeting(x-2*hspd,y+1,obj_wall)&&!place_meeting(x-2*hspd,y,obj_wall)){onGround=true;}
		else{onGround=false;}
	}
	//also the platform
	if(place_meeting(x,y+1,obj_platform)&&!place_meeting(x,y,obj_platform)){onPlatform=true;}
	else{
		if(place_meeting(x-2*hspd,y+1,obj_platform)&&!place_meeting(x-hspd,y,obj_platform)){onPlatform=true;}
		else{onPlatform=false;}
	}

	//restore player's ability to double jump once they land
	if(onGround||onPlatform){doubleJump=true;}

	//inital the jump only by pressing not key down
	if((onGround||onPlatform)&&(global.input_B_p)&&(jumpCancelable()||status==states.neutral)){
		if(onPlatform&&global.input_down_d){y+=1;}
		else {iniH=0;jspd=iniJs;rising=true;audio_play_sound(jump,5,false);}
	}
	else if(onGround||onPlatform){vspd=0;}
	//increase the speed as player rise until max
	if(rising){vspd=-jspd;jspd+=accJs;jspd=min(jspd,maxJs);iniH++;}
	//if key not pressed & is above half of the max height
	if(!global.input_B_d&&!(iniH<=maxH/2)){rising=false;vspd=max(vspd,-iniJs);}
	//if reach maximum height, start falling
	if(iniH>=maxH){rising=false;vspd=max(vspd,-iniJs);}
	//if hit the ceiling, start falling
	if(place_meeting(x,y-1,obj_wall)&&vspd<0){vspd=iniDs;rising=false;}

	//if falling
	if(!rising){
		vspd+=global.gForce;
		vspd=min(vspd,global.gMax);
		//if able to double jump and actually jumped
	
		if(load("doubleJump_switch")&&doubleJump&&global.input_B_p&&!onGround&&!onPlatform&&(jumpCancelable()||status==states.neutral)){
			punches=3;
			audio_play_sound(jump,5,false);
			doubleJump=false;
			iniH=0;jspd=iniJs;rising=true;
			//effect_create_above(ef_ring,x,y,1,c_red);
		}
	}

	if((!lastGround)&&(onGround||onPlatform)){audio_play_sound(ground,5,false);}

	lastGround=(onGround||onPlatform);


}
