/// @description Insert description here
// You can write your code in this editor

/////////////////////////////////
//ui's selection and result
////////////////////////////////
if(global.input_dir){//if any direction is triggered
	global.selected=uiSelect(buttons,global.selected);
}
if(global.input_ok||global.input_start){
	switch (global.selected)
	{
		case button1:
			instance_create_layer(0,0,"Instances",obj_player);
			write("player_hp",10);//
			write("spawn",0);	
			room_goto(load("respawn"));
		break;
		
		case button2:
			write("player_hp",10);//
			write("spawn",0);
			write("room",load("respawn"));
			ds_map_secure_save(global.save_data,global.file_name);
			room_goto(room_title);
		break;
		

	}
}