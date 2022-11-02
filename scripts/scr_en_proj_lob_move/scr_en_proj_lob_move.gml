function scr_en_proj_lob_move(){
	yspd += grav;
	x += xspd;
	y += yspd;
	image_angle = 180 * arctan(-yspd / xspd) / pi;
	image_xscale = xdir;
}