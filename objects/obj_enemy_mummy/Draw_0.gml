event_inherited();

image_xscale=facing;
if(global.ePause){image_speed=0;}
else{image_speed=1;}
if(critical){draw_outline_red(3);}
if(stunned){var sX=irandom_range(-5,5);var sY=irandom_range(-5,5);x+=sX;y+=sY;}

draw_self();
draw_outline(1);
if(stunned){draw_solid_color(1.0,1.0,1.0);x-=sX;y-=sY;}

if(hitstun>0){
if(hitstun%5==0){effect_create_above(ef_star,x+irandom_range(-20,20),y-60,1,c_yellow);}
 if(hurtbox.hitted){}
 else {}
}

else {
 if(status==states.neutral){
	 
  if(player==undefined){}
  
 }
 
 else if(status==states.attack1){
	 
  if(action_status!=aStates.recovery)
  {draw_sprite_ext(spr_flame_sword,0,x+lengthdir_x(40,dir),y+lengthdir_y(40,dir),2,2,90+dir,c_white,1);}
  
  if(action_status==aStates.startUp){draw_alert();}
 
  
  
 }
 
  else if(status==states.attack2){
  
  if(action_status==aStates.startUp){
	  draw_sprite_ext(spr_deathorb_birth,0,x,y,2-(movestun)/40,2-(movestun/40),0,c_white,1);
	  draw_alert();
	 }
 
  
  
 }
 
}

