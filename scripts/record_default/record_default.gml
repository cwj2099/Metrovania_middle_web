function record_default() {
	global.save_data=ds_map_create();
	global.file_name="SaveData.sav";

	write("started",false);
	/////////////////////
	//Player Abillity and status
	/////////////////////
	write("player_hp",10);
	write("player_mp",10);

	write("attack_switch",true);
	write("attack_type",true);

	write("roll_enable",true);
	write("doubleJump_switch",true);

	write("room",room_player_test);//initial room
	write("world",0);//real world is 0, while fiction world is 1
	write("spawn",2);//spawn point is respawn
	write("respawn",room_player_test);

	//////////////////////
	//Map Changes
	/////////////////////
	write("stone_room1_1_1",true);
	write("stone_room1_1_2",true);
	write("stone_room1_8_1",true);


}
