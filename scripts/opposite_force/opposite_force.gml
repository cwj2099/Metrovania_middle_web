function opposite_force() {
	clear_force();
	var force=instance_create_layer(x,y,"Boxes",force_directional);
	force.angle=90+90*facing;
	force.spd=2;
	force.inc=-.2;
	force.owner=id;
	with(force){alarm_set(0,5);}
	ds_list_add(forces,force);


}
