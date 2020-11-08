/// @description Insert description here
// You can write your code in this editor



if(global.input_dir){//if any direction is triggered
	global.selected=uiSelect(buttons,global.selected);
}

if(global.input_ok||global.input_start){
	switch (global.selected)
	{
		case button1:
			write("language",1);
		break;
		
		case button2:
			write("language",2);
		break;

	}
	room_goto(room_title);
	ds_map_secure_save(global.save_data,global.file_name);
}
