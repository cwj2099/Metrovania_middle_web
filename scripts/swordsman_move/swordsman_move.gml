function swordsman_move() {
	//locating player

	if(player==undefined){
		hspd=lerp(hspd,spd_walk*facing,global.fric);
	}
	else{
		hspd=lerp(hspd,spd_run*facing,global.fric);
	}



	if(place_meeting(x,y+1,obj_wall)&&!place_meeting(x,y,obj_wall)){onGround=true;}else{onGround=false;}
	if(place_meeting(x,y+1,obj_platform)&&!place_meeting(x,y,obj_platform)){onPlatform=true;}else{onPlatform=false;}
	if(!onGround&&!onPlatform){
		vspd+=global.gForce;
		vspd=min(vspd,global.gMax);
	}
	else{vspd=0;}





}
