/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

side=0;//neutral side

spd_walk=2;
spd_run=10;

mHp=1300;
Hp=mHp;
mSp=300;
Sp=mSp;
mSsp=mSp/4;
ssp=mSsp;
facing=sign(image_xscale);
player=undefined;
search=500;
critical=false;

grav=0.7;

steel=true;
hurtbox=instance_create_layer(x,y,"Instances",obj_hurtbox);
hurtbox.owner=id;hurtbox.side=side;
hurtbox.image_xscale=2.4;
hurtbox.image_yscale=3;