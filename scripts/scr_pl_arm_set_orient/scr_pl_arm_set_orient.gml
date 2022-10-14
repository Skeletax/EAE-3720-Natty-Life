function scr_pl_arm_set_orient(){
	x = player.x - (6 * player.xdir);
	y = player.y - 24;
	mx = mouse_x;
	my = mouse_y;
	image_angle = point_direction(x, y, mx, my);
}