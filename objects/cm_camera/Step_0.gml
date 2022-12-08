scr_gm_input();

if (!global.paused){
	if (instance_exists(gui_pause_menu))
		instance_destroy(gui_pause_menu);
	
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
}else{
	if (!instance_exists(gui_pause_menu)){
		pauseMenu = instance_create_layer(x + 224, y + 96, "NonEntities", gui_pause_menu);
		with (pauseMenu){
			scr_pause_initialize_buttons();
		}
	}
}