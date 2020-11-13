/// @description Insert description here
// You can write your code in this editor
player=instance_find(obj_player,0);
if(!instance_exists(player)){instance_destroy();}
else{
x=player.x;
y=player.y;
}
/*
if(player.level==3){
	sprite_index=spr_fire_level3
}

else if(player.level==2){
	sprite_index=spr_fire_level2;
}
else if(player.level==1){
	sprite_index=spr_fire_level1;
}*/