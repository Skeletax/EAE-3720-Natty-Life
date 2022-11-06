function scr_proj_collision(){
	if (place_meeting(x + xspd, y + yspd, env_ground)){
		if (place_meeting(x + xspd, y + yspd, env_ground_destroyable)){
			var inst = instance_place(x + xspd, y + yspd, env_ground_destroyable);
			instance_destroy(inst);
		}
		instance_destroy(self);
	}else if (place_meeting(x + xspd, y + yspd, obj_enemy)){
		var inst = instance_place(x + xspd, y + yspd, obj_enemy);
		scr_deal_damage(inst, damage, self);
		instance_destroy(self);
	}
}