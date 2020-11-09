/// @description Insert description here
// You can write your code in this editor
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



		if(critical){
		Hp-=hurtbox.damage*2;
		ds_queue_enqueue(lHp,hurtbox.damage*2);
		}
		else{
			Hp-=hurtbox.damage;
			ds_queue_enqueue(lHp,hurtbox.damage);
		}
		if(alarm_get(5)<=0&&alarm_get(7)<=0){

			if(critical){
				Sp-=hurtbox.chip*2.5;
				ssp-=hurtbox.chip*2.5;
				ds_queue_enqueue(lSp,hurtbox.chip*2.5);
			}
			else {
				Sp-=hurtbox.chip;
				ssp-=hurtbox.chip;
				ds_queue_enqueue(lSp,hurtbox.chip);
			}

		}
		else{critical=false;}
		Hp=max(Hp,0);
		Sp=max(Sp,0);
		stunned=true;
		alarm_set(4,2);
		if(!steel){hitstun=hurtbox.stun;vspd=0;hspd=0;}
	


