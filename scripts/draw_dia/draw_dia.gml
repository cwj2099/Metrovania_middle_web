///@function draw_dia(id)
///@para{variable} id   the id going to be traced in the script list
function draw_dia(argument0) {

	var ID=argument0;
	var text;//the grid of the dia
	if(load("language")==1){
		text=diaList_en(ID);
	}
	else{
		text=diaList_cn(ID);
	}

	//initla the talk
	if(dia_counter==-1){dia_counter=ds_grid_height(text);}

	//the drawing
	var cX=camera_get_view_width(view_camera[0])/2;//center x
	var cY=camera_get_view_height(view_camera[0])/2;//center y

	draw_sprite(spr_diaBack,0,cX,cY);

	draw_set_font(Font_button);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_color(c_black);

	draw_txt_warp(cX,cY+125,text[# 0,dia_counter-1],20,580);
	draw_sprite_ext(text[# 2,dia_counter-1],0,cX+125,cY-56,-2,2,0,c_white,1);
	draw_sprite_ext(text[# 1,dia_counter-1],0,cX-125,cY-56,2,2,0,c_white,1);

	//process to the next sentence by press
	if((global.input_ok||global.input_start)&&!selecting){dia_counter--;audio_play_sound(interact,5,false);}

	//if it is option time!!!!!!!!!
	if(selecting){
		global.oselected=uiSelect_alter(options,global.oselected);
		var ops=optionList_cn(op);
			if(load("language")==1){
		 ops=optionList_en(op);
	}
	else{
	 ops=optionList_cn(op);
	}
		
		if(ops[# 0,0]!=-1){option1.visible=true;draw_sprite(option1.sprite_index,option1.image_index,option1.x,option1.y);draw_txt_warp(option1.x,option1.y,ops[# 0,0],20,580);}else{option1.visible=false;}
		if(ops[# 1,0]!=-1){option2.visible=true;draw_sprite(option2.sprite_index,option2.image_index,option2.x,option2.y);draw_txt_warp(option2.x,option2.y,ops[# 1,0],20,580);}else{option2.visible=false;}
		if(ops[# 2,0]!=-1){option3.visible=true;draw_sprite(option3.sprite_index,option3.image_index,option3.x,option3.y);draw_txt_warp(option3.x,option3.y,ops[# 2,0],20,580);}else{option3.visible=false;}
		if(ops[# 3,0]!=-1){option4.visible=true;draw_sprite(option4.sprite_index,option4.image_index,option4.x,option4.y);draw_txt_warp(option4.x,option4.y,ops[# 3,0],20,580);}else{option4.visible=false;}
		if(global.input_ok||global.input_start){
			switch(global.oselected){
				case option1: selection=1;break;case option2: selection=2;break;
				case option3: selection=3;break;case option4: selection=4;break;
			}
			selecting=false;
		}
	
	}
	else{
		option1.visible=false;option2.visible=false;option3.visible=false;option4.visible=false;
	}

	//end talking
	if(dia_counter==0){
		dia_counter=-1;
		//do this to prevent the flash screen
		instance_activate_layer("Instances");
		instance_activate_layer("Boxes");
		instance_activate_layer("Player");
		input_create();//clear the inputs to prevent accidental moves 
		talking=false;
	}






}
