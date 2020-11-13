/// @description Insert description here
// You can write your code in this editor
if(alarm_get(2)>0){
	shader_set(shader_gray);
	draw_surface(application_surface, 0, 0);
	shader_reset();
	
}

if(alarm_get(5)>0){
	shader_set(shader_red);
	draw_surface(application_surface, 0, 0);
	shader_reset();
}



if(global.inGame&&!global.paused&&!manager.talking&&!manager.messaging&&manager.world==1){
	//show_debug_message(manager);
	var cX=camera_get_view_width(view_camera[0])/2;//center x
	var cY=camera_get_view_height(view_camera[0])/2;//center y
	


}






