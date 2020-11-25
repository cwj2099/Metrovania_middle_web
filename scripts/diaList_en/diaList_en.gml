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
			ds_grid_add(list,0,0,"You: Why is there a cat?");
		
			ds_grid_add(list,2,0,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;	
	
		case 010:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"You: You got the kitty! Time to bring it back");	
	

			ds_grid_add(list,2,0,spr_avatar_blank);	
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;
	
	 	case 011:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,3,"Assitant: You're finally awake");
			ds_grid_add(list,0,2,"Assitant: There was a major robbery yesterday");
			ds_grid_add(list,0,1,"Assitant: We need you to catch those criminals");
			ds_grid_add(list,0,0,"You: Leave it to me");
		
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
			ds_grid_add(list,0,1,"Assitant: It's time to work!");
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
			ds_grid_add(list,0,5,"Friendly boy: Sup bro");
			ds_grid_add(list,0,4,"Friendly boy: Are you looking for something?");
			ds_grid_add(list,0,3,"You: Some answers, yes, do you know what happened yesterday?");
			ds_grid_add(list,0,2,"Friendly boy: I was at school so I don't know the details");
			ds_grid_add(list,0,1,"Friendly boy: but everyone else here on the sqaure seems to know something");
			ds_grid_add(list,0,0,"You: Thanks kid");
		
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
			ds_grid_add(list,0,1,"Friendly boy: Everything's going wrong these days");
			ds_grid_add(list,0,0,"You: True, but there's still hope");
		

			ds_grid_add(list,2,1,spr_npc_2);
			ds_grid_add(list,2,0,spr_avatar_blank);


			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);

		
			return(list);
		break;
	
		case 020:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"Sad girl: Oh my little kitty!");
			ds_grid_add(list,0,5,"You: What happened?");
			ds_grid_add(list,0,4,"Sad girl: I can't find my little kitty!");
			ds_grid_add(list,0,3,"You: Don't worry, I'll find your kitty");
			ds_grid_add(list,0,2,"Sad girl: Really? You are so nice!");
			ds_grid_add(list,0,1,"Sad girl: I'll provide you some information if you find my kitty, Mr detective");
			ds_grid_add(list,0,0,"You (in mind): How does she know that I'm a detective?");
		
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
			ds_grid_add(list,0,1,"Sad girl: Bring my kitty back and I'll give you some information");
			ds_grid_add(list,0,0,"You: I'm on it.");
		

			ds_grid_add(list,2,1,spr_npc_3);
			ds_grid_add(list,2,0,spr_avatar_blank);


			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);

		
			return(list);
		break;
	
		case 022:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"Sad girl: Oh my God it's my little kitty!");
			ds_grid_add(list,0,5,"kitty: Meow ~~");
			ds_grid_add(list,0,4,"Happy girl: You saved my kitty, Mr detective!");
			ds_grid_add(list,0,3,"You: I'm happy to see reunions");
			ds_grid_add(list,0,2,"You: So, what information do you have?");
			ds_grid_add(list,0,1,"Happy girl: Hold on, just give us a second");
			ds_grid_add(list,0,0,"You : Sure");
		
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
			ds_grid_add(list,0,6,"Happy girl: Do you see that weird building near the square?");
			ds_grid_add(list,0,5,"You: Yes?");
			ds_grid_add(list,0,4,"Happy girl: Yesterday, I saw a guy in black enter the building in a hurry");
			ds_grid_add(list,0,3,"Happy girl: right after the robbery took place");
			ds_grid_add(list,0,2,"You: I see. That is a very important clue. Thank you");
			ds_grid_add(list,0,1,"Happy girl: It's okay, Mr detective");
			ds_grid_add(list,0,0,"kitty: meow ~~");

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
			ds_grid_add(list,0,4,"old man: What happened yesterday? Ho-ho- kid, it was really bad.");
			ds_grid_add(list,0,3,"old man: In xxx store, there was an assult, and a few people were injured");
			ds_grid_add(list,0,2,"old man: I was there, and someone punched me in my back. It's still hurtin' now");
			ds_grid_add(list,0,1,"old man: But it was too dark, so I didn't catch their face");
			ds_grid_add(list,0,0,"You: Your information is very helpful");

		
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
			ds_grid_add(list,0,1,"old man: A little cat? I just saw one at the end of this street");
			ds_grid_add(list,0,0,"You: Thank you");

		
			ds_grid_add(list,2,1,spr_npc_4);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;
	
		case 026:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,3,"man in black: What are you doing here? You're not supposed to be here");
			ds_grid_add(list,0,2,"You: Do you know what happened yesterday?");
			ds_grid_add(list,0,1,"man in black: Who knows? Why should I answer? Now Get OUT of my SIGHT!")
			ds_grid_add(list,0,0,"You: Hmmmmm");

		
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
			ds_grid_add(list,0,1,"man in black: I said get out of my sight!");
			ds_grid_add(list,0,0,"You: ...");
		
			ds_grid_add(list,2,1,spr_npc_5);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
		
			return(list);
		break;
	
		case 028:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"You (in mind): So he is the person that the girl just mentioned");
			ds_grid_add(list,0,0,"You (in mind): Time to take a look at what trick he's playing in his mind");
		
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_player_real);
		
		
			return(list);
		break;
	
		case 029:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"You: So that's what you look like in here, a zombie?");
			ds_grid_add(list,0,1,"Zombie: AHHHHHHHHHHH");
			ds_grid_add(list,0,0,"You: If you don't calm yourself, I'll help you with that");
		
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
			ds_grid_add(list,0,0,"You: Time to go back to reality");

			ds_grid_add(list,2,0,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);		

			return(list);
		break;
	
		case 031:
			ds_grid_resize(list,4,8)
			ds_grid_add(list,0,7,"You: Wanna talk now?");
			ds_grid_add(list,0,6,"man in black: Yes yes! My friend did it!");
			ds_grid_add(list,0,5,"man in black: And I hid his loots here");
			ds_grid_add(list,0,4,"You: Good. Do you know where your friend is?");
			ds_grid_add(list,0,3,"man in black: Somehere in the backstreet");
			ds_grid_add(list,0,2,"man in black: but I don't know the details");
			ds_grid_add(list,0,1,"You (in mind): The backstreet is too big");
			ds_grid_add(list,0,0,"You (in mind): Maybe I should look for him in the spirit realm");	
		
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
		
		case 041:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"Ok, this seems to be the guy");
			ds_grid_add(list,0,5,"Hello Sir, what were you doing during the blackout?");
			ds_grid_add(list,0,4,"You know, there's always something you can't buy with money");
			ds_grid_add(list,0,3,"Excuse me, sir? I'm asking you a question...");
			ds_grid_add(list,0,2,"I spent 15 years building my empire. It costed me all the wealth I've earned in my life, yet I still can't find IT.");
			ds_grid_add(list,0,1,"(It seems that there's something wrong with this guy)");
			ds_grid_add(list,0,0,"I don't know what you're looking for, but I'm going to get what I want with my fist now");

			ds_grid_add(list,2,6,spr_avatar_blank);
			ds_grid_add(list,2,5,spr_avatar_blank);
			ds_grid_add(list,2,4,spr_npc_5);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_npc_5);
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);

			ds_grid_add(list,1,6,spr_player_real);
			ds_grid_add(list,1,5,spr_player_real);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;
		
		case 042:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"I win. Tell me what you did right now!");
			ds_grid_add(list,0,5,"One cannot buy friendship");
			ds_grid_add(list,0,4,"Good words, but does this have anything to do with what you did during the blackout?");
			ds_grid_add(list,0,3,"I was in the bathroom alone. I didn't expect the blackout. My toilet stopped working because of it.");
			ds_grid_add(list,0,2,"...");
			ds_grid_add(list,0,1,"If I had a friend, he may have already brought me some tissue at that time");
			ds_grid_add(list,0,0,"（No one can lie in the spiritual realm. So he really was stuck in the bathroom for 30 minutes）");

			ds_grid_add(list,2,6,spr_avatar_blank);
			ds_grid_add(list,2,5,spr_npc_5);
			ds_grid_add(list,2,4,spr_avatar_blank);
			ds_grid_add(list,2,3,spr_npc_5);
			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_npc_5);
			ds_grid_add(list,2,0,spr_avatar_blank);

			ds_grid_add(list,1,6,spr_player_real);
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_player_real);
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
			return(list);

			return(list);
		break;
		
		case 043:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"Why are you here?");
			ds_grid_add(list,0,5,"There are things that I want to know");
			ds_grid_add(list,0,4,"You shouldn't be here");
			ds_grid_add(list,0,3,"I guess you're the Prophet. Can you tell me what you were doing during the blackout?");
			ds_grid_add(list,0,2,"We were helping the market conduct micro capital control to maintain the cash flow through compulsory measures. I, the chief officer, controlled the direction of cash flow");
			ds_grid_add(list,0,1,"??? Now I know why my assitant didn't want to explain your ability");
			ds_grid_add(list,0,0,"I'll make you talk like a normal person with my fist");

			ds_grid_add(list,2,6,spr_npc_4);
			ds_grid_add(list,2,5,spr_avatar_blank);
			ds_grid_add(list,2,4,spr_npc_4);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_npc_4);
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);

			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_player_real);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;
		
		case 044:
			ds_grid_resize(list,4,5)

			ds_grid_add(list,0,4,"So, what were you doing?");
			ds_grid_add(list,0,3,"...Collecting protection fee and distribute them to my gang");
			ds_grid_add(list,0,2,"...");
			ds_grid_add(list,0,1,"Guess you're not the one I'm looking for because you can't lie here.");
			ds_grid_add(list,0,0,"But for illegally collecting protection fee, you will go with my partner for further interrogation");


			ds_grid_add(list,2,4,spr_avatar_blank);
			ds_grid_add(list,2,3,spr_npc_4);
			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);


			ds_grid_add(list,1,4,spr_player_real);
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;
		case 045:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"I guess you're the Lady. What were you doing during the blackout?");
			ds_grid_add(list,0,1,"I was working. Why?");
			ds_grid_add(list,0,0,"(There's no lie in the spiritual realm, so she's not the one)");
		
			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_npc_3);
			ds_grid_add(list,2,0,spr_avatar_blank);
			
			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;
		
		case 046:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"No one can lie in spiritual world, no need to ask her again");

		
			ds_grid_add(list,2,0,spr_avatar_blank);

			
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;
		
		case 047:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"I'm tired. Time to go back to reality");

		
			ds_grid_add(list,2,0,spr_avatar_blank);

			
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;
		
		case 048:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"All three collected. Time to go back to reality and report");

		
			ds_grid_add(list,2,0,spr_avatar_blank);

			
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;	
		
		
		case 049:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"Ah, so getting used to that");

		
			ds_grid_add(list,2,0,spr_avatar_blank);

			
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;		
		
		case 050:
			ds_grid_resize(list,4,8)
			ds_grid_add(list,0,7,"You, finally awake");
			ds_grid_add(list,0,6,"Did you get anything useful in the spiritual realm?");
			ds_grid_add(list,0,5,"Nope. The spiritual realm is a maze, I need time to find my way in it.");
			ds_grid_add(list,0,4,"Have you collected all three suspects' information?");
			ds_grid_add(list,0,3,"By suspects do you mean the musuem curator's customers?");
			ds_grid_add(list,0,2,"Yeah, one of them may stole the toilet to avoid it being auctioned to somebody else");
			ds_grid_add(list,0,1,"otherwise it makes no sense for a person to steal that toilet");
			ds_grid_add(list,0,0,"Okay, which one do you want to check?");
			
			ds_grid_add(list,2,7,spr_npc_1);
			ds_grid_add(list,2,6,spr_npc_1);
			ds_grid_add(list,2,5,spr_avatar_blank);
			ds_grid_add(list,2,4,spr_avatar_blank);
			ds_grid_add(list,2,3,spr_npc_1);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,7,spr_avatar_blank);
			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_player_real);
			ds_grid_add(list,1,4,spr_player_real);
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;	
		
		case 051:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"so what should we discuss?");

		
			ds_grid_add(list,2,0,spr_npc_1);

			
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;
		
		case 052:
			ds_grid_resize(list,4,10)
			ds_grid_add(list,0,9,"The Boss, male 35");
			ds_grid_add(list,0,8,"As a rare skilless person in this retro sector, ");
			ds_grid_add(list,0,7,"What do you mean by skilless, everyone else has sort of skill?");
			ds_grid_add(list,0,6,"I don't wnat to repeat this, you retro sector's residenet are mostly people with super power from 21 century");
			ds_grid_add(list,0,5,"Of course, your ablitiy is the unique one");
			ds_grid_add(list,0,4,"Back to the boss, he controlls 2 out of 3 of the companies in the whole sector");
			ds_grid_add(list,0,3,"Surprisingly, apart from commericial corperation, he do not have any contact with other people at all");
			ds_grid_add(list,0,2,"All we know is his eager to expand his estate.");
			ds_grid_add(list,0,1,"Most importantly, when we were invesgeting him, he can not provide alibi at all");
			ds_grid_add(list,0,0,"Of course we do not have any direct evidence that points that he is the criminal, so relying on your ability now!");
		
			ds_grid_add(list,2,9,spr_npc_1);
			ds_grid_add(list,2,8,spr_npc_1);
			ds_grid_add(list,2,7,spr_avatar_blank);
			ds_grid_add(list,2,6,spr_npc_1);
			ds_grid_add(list,2,5,spr_npc_1);
			ds_grid_add(list,2,4,spr_npc_1);
			ds_grid_add(list,2,3,spr_npc_1);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,9,spr_avatar_blank);
			ds_grid_add(list,1,8,spr_avatar_blank);
			ds_grid_add(list,1,7,spr_player_real);
			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;
		
		case 053:
			ds_grid_resize(list,4,8)
			ds_grid_add(list,0,7,"The Lady, 29, female. A physco ability holder like you");
			ds_grid_add(list,0,6,"Does this mean she could enter the spiritual world as well?");
			ds_grid_add(list,0,5,"Relaxed, I've said that you are the unique one. Her ability could only control the 'distance' between each other");
			ds_grid_add(list,0,4,"As the owner of the 'Times' Bar, she got many fans with the help of her look and ability");
			ds_grid_add(list,0,3,"She has very complex information network in this case");
			ds_grid_add(list,0,2,"With the power of firsthand information, she made her bar very successful.");
			ds_grid_add(list,0,1,"According the report, many fans in the bar could provide alibi for her");
			ds_grid_add(list,0,0,"Sadly due to her ability, those fans are not trust worthy. We still want you to investigate her in spiritual world");
		
			ds_grid_add(list,2,7,spr_npc_1);
			ds_grid_add(list,2,6,spr_avatar_blank);
			ds_grid_add(list,2,5,spr_npc_1);
			ds_grid_add(list,2,4,spr_npc_1);
			ds_grid_add(list,2,3,spr_npc_1);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,7,spr_avatar_blank);
			ds_grid_add(list,1,6,spr_player_real);
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;
		
		case 054:
			ds_grid_resize(list,4,8)
			ds_grid_add(list,0,7,"The prophet, Male, age unknow. His ability is...");
			ds_grid_add(list,0,6,"Is what?");
			ds_grid_add(list,0,5,"It is hard to explain. You can take it as prediction with strong restriction");
			ds_grid_add(list,0,4,"The prophet loves to use his ablity to show off on the street");
			ds_grid_add(list,0,3,"Why he's showing off when every one have special ability.");
			ds_grid_add(list,0,2,"With the help of technology, everyone could throw fire balls or fly around. Ability of his kind is obviously more attracting");
			ds_grid_add(list,0,1,"He do not have alibi, actually we did not found him at this moment as well.");
			ds_grid_add(list,0,0,"Counting on you now!");


			ds_grid_add(list,2,7,spr_npc_1);
			ds_grid_add(list,2,6,spr_avatar_blank);
			ds_grid_add(list,2,5,spr_npc_1);
			ds_grid_add(list,2,4,spr_npc_1);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,7,spr_avatar_blank);
			ds_grid_add(list,1,6,spr_player_real);
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;	
		
		case 055:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"All of them have alibis...");
			ds_grid_add(list,0,5,"Then who've stolen the toilet");
			ds_grid_add(list,0,4,"No one apart from them know the things about abiltiy report...");
			ds_grid_add(list,0,3,"Wait, if the crinimal don't know about the report?");
			ds_grid_add(list,0,2,"If the target was not the report but the toilet it self?");
			ds_grid_add(list,0,1,"I need more investigation");
			ds_grid_add(list,0,0,"That's the demo for now, thanks for your playing");

			ds_grid_add(list,2,6,spr_avatar_blank);		    
		    ds_grid_add(list,2,5,spr_avatar_blank);
			ds_grid_add(list,2,4,spr_avatar_blank);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,6,spr_player_real);
			ds_grid_add(list,1,5,spr_player_real);
			ds_grid_add(list,1,4,spr_player_real);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;	
		
		case 056:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,3,"countinue the inverstigation then");
			ds_grid_add(list,0,2,"There's still"+string(3-load("clue_collected"))+"more to inverstigate");
			ds_grid_add(list,0,1,"If you forget what happened, press Enter to check the clues");
			ds_grid_add(list,0,0,"To return to the spiritual world, use the portal there");

		
			ds_grid_add(list,2,3,spr_npc_1);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;	
		
		case 057:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"The Boss was stucked in the bathroom for 30 min");
			ds_grid_add(list,0,1,"That's too bad");
			ds_grid_add(list,0,0,"He's not the one");
		

			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_avatar_blank);


			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;
		
		case 058:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"The Lady had not gone anywhere");
			ds_grid_add(list,0,0,"That's surprsing");
		
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;
		
		case 059:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"The prophet was collecting protection fee!");
			ds_grid_add(list,0,1,"I'll report that");
			ds_grid_add(list,0,0,"But he's not our target");
		

			ds_grid_add(list,2,2,spr_avatar_blank);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_avatar_blank);


			ds_grid_add(list,1,2,spr_player_real);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;	
	}


}
