/// @function                       create_hitbox(owner,damage,stun,side,life,push,dx,dy,scalex,scaley);
/// @param {object}    owner       The owner of this hitbox
/// @param {float}   damage		 The damage of this hitbox
/// @param {float}   stun	  The stun of this hitbox
/// @param {int}   side	  The side of this hitbox
/// @param {int}   life	  The life span of the hitbox
/// @param {array}   push	The push data of the 
/// @param {float}   dx		  The x distance from center
/// @param {float}   dy		  The y distance from center
/// @param {float}   scalex		  The xscale of the box
/// @param {float}   scaley		  The yscale from center
function create_hitbox(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	var owner=argument0;
	var damage=argument1;
	var stun=argument2;
	var side=argument3;
	var life=argument4;
	var push=argument5;
	var dx=argument6;
	var dy=argument7;
	var scalex=argument8;
	var scaley=argument9;

	var hitbox=instance_create_layer(x+dx,y+dy,"Boxes",obj_hitbox);

	hitbox.owner=owner;
	hitbox.attack=damage;
	hitbox.stun=stun;
	hitbox.side=side;
	hitbox.push_data=push;
    
	owner.hitboxD_x=dx;
	owner.hitboxD_y=dy;
	with(hitbox){
		alarm_set(0,life);
		if(other.hurtbox!=undefined){ds_list_add(white_list,owner.hurtbox);}
		image_xscale=scalex;image_yscale=scaley;
	}

	return hitbox;


}
