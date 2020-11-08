/// @description Insert description here
// You can write your code in this editor
owner=undefined;

part_system=part_system_create_layer("Boxes",false);

part_emitter=part_emitter_create(part_system);


part_type=part_type_create();

part_type_sprite(part_type, spr_fireParticles, false, false, false);

part_type_alpha3(part_type, 0, 0.5, 0);

part_type_color3(part_type, c_black, c_orange, c_yellow);

ds_list_add(global.part_systems,part_system);