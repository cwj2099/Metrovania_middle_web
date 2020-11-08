function mummy_action() {
	if(status==states.attack1){
	  mummy_attack1();
	}
	else if(status=states.attack2){
		mummy_attack2();
		}
	else if(status==states.alert){
	  hspd=0;
	  if(movestun==-1){movestun=20;}
	  else if(movestun==0){status=states.neutral;}
	}


}
