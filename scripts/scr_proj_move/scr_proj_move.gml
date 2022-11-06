function scr_proj_move(){
	yspd += grav;
	x += xspd;
	y += yspd;
	image_angle = (180 * arctan(-yspd / xspd) / pi) - (45 * xdir);
	image_xscale = xdir * xscale;
}