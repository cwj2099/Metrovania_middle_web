/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
type="title";

button1=instance_find(obj_button1,0);
button2=instance_find(obj_button2,0);

buttons=ds_grid_create(2,1);

for(var i=0;i<ds_grid_width(buttons);i++){
	for(var j=0;j<ds_grid_height(buttons);j++){
		buttons[# i,j]=-1;
	}
}

ds_grid_set(buttons,0,0,button1);
ds_grid_set(buttons,1,0,button2);



global.selected=button1;



