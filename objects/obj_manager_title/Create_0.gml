/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
type="title";

button1=instance_find(obj_button1,0);
button2=instance_find(obj_button2,0);
button3=instance_find(obj_button3,0);
button4=instance_find(obj_button4,0);
button5=instance_find(obj_button5,0);
button6=instance_find(obj_button6,0);

buttons=ds_grid_create(1,4);

for(var i=0;i<ds_grid_height(buttons);i++){
	for(var j=0;j<ds_grid_width(buttons);j++){
		buttons[# i,j]=-1;
	}
}

buttons2=ds_grid_create(2,1);

for(var i=0;i<ds_grid_height(buttons2);i++){
	for(var j=0;j<ds_grid_width(buttons2);j++){
		buttons2[# i,j]=-1;
	}
}

ds_grid_set(buttons,0,0,button1);
ds_grid_set(buttons,0,1,button2);
ds_grid_set(buttons,0,2,button3);
ds_grid_set(buttons,0,3,button4);

ds_grid_set(buttons2,0,0,button5);
ds_grid_set(buttons2,1,0,button6);
global.selected=button1;



