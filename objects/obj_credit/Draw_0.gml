/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font_button);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_color(c_black);

for(var i=0;i<ds_list_size(creditList_cn);i++){
	draw_text(x,y+25*i,creditList_cn[|i]);
}
