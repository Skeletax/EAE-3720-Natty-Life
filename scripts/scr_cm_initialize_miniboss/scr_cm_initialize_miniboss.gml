function scr_cm_initialize_miniboss(){
	var spd = distance_to_object(minibossPos) / minibossInitializeTime;
	var angle = point_direction(x, y, minibossPos.x, minibossPos.y);
	xspd = spd * cos(pi * angle / 180);
	yspd = -spd * sin(pi * angle / 180);
	
	//show_message("Angle: " + string(angle) + " Speed: " + string(spd) + " XSpd: " + string(xspd) + " YSpd: " + string(yspd));
	
	miniboss = true;
	initializeMiniboss = false;
}