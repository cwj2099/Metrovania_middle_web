/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(global.ePause){image_speed=0;}
else{image_speed=1;}
image_xscale=facing;

if(hitstun>0){
	if(hitstun%5==0){effect_create_above(ef_star,x+irandom_range(-20,20),y-60,1,c_yellow);}
	sprite_index=spr_knight;
	image_index=0;
}
else {
	if(status==states.neutral){
		sprite_index=spr_knight;
		image_index=0;
	}
	else if(status==states.attack1){
		sprite_index=spr_knight_strik;
		if(action_status==aStates.startUp){draw_alert();image_index=0;}
		else if(action_status==aStates.duration){image_index=1;}
		else if(action_status==aStates.recovery){image_index=2;}
		
		
	}
	
	else if(status==states.attack2){
		sprite_index=spr_knight_kick;
		if(action_status==aStates.startUp){draw_alert();image_index=0;}
		else if(action_status==aStates.duration){image_index=1;}
		else if(action_status==aStates.recovery){image_index=2;}
		
		
	}
}

//draw alert icon
if(status==states.alert){draw_sprite(spr_alert,0,x+sprite_width/2,y-sprite_height/2);}
if(stunned){var sX=irandom_range(-5,5);var sY=irandom_range(-5,5);x+=sX;y+=sY;}
if(critical){draw_outline_red(2);}

draw_self();
draw_outline(1);
if(stunned){draw_solid_color(1.0,1.0,1.0);x-=sX;y-=sY;}

