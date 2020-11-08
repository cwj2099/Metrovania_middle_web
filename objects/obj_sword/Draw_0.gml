/// @description Insert description here
// You can write your code in this editor
if(status==0){
	image_angle=0;
	image_xscale=1;
	image_yscale=1;
}
if(status==1){
	if(movestun>=34){
		image_angle=170;
	}
	else if(movestun>=29){
		var shadow=instance_create_layer(x,y,"Instances",sword_shadow);
		shadow.image_xscale=image_xscale;shadow.image_yscale=image_yscale;
		shadow.sprite_index=sprite_index;shadow.image_angle=image_angle;
		image_angle+=20;
	}
	
	if(movestun>30){
			image_yscale=.8;
		}
		else{
			image_yscale=1;
	}
}

if(status==2){
	if(movestun>=34){
		image_angle=30;
	}

	else if(movestun>=29){
		var shadow=instance_create_layer(x,y,"Instances",sword_shadow);
		shadow.image_xscale=image_xscale;shadow.image_yscale=image_yscale;
		shadow.sprite_index=sprite_index;shadow.image_angle=image_angle;
		image_angle-=30;
	}
	
	if(movestun>30){
			image_yscale=1;
		}
		else{
			image_yscale=1.2;
	}
}


draw_self();