minibossPos = instance_nearest(x, y, cm_miniboss_point);

if (initializeMiniboss)
	scr_cm_initialize_miniboss();
else if (track && !miniboss){
	var xCam = obj_player.x - camWidth / 2;
	var yCam = obj_player.y - (11 * camHeight) / 16;

	x = xCam;
	y = yCam;
	camera_set_view_pos(camView, xCam, yCam);
}else if (miniboss && !reachMiniboss){
	if (round(x) == minibossPos.x && round(y) == minibossPos.y)
		reachMiniboss = true;
		
	x += xspd;
	y += yspd;
	camera_set_view_pos(camView, x, y);
}

scr_gm_input();