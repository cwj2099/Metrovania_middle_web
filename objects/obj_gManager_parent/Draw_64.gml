/// @description Insert description here
// You can write your code in this editor
if(talking){
	instance_deactivate_layer("Instances");
	instance_deactivate_layer("Boxes");
	instance_deactivate_layer("Player");
	
	if(screenShot==undefined){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
	

	draw_sprite(screenShot,0,0,0);
	draw_sprite(spr_shadow,0,0,0);
	draw_dia(dia);

}



else if(messaging){
	instance_deactivate_layer("Instances");
	instance_deactivate_layer("Boxes");
	instance_deactivate_layer("Player");
	
	if(screenShot==undefined){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
	
	draw_sprite(screenShot,0,0,0);
	draw_sprite(spr_shadow,0,0,0);
	draw_sys_message(dia);
}

else{
	option1.visible=false;option2.visible=false;option3.visible=false;option4.visible=false;
	dia_counter=-1;
	if(screenShot!=undefined){
        sprite_delete(screenShot);
		screenShot=undefined;
}


	

}


