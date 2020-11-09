function sysList_cn(argument0) {
	var ID=argument0;
	var list=ds_grid_create(4,1);
	switch(ID){
	
		case 000:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"重生点更新");
		
			return(list);
		break;
	
		case 001:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"按A键与D键进行移动");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 002:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"按K键跳跃，长按能跳的更高");	
	

			ds_grid_add(list,2,0,spr_avatar_sign);	
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 003:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"使用L键和方向键进行闪避，在空中使用来进一步飞跃");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 004:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"按住S的同时按跳跃键能从平台上落下");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 005:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"按空格键或者W与物品进行交互");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
		
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
		case 006:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"由于这只是个DEMO。所以不要期待这里藏了个宝箱");


			ds_grid_add(list,2,0,spr_avatar_blank);
		

			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 007:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"连按J键进行攻击！");
		
			ds_grid_add(list,2,0,spr_avatar_blank);
		

			ds_grid_add(list,1,0,spr_player);
		
			return(list);
		break;
	
		case 008:
			ds_grid_resize(list,4,2)
			ds_grid_add(list,0,1,"二段跳解锁");
			ds_grid_add(list,0,0,"你可以在空中再跳一次了");

		
			ds_grid_add(list,2,1,spr_avatar_blank);
			ds_grid_add(list,2,0,spr_avatar_blank);		

			ds_grid_add(list,1,1,spr_avatar_blank);
			ds_grid_add(list,1,0,spr_avatar_blank);
		
			return(list);
		break;
	
		case 009:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"闪避具有无敌，非常适合用来规避攻击");
		
			ds_grid_add(list,2,0,spr_avatar_sign);
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;	
	
		case 010:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"随着攻击命中，玩家热度会上升进而提高伤害！");	
	

			ds_grid_add(list,2,0,spr_avatar_sign);	
			ds_grid_add(list,1,0,spr_avatar_blank);
			return(list);
		break;
	
	 	case 011:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"而挨打和使用闪避则会降低热度");
		

			ds_grid_add(list,2,0,spr_avatar_blank);
		

			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;


		case 012:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"热度也会随着时间的流逝逐渐降低");
		

			ds_grid_add(list,2,0,spr_avatar_blank);
		

			ds_grid_add(list,1,0,spr_player_real);
		
			return(list);
		break;

		case 013:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"有些敌人具有霸体，不要和他们硬碰硬");	

			return(list);
		break;
	
		case 014:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,0,"如果在恰到好处的时候闪避了攻击，热度会不减反增");	
	

			return(list);
		break;
	
		case 015:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"不过使用攻击消减他们的霸体槽会让他们受创甚至眩晕！");	
	


			return(list);
		break;
	
		case 016:
			ds_grid_resize(list,4,1)
			ds_grid_add(list,0,0,"在空中按着W能进行滑行！");	
	
			return(list);
		break;
	
		case 017:
			ds_grid_resize(list,4,3)
			ds_grid_add(list,0,2,"强力二连踢解锁！");	
			ds_grid_add(list,0,1,"按U键消耗热度使用二连踢");
			ds_grid_add(list,0,0,"二连踢的威力与热度息息相关");
	
			return(list);
		break;
	
		case 018:
			ds_grid_resize(list,4,4)
			ds_grid_add(list,0,3,"特殊攻击解锁！");
			ds_grid_add(list,0,2,"按住W再按J使出上勾拳");
			ds_grid_add(list,0,1,"空中按住S再按J使出下砸拳");
			ds_grid_add(list,0,0,"连按A或者D两下再按J使出冲刺拳");
		
			return(list);
		break;

	}


}
