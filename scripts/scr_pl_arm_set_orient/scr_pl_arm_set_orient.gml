function scr_pl_arm_set_orient(){
	if (player.x_dir != 0)
		current_x_dir = player.x_dir;
	x = player.x - (6 * current_x_dir);
	y = player.y - 24;
	mx = mouse_x;
	my = mouse_y;
	image_angle = point_direction(x, y, mx, my);
	if (image_angle > 90 && image_angle < 270) //arm facing left side
		image_yscale = -1;
	else //arm facing right side
		image_yscale = 1;
}