/// @description Insert description here
// You can write your code in this editor
alarm_set(0,30);
image_alpha=.5;
player=instance_find(obj_player,0);
sprite_index=player.sprite_index;
image_index=player.image_index;
image_xscale=player.image_xscale;
image_speed=0;
image_blend=c_red;
effect_create_above(ef_ring,x,y,1.5,c_red);
audio_play_sound(rollBlock1,1,false);