/// @description Insert description here
// You can write your code in this editor
if(interactable){
	draw_outline_color(lt,lr,lg,lb);
	draw_set_color(c_orange);
	draw_set_font(Font_pop);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	if(load("language")==1){
	draw_text(x,y-100,einfo);
	}
	else{
		draw_text(x,y-30,cinfo);
	}
}
draw_self();
