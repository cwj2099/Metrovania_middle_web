/// @description Insert description here
// You can write your code in this editor
if(ds_list_find_index(white_list,other.id)==-1&&!other.hitted&&(side!=other.side)&&other.status){
	//add to white list prevent multi hit
	ds_list_add(white_list,other.id);
	
	hitting=true;
	other.hitted=true;
	other.push_data=push_data;
	other.damage=round(attack);
	other.stun=stun;
	other.chip=chip;
	if(other.owner.steel){push_back=true;}
	if(other.owner.critical){critical=true;}
	var effect=instance_create_layer((other.x+x)/2,(other.y+y)/2,"Boxes",obj_effect_hit1);
	if(critical){effect.image_blend=c_red;effect.image_xscale=1.5;effect.image_yscale=1.5;}
	//effect.dir=dir;
	//effect.push=attack/5;
	

}