// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_dizzyCheck(){
	if(ssp<=0&&alarm_get(7)<=0){
		alarm_set(7,50);
		global.hitpause1=true;
		hitstun=50;
		effect_create_above(ef_ellipse,x,y,1,c_yellow);
		var force=instance_create_layer(x,y,"Boxes",force_directional);
		force.angle=90-player.facing*90;force.spd=10;force.owner=id;force.inc=-1;
		with(force){alarm_set(0,10);}
		ds_list_add(forces,force);
	}
	if(alarm_get(7)>0){
		status=states.neutral;
		chain=states.neutral;
		chain_count=0;
		critical=true;
		clear_hitbox();
	}
	
	if(Sp==0&&alarm_get(5)<=0){
		alarm_set(5,180);
		global.hitpause1=true;
		hitstun=180;
		effect_create_above(ef_ellipse,x,y,1,c_yellow);
		var force=instance_create_layer(x,y,"Boxes",force_directional);
		force.angle=90-player.facing*90;force.spd=10;force.owner=id;force.inc=-1;
		with(force){alarm_set(0,10);}
		ds_list_add(forces,force);

	}
	if(alarm_get(5)>0){
		status=states.neutral;
		chain=states.neutral;
		chain_count=0;
		critical=true;
		clear_hitbox();
	}

	

}