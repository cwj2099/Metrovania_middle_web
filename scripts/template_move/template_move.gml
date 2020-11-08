function template_move() {
	//if there's no player, dont move
	if(player==undefined){
		hspd=lerp(hspd,0,global.fric);
		if(abs(hspd)<1){hspd=0;}
	}
	//if I found player, start moving toward player
	else{
		hspd=lerp(hspd,spd*facing,global.fric);
	}

	//if I'm not on ground, apply gravity to me
	if(!place_meeting(x,y+1,obj_wall)){
		vspd+=global.gForce;
		vspd=min(vspd,global.gMax);
	}
	//if I'm on ground, don't do that
	else{vspd=0;}

		


}
