// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slowE_ai(){
	player=instance_find(obj_player,0);
	
	dif=abs(player.x-x);
	//case too far
	if(dif>400){
		status=states.neutral;
	}
	else if(dif<200){
		if(status==states.neutral){
			status=states.movement1;
		}
	}
	//case too close
	else{
		if(status==states.neutral){
			facing=sign(player.x-x);
			status=states.pre1;
		}
	}
}

function slowE_move(){
	//reach wall, reverse
	if(place_meeting(x+facing*spd_run,y-global.tolerance-sprite_height/2-1,obj_wall)){facing*=-1;}
	//reach borader, reverse
	else if(place_meeting(x+facing*spd_run,y,obj_door_parent)){facing*=-1;}
	//reach falling, reverse
	else if(!place_meeting(x+facing*spd_run,y+global.tolerance+sprite_height/2+1,obj_wall)){facing*=-1;}
	//reach over lap, reverse
	else if(position_meeting(x+sprite_width/2,y,obj_enemy_parent)){facing*=-1;}

	if(status==states.neutral){
		hspd=lerp(hspd,spd_walk*facing,global.fric);
		
	}
	
	if(status==states.pre1){
		hspd=lerp(hspd,spd_run*facing,global.fric);
	}
	if(place_meeting(x,y+1,obj_wall)&&!place_meeting(x,y,obj_wall)){onGround=true;}else{onGround=false;}
	if(place_meeting(x,y+1,obj_platform)&&!place_meeting(x,y,obj_platform)){onPlatform=true;}else{onPlatform=false;}
	if(!onGround&&!onPlatform){
		show_debug_message("in air");
		vspd+=global.gForce;
		vspd=min(vspd,global.gMax);
	}
	else{vspd=0;}
}

function slowE_action(){

			
	if(status==states.attack1){
		slowE_attack1();
	}
	if(status==states.pre1){	
		if(dif<125){
			status=states.attack1;
			movestun=-1;
		}
	}
	if(status==states.movement1){
		slowE_movement1();
	}

}