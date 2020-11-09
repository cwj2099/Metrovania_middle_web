function draw_text_box(argument0, argument1, argument2) {
	var ID= argument0;
	var cX= argument1;
	var cY= argument2;

	var text=undefined;

	if(load("language")==1){text=sysList_en(ID);}
	else{text=sysList_cn(ID);}
	var legnth=string_length(text[# 0,0]);

	draw_set_color(c_white);
	if(load("language")==1){
	draw_rectangle(cX-legnth*3,cY-110,cX+legnth*3,cY-90,false);
	draw_set_color(c_black);
	draw_rectangle(cX-legnth*3,cY-110,cX+legnth*3,cY-90,true);
	}
	else{
	draw_rectangle(cX-legnth*6,cY-110,cX+legnth*6,cY-90,false);
	draw_set_color(c_black);
	draw_rectangle(cX-legnth*6,cY-110,cX+legnth*6,cY-90,true);
	}

	draw_set_font(Font_pop);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_color(c_black);


	//show_debug_message(text[# 0,0]);
	draw_text(cX,cY-100,text[# 0,0]);


}
