/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with(player){
	if(place_meeting(x,y,other.door1)){
		dX=x-other.door1.x;
		dY=y-other.door1.y;
		room_goto(room_sectionA);
		write("spawn",2);
	}
}

if(switch1.status){
	switch1.status=false;
	player.dX=0;player.dY=0;
	room_goto(room_weirdHouse);
	write("spawn",1);
}

//if I collected the cat and haven't read the message yet
if(load("npc_girl_kitty_collected")&&!load("manager_square_dia1_read")){
	write("manager_square_dia1_read",true);
	talking=true;
 
	if(load("npc_girl_dia1_read")){
		dia=10;
	}
	else{
		dia=9;
	}
}

if((dia==018||dia==019)&&dia_counter==1){
	selecting=true;
	op=002;
	

	switch(selection){
	case 1:
		dia=033;
	break;
	
	case 2:
		dia=032;
	break;
	
	case 3:
		dia=031;
	break;
	}

	if(selection!=-1){
		selecting=false;
		talking=true;
		selection=-1;
		dia_counter=-1;
	}
}

