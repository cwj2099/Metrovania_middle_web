///@function				collision_check(hspd,vspd)
function collision_check(argument0, argument1) {

	var hs=round(argument0);
	var vs=round(argument1);



	if(place_meeting(x+hs,y,obj_wall)){
	
		//walking on the slope	
		var yplus=0;
		//if meetng obstacle, move above, above and above until reach the maximum
		while(place_meeting(x+hs,y-yplus,obj_wall)&&yplus<=abs(global.tolerance)){yplus++;}
		//if there's still obstacle after reaching the limit, do normally
		if(place_meeting(x+hs,y-yplus,obj_wall)){
			while(!place_meeting(x+sign(hs),y,obj_wall)){
				x+=sign(hs);
			}
			hs=0;
		}
		//if no obstacle, move above!
		else{
			y-=yplus;
		}

	}
	x+=hs;

	//stolen from a guy in youtube comment, magically working
	if (!place_meeting(x,y,obj_wall) && vspd >= 0 && place_meeting(x,y+global.tolerance,obj_wall))
	{while(!place_meeting(x,y+1,obj_wall)) {y += 1;}}
	//going to figure out later

	if(place_meeting(x,y+vs,obj_wall)){
		while(!place_meeting(x,y+sign(vs),obj_wall)){
			y+=sign(vs);
		}
		vs=0;
	}

	//platform
	else if(place_meeting(x,y+vs,obj_platform)&&vs>=0&&!place_meeting(x,y,obj_platform)){
		while(!place_meeting(x,y+sign(vs),obj_platform)){
			y+=sign(vs);
		}
		vs=0;
	}

	y+=vs;


}
