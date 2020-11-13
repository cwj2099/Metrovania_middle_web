/// @description Insert description here
// You can write your code in this editor
if(obj_gManager_parent.world==1){
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_color(c_lime);
	draw_rectangle(61,13,61+(150/10)*load("player_hp"),26,false);
	
	draw_set_color(c_orange);
	if(level==3&&load("player_mp")==10){
		draw_set_color(make_color_rgb(irandom(255),irandom(255),irandom(255)));
	}
	draw_rectangle(61,26,61+(150/10)*load("player_mp"),39,false);
	draw_sprite(spr_ui,0,0,0);
	
	draw_set_font(Font_level);
	draw_text(40,32,string(level));
	
	if(load("player_hp")<=4){
		draw_sprite(spr_low_health,0,0,0);
	}
}