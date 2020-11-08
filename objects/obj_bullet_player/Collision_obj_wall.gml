/// @description Insert description here
// You can write your code in this editor
instance_destroy();

var effect=instance_create_layer(x,y,"Boxes",deathAni);
if(direction==0){effect.dir=1;}
else{effect.dir=-1;}
effect.push=attack/5;