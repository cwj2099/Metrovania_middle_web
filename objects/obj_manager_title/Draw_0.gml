/*
This section invovlves the manipulation of those buttons and stuffs
*/
//resize the button!

//draw the text!
draw_set_font(Font_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

if(layer_get_visible("Instances")){
	if(load("language")==1){
		draw_text(button1.x,button1.y,"New Game");
		if(load("started")){
		draw_text(button2.x,button2.y,"Countinue");}
		draw_text(button3.x,button3.y,"Setting");
		draw_text(button4.x,button4.y,"Exit");
	}
	else{
		draw_text(button1.x,button1.y,"新游戏");
		if(load("started")){
		draw_text(button2.x,button2.y,"继续游戏");}
		draw_text(button3.x,button3.y,"设置");
		draw_text(button4.x,button4.y,"退出");
	}
}
else{
	draw_text(320,128,"Language Setting 语言设置")
	draw_text(button5.x,button5.y,"English");
	draw_text(button6.x,button6.y,"中文");
}