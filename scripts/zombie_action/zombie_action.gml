function zombie_action() {

			
	if(status==states.attack1){
			zombie_attack();
	}
	else if(status==states.alert){
			hspd=0;
			if(movestun==-1){movestun=20;}
			else if(movestun==0){status=states.neutral;}
	}
		

	



}
