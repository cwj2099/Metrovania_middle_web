function unpause() {
	instance_activate_all();
	changePause1(false);
	changePause2(false);
	rX=obj_gManager_parent.piece.oX-mX;
	rY=obj_gManager_parent.piece.oY-mY;

	global.paused=false;
		
	show_debug_message("UnPause!");


}
