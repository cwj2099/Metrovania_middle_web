function floatingForce() {
	var force=instance_create_layer(x,y,"Boxes",force_directional);
	force.spd=2.5;force.inc=0;
	force.owner=id;force.angle=90;
	force.persistent=true;
	with(force){alarm_set(0,2);}
	ds_list_add(forces,force);


}
