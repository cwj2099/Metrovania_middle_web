function stoolDestroyer_action() {

	if(status==states.pre1){
			stoolDestroyer_pre_slash();
	}
			
	if(status==states.attack1){
			stoolDestroyer_slash();
	}

	if(status==states.pre2){
			stoolDestroyer_pre_beam();
	}
			
	if(status==states.attack2){
			stoolDestroyer_beam();
	}

	if(status==states.pre3){
			stoolDestroyer_pre_stab();
	}
			
	if(status==states.attack3){
			stoolDestroyer_stab();
	}

	if(status==states.attack4){
			stoolDestroyer_slash2();
	}

	if(status==states.pre5){
			stoolDestroyer_pre_upperbeam();
	}
			
	if(status==states.attack5){
			stoolDestroyer_upperbeam();
	}

	if(status==states.pre6){
			stoolDestroyer_pre_groundsmash();
	}
			
	if(status==states.attack6){
			stoolDestroyer_groundsmash();
	}

	if(status==states.pre7){
			stoolDestroyer_pre_airslash();
	}
			
	if(status==states.attack7){
			stoolDestroyer_airslash();
	}

	else if(status==states.alert){
			hspd=0;
			if(movestun==-1){movestun=20;}
			else if(movestun==0){status=states.neutral;}
	}
		

	




}
