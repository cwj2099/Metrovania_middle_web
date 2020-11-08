/// @description Insert description here
// You can write your code in this editor


//if back to manual, remove this object
mask_index=spr_player;



if(hurtbox!=undefined&&hurtbox.hitted){
	vspd=0;hspd=0;
	global.hitpause3=true;
	write("player_hp",load("player_hp")-hurtbox.damage);
	write("player_mp",load("player_mp")-hurtbox.damage/2);
	hitstun=hurtbox.stun+5;
	hurtbox.status=false;
	alarm_set(1,hitstun);
}

if(hitstun<=0){
	player_movement();
	player_action();
}
else{
	if(hitbox!=undefined){instance_destroy(hitbox);hitbox=undefined;}

	movestun=0;
	status=states.neutral;
	
	vspd+=global.gForce;
	vspd=min(vspd,global.gMax);
}

event_inherited();


if((status==states.neutral||status==states.gliding||status=states.roll)&&hitstun<=0){inBattle=max(inBattle-1,0);}
else{inBattle=180;}

if(inBattle<=0&&!(level==0&&load("player_mp")==0)){write("player_mp",load("player_mp")-0.1);write("player_hp",load("player_hp")+0.02);}
if(load("player_mp")>10&&level!=3){
	write("player_mp",0);level+=1;
	//instance_create_layer(x,y,"Boxes",obj_effect_shadow2);
}
if(load("player_mp")<0&&level!=0){write("player_mp",10);level-=1;}

if(load("player_hp")>10){
	write("player_hp",10);
}

if(load("player_mp")>10){
	write("player_mp",10);
}

if(load("player_hp")<0){
	write("player_hp",0);
}

if(load("player_mp")<0){
	write("player_mp",0);
}

level=max(level,0);
level=min(level,3);

switch(level){
	case 0: damage_scaling=1; break;
	case 1: damage_scaling=1.2; break;
	case 2: damage_scaling=1.3; break;
	case 3: damage_scaling=1.5; break;
}