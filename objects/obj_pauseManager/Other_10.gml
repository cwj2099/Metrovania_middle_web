/// @description Update the map
// You can write your code in this editor
pRooms=ds_list_create();
//get pieces
for(var i=0;i<instance_number(piece_parent);i++){
	var thisP=instance_find(piece_parent,i);
	if(thisP.portal&&thisP.revealed){ds_list_add(pRooms,thisP);if(thisP.pRoom==room){Mselected=thisP;}}
}
if(Mselected.pRoom!=room){Mselected=pRooms[|0];}
//sort them

