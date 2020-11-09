/// @description Insert description here
// You can write your code in this editor
interactable=place_meeting(x,y,obj_player);

//if player triggered the switch
if(interactable&&(global.input_up_p||global.input_ok)){
	status=true;
	write("player_hp",10);
	write("player_mp",max(2,load("player_mp")));
	write("respawn",room);
	write("spawn",0);
	ds_map_secure_save(global.save_data,global.file_name);
}

