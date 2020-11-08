/// @description Insert description here
// You can write your code in this editor

if(ds_list_find_index(white_list,other.id)==-1&&!other.hitted&&other.status){
	//add to white list prevent multi hit
	ds_list_add(white_list,other.id);

	hitting=true;
	other.hitted=true;
	other.push_data=array(point_direction(x,y,other.owner.x,other.owner.y),10,5,0);
	other.damage=3;
	other.stun=5;


	
}