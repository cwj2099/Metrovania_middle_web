
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
punches=2;
charge=0;
status=states.neutral;
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



