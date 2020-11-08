function list_left(argument0) {

	var temp=argument0[|0];
	for(var i=0;i<ds_list_size(argument0)-1;i++){
		argument0[|i]=argument0[|i+1];
	}
	argument0[|ds_list_size(argument0)-1]=temp;


}
