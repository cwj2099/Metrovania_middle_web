/// @description Teleport Map Call out
// You can write your code in this editor
	global.paused=true;
	instance_deactivate_all(true);
	instance_activate_layer("Pause0");
	instance_activate_layer("Pause3");
	layer_set_visible("Pause0",true);
	layer_set_visible("Pause3",true);
	with(obj_pauseManager){event_user(0);}