function pause() {
	instance_deactivate_all(true);
	instance_activate_layer("Pause0");
	instance_activate_layer("Pause1");
	instance_activate_layer("Pause2");
	instance_activate_layer("Pause3");
	instance_activate_layer("Pause4");
	instance_activate_layer("Pause5");
	instance_activate_layer("Pause6");
	changePause1(true);


	for(var i=0;i<ds_list_size(global.part_systems);i++){
		part_particles_clear(global.part_systems[|i]);
	}



	global.paused=true;

	show_debug_message("Pause!");


}
