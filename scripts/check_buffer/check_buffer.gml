///@fucntion 
function check_buffer(argument0, argument1) {

	var arr=argument0;
	var num=argument1;

	for(var i=1;i<num;i++){
		if(arr[i]){return true;}
	}
	return false;



}
