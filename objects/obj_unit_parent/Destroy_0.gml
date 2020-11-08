/// @description Insert description here
// You can write your code in this editor
for(var i=0;i<ds_list_size(forces);i++){
	with(forces[|i]){instance_destroy();}
}
if(hurtbox!=undefined){instance_destroy(hurtbox);}
if(hitbox!=undefined){instance_destroy(hitbox);}