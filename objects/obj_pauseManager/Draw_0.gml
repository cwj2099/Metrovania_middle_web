/// @description Insert description here
// You can write your code in this editor
//update locations
if(global.inGame){
	
if(layer_get_visible("Pause1")){
	x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	oX=camera_get_view_x(view_camera[0]);
	oY=camera_get_view_y(view_camera[0]);
	back.x=x;back.y=y;
	back2.x=x;back2.y=y;

 
	draw_set_font(Font_button);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);

	if(load("language")==1){
	draw_text(button1.x,button1.y,"Return");
	draw_text(button2.x,button2.y,"Clues");
	draw_text(button3.x,button3.y,"Leave");
	}
	else{
	draw_text(button1.x,button1.y,"继续游戏");
	draw_text(button2.x,button2.y,"线索");
	draw_text(button3.x,button3.y,"回到标题");	  
	}

	draw_set_color(c_red);
	draw_circle(x+mX,y+mY,3,false);
	if(world==0){draw_sprite(spr_noMap,0,x,y);}
}
if(layer_get_visible("Pause5")){
	
	draw_set_font(Font_button);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	

	for(var i=0;i<min(ds_list_size(line1),4);i++){
		var card=clueList_cn(line1[|i]);
		draw_text_ext(tags[# i+1,0].x,tags[# i+1,0].y,card[# 0,0],10,80);
	}
	
	for(var i=0;i<min(ds_list_size(line2),4);i++){
		draw_text(tags[# i+1,1].x,tags[# i+1,1].y,line2[|i]);
	}
	
	for(var i=0;i<min(ds_list_size(line3),4);i++){
		draw_text(tags[# i+1,2].x,tags[# i+1,2].y,line3[|i]);
	}
	
	var scard=clueList_cn(sline[|sX]);
	if(detail){
		draw_sprite(spr_detail,0,x,y);
		draw_text_ext(x,y,scard[# 2,0],20,400);
	}
}

}


