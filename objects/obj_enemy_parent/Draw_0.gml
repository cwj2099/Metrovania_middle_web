/// @description Insert description here
// You can write your code in this editor
var tickness=10;
var hpBase=10+sprite_height/2;
var spBase=hpBase+tickness;

//draw hp
draw_set_color(c_red);
draw_rectangle(x-25,y-hpBase,x+Hp*(50/mHp)-25, y-hpBase-tickness,false);
var exHp=0;
for(var i=0;i<ds_queue_size(lHp);i++){
	var j=ds_queue_dequeue(lHp);
	exHp+=j;
	ds_queue_enqueue(lHp,j);
}

//draw just lost hp
draw_set_color(c_orange);
if(exHp!=0){draw_rectangle(x+Hp*(50/mHp)-25,y-hpBase,x+Hp*(50/mHp)+exHp*(50/mHp)-25,y-hpBase-tickness,false);}
draw_set_font(font4);
if(stunned){draw_set_color(c_red);}
//draw damage number
if(ds_queue_size(lHp)>0){draw_text(x,y-100,"-"+string(ds_queue_tail(lHp)));}

//draw sp
draw_set_color(c_yellow);
draw_rectangle(x-25,y-spBase,x+Sp*(50/mSp)-25,y-spBase-tickness,false);


var exSp=0;
for(var i=0;i<ds_queue_size(lSp);i++){
	var j=ds_queue_dequeue(lSp);
	exSp+=j;
	ds_queue_enqueue(lSp,j);
}
//draw just lost sp
draw_set_color(c_lime);
if(exSp!=0){draw_rectangle(x+Sp*(50/mSp)-25,y-spBase,x+Sp*(50/mSp)+exSp*(50/mSp)-25,y-spBase-tickness,false);}
if(ds_queue_size(lHp)==0){alarm_set(6,20);}