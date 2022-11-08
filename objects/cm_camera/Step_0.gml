if (initializeMiniboss)
	scr_cm_initialize_miniboss();
else if (track && !miniboss){
	var xCam = obj_player.x - camWidth / 2;
	var yCam = obj_player.y - (3 * camHeight) / 4;

	x = xCam;
	y = yCam;
	camera_set_view_pos(view_camera[0], xCam, yCam);
}else if (miniboss && !reachMiniboss){
	if (round(x) == minibossPos.x && round(y) == minibossPos.y)
		reachMiniboss = true;
		
	x += xspd;
	y += yspd;
	camera_set_view_pos(view_camera[0], x, y);
}

scr_gm_input();