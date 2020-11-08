function mosquito_move() {
	//locating player

	nearestWall=instance_nearest(x,y,obj_wall);

	if(player==undefined){
		move_towards_point(nearestWall.x, nearestWall.y,1);
	}

	else{
	move_towards_point(obj_player.x, obj_player.y, spd_run);
	}


	if (place_meeting(x+10,y,obj_wall))
		{
		hspd=0;
		}
	
	if (place_meeting(x,y+10,obj_wall))
		{
		vspd=0;
		}


}
