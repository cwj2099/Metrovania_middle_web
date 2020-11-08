/// @description Insert description here
// You can write your code in this editor

if(!layer_exists("Player")){
	layer_create(450, "Player");
}
layer=layer_get_id("Player");
//The objects following player


//I don't really want to do that, but bugs keeps happening
hitbox=undefined;

//apply the change in position
fhspd=dX;
fvspd=dY;

if(!global.inGame){instance_destroy();}
else{
if(obj_gameManager.manager.world==1)
{instance_destroy();instance_create_layer(x,y,"Player",obj_player);}
}