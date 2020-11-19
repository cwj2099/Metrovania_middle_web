/// @description Insert description here
// You can write your code in this editor


with(player){
	if(load("spawn")==0){
		x=other.respawn.x;
		y=other.respawn.y;
		instance_create_layer(x,y,layer,event_fade_in);
	}
	else if(load("spawn")==1){
		x=other.spawn1.x;
		y=other.spawn1.y;
		
	}
	else if(load("spawn")==2){
		x=other.spawn2.x;
		y=other.spawn2.y;	
	}
	else if(load("spawn")==3){
		x=other.spawn3.x;
		y=other.spawn3.y;
		
	}
	else if(load("spawn")==4){
		x=other.spawn4.x;
		y=other.spawn4.y;
		
	}
}