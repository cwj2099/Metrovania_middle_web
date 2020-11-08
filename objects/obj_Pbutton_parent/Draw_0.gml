/// @description Insert description here
// You can write your code in this editor
if(global.Pselected==id){
	image_index=1;
}
else{
	image_index=0;
}

x=oX+instance_find(obj_pauseManager,0).x-320;
y=oY+instance_find(obj_pauseManager,0).y-180;
draw_self();