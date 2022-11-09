if (instance_exists(player) && distance_to_object(player) < detectionRange && !active){
	active = true;
	player.camera.initializeMiniboss = true;
}
	
if (active && instance_exists(player))
	scr_en_mini_step();
	
