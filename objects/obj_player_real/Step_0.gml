/// @description Insert description here
// You can write your code in this editor


//if back to manual, remove this object
mask_index=spr_player_real;




doubleJump=false;
player_movement();
if(global.input_right_d&&global.input_left_d){facing=facing;}
else if(global.input_left_d){facing=-1;}
else if(global.input_right_d){facing=1;}

hspd+=fhspd;vspd+=fvspd;
collision_check(hspd,vspd);
hspd-=fhspd;vspd-=fvspd;
fhspd=0;fvspd=0;

hitstun--;
hitstun=max(hitstun,0);
movestun--;
movestun=max(movestun,0);



