/*
This section invovlves the manipulation of those buttons and stuffs
*/
//resize the button!

//draw the text!
draw_set_font(Font_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

if(load("language")==1){
draw_text(button1.x,button1.y,"Respawn");
draw_text(button2.x,button2.y,"Title");
}
else{
draw_text(button1.x,button1.y,"复活");
draw_text(button2.x,button2.y,"标题页");
}
