/// @description Insert description here
// You can write your code in this editor
changePause1(false);
changePause2(false);

x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
if(global.inGame){
	g=instance_find(obj_gManager_parent,0);
	rX=g.piece.oX-mX;
	rY=g.piece.oY-mY;
	world=g.world;
}
