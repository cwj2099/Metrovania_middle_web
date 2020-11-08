/// @description Insert description here
// You can write your code in this editor
global.noInput=true;

switch(status){
	case event_states.step1:
		if(player.y!=girl.y&&player.onGround){
			global.input_B_p=true;
		}
		else{
			if(player.onGround||player.onPlatform){
				status=event_states.step2;
			}
		}
	break;
	
	case event_states.step2:
		if(player.x<girl.x+60){
			global.input_right_d=true;
		}
		else{
			status=event_states.step3;
			alarm_set(0,30);
			distance1=player.x-girl.x;
			catX=player.x;
			catY=player.y+15;
		}
	break;
	
	case event_states.step3:
		player.facing=-1
		catX-=distance1/30;
	break;
}
