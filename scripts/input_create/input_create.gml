function input_create() {
	//owner: obj_gameManager
	//event: create
	/*
	This script is for the creation of all the inputs varaibale 
	*/
	//down
	global.input_up_d=false;
	global.input_left_d=false;
	global.input_down_d=false;
	global.input_right_d=false;

	//pressed
	global.input_up_p=false;
	global.input_left_p=false;
	global.input_down_p=false;
	global.input_right_p=false;

	global.input_dir=false;//if any of the direction is down

	//down
	global.input_A_d=false;
	global.input_B_d=false;
	global.input_X_d=false;
	global.input_Y_d=false;
	global.input_L_d=false;
	global.input_Lt_d=false;
	global.input_R_d=false;

	//pressed
	global.input_A_p=false;
	global.input_B_p=false;
	global.input_X_p=false;
	global.input_Y_p=false;
	global.input_L_p=false;
	global.input_Lt_p=false;
	global.input_R_p=false;

	global.input_start=false;
	global.input_select=false;

	global.input_ok=false;
	global.input_no=false;


	global.input_A_q=array_create(120);
	for(var i=0;i<array_length_1d(global.input_A_q);i++){global.input_A_q[i]=0;}

	global.input_X_q=array_create(120);
	for(var i=0;i<array_length_1d(global.input_X_q);i++){global.input_X_q[i]=0;}

	global.input_left_q=array_create(120);
	for(var i=0;i<array_length_1d(global.input_left_q);i++){global.input_left_q[i]=0;}

	global.input_right_q=array_create(120);
	for(var i=0;i<array_length_1d(global.input_right_q);i++){global.input_right_q[i]=0;}


}
