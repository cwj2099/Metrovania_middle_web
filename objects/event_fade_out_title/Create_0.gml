/// @description Insert description here
// You can write your code in this editor
//if(global.inGame){player=instance_find(obj_player,0);}
//else{player=instance_find(obj_player_real,0);}
global.noInput=true;
alarm_set(0,120);
groom=room_square;
audio_sound_gain(global.bgm,0,1000);