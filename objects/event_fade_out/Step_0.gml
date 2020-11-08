/// @description Insert description here
// You can write your code in this editor
global.noInput=true;

if(alarm_get(0)>1){
	image_alpha-=0.025;
	player.image_alpha=image_alpha;
}
