function clear_force() {
	for(var i=0;i<ds_list_size(forces);i++){
		with(forces[|i]){
			alarm_set(0,min(alarm_get(0),2));
		}
	}


}
