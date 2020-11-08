///@function draw_dia(id)
///@para{variable} id   the id going to be traced in the script list
function draw_sys_message(argument0) {

	var ID=argument0;
	var text;//the grid of the dia
	if(load("language")==1){text=sysList_en(ID);}
	else{text=sysList_cn(ID);}
	if(dia_counter==-1){dia_counter=ds_grid_height(text);}

	//the drawing
	var cX=camera_get_view_width(view_camera[0])/2;//center x
	var cY=camera_get_view_height(view_camera[0])/2;//center y


	draw_set_font(Font_button);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_color(c_black);

	draw_text(cX,cY,text[# 0,dia_counter-1]);


	if(global.input_ok||global.input_start){dia_counter--;}
	if(dia_counter==0){
		dia_counter=-1;
		//do this to prevent the flash screen
		instance_activate_layer("Instances");
		instance_activate_layer("Boxes");
		instance_activate_layer("Player");
		input_create();//clear the inputs to prevent accidental moves 
		messaging=false;
	}






}
