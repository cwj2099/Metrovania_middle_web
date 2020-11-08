/// @description Insert description here
// You can write your code in this editor

image_xscale=facing;


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

	sprite_index=spr_player_real;
	image_angle=facing*90;
}
else if(status==states.neutral){

	if(onGround||onPlatform){
		land=min(land+1,9);
		if((land<9&&hspd==0)||(land<5&&hspd!=0)){
			//if(sprite_index!=spr_player_land){image_index=0;}
			//sprite_index=spr_player_land;
		}
		else{
			if(hspd!=0){
				if(!global.input_left_d&&!global.input_right_d){
					//if(sprite_index!=spr_player_stop){image_index=0;}
					//sprite_index=spr_player_stop;
					image_speed=2;
				}
				else{
					//if(sprite_index!=spr_player_run){image_index=0;}
					//sprite_index=spr_player_run
					image_speed=1.5;
				}
				//if(!running){sprite_index=spr_player_walk;}
				//else{sprite_index=spr_player_run;}
			}
			else{
				image_speed=1;
				//sprite_index=spr_player;
			}
		}
	}
	else{
		land=0;
		if(rising){
			//show_debug_message("rising");
			//if(sprite_index!=spr_player_launch){image_index=0;}
			//sprite_index=spr_player_launch
		}
		else{
			//show_debug_message("not rising");
			//if(sprite_index!=spr_player_rise){image_index=0;}
			//sprite_index=spr_player_rise;
		}
		
	}
	

}

else if(status==states.gliding){
	shadowing=true;
	//sprite_index=spr_player_rise;
}


/*else if(status==states.attack1){

	if(action_status==aStates.startUp){sprite_index=spr_player_repare_punch;image_index=0;}
	else if(action_status==aStates.duration){sprite_index=spr_player_attack_punch;image_index=0;}
	else{sprite_index=spr_player_repare_punch;image_index=1;}
}

else if(status==states.attack2){

	if(action_status==aStates.startUp){sprite_index=spr_player_repare_punch;image_index=1;}
	else if(action_status==aStates.duration){sprite_index=spr_player_attack_punch;image_index=1;}
	else{sprite_index=spr_player_repare_punch;image_index=0;}
}

else if(status==states.attack3){

	if(action_status==aStates.startUp){sprite_index=spr_player_repare_punch;image_index=2;}
	else if(action_status==aStates.duration){sprite_index=spr_player_attack_punch;image_index=2;}
	else{sprite_index=spr_player;image_index=0;}
}

else if(status==states.upper_cut){
	shadowing=true;
	if(action_status==aStates.startUp){sprite_index=spr_player_repare_punch;image_index=2;}
	else if(action_status==aStates.duration){sprite_index=spr_player_attack_punch;image_index=2;}
	else{sprite_index=spr_player_repare_punch;image_index=0;}
}

else if(status==states.beat_down){
	shadowing=true;
	if(action_status==aStates.startUp){sprite_index=spr_player_repare_punch;image_index=3;}
	else if(action_status==aStates.duration||action_status=aStates.recovery){sprite_index=spr_player_attack_punch;image_index=3;}
}


else if(status==states.dash_attack){
	shadowing=true;

	if(action_status==aStates.startUp){sprite_index=spr_player_repare_punch;image_index=1;}
	else if(action_status==aStates.duration){sprite_index=spr_player_attack_punch;image_index=4;}
	else{sprite_index=spr_player_repare_punch;image_index=0;}
}

else if(status==states.special2){

	if(action_status==aStates.startUp){sprite_index=spr_player_repare;image_index=0;}
	else if(action_status==aStates.duration){sprite_index=spr_player_attack;image_index=0;}
	else{sprite_index=spr_player_repare;image_index=0;}
}


if(status==states.special1){
	shadowing=true;
	if(action_status==aStates.startUp){sprite_index=spr_player_repare_punch;image_index=0;}
	else if(action_status==aStates.duration){sprite_index=spr_player_attack_punch;image_index=5;}
	else{sprite_index=spr_player;image_index=0;}
}

else if(status==states.roll){

	if(action_status!=aStates.recovery){sprite_index=spr_player_roll;}
	if(action_status==aStates.startUp){image_index=0;}
}

*/





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
//if(charge==29){effect_create_above(ef_ring,x,y,1,c_red);}
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

