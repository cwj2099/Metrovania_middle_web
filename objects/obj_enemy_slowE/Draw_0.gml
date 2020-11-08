/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
image_xscale=facing;

mask_index=slowE_neutral;

if(hitstun>0){
	sprite_index=slowE_hitted;
}
else{
	if(status==states.neutral){
		sprite_index=slowE_neutral;
	}
	if(status==states.pre1){
		sprite_index=slowE_pre_attack;
	}
	if(status==states.attack1){
		if(sprite_index!=slowE_attack){image_index=0;sprite_index=slowE_attack;}
		if(action_status==aStates.recovery){image_index=2;}
	}
	if(status==states.movement1){
		sprite_index=slowE_retreat;
	}
}

if(stunned){var sX=irandom_range(-5,5);var sY=irandom_range(-5,5);x+=sX;y+=sY;}

if(global.ePause){image_speed=0;}
else{image_speed=1;}
draw_self();
//draw_outline(1);
if(stunned){draw_solid_color(1.0,1.0,1.0);x-=sX;y-=sY;}