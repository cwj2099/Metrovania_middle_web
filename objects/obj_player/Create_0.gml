
// Inherit the parent event
event_inherited();

//////////////////////
//Spawn
dX=0;
dY=0;//the differences in x and y when enter a door

/////////////////////
//Movement

//the moving driection of the object every step
spd_run=5;//the running speed
spd_walk=3;//the walk speed
running=false;//if running

//jumping switches
onGround=false;//if player is allowed to jump
onPlatform=false;
doubleJump=true; 

lastGround=true;

jspd=0;//jump speed
iniJs=5;//initial jump speed
maxJs=10;
iniDs=0;//initial falling speed
accJs=1;//jump speed acceleration
maxH=10;//maximum jump duration
iniH=0;//initial jumping frame
rising=false;//if the player is rising 


/////////////////////////
//Action
punches=3;
roll=false;
flyKick=false;
charge=0;
status=states.birth;
movestun=-1;
side=1;//player siade
facing=1;//the facing of the player, different from the moving direction
chain=undefined;//some times the same condition will triggers different move according to chain
floating=false;//hitting to float
inBattle=0;
upperCut=false;
dashAttack=false;
dirDouble=0;
land=9;

double_tap=15;//the max differences between setps for a double_tap check
buffer=10;//the steps chases foward to 

//draw
shadowing=false;
charge_light=undefined;
charge_ball=undefined;

hurtboxD_x=0;
hurtboxD_y=10;

//hurtbox creation
hurtbox=instance_create_layer(x,y,"Boxes",obj_hurtbox);
hurtbox.owner=id;
hurtbox.side=side;
with(hurtbox){image_xscale=.7;image_yscale=1.5;}

//head system
level=0;
enforced=false;
damage_scaling=1;
if(object_index==obj_player){fire=instance_create_layer(x,y,"Instances",obj_effect_fire);fire.visible=false;fire.player=id;
fire2=instance_create_layer(x,y,"Instances",obj_effect_fire);fire2.visible=false;fire2.sprite_index=spr_flame;fire2.player=id}

//birth pause
global.noInput=true;
global.ePause=true;
with(obj_gameManager){alarm_set(1,60);alarm_set(4,60);}

