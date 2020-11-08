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
	var cX=camera_get_view_width(view_camera[0])/2;//center x
	var cY=camera_get_view_height(view_camera[0])/2;//center y
	
	draw_set_color(c_lime);
	draw_rectangle(61,13,61+(150/10)*load("player_hp"),26,false);
	
	draw_set_color(c_orange);
	if(manager.player.level==3&&load("player_mp")==10){
		draw_set_color(make_color_rgb(irandom(255),irandom(255),irandom(255)));
	}
	draw_rectangle(61,26,61+(150/10)*load("player_mp"),39,false);
	draw_sprite(spr_ui,0,0,0);
	
	draw_set_font(Font_level);
	draw_text(40,32,string(manager.player.level));
	
	if(load("player_hp")<=4){
		draw_sprite(spr_low_health,0,0,0);
	}

}






