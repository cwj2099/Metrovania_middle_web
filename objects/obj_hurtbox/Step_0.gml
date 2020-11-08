/// @description Insert description here
// You can write your code in this editor

if(hitted){
	hitted=false;
	with(owner){event_user(0); }
	if(push_data!=undefined&&!owner.steel){
		//this is for motion reset
		with(owner){
			for(var i=0;i<ds_list_size(forces);i++)
			{with(forces[|i]){instance_destroy();}}
		}
		
		force=instance_create_layer(x,y,"Boxes",force_directional);
		force.angle=push_data[0];force.spd=push_data[1];force.owner=owner;force.inc=push_data[3];
		with(force){alarm_set(0,other.push_data[2]);}
		with(owner){ds_list_add(forces,other.force);}
	}
}

else{
	damage=0;
	stun=0;
	push_data=undefined;
	force=undefined;
}

