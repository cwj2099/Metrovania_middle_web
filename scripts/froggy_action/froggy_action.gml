function froggy_action() {

			
	if(status==states.attack1){
			froggy_attack();
	}

	if(status==states.attack2){
			froggy_shoot();
	}

	else if(status==states.alert){
			hspd=0;
			if(movestun==-1){movestun=20;}
			else if(movestun==0){status=states.neutral;}
	}
		

	



}
