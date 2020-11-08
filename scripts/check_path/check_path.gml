function check_path(argument0, argument1, argument2, argument3, argument4) {
	//I don't even remeber where i used this
	var iniX=argument0;
	var iniY=argument1;
	var endX=argument2;
	var endY=argument3;
	var obj=argument4;

	var signX=sign(endX-iniX);
	var signY=sign(endY-iniY);

	for(var i=0;i<=abs(endX-iniX);i++){
		for(var j=0;j<=abs(endY-iniY);j++){
			if(place_meeting(iniX+signX*i,iniY+signY*j,obj)){return true;}
		}
	}
	return false;


}
