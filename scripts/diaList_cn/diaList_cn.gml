function diaList_cn(argument0) {
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
			ds_grid_add(list,0,0,"你：为啥这里有只猫");
		
			ds_grid_add(list,2,0,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;	
	
		case 010:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"你：带到小猫咪了，还给那个女孩吧");	
	

			ds_grid_add(list,2,0,spr_avatar_blank);	
			ds_grid_add(list,1,0,spr_player_real);
			return(list);
		break;
	
	 	case 011:
			ds_grid_resize(list,4,10);
			ds_grid_add(list,0,9,"机器人：太好了，你可算是醒了，这是第几次昏迷了？你是不是又什么都不记得了？");
			ds_grid_add(list,0,8,"你（心声）：第几次昏迷？又？难道我经常昏迷失忆吗？");
			ds_grid_add(list,0,7,"你：是的，我似乎什么都不记得了，你是谁？你是…一个机器人？");
			ds_grid_add(list,0,6,"机器人：果然…你又失忆了…看来我又又又需要自我介绍一遍了...");
			ds_grid_add(list,0,5,"机器人：虽然我知道失忆不是你能控制的，但你也要考虑一下你身边人的感受啊，老是说一样的话也是一种折磨啊。");
			ds_grid_add(list,0,4,"机器人：我不是一个机器人，你现在看到的只是我的一个小发明。");
			ds_grid_add(list,0,3,"机器人：我叫xx，是第三区警局的科研人员，主要负责科研、治疗和后勤。");
			ds_grid_add(list,0,2,"机器人：总之，自从全城大停电之后，各区犯罪率飙升，警局人手一直紧缺，你还是快先回警局一趟吧。");
			ds_grid_add(list,0,1,"机器人：顺便把这次失忆的情况报告给局长，局长会告诉你接下来该怎么做的。");
			ds_grid_add(list,0,0,"机器人：还有什么问题吗？");

			ds_grid_add(list,2,9,spr_npc_1);
			ds_grid_add(list,2,8,spr_avatar_blank);
			ds_grid_add(list,2,7,spr_avatar_blank);
			ds_grid_add(list,2,6,spr_npc_1);
			ds_grid_add(list,2,5,spr_npc_1);
			ds_grid_add(list,2,4,spr_npc_1);
			ds_grid_add(list,2,3,spr_npc_1);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,9,spr_avatar_blank);
			ds_grid_add(list,1,8,spr_player_real);
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


		case 012:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"机器人：快去吧");
			ds_grid_add(list,0,0,"你：明白了");
		
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;

	
		case 018:
			ds_grid_resize(list,4,6)
			ds_grid_add(list,0,5,"男孩：帅哥你好");
			ds_grid_add(list,0,4,"男孩：你在找啥东西吗");
			ds_grid_add(list,0,3,"你：没找啥，但你知道昨天发生了啥吗？");
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
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"男孩：有什么需要问的吗？");
	

			ds_grid_add(list,2,0,spr_npc_2);


			ds_grid_add(list,1,0,spr_avatar_blank);

		
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
	
		case 032:
			ds_grid_resize(list,4,7);
			ds_grid_add(list,0,6,"你：我。。是谁？这是。。在哪里？");
			ds_grid_add(list,0,5,"你：这是，警官证？难道我是个警官？");
			ds_grid_add(list,0,4,"警官证：中心区警局顾问，超能力读心");
			ds_grid_add(list,0,3,"你：超能力？读心？我会读心？");
			ds_grid_add(list,0,2,"你：这儿怎么还有个布偶熊？感觉。。好熟悉。");
			ds_grid_add(list,0,1,"布偶熊");
			ds_grid_add(list,0,0,"你：总觉得好像有什么我必须去做的事。");

			ds_grid_add(list,2,6,spr_player_real);
			ds_grid_add(list,2,5,spr_player_real);
			ds_grid_add(list,2,4,spr_avatar_blank);
			ds_grid_add(list,2,3,spr_player_real);
			ds_grid_add(list,2,2,spr_player_real);
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_player_real);

			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_avatar_blank);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 033:
			ds_grid_resize(list,4,12);
			ds_grid_add(list,0,11,"局长：xx，你可终于回来了，我这里刚好有一个案件需要你去。");
			ds_grid_add(list,0,10,"主角：局长，我醒来后就失忆了，现在什么都不记得了。");
			ds_grid_add(list,0,9,"局长：你又失忆了？这次失忆的时间可有些不巧啊。");
			ds_grid_add(list,0,8,"局长：刚刚警局接到了博物馆的报警电话，说是遗失了重要文物，情况有些棘手，可能还是需要你去调查一下。");
			ds_grid_add(list,0,7,"局长：如果不是特殊时期，我也不会让你刚醒来失忆了还要去办案的，但现在警局人手紧缺，非常需要你。");
			ds_grid_add(list,0,6,"局长：如果抓到了犯罪嫌疑人，记得用你的超能力。");
			ds_grid_add(list,0,5,"主角：超能力？读心吗？我好像记不得怎么用了…");
			ds_grid_add(list,0,4,"主角（心声）：感觉读不了局长的心声啊。。。");
			ds_grid_add(list,0,3,"局长：没事儿的，超能力就像本能一样，当你真正需要的时候一定会想起来的。");
			ds_grid_add(list,0,2,"局长说着就随手吧手边的一支钢笔漂浮起来了，一阵变形后又变了回去。");
			ds_grid_add(list,0,1,"局长：如你所见，我的能力就是控制金属。");
			ds_grid_add(list,0,0,"局长：你先去了解一下情况吧，你是最擅长办案的，说不定办案的过程中你也会想起什么以前的事情。");

			ds_grid_add(list,2,11,spr_npc_5);
			ds_grid_add(list,2,10,spr_avatar_blank);
			ds_grid_add(list,2,9,spr_npc_5);
			ds_grid_add(list,2,8,spr_npc_5);
			ds_grid_add(list,2,7,spr_npc_5);
			ds_grid_add(list,2,6,spr_npc_5);
			ds_grid_add(list,2,5,spr_avatar_blank);
			ds_grid_add(list,2,4,spr_avatar_blank);
			ds_grid_add(list,2,3,spr_npc_5);
			ds_grid_add(list,2,2,spr_npc_5);
			ds_grid_add(list,2,1,spr_npc_5);
			ds_grid_add(list,2,0,spr_npc_5);

			ds_grid_add(list,1,11,spr_avatar_blank);
			ds_grid_add(list,1,10,spr_player_real);
			ds_grid_add(list,1,9,spr_avatar_blank);
			ds_grid_add(list,1,8,spr_avatar_blank);
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
	
		case 034:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"局长：去办案吧，xx");
			ds_grid_add(list,0,0,"你：我马上去");
		
			ds_grid_add(list,2,1,spr_npc_5);
			ds_grid_add(list,2,0,spr_avatar_blank);
		
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;

		case 035: //第一幕 助手option 1
			ds_grid_resize(list,4,8);
			ds_grid_add(list,0,7,"你：等等等等，第三区？刚刚我在警察证上看到的是第一区？");
			ds_grid_add(list,0,6,"机器人：哈哈哈是的，失忆了还是那么敏锐呢。严格来说，我不算你的同事。");
			ds_grid_add(list,0,5,"机器人：各个区之间都有严格的通行管制，第一次听说你是两个区的警局之间举办了一次技术交流的活动。");
			ds_grid_add(list,0,4,"机器人：你知道的，一直以来我都对你的读心能力很感兴趣，我就向上面申请用机器人留在你身边远程辅助你办案。");
			ds_grid_add(list,0,3,"你：所以说我是你的研究对象吗？");
			ds_grid_add(list,0,2,"机器人：哈哈哈话可不能这么说，我俩也算是老搭档了呢。");
			ds_grid_add(list,0,1,"机器人：我给你提供后勤支持，你给我观察你超能力的机会，也算是各取所需了，你们警局可没有我这个级别的科研人员。");
			ds_grid_add(list,0,0,"机器人：还有什么问题吗？");

			ds_grid_add(list,2,7,spr_avatar_blank);
			ds_grid_add(list,2,6,spr_npc_1);
			ds_grid_add(list,2,5,spr_npc_1);
			ds_grid_add(list,2,4,spr_npc_1);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,7,spr_player_real);
			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 036: //第一幕 助手option 2
			ds_grid_resize(list,4,12);
			ds_grid_add(list,0,11,"你：照你刚才说的，我经常失忆吗？");
			ds_grid_add(list,0,10,"机器人：每过一段时间就会，我也不知道你是怎么做到的，但过一段时间你又会慢慢想起来，所以倒也不会影响你日常办案。");
			ds_grid_add(list,0,9,"机器人：我一直在调查你的昏迷失忆的原因，我总感觉失忆前的你是知道自己为什么会失忆的，但是现在你又什么都不记得了。");
			ds_grid_add(list,0,8,"机器人：不过哪怕你不告诉我，我总会自己查出来的，毕竟这一次你失忆的时间点可是刚好在大停电前后啊。");
			ds_grid_add(list,0,7,"你：大停电？");
			ds_grid_add(list,0,6,"机器人：是的，就在几个小时前，发生了全城范围的大停电，这是从来没有发生过，也几乎不可能发生的事情，但就突然这样发生了。");
			ds_grid_add(list,0,5,"机器人：大停电发生时，各区都发生了多起犯罪事件，就仿佛这个停电是一个契机似的，你也刚好失忆了。");
			ds_grid_add(list,0,4,"机器人：我合理地怀疑把你弄失忆的人和这次大停电有关。");
			ds_grid_add(list,0,3,"你：警局有查出大停电的原因吗？");
			ds_grid_add(list,0,2,"机器人：目前还没有，突发的犯罪事件太多，警局快忙不过来了呢。");
			ds_grid_add(list,0,1,"机器人：警局分析说，可能是全城大停电让监控等电子设备停摆，那些犯罪分子就抓住了这个机会，也有可能这是一个大型的团伙犯罪。");
			ds_grid_add(list,0,0,"机器人：还有什么问题吗？");
		
			ds_grid_add(list,2,11,spr_avatar_blank);
			ds_grid_add(list,2,10,spr_npc_1);
			ds_grid_add(list,2,9,spr_npc_1);
			ds_grid_add(list,2,8,spr_npc_1);
			ds_grid_add(list,2,7,spr_avatar_blank);
			ds_grid_add(list,2,6,spr_npc_1);
			ds_grid_add(list,2,5,spr_npc_1);
			ds_grid_add(list,2,4,spr_npc_1);
			ds_grid_add(list,2,3,spr_avatar_blank);
			ds_grid_add(list,2,2,spr_npc_1);
			ds_grid_add(list,2,1,spr_npc_1);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,11,spr_player_real);
			ds_grid_add(list,1,10,spr_avatar_blank);
			ds_grid_add(list,1,9,spr_avatar_blank);
			ds_grid_add(list,1,8,spr_avatar_blank);
			ds_grid_add(list,1,7,spr_player_real);
			ds_grid_add(list,1,6,spr_avatar_blank);
			ds_grid_add(list,1,5,spr_avatar_blank);
			ds_grid_add(list,1,4,spr_avatar_blank);
			ds_grid_add(list,1,3,spr_player_real);
			ds_grid_add(list,1,2,spr_avatar_blank);
			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 037:
			ds_grid_resize(list,4,1);
			ds_grid_add(list,0,0,"机器人：还有什么问题吗");
		
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
		
		case 038:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"年轻警察：好多犯罪要处理...");
		
			ds_grid_add(list,2,0,spr_npc_2);
			
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;	
		
		case 039:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"老警察：啧，这个案子很棘手啊。");
		
			ds_grid_add(list,2,0,spr_npc_4);
			
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
		
		case 040:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"局长助理：局长在后面的办公室等你，快去吧。");
		
			ds_grid_add(list,2,0,spr_npc_1);
			
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
		
		case 041:
			ds_grid_resize(list,4,7)
			ds_grid_add(list,0,6,"找到了，这位貌似是老总");
			ds_grid_add(list,0,5,"你好，请问你大停电期间在做什么");
			ds_grid_add(list,0,4,"你知道吗，有些东西是金钱也没法买到");
			ds_grid_add(list,0,3,"额，先生，请问您大停电时在做什么？");
			ds_grid_add(list,0,2,"我努力了15年建立的帝国，花了无数昼夜，赚取的财产也没法买到");
			ds_grid_add(list,0,1,"（看来他的内心非常抗拒啊，这家伙果然有鬼）");
			ds_grid_add(list,0,0,"我不知道你到底是买不到什么，不过看来我要用拳头获得我想要的东西了~");

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
			ds_grid_add(list,0,6,"我已经战胜你了，老实交代停电的30分钟你在干什么吧");
			ds_grid_add(list,0,5,"金钱是无法换来真挚的友谊的");
			ds_grid_add(list,0,4,"说得好，但这和你停电时在干嘛有啥关系");
			ds_grid_add(list,0,3,"当时我一个人在洗手间，谁知道突然停电了，马桶的清洗功能就失灵了");
			ds_grid_add(list,0,2,"。。。");
			ds_grid_add(list,0,1,"如果我有一位挚友在身边，他一定会为我递上一卷上好的厕纸把");
			ds_grid_add(list,0,0,"（精神界是不存在谎言的，所以他只是被困在了厕所里半小时，又嫌太丢人不敢交代吗）");

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
			ds_grid_add(list,0,6,"你来了？");
			ds_grid_add(list,0,5,"我来了");
			ds_grid_add(list,0,4,"你不该来的");
			ds_grid_add(list,0,3,"咳咳，这位是算命先生对吧，请问大停电的时候你在哪里呢？");
			ds_grid_add(list,0,2,"我们在通过强制性措施帮助市场进行微观资金调控来保持现金流动，而我个人作为总负责人镇守调控中心来控制现金流动的方向");
			ds_grid_add(list,0,1,"。。。我算是明白为什么助理不给我说你能力的全名了");
			ds_grid_add(list,0,0,"我相信拳头会让你说话清楚一点");

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

			ds_grid_add(list,0,4,"所以你们当时到底在干什么？");
			ds_grid_add(list,0,3,"收保护费，然后我给各帮派分钱。");
			ds_grid_add(list,0,2,"。。。");
			ds_grid_add(list,0,1,"行把，这家伙应该不是我的目标了，毕竟这世界说不了谎");
			ds_grid_add(list,0,0,"不过保护费什么的。。。交给其他同事来处理这人把");


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
			ds_grid_add(list,0,2,"这位是老板娘吧，大停电的那段时间，你在做什么");
			ds_grid_add(list,0,1,"我在工作，怎么了");
			ds_grid_add(list,0,0,"精神世界没有谎言，这就排除了一个嫌疑人了。");
		
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
			ds_grid_add(list,0,0,"精神世界没有谎言，没必要再去问她了");

		
			ds_grid_add(list,2,0,spr_avatar_blank);

			
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;
		
		case 047:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"有些累了，回一趟现实报告一下吧");

		
			ds_grid_add(list,2,0,spr_avatar_blank);

			
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;
		
		case 048:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"三个家伙的信息都收集完了，该回去报告了");

		
			ds_grid_add(list,2,0,spr_avatar_blank);

			
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;	
		
		
		case 049:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"啊，果然还是不是很适应");

		
			ds_grid_add(list,2,0,spr_avatar_blank);

			
			ds_grid_add(list,1,0,spr_player_real);

			return(list);
		break;		
		
		case 050:
			ds_grid_resize(list,4,8)
			ds_grid_add(list,0,7,"你终于回来了");
			ds_grid_add(list,0,6,"怎么样？在精神世界里找到什么有用的线索了吗？");
			ds_grid_add(list,0,5,"暂时没有，精神世界毕竟是分散而不规则的，有点麻烦。。之后我还得再去找找");
			ds_grid_add(list,0,4,"之前局长让调查的那三位嫌疑人资料搜集到了吗");
			ds_grid_add(list,0,3,"你说的嫌疑人是指馆长的三个拍卖客户吗？");
			ds_grid_add(list,0,2,"的确，可能正是某一位为了避开拍卖直接抢到资料才趁着大停电下手了");
			ds_grid_add(list,0,1,"不然我实在是不能理解为什么会有人在这种时候偷了一个马桶走");
			ds_grid_add(list,0,0,"来吧，你要查看谁的资料？");
			
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
			ds_grid_add(list,0,0,"要讨论关于谁的事呢");

		
			ds_grid_add(list,2,0,spr_npc_1);

			
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;
		
		case 052:
			ds_grid_resize(list,4,10)
			ds_grid_add(list,0,9,"老总，男，39岁");
			ds_grid_add(list,0,8,"作为复古区里罕见的普通人，却控制着整个西城的经济命脉");
			ds_grid_add(list,0,7,"等等，罕见的普通人是什么意思，其他人都不普通吗");
			ds_grid_add(list,0,6,"我不是说过了吗，你们复古区的主体人口都是你这样的21世纪的超能力者");
			ds_grid_add(list,0,5,"当然，你的能力是特别的");
			ds_grid_add(list,0,4,"回归正题，老总暗地里控制着西城三分之二以上的公司，可谓是一个金融天王");
			ds_grid_add(list,0,3,"意外的是，除了商业合作以外，他和他人的接触非常之少。");
			ds_grid_add(list,0,2,"我们对他的了解也仅限于他强烈的扩张欲望");
			ds_grid_add(list,0,1,"重要的是，对于警察的询问，他拿不出不在场证明且避而不答");
			ds_grid_add(list,0,0,"当然我们也没有任何他参与了这场盗窃的直接证据，所以得靠你的能力了");
		
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
			ds_grid_add(list,0,7,"老板娘，女，29岁，三大天王之一，超能力是少见的精神系，你的同伴哦");
			ds_grid_add(list,0,6,"等等，她也能进入精神世界吗？");
			ds_grid_add(list,0,5,"放轻松，我说过你是独一无二的，她能做到的只是一定程度上操控好感度");
			ds_grid_add(list,0,4,"老板娘作为南城最大酒吧“Time”的老板，因为颜值高和超能力的原因，她舔狗众多");
			ds_grid_add(list,0,3,"她有着非常广阔的人脉，也因此把握着众多情报");
			ds_grid_add(list,0,2,"凭借着情报的力量，她也把自己的人设与酒吧的生意都做的红红火火");
			ds_grid_add(list,0,1,"根据警局的报告，酒吧里有很多人可以为她提供不在场证明");
			ds_grid_add(list,0,0,"可惜的是这些人证都是舔狗，不能取信，你还是去不能撒谎的精神世界调查一下把");
		
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
			ds_grid_add(list,0,7,"算命先生，男，年龄不详，东街混混中的杠把子，超能力是...");
			ds_grid_add(list,0,6,"是啥？");
			ds_grid_add(list,0,5,"专业术语有点复杂，我觉得你也听不懂，总之就是能做到一定程度的预测把");
			ds_grid_add(list,0,4,"算命先生常年徘徊在东城街头靠摆摊算命为生，爱好是人前显圣");
			ds_grid_add(list,0,3,"明明都是超能力者，还是想显得高人一等吗？");
			ds_grid_add(list,0,2,"只是喷个火或者飞行一下的话纳米战服也能做到，这年头这种功能性更强的能力的确更吃香");
			ds_grid_add(list,0,1,"他并没有不在场证明，不如说他人在哪里我们都还没找到");
			ds_grid_add(list,0,0,"就拜托你去调查了");


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
			ds_grid_add(list,0,6,"这三个人全都有不在场证明啊。。");
			ds_grid_add(list,0,5,"那么究竟是谁偷走了马桶呢？");
			ds_grid_add(list,0,4,"除了这三位之外，应该没有人能提前得知消息并进行偷窃了。。");
			ds_grid_add(list,0,3,"等等！如果犯人压根就不知道马桶里面还有东西呢？");
			ds_grid_add(list,0,2,"如果他的本来目的就是马桶本身而不是里面的超能力手册呢？");
			ds_grid_add(list,0,1,"我好像漏掉了点什么。。再去博物馆一趟吧。");
			ds_grid_add(list,0,0,"本次的Demo到这里就结束了，感谢大家的支持！");

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
			ds_grid_add(list,0,3,"那你先继续在精神界调查把");
			ds_grid_add(list,0,2,"现在还有"+string(3-load("clue_collected"))+"个人没调查呢");
			ds_grid_add(list,0,1,"如果忘记了发生过什么，请按Enter进入线索菜单查看哦");
			ds_grid_add(list,0,0,"要回到精神世界的话，请使用床旁边的传送门");

		
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
			ds_grid_add(list,0,2,"老总那30分钟在厕所里");
			ds_grid_add(list,0,1,"。。。那还真是可怜啊");
			ds_grid_add(list,0,0,"看来嫌疑犯应该不是他");
		

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
			ds_grid_add(list,0,1,"老板娘哪里都没去");
			ds_grid_add(list,0,0,"以意外的只是个老实人啊");
		
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_npc_1);

			ds_grid_add(list,1,1,spr_player_real);
			ds_grid_add(list,1,0,spr_avatar_blank);

			return(list);
		break;
		
		case 059:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"算命先生停电时跑去收保护费了呢");
			ds_grid_add(list,0,1,"我会汇报给你的上级的，其他人会收拾他的");
			ds_grid_add(list,0,0,"不过他不是我们的目标呢");
		

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
