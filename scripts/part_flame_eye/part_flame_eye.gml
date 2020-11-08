function part_flame_eye() {
	var sys=part_system_create_layer("Instances",false);
	var emit=part_emitter_create(sys);
	var part1=part_type_create();

	part_type_color3(part1,c_yellow,c_orange,c_red);
	part_type_shape(part1,pt_shape_pixel);
	part_type_size(part1,2,2,0,0);
	part_type_direction(part1,0,359,0,0);
	part_type_speed(part1,1,1,-.1,0);
	part_type_gravity(part1,.5,90);
	part_type_life(part1,10,10);
	part_type_alpha2(part1,1,.5);

	part_emitter_region(sys,emit,x-20,x+20,y-30,y+30,ps_shape_rectangle,ps_distr_gaussian);

	part_emitter_burst(sys,emit,part1,5);



}
