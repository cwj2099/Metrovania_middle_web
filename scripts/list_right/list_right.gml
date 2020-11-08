function list_right(argument0) {

	var temp=argument0[|ds_list_size(argument0)-1];
	for(var i=ds_list_size(argument0)-1;i>0;i--){
		argument0[|i]=argument0[|i-1];
	}
	argument0[|0]=temp;


}
