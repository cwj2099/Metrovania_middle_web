/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_xscale=facing*2;
image_yscale=2;

if(alarm_get(5)>0){
	if(hitstun%5==0){effect_create_above(ef_star,x+irandom_range(-20,20),y-60,1,c_yellow);}
	sprite_index=spr_swordsman_staggered;
	image_index=0;
}
else {
	if(status==states.neutral){
		sprite_index=spr_swordsman;
		if(player==undefined){image_speed=0;image_index=0;}
		else{image_speed=.5;}
	}
	
	else if(status==states.attack1){
		sprite_index=spr_swordsman_slash;
		if(action_status==aStates.startUp||action_status=aStates.off){draw_alert();image_index=0;}
			if(action_status==aStates.recovery){image_index=7;;}
	}
	
	else if(status==states.attack2){
	sprite_index=spr_swordsman_stab;
	if(action_status==aStates.startUp||action_status=aStates.off){draw_alert();image_index=0;}
		if(action_status==aStates.recovery){image_index=5;;}
	}
	
	
	else if(status==states.attack3){
	sprite_index=spr_swordsman_uppercut;
	if(action_status==aStates.startUp||action_status=aStates.off){draw_alert();image_index=0;}
		if(action_status==aStates.recovery){image_index=5;}
	}

	else if(status==states.attack4){
	sprite_index=spr_swordsman_spin_alter;
	if(action_status==aStates.startUp||action_status=aStates.off){draw_alert();image_index=0;}
		if(action_status==aStates.recovery){image_index=sprite_get_number(spr_swordsman_spin_alter)-1;}
	}
	
	else if(status==states.pre1){
		sprite_index=spr_swordsman_pre_slash;
		if(action_status==aStates.startUp){image_index=0;}
			if(action_status==aStates.recovery){image_index=sprite_get_number(spr_swordsman_pre_slash)-1;}
	}
	
	else if(status==states.pre2){
		sprite_index=spr_swordsman_pre_stab;
		if(action_status==aStates.startUp){image_index=0;}
			if(action_status==aStates.recovery){image_index=sprite_get_number(spr_swordsman_pre_stab)-1;}
	}
	
	else if(status==states.pre3){
		sprite_index=spr_swordsman_pre_uppercut;
		if(action_status==aStates.startUp){image_index=0;}
			if(action_status==aStates.recovery){image_index=sprite_get_number(spr_swordsman_pre_uppercut)-1;}
	}
	
	else if(status==states.pre4){
		sprite_index=spr_swordsman_pre_spin;
		if(action_status==aStates.startUp){image_index=0;}
			if(action_status==aStates.recovery){image_index=sprite_get_number(spr_swordsman_pre_spin)-1;}
	}

}

if(status==states.alert){draw_sprite(spr_alert,0,x+sprite_width/2,y-sprite_height/2);}
if(critical){draw_outline_red(2);}
if(stunned){var sX=irandom_range(-5,5);var sY=irandom_range(-10,10);x+=sX;y+=sY;}

if(global.ePause){image_speed=0;}
else{image_speed=1;}
draw_self();
draw_outline(1);
if(stunned){draw_solid_color(1.0,1.0,1.0);x-=sX;y-=sY;}