function scr_proj_collision(){
	if (place_meeting(x + speed, y, env_ground)){
		if (place_meeting(x + speed, y, env_ground_destroyable)){
			var inst = instance_place(x + speed, y, env_ground_destroyable);
			instance_destroy(inst);
		}
		instance_destroy(self);
	}
}