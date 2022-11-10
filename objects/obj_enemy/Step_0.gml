if (distance_to_object(obj_player) < detectionRange && !active)
	active = true;
	
if (active && instance_exists(player) && (!player.camera.miniboss || (player.camera.miniboss && player.camera.reachMiniboss)))
	scr_en_step();
	
