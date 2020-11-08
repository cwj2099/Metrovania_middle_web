function input_step() {
	//owner: obj_gameManager
	//event: every step
	/*
	This script is for updating the state of the input variable everysetp
	*/

	var haxis=gamepad_axis_value(0,gp_axislh);
	var vaxis=gamepad_axis_value(0,gp_axislv);

	//////////////////////////
	//Directional
	//////////////////////////
	if(keyboard_check(ord("W"))||gamepad_button_check(0,gp_padu)||vaxis<-0.3){global.input_up_d=true;}else{global.input_up_d=false;}
	if(keyboard_check(ord("A"))||gamepad_button_check(0,gp_padl)||haxis<-0.3){global.input_left_d=true;}else{global.input_left_d=false;}
	if(keyboard_check(ord("S"))||gamepad_button_check(0,gp_padd)||vaxis>0.3){global.input_down_d=true;}else{global.input_down_d=false;}
	if(keyboard_check(ord("D"))||gamepad_button_check(0,gp_padr)||haxis>0.3){global.input_right_d=true;}else{global.input_right_d=false;}

	if(keyboard_check_pressed(ord("W"))||gamepad_button_check_pressed(0,gp_padu)){global.input_up_p=true;}else{global.input_up_p=false;}
	if(keyboard_check_pressed(ord("A"))||gamepad_button_check_pressed(0,gp_padl)){global.input_left_p=true;}else{global.input_left_p=false;}
	if(keyboard_check_pressed(ord("S"))||gamepad_button_check_pressed(0,gp_padd)){global.input_down_p=true;}else{global.input_down_p=false;}
	if(keyboard_check_pressed(ord("D"))||gamepad_button_check_pressed(0,gp_padr)){global.input_right_p=true;}else{global.input_right_p=false;}

	if(global.input_up_d||global.input_right_d||
	global.input_left_d||global.input_down_d){global.input_dir=true}else{global.input_dir=false;}


	//////////////////////////
	//Functional
	//////////////////////////
	if(keyboard_check(ord("J"))||gamepad_button_check(0,gp_face3)){global.input_A_d=true;}else{global.input_A_d=false;}
	if(keyboard_check(ord("K"))||gamepad_button_check(0,gp_face1)){global.input_B_d=true;}else{global.input_B_d=false;}
	if(keyboard_check(ord("U"))||gamepad_button_check(0,gp_face4)){global.input_X_d=true;}else{global.input_X_d=false;}
	if(keyboard_check(ord("I"))||gamepad_button_check(0,gp_face2)){global.input_Y_d=true;}else{global.input_Y_d=false;}
	if(keyboard_check(vk_control)||gamepad_button_check(0,gp_shoulderl)){global.input_L_d=true;}else{global.input_L_d=false;}
	if(keyboard_check(vk_shift)||gamepad_button_check(0,gp_shoulderlb)){global.input_Lt_d=true;}else{global.input_Lt_d=false;}
	if(keyboard_check(ord("L"))||gamepad_button_check(0,gp_shoulderr)){global.input_R_d=true;}else{global.input_R_d=false;}

	if(keyboard_check_pressed(ord("J"))||gamepad_button_check_pressed(0,gp_face3)){global.input_A_p=true;}else{global.input_A_p=false;}
	if(keyboard_check_pressed(ord("K"))||gamepad_button_check_pressed(0,gp_face1)){global.input_B_p=true;}else{global.input_B_p=false;}
	if(keyboard_check_pressed(ord("U"))||gamepad_button_check_pressed(0,gp_face4)){global.input_X_p=true;}else{global.input_X_p=false;}
	if(keyboard_check_pressed(ord("I"))||gamepad_button_check_pressed(0,gp_face2)){global.input_Y_p=true;}else{global.input_Y_p=false;}
	if(keyboard_check_pressed(vk_control)||gamepad_button_check_pressed(0,gp_shoulderl)){global.input_L_p=true;}else{global.input_L_p=false;}
	if(keyboard_check_pressed(vk_shift)||gamepad_button_check_pressed(0,gp_shoulderlb)){global.input_Lt_p=true;}else{global.input_Lt_p=false;}
	if(keyboard_check_pressed(ord("L"))||gamepad_button_check_pressed(0,gp_shoulderr)){global.input_R_p=true;}else{global.input_R_p=false;}

	/////////////////////////
	//Other
	/////////////////////////
	if(keyboard_check_pressed(vk_enter)||gamepad_button_check_pressed(0,gp_start)){global.input_start=true}else{global.input_start=false;}
	if(keyboard_check_pressed(vk_tab)||gamepad_button_check_pressed(0,gp_select)){global.input_select=true}else{global.input_select=false;}

	if(keyboard_check_pressed(vk_space)||gamepad_button_check_pressed(0,gp_face1)){global.input_ok=true}else{global.input_ok=false;}
	if(keyboard_check_pressed(vk_escape)||gamepad_button_check_pressed(0,gp_face2)){global.input_no=true}else{global.input_no=false;}


	for(var i=array_length_1d(global.input_A_q)-1;i>0;i--){
		global.input_A_q[i]=global.input_A_q[i-1];
	}
	global.input_A_q[0]=global.input_A_p;

	for(var i=array_length_1d(global.input_X_q)-1;i>0;i--){
		global.input_X_q[i]=global.input_X_q[i-1];
	}
	global.input_X_q[0]=global.input_X_p;

	for(var i=array_length_1d(global.input_left_q)-1;i>0;i--){
		global.input_left_q[i]=global.input_left_q[i-1];
	}
	global.input_left_q[0]=global.input_left_p;

	for(var i=array_length_1d(global.input_right_q)-1;i>0;i--){
		global.input_right_q[i]=global.input_right_q[i-1];
	}
	global.input_right_q[0]=global.input_right_p;






}
