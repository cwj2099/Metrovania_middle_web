/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
	if (owner.status=states.birth){
part_emitter_region(part_system, part_emitter, owner.x, owner.x, owner.y, owner.y, ps_shape_ellipse, ps_distr_linear);

	
	}
	
	else{
part_emitter_region(part_system, part_emitter, owner.x, owner.x, owner.y, owner.y, ps_shape_ellipse, ps_distr_linear);
		}
	}

else{
instance_destroy(self);
}


part_emitter_burst(part_system, part_emitter, part_type, 2);
