
// Inherit the parent event
event_inherited();

side=-1;//enemy side

spd=3;



Hp=10;
facing=sign(image_xscale);
player=undefined;
search=500;


hurtbox=instance_create_layer(x,y,"Boxes",obj_hurtbox);
hurtbox.owner=id;hurtbox.side=side;
hurtbox.image_xscale=1;
hurtbox.image_yscale=1;