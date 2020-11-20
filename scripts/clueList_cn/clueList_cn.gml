function clueList_cn(argument0) {
	var ID=argument0;
	var list=ds_grid_create(4,1);//0 is title 1 is image 1, 2 is content, 3 is image 2 

	switch(ID){
		case 999:
			list[# 0,0]="未收集";
			list[# 1,0]=spr_avatar_blank;
			list[# 2,0]="什么信息都还没收集到的样子 ";
			list[# 3,0]=spr_avatar_blank;
		break;
		case 000:
			list[# 0,0]="我";
			list[# 1,0]=spr_player_real;
			list[# 2,0]="我自己什么都记不清了，根据周围的人的描述，我是一个警察，有着能够读心的超能力。而我现在正是在运用这份能力破案。不过读心比我想像的麻烦啊，居然有一个如此复杂的精神世界要探索";
			list[# 3,0]=spr_player_real;
		break;
	
		case 001:
			list[# 0,0]="助理";
			list[# 1,0]=spr_npc_1;
			list[# 2,0]="本体是一个第三区的学者。住在我家的是他远程操控的机器助手。似乎是为了研究我的能力以及治疗我经常失忆的毛病才来这里的。同时他也会经常帮助我进行探案。你问我第三学区是什么？我也想不起来了啊。";
			list[# 3,0]=spr_npc_1;
		break;
	
		case 002:
			list[# 0,0]="局长";
			list[# 1,0]=spr_npc_4;
			list[# 2,0]="好像是我的上司，不过我最在意的还是他操控金属的能力，好炫酷啊。听说这个能力本质是操控电磁什么什么的，不太懂这些。可能我的知识也随着失忆丢失了？";
			list[# 3,0]=spr_npc_4;
		break;
	
		case 003:
			list[# 0,0]="馆长";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="没想到他在马桶里藏了机密文件，怪不得在马桶失窃后显得如此慌张。现在我们要从他的几个交易对象开始调查了！";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 004:
			list[# 0,0]="大停电";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="他们说，之前发生了一场全都市范围的大停电，所有安保设施都暂时失灵。与此同时大量犯罪行为同时爆发了。原本趋于零的犯罪率一日之间飙升。";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 005:
			list[# 0,0]="马桶失窃";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="他们喊我调查的案子，明明还没从失忆恢复啊！说是21世纪博物馆的马桶展品被偷走了。21世纪博物馆似乎是我们这个复古区的招牌之一，展品失窃是很可怕的事情。";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 006:
			list[# 0,0]="能力报告书";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="'记录了有关你们这群老冰棍的能力的各种信息，总之是不能然你们自己随便看的东西不然会出大事的'，助理是这样给我描述的。原来馆长把这玩意儿藏在了马桶里起来打算拍卖给其他超能力者啊";
			list[# 3,0]=spr_npc_5;
		break;
		
		
		case 007:
			list[# 0,0]="boss1";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="不需要翻译";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 008:
			list[# 0,0]="boss2";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="不需要翻译";
			list[# 3,0]=spr_npc_5;
		break;
		
		case 009:
			list[# 0,0]="boss3";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="不需要翻译";
			list[# 3,0]=spr_npc_5;
		break;
	}

	return(list);


}
