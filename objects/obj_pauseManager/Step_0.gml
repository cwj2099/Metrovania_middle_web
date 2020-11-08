/// @description Insert description here
// You can write your code in this editor



/////////////////////////////////
//ui's selection and result
////////////////////////////////
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