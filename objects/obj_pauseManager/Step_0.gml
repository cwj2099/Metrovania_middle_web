/// @description Insert description here
// You can write your code in this editor

x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

/////////////////////////////////
//ui's selection and result
////////////////////////////////
//normal page
if(layer_get_visible("Pause1")){

	if(global.input_dir){//if any direction is triggered
		global.Pselected=uiSelect(buttons,global.Pselected);
	}
	if(global.input_ok){
		switch (global.Pselected)
		{
						
			case button1:
				unpause();
			break;
			
			case button2:
				alarm_set(0,1);
			break;
			
			case button3:
				global.paused=false;
				ds_map_secure_save(global.save_data,global.file_name);
				room_goto(room_title);
			break;

		}
	}

	if(global.input_no){
		unpause();
	}
	
	
	
}
//map mode
else if(layer_get_visible("Pause3")){
	rX=lerp(rX,Mselected.oX,.5);
	rY=lerp(rY,Mselected.oY,.5);
	//show_debug_message("mapping");
	if(global.input_no){
		unpause();
	}
	//select loop
	if(global.input_dir){//if any direction is triggered
		event_user(1);
	}
	
	//back to main room
	if(global.input_X_p){
		unpause();
		room_goto(room_player_test);
		write("spawn",2);
		obj_player.dX=0;
		obj_player.dY=0;
	}
	//go to selected room
	if(global.input_ok){
		unpause();
		room_goto(Mselected.pRoom);
		write("spawn",0);
		obj_player.dX=0;
		obj_player.dY=0;
	}
}

//if detail page
if(layer_get_visible("Pause5")){
	if(global.input_no){
		if(!detail){
		global.Pselected=button2;
		changePause2(false);
		changePause1(true);
		}
		else{
			detail=false;
		}

	}
	
	if(global.input_dir&&!detail){//if any direction is triggered
		global.Pselected=uiSelect(tags,global.Pselected);
	}
	
	sX=undefined;
	sY=undefined;

	for(var i=0;i<ds_grid_width(tags);i++){
		for(var j=0;j<ds_grid_height(tags);j++){
			if(tags[# i,j]==global.Pselected){sX=i-1;sY=j;break;}
		}
	}
	sline=undefined;
	switch(sY){case 0: sline=line1;break;case 1: sline=line2;break;case 2: sline=line3;break;}
	//prevent out and do the rotation
	if(global.Pselected==tags[# 0,0]){global.Pselected=tags[# 1,0];list_right(line1);}
	if(global.Pselected==tags[# 5,0]){global.Pselected=tags[# 4,0];list_left(line1);}
	if(global.Pselected==tags[# 0,1]){global.Pselected=tags[# 1,1];list_right(line2);}
	if(global.Pselected==tags[# 5,1]){global.Pselected=tags[# 4,1];list_left(line2);}
	if(global.Pselected==tags[# 0,2]){global.Pselected=tags[# 1,2];list_right(line3);}
	if(global.Pselected==tags[# 5,2]){global.Pselected=tags[# 4,2];list_left(line3);}
	
	if(global.input_ok&&sline[|sX]!=999){detail=true;}
}