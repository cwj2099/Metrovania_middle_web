/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
image_xscale=facing;

mask_index=spr_ovelMan_idle;

if(hitstun>0){
	sprite_index=spr_ovelMan_hitted;
}
else{
	if(status==states.neutral){
		sprite_index=spr_ovelMan_idle;
	}
	if(status==states.attack1){
		if(sprite_index!=spr_ovelMan_attack){image_index=0;sprite_index=spr_ovelMan_attack;}
	}

}

if(stunned){var sX=irandom_range(-5,5);var sY=irandom_range(-5,5);x+=sX;y+=sY;}

if(global.ePause){image_speed=0;}
else{image_speed=1;}
draw_self();
//draw_outline(1);
if(stunned){draw_solid_color(1.0,1.0,1.0);x-=sX;y-=sY;}