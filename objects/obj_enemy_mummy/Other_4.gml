/// @description Insert description here
// You can write your code in this editor
hurtbox=instance_create_layer(x,y,"Boxes",obj_hurtbox);
hurtbox.owner=id;hurtbox.side=side;
hurtbox.image_xscale=2.8;
hurtbox.image_yscale=3.4;

particle=instance_create_layer(0, 0, "Instances", obj_fireParticleEffect);
particle.owner=id;

