/// @description Insert description here
// You can write your code in this editor

image_xscale=-.5*facing;
image_yscale=.5;

if(hitstun>0){
	sprite_index=spr_mosquito;
	image_index=0;
}
else {
	if(status==states.neutral){
		if(player==undefined)
		{
			if(place_meeting(x,y,obj_wall))
				{
				sprite_index=spr_mosquito_rest;
				}
				image_speed=0.5;
		}
		else{sprite_index=spr_mosquito;image_speed=1;}
	}
	else if(status==states.attack1){
		sprite_index=spr_mosquito;
		if(action_status==aStates.startUp){draw_alert();}
		
		
	}
}

if(status==states.alert){draw_sprite(spr_alert,0,x+sprite_width/2,y-sprite_height/2);}

if(stunned){var sX=irandom_range(-5,5);var sY=irandom_range(-5,5);x+=sX;y+=sY;}

if(global.ePause){image_speed=0;}
else{image_speed=1;}
draw_self();
draw_outline(1);
if(stunned){draw_solid_color(1.0,1.0,1.0);x-=sX;y-=sY;}