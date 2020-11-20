/*
This is the gameManager, this object incharges the process from title to game,
as well as the pause of the game. 
This is also going to deal with save and loading datas as well.
*/
window_set_size(1280,720);
input_create();//create the input variables
universal_variables();
record_default();
if(file_exists(global.file_name)){global.save_data=ds_map_secure_load(global.file_name);}

global.bgm=undefined;
global.ePause=false;
global.paused=false; //if the game is pause
global.inGame=false; //if the game is in game or title screen
global.ko=false; //zoom in and slow down switch
global.hitpause=false; //just a hitpause
global.hitpause1=false;
global.hitpause2=false;
global.hitpause3=false;
global.hitpause4=false;
global.hitpause5=false;
global.super=true;
global.noInput=false;
global.machineInput=false;
global.slow=false;
//create the pause object, and deactivate at the beginning
manager=undefined; //storing the current room manager
//pause_obj=instance_find(obj_pauseManager,0);
screenShot=undefined

global.part_systems=ds_list_create();
camera_set_view_size(view_camera[0],640,360);

globalvar Font_button;
globalvar Font_pop;
globalvar Font_level;
Font_button =font_add("NotoSansHans-Regular.otf",12,0, 0, 0, 65535);
Font_pop=font_add("NotoSansHans-Regular.otf",9,0, 0, 0, 65535);
Font_level=font_add("NotoSansHans-Black.otf",20,0,0,0,65535);