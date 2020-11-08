/// @description Insert description here
// You can write your code in this editor

hspd+=fhspd;vspd+=fvspd;
collision_check(hspd,vspd);
hspd-=fhspd;vspd-=fvspd;
fhspd=0;fvspd=0;


if(hurtbox!=undefined){
	//hurtbox.hitted=false

	hurtbox.x=x+hurtboxD_x;
	hurtbox.y=y+hurtboxD_y;
}
if(hitbox!=undefined){
	if(!instance_exists(hitbox)){
	hitbox=undefined;
	}
	hitbox.hitting=false;
	hitbox.push_back=false;
	hitbox.x=x+hitboxD_x;
	hitbox.y=y+hitboxD_y;
}

hitstun--;
hitstun=max(hitstun,0);
movestun--;
movestun=max(movestun,0);
