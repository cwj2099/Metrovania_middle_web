/// @description Insert description here
// You can write your code in this editor

if(dir!=undefined){
	image_xscale=abs(image_xscale)*dir;
	
	sys=part_system_create();
	part1=part_type_create();
	emittor1=part_emitter_create(sys);



	part_type_sprite(part1,spr_hit_part,false,false,false);
	part_type_size(part1,1,2,-.1,0);
	part_type_life(part1,10,15);
	part_type_orientation(part1,0,359,0,0,false);
	if(dir==1){part_type_direction(part1,90,270,0,0)}
	else{part_type_direction(part1,270,450,0,0)}
	part_type_speed(part1,3*push,5*push,-.05,0);

	part_emitter_region(sys, emittor1, x-10, x+10, y-10, y+10, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(sys,emittor1,part1,15+push);
	dir=undefined;
}

if(alarm_get(0)>0){image_xscale*=.9;image_yscale*=.9;}
draw_outline(1);
draw_self();