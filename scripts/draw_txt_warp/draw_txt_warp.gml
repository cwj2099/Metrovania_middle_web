///draw_txt_warp(x,y,txt,sep,w);
function draw_txt_warp(argument0, argument1, argument2, argument3, argument4) {
	var xx, yy, vtxt, vsep, vww, vth, vhh;
	vth = 0;
	xx = argument0;
	yy = argument1;
	vtxt = argument2;
	vsep = argument3;
	vww = argument4;
	vhh = string_height(vtxt);
	vlen = string_length(vtxt);
	var i = 1;
	var j = 1;
	repeat vlen{
	  var vcut = string_copy(vtxt, 1, j);
	  if i == vlen {
	    draw_text(xx, yy + vth, vtxt);
	    vth += vsep;
	  } else if string_count("#",vcut) > 0 {
	    vcut = string_replace(vcut, "#", "");
	    draw_text(xx, yy + vth, vcut);
	    vtxt = string_delete(vtxt, 1, j);
	    vth += vsep;
	    j = 0;
	  } else if string_width(vcut) > vww {
	    var vj = max(1, j-1);
	    vcut = string_copy(vtxt, 1, vj);
	    draw_text(xx, yy + vth, vcut);
	    vtxt = string_delete(vtxt, 1, vj);
	    vth += vsep;
	    j=0;
	  }
	  i += 1;
	  j += 1;
	}

	return vth;


}
