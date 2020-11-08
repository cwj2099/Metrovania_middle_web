function bandit_action() {
	switch(status){
		case states.dizzy:
			hspd=0;
			if(movestun==-1){movestun=60;}
			else if(movestun==0){status=states.neutral;}
		break;
		case states.attack1:
			bandit_slash();
		break;
	
		case states.attack2:
			bandit_execute();
		break;
	
		case states.attack3:
			bandit_groundsmash();
		break;
	
		case states.attack4:
			bandit_airspin();
		break;
	
		case states.alert:
			hspd=0;
			if(movestun==-1){movestun=20;}
			else if(movestun==0){status=states.neutral;}
		break;
	
		case states.pre1:
			bandit_pre_slash();
		break;
	
		case states.pre2:
			bandit_pre_execute();
		break;
	
		case states.pre3:
			bandit_pre_groundsmash();
		break;
	
		case states.pre4:
			swordsman_pre_spin();
		break;
	}



}
