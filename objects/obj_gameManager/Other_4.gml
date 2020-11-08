/*
This event is mainly fo initial lize things in new rooms
some specific things will be here as well
*/

if(!layer_exists("Managers")){
	layer_create(0, "Managers");
}

if(!layer_exists("Pause0")){
	layer_create(200, "Pause0");
}
if(!layer_exists("Pause1")){
	layer_create(200, "Pause1");
}

if(!layer_exists("Pause2")){
	layer_create(201, "Pause2");
}

if(!layer_exists("Pause3")){
	layer_create(202, "Pause3");
}

if(!layer_exists("Pause4")){
	layer_create(203, "Pause4");
}

if(!layer_exists("Pause5")){
	layer_create(204, "Pause5");
}

if(!layer_exists("Pause6")){
	layer_create(205, "Pause6");
}

if(!layer_exists("Boxes")){
	layer_create(400, "Boxes");
}
if(!layer_exists("Instances")){
	layer_depth("Instances",500);
}
if(layer_exists("Background")){
	layer_depth("Background",600);
}

self.layer=layer_get_id("Managers");//put self input manager layer
camera_set_view_size(view_camera[0],640,360);
window_set_size(640,360);
if (!view_enabled){
   view_visible[0] = true;
   view_enabled = true;
}

//find the manager
manager=instance_find(obj_manager_parent,0);
show_debug_message("Swithing manager");
//figure out if it's in game state or now
if(manager.type="game"){
	//entering game
	if(!global.inGame){
		global.noInput=true;
		global.ePause=true;
		alarm_set(1,60);
		alarm_set(4,60);
		//write("player_hp",10);
		write("player_mp",2);
	}
	global.inGame=true;
	camera_set_view_target(view_camera[0],obj_player);
	camera_set_view_border(view_camera[0],320,180);
	//create the  pause object in new room if this is a game room
	write("room",room);
	
	ds_map_secure_save(global.save_data,global.file_name);
}
else{
	global.inGame=false;
}

//wanning if the manager do not exist
if(string(manager)<0){
	show_debug_message("Missing Room Manager!");
}

////////////////////////////////////
//specific things in spefici room
///////////////////////////////////
/*
switch(manager.object_index){
}
*/