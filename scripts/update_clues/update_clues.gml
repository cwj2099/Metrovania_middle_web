function update_clues() {

	line1=ds_list_create();
	line2=ds_list_create();
	line3=ds_list_create();

	for(var i=0;i<4;i++){ds_list_add(line1,i);}

	for(var i=ds_list_size(line1)-1;i<4;i++){ds_list_add(line1,999);}

	for(var i=0;i<2;i++){ds_list_add(line2,"evidence "+string(i+1));}

	for(var i=ds_list_size(line2)-1;i<4;i++){ds_list_add(line2,"locked");}

	for(var i=0;i<10;i++){ds_list_add(line3,"enemy "+string(i+1));}

	for(var i=ds_list_size(line2)-1;i<4;i++){ds_list_add(line3,"locked");}
	tags=ds_grid_create(6,3);


	for(var i=0;i<ds_grid_width(tags);i++){
		for(var j=0;j<ds_grid_height(tags);j++){
			tags[# i,j]=instance_create_layer(-80+160*i,64+120*j,"Pause5",obj_tag_1);
			tags[# i,j].image_xscale=2;tags[# i,j].image_yscale=1.5;
		}
	}


}
