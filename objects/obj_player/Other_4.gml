/// @description Insert description here
// You can write your code in this editor

if(!layer_exists("Player")){
	layer_create(450, "Player");
}
layer=layer_get_id("Player");
//The objects following player
hurtbox=instance_create_layer(x,y,"Boxes",obj_hurtbox);
hurtbox.owner=id;
hurtbox.side=side;
with(hurtbox){image_xscale=.7;image_yscale=1.5;}

if(!instance_exists(fire)){fire=instance_create_layer(x,y,"Instances",obj_effect_fire);fire.visible=false;}
if(!instance_exists(fire2)){fire2=instance_create_layer(x,y,"Instances",obj_effect_fire);fire2.visible=false;fire2.sprite_index=spr_flame;}
//I don't really want to do that, but bugs keeps happening
hitbox=undefined;

//apply the change in position
fhspd=dX;
fvspd=dY;

if(!global.inGame){instance_destroy();exit;}
else{
if(obj_gameManager.manager.world==0)
{instance_destroy();instance_create_layer(x,y,"Player",obj_player_real);exit;}
}