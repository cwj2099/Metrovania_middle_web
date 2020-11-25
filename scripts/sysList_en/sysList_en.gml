function sysList_en(argument0) {
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
			ds_grid_add(list,0,0,"Press L to dash in any direction. Press L during a jump to get higher");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 004:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Hold S then press K to drop through platforms");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 005:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press SPACE or W to interact");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 006:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"The game is still a demo so don't expect to find a treasure here");


			ds_grid_add(list,2,0,spr_avatar_blank);
		

			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 007:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press J repetitively to attack!");
		
			ds_grid_add(list,2,0,spr_avatar_blank);
		

			ds_grid_add(list,1,0,spr_player);
		
			return(list);
		break;
	
		case 008:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Double Jump unlocked");
			ds_grid_add(list,0,0,"Now you can perform a double jump by pressing K twice");

		
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);		

			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 009:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press L to dash through dangerous objects and absorb enemy's attack");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;	
	
		case 010:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Your energy level rises as long as you keep attacking enemies, increasing your damage output");	
	

			ds_grid_add(list,2,0,spr_avatar_sign);	
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
	 	case 011:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Getting hit and dashing cause you to lose energy");
		

			ds_grid_add(list,2,0,spr_avatar_blank);
		

			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;


		case 012:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Energy is also gradually lost over time");
		

			ds_grid_add(list,2,0,spr_avatar_blank);
		

			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;

		case 013:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Some enemies do not stagger easily. Don't go head to head!");	

			return(list);
		break;
	
		case 014:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,0,"Dashing at perfect timing absorbs damage and awards you with temporary extra energy");	
	

			return(list);
		break;
	
		case 015:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Attack them to lower their posture bar and stagger them!");	
	


			return(list);
		break;
	
		case 016:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Wings unlocked");	
			ds_grid_add(list,0,0,"Hold W while in air to glide");	
	
			return(list);
		break;
	
		case 017:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"Fever Double Kick unlocked!");	
			ds_grid_add(list,0,1,"Press U to perform a double kick!");
			ds_grid_add(list,0,0,"Thhe power of double kick depends on your energy level");
	
			return(list);
		break;
	
		case 018:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,3,"Fist Dance unlocked!");
			ds_grid_add(list,0,2,"Hold W then press J to perform an uppercut");
			ds_grid_add(list,0,1,"Hold S while in air then press J to perform a smash attack");
			ds_grid_add(list,0,0,"Tap A or D twice then press J to perform a dash punch");
		
			return(list);
		break;
		
		case 019:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Fist Dance breaks the enemies' posture faster");	
	


			return(list);
		break;
		
		case 020:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"You can perform Fist Dance at any time during your normal attack to pour damage upon your opponents!");	
	


			return(list);
		break;
		
		case 021:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"Portals can teleport you between the reality and the inner world");	
			ds_grid_add(list,0,1,"You can also teleport to other portals that have been activated");	
			ds_grid_add(list,0,0,"But you need to find the portals first in order to activate them");	


			return(list);
		break;

		case 022:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Press ENTER to open the map, the red mark indicates where you are in the inner world");	


			return(list);
		break;
		
		case 023:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"A new clue has been added. Check it in the Clue menu");	


			return(list);
		break;
		
		case 024:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"This is just a Demo, the out side world is still waiting to be built");	


			return(list);
		break;
		
	}


}
