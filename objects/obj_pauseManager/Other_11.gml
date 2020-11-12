/// @description select the map
// You can write your code in this editor
if(global.input_up_p){
	var mac=-999999;
	var j=ds_list_find_index(pRooms,Mselected);
	for(var i=0;i<ds_list_size(pRooms);i++){
		if(pRooms[|i].oY<Mselected.oY&&pRooms[|i].oY>mac){
			mac=pRooms[|i].oY;	
			j=i;
		}
	}
	Mselected=pRooms[|j];
}
else if(global.input_down_p){
	var mac=999999;
	var j=ds_list_find_index(pRooms,Mselected);
	for(var i=0;i<ds_list_size(pRooms);i++){
		if(pRooms[|i].oY>Mselected.oY&&pRooms[|i].oY<mac){
			mac=pRooms[|i].oY;	
			j=i;
		}
	}
	Mselected=pRooms[|j];	
}
else if(global.input_left_p){
	var mac=-999999;
	var j=ds_list_find_index(pRooms,Mselected);
	for(var i=0;i<ds_list_size(pRooms);i++){
		if(pRooms[|i].oX<Mselected.oX&&pRooms[|i].oX>mac){
			mac=pRooms[|i].oX;	
			j=i;
		}
	}
	Mselected=pRooms[|j];
}
else if(global.input_right_p){
	var mac=999999;
	var j=ds_list_find_index(pRooms,Mselected);
	for(var i=0;i<ds_list_size(pRooms);i++){
		if(pRooms[|i].oX>Mselected.oX&&pRooms[|i].oX<mac){
			mac=pRooms[|i].oX;	
			j=i;
		}
	}
	Mselected=pRooms[|j];	
}