/// @description Insert description here
// You can write your code in this editor

image_xscale=facing;

if(level>2){fire.visible=true;}else{fire.visible=false;}
if(level>1){fire2.visible=true}else{fire2.visible=false;}
if(level>0){draw_outline_color(3,1,0,0);draw_outline_color(2,1,.5,0);}
else{draw_outline_color(2,1,.5,0);}

if(shadowing){
	for(var i=0;i<5;i++){
		var shadow=instance_create_depth(x,y,depth+1,obj_afterEffect);
		shadow.sprite_index=sprite_index;
		shadow.image_index=image_index;
		shadow.image_xscale=image_xscale;
		shadow.image_yscale=image_yscale;
		shadow.owner=id;
		with(shadow){alarm_set(0,10);}
	}
}
shadowing=false;
if(status==states.birth){

	sprite_index=spr_player_birth;
}
else if(status==states.death){

	sprite_index=spr_player_death;

}
else if(status==states.neutral){

	if(onGround||onPlatform){
		land=min(land+1,9);
		if((land<9&&hspd==0)||(land<5&&hspd!=0)){
			if(sprite_index!=spr_player_land){image_index=0;}
			sprite_index=spr_player_land;
		}
		else{
			if(hspd!=0){
				
				//if no longer inputss
				if(!global.input_left_d&&!global.input_right_d){
					if(abs(hspd)>=3.9){image_index=0;sprite_index=spr_player_stop;show_debug_message("fast enought")}
					if(sprite_index!=spr_player_stop){sprite_index=spr_player}
					else{sprite_index=spr_player_stop;}
				}
				else{
					if(sprite_index!=spr_player_run){image_index=0;}
					sprite_index=spr_player_run
				}
				//if(!running){sprite_index=spr_player_walk;}
				//else{sprite_index=spr_player_run;}
			}
			else{
				if(inBattle>0){sprite_index=spr_player_battle;}
				else{sprite_index=spr_player;}
			}
		}
	}
	else{
		land=0;
		if(vspd<0){
			//show_debug_message("rising");
			
			if(!doubleJump){
				if(sprite_index!=spr_player_launch){image_index=0;}
				sprite_index=spr_player_launch;
			}
			else{
				if(sprite_index!=spr_player_jump){image_index=0;}
				sprite_index=spr_player_jump;
			}
		}
		else{
			//show_debug_message("not rising");
			if(sprite_index!=spr_player_rise){image_index=0;}
			sprite_index=spr_player_rise;
		}
		
	}
	

}

else if(status==states.gliding){
	shadowing=true;
	sprite_index=spr_player_rise;
}


else if(status==states.attack1){

	if(sprite_index!=spr_player_attack1){image_index=0;}
	sprite_index=spr_player_attack1;
	//if(action_status==aStates.startUp){image_index=0;}
	//if(action_status==aStates.duration&&movestun<11){image_index=3;}
	//if(action_status==aStates.recovery){image_index=sprite_get_number(spr_player_attack1)-1;}
}

else if(status==states.attack2){

	if(sprite_index!=spr_player_attack2){image_index=0;}
	sprite_index=spr_player_attack2;
	//if(action_status==aStates.recovery){image_index=sprite_get_number(spr_player_attack2)-1;}
}

else if(status==states.attack3){

	if(sprite_index!=spr_player_attack3){image_index=0;}
	sprite_index=spr_player_attack3;
}

else if(status==states.upper_cut){
	//shadowing=true;
	if(sprite_index!=spr_player_upper_cut){image_index=0;}
	sprite_index=spr_player_upper_cut;
	//if(action_status==aStates.recovery||action_status==aStates.duration){image_index=sprite_get_number(spr_player_upper_cut)-1;}
}

else if(status==states.beat_down){
	//shadowing=true;
	if(sprite_index!=spr_player_smash_down){image_index=0;}
	sprite_index=spr_player_smash_down;
	if(action_status==aStates.duration){image_index=2;}
	//if(action_status==aStates.recovery){image_index=sprite_get_number(spr_player_smash_down)-1;}
}


else if(status==states.dash_attack){
	//shadowing=true;

	if(sprite_index!=spr_player_dash_attack){image_index=0;}
	sprite_index=spr_player_dash_attack;
//	if(action_status==aStates.duration){image_index=sprite_get_number(spr_player_dash_attack)-2;}
	//if(action_status==aStates.recovery){image_index=sprite_get_number(spr_player_dash_attack)-1;}
}

else if(status==states.special2){

	if(action_status==aStates.startUp){sprite_index=spr_player_repare;image_index=0;}
	else if(action_status==aStates.duration){sprite_index=spr_player_attack;image_index=0;}
	else{sprite_index=spr_player_repare;image_index=0;}
}


if(status==states.special1){
	shadowing=true;
	
	if(sprite_index!=spr_player_fly_kick){image_index=0;}
	sprite_index=spr_player_fly_kick;
	//if(action_status==aStates.startUp){sprite_index=spr_player_repare_punch;image_index=0;}
	//else if(action_status==aStates.duration){sprite_index=spr_player_attack_punch;image_index=5;}
	//else{sprite_index=spr_player;image_index=0;}
}

else if(status==states.roll){
	shadowing=true;
	sprite_index=spr_player_rise;
	//if(action_status!=aStates.recovery){sprite_index=spr_player_roll;}
	//if(action_status==aStates.startUp){image_index=0;}
}



if(alarm_get(1)>0){
	image_alpha=.5;
}
else{image_alpha=1;}

if(hitstun>0){
	sprite_index=spr_player_hitted;
}

//draw_sprite_ext(spr_cape,0,x,y,image_xscale,1,0,c_white,1);
draw_outline(1);
draw_self();

/*
if(charge>0&&charge_light==undefined){
	charge_light=instance_create_layer(x,y,"Boxes",obj_charge);
}
if(charge==0){if(charge_light!=undefined){instance_destroy(charge_light);charge_light=undefined;}}

if(charge==130&&charge_ball==undefined){
	charge_ball=instance_create_layer(x,y,"Boxes",obj_charged);
}
if(charge<130){if(charge_ball!=undefined){instance_destroy(charge_ball);charge_ball=undefined;}}
*/
if(charge==29){effect_create_above(ef_ring,x,y,1,c_red);}
//shader_reset();

/*
//part_flame_eye();
var mana=load("player_mp");

for(var i=1;i<=(mana div 2);i++){
	if(mana-2*i<2&&mana-2*i>0){
		//show_debug_message(mana mod 2);
		draw_sprite_part(spr_magic_stone,0,0,26*((mana mod 2)/2),24,26*((mana mod 2)/2),x-90+30*(i+1)-12,y-60-13);
	}
	
	draw_sprite(spr_magic_stone,0,x-90+30*i,y-60);
	
	
}
*/

