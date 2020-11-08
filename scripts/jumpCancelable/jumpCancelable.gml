function jumpCancelable() {
	if(
		status==states.attack1||
		status==states.attack2||
		status==states.attack3||
		status==states.upper_cut||
		status==states.gliding||
		status==states.dash_attack
	)
	{return true;}
	else{return false;}


}
