if (instance_exists(player) && distance_to_object(player) < detectionRange && !active){
	active = true;
	player.camera.initializeMiniboss = true;
}
	
if (active && instance_exists(player) && (!player.camera.miniboss || (player.camera.miniboss && player.camera.reachMiniboss)))
	scr_en_mini_step();
	
