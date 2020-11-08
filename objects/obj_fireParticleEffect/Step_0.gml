/// @description Insert description here
// You can write your code in this editor
if(instance_exists(owner)){
	if (owner.status=states.attack1){
part_type_alpha3(part_type, 0, 0.2, 0);
part_emitter_region(part_system, part_emitter, owner.x-70, owner.x, owner.y+10, owner.y+100, ps_shape_ellipse, ps_distr_linear);

	
	}
	
	else{
part_type_alpha3(part_type, 0, 0.2, 0);
part_emitter_region(part_system, part_emitter, owner.x-150, owner.x+80, owner.y-200, owner.y+150, ps_shape_ellipse, ps_distr_linear);
		}
	}

else{
instance_destroy(self);
}


part_emitter_burst(part_system, part_emitter, part_type, 2);
