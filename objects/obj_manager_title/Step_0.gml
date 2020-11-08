// @description Insert description here
// You can write your code in this editor

/////////////////////////////////
//ui's selection and result
////////////////////////////////
if(layer_get_visible("Instances")){

if(global.input_dir){//if any direction is triggered
	global.selected=uiSelect(buttons,global.selected);
}

if(load("started")){
	buttons[# 0,1]=button2;
	button2.visible=true;
}
else{

	buttons[# 0,1]=-1;
	button2.visible=false;
}

if(global.input_ok||global.input_start){
	switch (global.selected)
	{
		case button1:
			instance_create_layer(0,0,"Instances",obj_player_real);
			if(file_exists(global.file_name))
			{file_delete(global.file_name);}
			record_default();
			write("started",true);
			ds_map_secure_save(global.save_data,global.file_name);
			
			room_goto(load("room"));
		break;
		
		case button2:
			if(load("started")){
				instance_create_layer(0,0,"Instances",obj_player);
				global.save_data=ds_map_secure_load(global.file_name);
				room_goto(load("room"));
			}
			
		break;
		
		case button3:
			layer_set_visible("Instances",false);
			layer_set_visible("Instances_1",true);
			global.selected=button5;
		break;
		
		case button4:
			game_end();
		break;
	}
}
}
else{
	if(global.input_dir){//if any direction is triggered
		global.selected=uiSelect(buttons2,global.selected);
	}

	if(global.input_ok||global.input_start){
		switch (global.selected)
		{
			case button5:
				write("language",1);
			break;
			
			case button6:
				write("language",2);
			break;
	
		}
		layer_set_visible("Instances",true);
		layer_set_visible("Instances_1",false);
		global.selected=button3;
		ds_map_secure_save(global.save_data,global.file_name);
	}
}