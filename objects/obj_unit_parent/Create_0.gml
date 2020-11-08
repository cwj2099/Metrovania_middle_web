hspd=0;
vspd=0;

fhspd=0;
fvspd=0;

steel=false;

hurtbox=undefined;
hitbox=undefined;

hitboxD_x=0;
hitboxD_y=0;

hurtboxD_x=0;
hurtboxD_y=0;

forces=ds_list_create();

movestun=0;
hitstun=0;
stunned=false;
critical=false; 

enum states{
	birth,
	death,
	neutral,
	attack1,
	attack2,
	attack3,
	attack4,
	attack5,
	attack6,
	attack7,
	movement1,
	movement2,
	pre1,
	pre2,
	pre3,
	pre4,
	pre5,
	pre6,
	pre7,
	roll,
	guard,
	alert,
	upper_cut,
	beat_down,
	dash_attack,
	gliding,
	special1,
	special2,
	special3,
	dizzy,
}

status=states.neutral;

enum aStates{
	off,
	startUp,
	duration,
	recovery,
}

action_status=aStates.off;
