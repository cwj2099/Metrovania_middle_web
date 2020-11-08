function swordsman_action() {
	switch(status){
		case states.dizzy:
			hspd=0;
			if(movestun==-1){movestun=60;}
			else if(movestun==0){status=states.neutral;}
		break;
		case states.attack1:
			swordsman_slash();
		break;
	
		case states.attack2:
			swordsman_stab();
		break;
	
		case states.attack3:
			swordsman_uppercut();
		break;
	
		case states.attack4:
			swordsman_spin();
		break;
	
		case states.alert:
			hspd=0;
			if(movestun==-1){movestun=20;}
			else if(movestun==0){status=states.neutral;}
		break;
	
		case states.pre1:
			swordsman_pre_slash();
		break;
	
		case states.pre2:
			swordsman_pre_stab();
		break;
	
		case states.pre3:
			swordsman_pre_uppercut();
		break;
	
		case states.pre4:
			swordsman_pre_spin();
		break;
	}



}
