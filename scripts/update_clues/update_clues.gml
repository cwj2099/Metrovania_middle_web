function update_clues() {

	line1=ds_list_create();
	line2=ds_list_create();
	line3=ds_list_create();

	for(var i=0;i<4;i++){ds_list_add(line1,i);}
	if(load("clue7_get")){ds_list_add(line1,7);}
	if(load("clue8_get")){ds_list_add(line1,8);}
	if(load("clue9_get")){ds_list_add(line1,9);}

	//for(var i=ds_list_size(line1)-1;i<4;i++){ds_list_add(line1,999);}

	ds_list_add(line2,4);ds_list_add(line2,5);ds_list_add(line2,6);ds_list_add(line2,10);

	//for(var i=ds_list_size(line2)-1;i<4;i++){ds_list_add(line2,"locked");}

	for(var i=0;i<10;i++){ds_list_add(line3,999);}



	

}
