/// @description Insert description here
// You can write your code in this editor
x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

//locating buttons and backgrounds
back=instance_find(obj_pBackground,0);
back2=instance_find(obj_pBackground2,0);

button1=instance_find(obj_Pbutton1,0);button1.persistent=true;
button2=instance_find(obj_Pbutton2,0);button2.persistent=true;
button3=instance_find(obj_Pbutton3,0);button3.persistent=true;

buttons=ds_grid_create(1,3);

for(var i=0;i<ds_grid_width(buttons);i++){
	for(var j=0;j<ds_grid_height(buttons);j++){
		buttons[# i,j]=-1;
	}
}

ds_grid_set(buttons,0,0,button1);
ds_grid_set(buttons,0,1,button2);
ds_grid_set(buttons,0,2,button3);

global.Pselected=button1;
Mselected=piece001;
update_clues();
detail=false;

//some location varaibales
mX=409-320;
mY=223-180;

rX=0;
rY=0;


world=0;


