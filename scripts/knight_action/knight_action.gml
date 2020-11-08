function knight_action() {

			
	if(status==states.attack1){
			knight_strike()
	}
	else if(status==states.attack2){
			knight_kick();
	}
	else if(status==states.alert){
		hspd=0;
		if(movestun==-1){
			movestun=20;
		}
		if(movestun==0){
			status=states.neutral;
		}
	
	}
	else if(status==states.special1){
		if(movestun==-1){
			movestun=50;
			clear_force();
			var force=instance_create_layer(x,y,"Boxes",force_directional);
			force.angle=90;force.owner=id;with(force){alarm_set(0,30);}
			force.spd=10;force.inc=-.2;

			ds_list_add(forces,force);
		}
	
		if(movestun==0){
			status=states.neutral;
		}
	}
		

	



}
