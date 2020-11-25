function clueList_en(argument0) {
	var ID=argument0;
	var list=ds_grid_create(4,1);//0 is title 1 is image 1, 2 is content, 3 is image 2 

	switch(ID){
		case 999:
			list[# 0,0]="Empty";
			list[# 1,0]=spr_avatar_blank;
			list[# 2,0]="It seems that you haven't collected any clue yet";
			list[# 3,0]=spr_avatar_blank;
		break;
		case 000:
			list[# 0,0]="Me";
			list[# 1,0]=spr_player_real;
			list[# 2,0]="I can't remember anything. From what I heard, I am a psychic cop who can read people's mind. Now I am using my psychic power to solve a bizarre case. But man this power is complicated! Who'd have thought that I'd have to explore in such a gigantic spiritual world!";
			list[# 3,0]=spr_player_real;
		break;
	
		case 001:
			list[# 0,0]="Assistant";
			list[# 1,0]=spr_npc_1;
			list[# 2,0]="His corporeal identity is a scholar from the third zone. The guy in my house seems to be his remote-control robot. It seems that it was placed in my house to cure my amnesia and investigate my ability. He often helps me with my case, too. What is the third zone, you ask? I can't remember either.";
			list[# 3,0]=spr_npc_1;
		break;
	
		case 002:
			list[# 0,0]="Commander of Detective Bureau";
			list[# 1,0]=spr_npc_4;
			list[# 2,0]="I think he's my boss. But what interests me more is his ability to bend and control metal. I heard his ability is to somehow control the magnetic field but ugh... way beyond my knowledge! Perhaps I lost my knowledge along with my memory.";
			list[# 3,0]=spr_npc_4;
		break;
	
		case 003:
			list[# 0,0]="Museum Curator";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="I can't believe he hid the documents in the toilet... No wonder he looked anxious when the toilet was stolen. Time to find out who he traded with.";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 004:
			list[# 0,0]="The blackout";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="People say that there was a huge blackout that spanned across the entire city and all security systems went down. Crime rate skyrocketed in a single day.";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 005:
			list[# 0,0]="The stolen toilet";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="They asked me to solve this case but I don't even have my memory! It seems that someone stole the toilet from the 21 Century Museum. The 21 Century Musuem is ths city's most famous landmark. Theft from this musuem is going to create a huge turmoil.";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 006:
			list[# 0,0]="Power reports";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="'They contain data recorded about the powers of you lots. Anyways, these are documents you don't want to fool around with'，this is how the assistant described them. Ha, so the curator was planning on selling these to other power wielders.";
			list[# 3,0]=spr_npc_5;
		break;
		
		
		case 007:
			list[# 0,0]="The Boss";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="Was locked in a bathroom during the black out, very sorry about that";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 009:
			list[# 0,0]="The Prophet";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="was collecting protection fee during the black out by playing with his ability。would he be the cause of the chaos in East city?";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 008:
			list[# 0,0]="The Lady";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="was staying in her bar all the time during the black out，not likely to be the one as well";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 010:
			list[# 0,0]="spiritual world";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="a virtual maze full of monster, and I'm the only one who could enter。Assitant says that most monsters there are just made of physco fragement. But all human beings have their representation there as well. No one could lie there, even if some one there resist ot speak, I could forced them to do taht. This ability seems to be the reason that I became a police. But this is really the power to read mind?";
			list[# 3,0]=spr_npc_5;
		break;
	}

	return(list);


}
