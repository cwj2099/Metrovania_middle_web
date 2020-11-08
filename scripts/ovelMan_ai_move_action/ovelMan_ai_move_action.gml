// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ovelMan_ai(){
	player=instance_find(obj_player,0);
	
	dif=abs(player.x-x);
	//case too far
	if(dif>400){
		status=states.neutral;
	}
	else if(dif>175){
		if(status==states.neutral){
			facing=sign(player.x-x);
		}
	}
	else{
		if(status==states.neutral){
			facing=sign(player.x-x);
			status=states.attack1;
		}
	}
}

function ovelMan_move(){
	//reach wall, reverse
	if(place_meeting(x+facing*spd_run,y-global.tolerance-40-1,obj_wall)){facing*=-1;}
	//reach borader, reverse
	else if(place_meeting(x+facing*spd_run,y,obj_door_parent)){facing*=-1;}
	 

	if(status==states.neutral){
		hspd=lerp(hspd,spd_walk*facing,global.fric);
		
	}
	
	if(place_meeting(x,y+1,obj_wall)&&!place_meeting(x,y,obj_wall)){onGround=true;}else{onGround=false;}
	if(place_meeting(x,y+1,obj_platform)&&!place_meeting(x,y,obj_platform)){onPlatform=true;}else{onPlatform=false;}

}

function ovelMan_action(){

			
	if(status==states.attack1){
		ovelMan_attack1();
	}


}