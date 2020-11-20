/// @description Insert description here
// You can write your code in this editor
if(layer_get_visible("Instances_2")){
	if(global.input_up_d){y-=6;}
	if(global.input_down_d){y+=6;}
	y-=.05;
}
else{
	x=oX;
	y=oY;
}