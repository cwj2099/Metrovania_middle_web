function diaList_en(argument0) {
	var ID=argument0;
	var list=ds_grid_create(4,1);
	switch(ID){
	
		case 000:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Respawn point updated");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
			ds_grid_add(list,1,0,spr_avatar_blank);
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
			ds_grid_add(list,0,0,"You: Why there's a cat");
		
			ds_grid_add(list,2,0,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;	
	
		case 010:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"You: got the kitty, time to bring it back");	
	

			ds_grid_add(list,2,0,spr_avatar_blank);	
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;
	
	 	case 011:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,3,"Assitant: You, finally awake");
			ds_grid_add(list,0,2,"Assitant: A major rubbery accured yesterday");
			ds_grid_add(list,0,1,"Assitant: Now it's your time to catch those criminals");
			ds_grid_add(list,0,0,"You: I see, I'll do the job");
		
			ds_grid_add(list,2,3,spr_npc_1);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;


		case 012:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Assitant: it's working time");
			ds_grid_add(list,0,0,"You: I AM working");
		
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
			ds_grid_resize(list,4,6)
			ds_grid_add(list,0,5,"Friendly boy: Hi, bro");
			ds_grid_add(list,0,4,"Friendly boy: Are u looking for something?");
			ds_grid_add(list,0,3,"You: nothing special, but do you know what happened yesterday");
			ds_grid_add(list,0,2,"Friendly boy: I was in school so I don't know the details");
			ds_grid_add(list,0,1,"Friendly boy: but every one else here on the sqaure seems to know something");
			ds_grid_add(list,0,0,"You: thanks bro");
		
			ds_grid_add(list,2,5,spr_npc_2);
			ds_grid_add(list,2,4,spr_npc_2);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_npc_2);
			ds_grid_add(list,2,1,spr_npc_2);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;
	
		case 019:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Friendly boy: every thing's going bad these days");
			ds_grid_add(list,0,0,"You: true, but there's still hope");
		

			ds_grid_add(list,2,1,spr_npc_2);
			ds_grid_add(list,2,0,spr_avatar_blank);


			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);

		
			return(list);
		break;
	
		case 020:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"Sad girl: Oh my little kitty");
			ds_grid_add(list,0,5,"You: what happened?");
			ds_grid_add(list,0,4,"Sad girl: I can't find my little kitty!");
			ds_grid_add(list,0,3,"You: no worries, I'll find it");
			ds_grid_add(list,0,2,"Sad girl: Really? You are so nice!");
			ds_grid_add(list,0,1,"Sad girl: I'll provide you some information in exchange, Mr detective");
			ds_grid_add(list,0,0,"You (in mind): how do her know that I'm a detective");
		
			ds_grid_add(list,2,6,spr_npc_3);
			ds_grid_add(list,2,5,spr_avatar_blank);
			ds_grid_add(list,2,4,spr_npc_3);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_npc_3);
			ds_grid_add(list,2,1,spr_npc_3);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_player_real);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;
	
		case 021:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Sad girl: brings kitty back and I'll give you some information");
			ds_grid_add(list,0,0,"You: doing it now, no rush");
		

			ds_grid_add(list,2,1,spr_npc_3);
			ds_grid_add(list,2,0,spr_avatar_blank);


			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);

		
			return(list);
		break;
	
		case 022:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"Sad girl: Oh my God it's kitty");
			ds_grid_add(list,0,5,"kitty: mew ~~");
			ds_grid_add(list,0,4,"happy girl: You saved me! Mr detective!");
			ds_grid_add(list,0,3,"You: I'm glad to see reunions");
			ds_grid_add(list,0,2,"You: So, what's the information you have?");
			ds_grid_add(list,0,1,"happy girl: hold on, just give us a second");
			ds_grid_add(list,0,0,"You : sure");
		
			ds_grid_add(list,2,6,spr_npc_3);
			ds_grid_add(list,2,5,spr_avatar_blank);
			ds_grid_add(list,2,4,spr_npc_3);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_npc_3);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_kitty);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;
	
		case 023:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"happy girl: as you can see, there weird building beside the sqaure");
			ds_grid_add(list,0,5,"You: yes?");
			ds_grid_add(list,0,4,"happy girl: yesterday, I saw a guy in black enterred the building in rush");
			ds_grid_add(list,0,3,"happy girl: just after the rubbery happened");
			ds_grid_add(list,0,2,"You: I see, that is very important, thank you");
			ds_grid_add(list,0,1,"happy girl: it's ok, Mr detective");
			ds_grid_add(list,0,0,"kitty: mew ~~");

			ds_grid_add(list,2,6,spr_npc_3);
			ds_grid_add(list,2,5,spr_avatar_blank);
			ds_grid_add(list,2,4,spr_npc_3);
			ds_grid_add(list,2,3,spr_npc_3);
			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_npc_3);
			ds_grid_add(list,2,0,spr_kitty);
		
			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_player_real);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_avatar_blank);		
			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);		
		
			return(list);
		break;
	
		case 024:
			ds_grid_resize(list,4,5)
			ds_grid_add(list,0,4,"old man: what happened yesterday? It was pretty bad");
			ds_grid_add(list,0,3,"old man: in xxx store, there was the assult, and people were injured");
			ds_grid_add(list,0,2,"old man: I was there, and some one punched me");
			ds_grid_add(list,0,1,"old man: but it was too dark, and I didn't catch their face");
			ds_grid_add(list,0,0,"You: your information is very helpful");

		
			ds_grid_add(list,2,4,spr_npc_4);
			ds_grid_add(list,2,3,spr_npc_4);
			ds_grid_add(list,2,2,spr_npc_4);
			ds_grid_add(list,2,1,spr_npc_4);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;
	
		case 025:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"old man: cat? I've saw one in the right");
			ds_grid_add(list,0,0,"You: thank you");

		
			ds_grid_add(list,2,1,spr_npc_4);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;
	
		case 026:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,3,"Man in Black: what are you doing here, it's not your place");
			ds_grid_add(list,0,2,"You: do you know what happened yesterday?");
			ds_grid_add(list,0,1,"Man in Black: who knows? Now Get out of my SIGHT!")
			ds_grid_add(list,0,0,"You: Emmmmm");

		
			ds_grid_add(list,2,3,spr_npc_5);
			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_npc_5);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
		
			return(list);
		break;
	
		case 027:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"Man in Black: I said get out of my sight!");
			ds_grid_add(list,0,0,"You: sure sure");
		
			ds_grid_add(list,2,1,spr_npc_5);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
		
			return(list);
		break;
	
		case 028:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"You (in mind): so he is the one the girl just mentioned");
			ds_grid_add(list,0,0,"You (in mind): time to get into his mind");
		
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_player_real);
		
		
			return(list);
		break;
	
		case 029:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"You: so that's what you looks here, a zombie?");
			ds_grid_add(list,0,1,"Zombie: ahhhhhhhhhh");
			ds_grid_add(list,0,0,"You: if you don't calm down your self, I'll help you with that");
		
			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_zombie);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,2,spr_player_real);		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
		
			return(list);
		break;
	
		case 030:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"You: time to go back to reality");

			ds_grid_add(list,2,0,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);		

			return(list);
		break;
	
		case 031:
			ds_grid_resize(list,4,8)
			ds_grid_add(list,0,7,"You: wana talk now?");
			ds_grid_add(list,0,6,"Man in black: sure, my friend attended an rubbery");
			ds_grid_add(list,0,5,"Man in black: and I hide his rewards here");
			ds_grid_add(list,0,4,"You: good, do you know where your friend is?");
			ds_grid_add(list,0,3,"Man in black: somehere in the back yard streed");
			ds_grid_add(list,0,2,"Man in black: but don't know the details");
			ds_grid_add(list,0,1,"You (in mind): backyard streed is too big");
			ds_grid_add(list,0,0,"You (in mind): maybe I should find him in the fiction world ");	
		
			ds_grid_add(list,2,7,spr_avatar_blank);
			ds_grid_add(list,2,6,spr_npc_5);
			ds_grid_add(list,2,5,spr_npc_5);
			ds_grid_add(list,2,4,spr_avatar_blank);
			ds_grid_add(list,2,3,spr_npc_5);
			ds_grid_add(list,2,2,spr_npc_5);
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);

			ds_grid_add(list,1,7 ,spr_player_real);
			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_player_real);
			ds_grid_add(list,1,3,spr_avatar_blank);		
			ds_grid_add(list,1,2,spr_avatar_blank);	
			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;
	}


}
