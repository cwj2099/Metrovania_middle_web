function sysList_cn(argument0) {
	var ID=argument0;
	var list=ds_grid_create(4,1);
	switch(ID){
	
		case 000:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Respawn point updated");
		
			return(list);
		break;
	
		case 001:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press A and D to move around");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 002:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press K to jump, hold K to jump higher");	
	

			ds_grid_add(list,2,0,spr_avatar_sign);	
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 003:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Initial a jump when dashing to jump higher");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 004:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Hold S then press K to drop through the platform");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 005:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"The Stone will be destoryed if you attack");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 006:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Sword Unlocked");
			ds_grid_add(list,0,0,"Press J to attack");
		
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 007:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"Assitant: we finally located the theif");
			ds_grid_add(list,0,1,"Assitant: it should be at xxx street xxx corner");
			ds_grid_add(list,0,0,"You: I see, I'll be there as soon as possible");
		
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player);
		
			return(list);
		break;
	
		case 008:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Double Jump unlocked");
			ds_grid_add(list,0,0,"Press K in the air to perform a Double Jump");

		
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);		

			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 009:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press L to roll through dangerous objects");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;	
	
		case 010:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press K to jump, hold K to jump higher");	
	

			ds_grid_add(list,2,0,spr_avatar_sign);	
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
	 	case 011:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"Assitant: Very bad things happened");
			ds_grid_add(list,0,1,"Assitant: please go and find solution");
			ds_grid_add(list,0,0,"You: I see, I'm doing it now");
		
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;


		case 012:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Assitant: stop wondering around");
			ds_grid_add(list,0,0,"You: I'll looking for solution");
		
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;

		case 013:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Rolling consumes energy (the blue gauge on the top left)");	

			return(list);
		break;
	
		case 014:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,0,"Rolling at perfect timing absorbs damage and awards you with temporary extra energy");	
	

			return(list);
		break;
	
		case 015:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Extra energy is lost over time");	
	


			return(list);
		break;
	
		case 016:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Hold down W while in air to glide to remote platforms");	
	
			return(list);
		break;
	
		case 017:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press L while pressing WASD in any combination to roll in any direction");	
	
			return(list);
		break;
	
		case 018:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Press J / X to attack enemies");
			ds_grid_add(list,0,0,"Press L / RB to avoid enemies's attack");
		
			return(list);
		break;

	}


}
