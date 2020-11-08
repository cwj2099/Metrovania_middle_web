function knight_move() {
	//if there's no player, dont move
	if(player==undefined){
		hspd=lerp(hspd,0,global.fric);
		if(abs(hspd)<1){hspd=0;}
	}
	//if I found player, start moving toward player
	else{
		hspd=lerp(hspd,spd*facing,global.fric);
	}


	if(place_meeting(x,y+1,obj_wall)&&!place_meeting(x,y,obj_wall)){onGround=true;}else{onGround=false;}
	if(place_meeting(x,y+1,obj_platform)&&!place_meeting(x,y,obj_platform)){onPlatform=true;}else{onPlatform=false;}
	if(!onGround&&!onPlatform){
		vspd+=global.gForce;
		vspd=min(vspd,global.gMax);
	}
	else{vspd=0;}




}
