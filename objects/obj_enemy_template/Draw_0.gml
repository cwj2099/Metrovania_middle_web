/// @description Insert description here
// You can write your code in this editor
image_xscale=facing;

if(hitstun>0){
	//hitted sprite goes here
}
else {
	if(status==states.neutral){
		//idles goes here
		if(abs(hspd)>0){
			//moving goes here
		}
	}
	else if(status==states.attack1){
		//attack goes here
	}
}
draw_self();