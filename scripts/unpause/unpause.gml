function unpause() {
	instance_activate_all();
	changePause1(false);
	changePause2(false);

	global.paused=false;
		
	show_debug_message("UnPause!");


}
