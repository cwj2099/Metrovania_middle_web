/// @description Insert description here
// You can write your code in this editor
player=instance_find(obj_player,0);
//show_debug_message(player);
if(respawn!=noone&&respawn.status){
	respawn.status=false;
	messaging=true;
	dia=000;
}