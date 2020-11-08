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
			list[# 0,0]="小男孩";
			list[# 1,0]=spr_npc_2;
			list[# 2,0]="一个普通的小男孩,没什么特别的地方。";
			list[# 3,0]=spr_npc_2;
		break;
	
		case 001:
			list[# 0,0]="小女孩";
			list[# 1,0]=spr_npc_3;
			list[# 2,0]="喜欢自己爱猫的小女孩";
			list[# 3,0]=spr_npc_3;
		break;
	
		case 002:
			list[# 0,0]="老爷爷";
			list[# 1,0]=spr_npc_4;
			list[# 2,0]="看上去也有70多岁了的老爷爷";
			list[# 3,0]=spr_npc_4;
		break;
	
		case 003:
			list[# 0,0]="黑衣人";
			list[# 1,0]=spr_npc_5;
			list[# 2,0]="神秘的黑衣人,不愿意透露什么信息的样子";
			list[# 3,0]=spr_npc_5;
		break;
	}

	return(list);


}
