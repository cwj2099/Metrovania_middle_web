function optionList_en(argument0) {
	var ID=argument0;
	var list=ds_grid_create(4,1);//0 is context, the rest are options

	switch(ID){
		case 002:
			list[# 0,0]="昨天发生了什么";
			list[# 1,0]="和你聊聊";
			list[# 2,0]="没什么";
			list[# 3,0]=-1;
		break;
	
		case 003:
			list[# 0,0]="关于机器人";
			list[# 1,0]="关于失忆";
			list[# 2,0]="没什么";
			list[# 3,0]=-1;
		break;
		
		case 004:
			list[# 0,0]="老总";
			list[# 1,0]="老板娘";
			list[# 2,0]="算命先生";
			list[# 3,0]="先就这样吧";
		break;
	}

	return(list);


}
