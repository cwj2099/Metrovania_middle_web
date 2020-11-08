/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);
draw_rectangle(x-25,y-100,x+Hp*(50/mHp)-25, y-90,false);
var exHp=0;
for(var i=0;i<ds_queue_size(lHp);i++){
	var j=ds_queue_dequeue(lHp);
	exHp+=j;
	ds_queue_enqueue(lHp,j);
}

draw_set_color(c_orange);
if(exHp!=0){draw_rectangle(x+Hp*(50/mHp)-25,y-100,x+Hp*(50/mHp)+exHp*(50/mHp)-25,y-90,false);}
draw_set_font(font4);
if(stunned){draw_set_color(c_red);}
if(ds_queue_size(lHp)>0){draw_text(x,y-140,"-"+string(ds_queue_tail(lHp)));}

draw_set_color(c_yellow);
draw_rectangle(x-25,y-80,x+Sp*(50/mSp)-25,y-70,false);


var exSp=0;
for(var i=0;i<ds_queue_size(lSp);i++){
	var j=ds_queue_dequeue(lSp);
	exSp+=j;
	ds_queue_enqueue(lSp,j);
}

draw_set_color(c_lime);
if(exSp!=0){draw_rectangle(x+Sp*(50/mSp)-25,y-80,x+Sp*(50/mSp)+exSp*(50/mSp)-25,y-70,false);}
if(ds_queue_size(lHp)==0){alarm_set(6,20);}