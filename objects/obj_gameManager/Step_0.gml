  /// @description Insert description here
// You can write your code in this editor
//manager=instance_find(obj_manager_parent,0);

//update inputs
if(!global.noInput){
	input_step();
}
else{
	input_create();
}

// show_debug_message(load("respawn"));
/////////////////////////////////////////////
//Pausing the Game
////////////////////////////////////////////
//if in game state
if(global.inGame){
	//if I pressed start && not talking && not hitpause
	if(global.input_start&&!manager.talking&&!(alarm_get(0)>0)&&!manager.messaging){
		if(!global.paused){
			global.noInput=true;
			alarm_set(1,10);
			pause();
		}

	}
	
	if(load("player_hp")<=0&&manager.player.status!=states.death){
		global.slow=true;
		global.noInput=true;
		alarm_set(1,15);
		alarm_set(5,15);
		
		room_speed=15;
		alarm_set(0,15);
		manager.player.status=states.death;
		manager.player.movestun=-1;
		manager.player.hitstun=0;
	}
}

if(keyboard_check_pressed(ord("R"))){
	room_restart();
}



if(global.hitpause){
	global.hitpause=false;
	room_speed=20;
	gamepad_set_vibration(0, .2, .2);
	alarm_set(0,1);
	alarm_set(3,1);
}
if(global.hitpause2){
	global.hitpause2=false;
	room_speed=20;
	 gamepad_set_vibration(0, .4, .4);
	alarm_set(0,2);
	alarm_set(3,1);
}

if(global.hitpause5){
	global.hitpause5=false;
	room_speed=10;
	 gamepad_set_vibration(0, .4, .4);
	alarm_set(0,2);
	alarm_set(3,2)
}
if(global.hitpause1){
	global.hitpause1=false;
	room_speed=13;
	alarm_set(0,3);
}



if(global.hitpause3){
	global.hitpause3=false;
	gamepad_set_vibration(0,1,1);
	alarm_set(3,5);
}

//witch time
if(global.hitpause4){
	
	if(room_speed==60){
		room_speed=6;
		alarm_set(0,2);
	}
	else{
		room_speed=60;
		global.hitpause4=false;
		global.ePause=true
		alarm_set(2,10);
		alarm_set(4,10);
	}
	
}

if(global.super){
	global.super=false;
	global.ePause=true
	camera_set_view_size(view_camera[0],576,324);
	alarm_set(0,45);
	alarm_set(4,45);
}

if(global.ko){
	global.ko=false;
	room_speed=15;
	alarm_set(0,15);
	camera_set_view_size(view_camera[0],768,576);
}


