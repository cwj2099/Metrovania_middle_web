function froggy_move() {
	//locating player


	if (moveMode=0)
	{
		moveTimer--;
		if(player==undefined){
		hspd=lerp(hspd,spd_walk*facing,global.fric);
		}
		else{
		hspd=lerp(hspd,spd_run*facing,global.fric);
		}



		if(!place_meeting(x,y+1,obj_wall)){
		vspd+=global.gForce;
		vspd=min(vspd,global.gMax);
		}
		else{if player==undefined{vspd=-7;} else{vspd=-10;}}
	}

	else if (moveMode=1)
	{
		moveTimer--;
		if(player==undefined){
		hspd=0
		}
		else{
		hspd=lerp(hspd,spd_run*facing,global.fric);
		}



		if(!place_meeting(x,y+1,obj_wall)){
		vspd+=global.gForce;
		vspd=min(vspd,global.gMax);
		}
		else{if player==undefined{vspd=0;} else{vspd=-10;}}
			if(moveTimer<=0){moveTimer=random_range(400, 800);}
	}


}
