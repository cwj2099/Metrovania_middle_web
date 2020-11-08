/// @function                       uiSelect(listOfUi,currentId);
/// @param {array}    listOfUi      The array to manipulate
/// @param {object}   currentId     The current selected id of the array
function uiSelect(argument0, argument1) {

	//owner: obj_gameManager
	//event: every step
	/*
	This scirpt is for upward and downwward move of selected UI element in game, 
	in further developement, I'm planing to make this into one which uses the actual position
	of the objects instead of the sequence in the array
	*/


	var arr = argument0;
	var selected = argument1;
	var iX=undefined;
	var iY=undefined;

	for(var i=0;i<ds_grid_width(arr);i++){
		for(var j=0;j<ds_grid_height(arr);j++){
			if(arr[# i,j]==selected){iX=i;iY=j;break;}
		}
	}

	if(global.input_up_p){

		if(iY==0){iY=ds_grid_height(arr)-1;}
		else{iY--;}
		while(arr[# iX,iY]==-1){
			if(iY==0){iY=ds_grid_height(arr)-1;}
			else{iY--;}
		}
	
	}
	else if(global.input_down_p){
		
		if(iY==ds_grid_height(arr)-1){iY=0;}
		else{iY++;}
		while(arr[# iX,iY]==-1){
			if(iY==ds_grid_height(arr)-1){iY=0;}
			else{iY++;}
		}
	
	}

	if(global.input_left_p){
		if(iX==0){iX=ds_grid_width(arr)-1;}
		else{iX--;}
		while(arr[# iY,iX]==-1){
			if(iX==0){iX=ds_grid_width(arr)-1;}
			else{iX--;}
		}
	
	}
	else if(global.input_right_p){
		
		if(iX==ds_grid_width(arr)-1){iX=0;}
		else{iX++;}
		while(arr[# iY,iX]==-1){
			if(iX==ds_grid_width(arr)-1){iX=0;}
			else{iX++;}
		}
	
	}

	return arr[# iX,iY];


}
