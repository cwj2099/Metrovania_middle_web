/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

mask_index=spr_bandit;
if(hurtbox.hitted){

	if(critical){
	Hp-=hurtbox.damage*2;
	ds_queue_enqueue(lHp,hurtbox.damage*2);
	}
	else{
		Hp-=hurtbox.damage;
		ds_queue_enqueue(lHp,hurtbox.damage);
	}
	if(alarm_get(5)<=0){
		if(critical){
			Sp-=hurtbox.chip*2.5;
			ds_queue_enqueue(lSp,hurtbox.chip*2.5);
		}
		else {
			Sp-=hurtbox.chip;
			ds_queue_enqueue(lSp,hurtbox.chip);
		}
	}
	else{critical=false;}
	Hp=max(Hp,0);
	Sp=max(Sp,0);
	stunned=true;
	alarm_set(4,2);
	if(!steel){hitstun=hurtbox.stun;}
}
if(global.ePause){
	for(var i=0;i<20;i++)
	{alarm_set(i,alarm_get(i)+1);}
	clear_hitbox();exit;
}

if(Hp<=0){
	instance_destroy();
	instance_create_layer(x,y,"Boxes",obj_effect_boom);
	global.hitpause1=true;
	exit;
}

if(Sp==0&&alarm_get(5)<=0){
	alarm_set(5,180);
	global.hitpause1=true;
	hitstun=180;
}
if(alarm_get(5)>0){
	status=states.neutral;
	chain=states.neutral;
	chain_count=0;
	critical=true;
	clear_hitbox();
}


if(hitstun<=0){
	bandit_ai();
	bandit_move();
	bandit_action();
}
else{
	clear_hitbox();
	vspd=0;hspd=0;
	movestun=0;
	status=states.neutral;
}




event_inherited();