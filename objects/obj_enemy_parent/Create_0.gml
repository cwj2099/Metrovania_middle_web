/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
facing=sign(image_xscale);

Hp=10
Sp=10;
mHp=10;
mSp=10;
lHp=ds_queue_create();
lSp=ds_queue_create();
chain=states.neutral;
chain_count=0;
critical=true;
mSsp=mSp/4;
ssp=mSsp;
search=100;
player=undefined;
onGround=false;
onPlatform=false;