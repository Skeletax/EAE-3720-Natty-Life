if (distance_to_object(obj_player) < detectionRange && !active)
	active = true;
	
if (active && instance_exists(player))
	scr_en_step();
	
