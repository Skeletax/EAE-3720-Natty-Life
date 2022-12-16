function scr_proj_collision(){
	if (place_meeting(x + xspd, y + yspd, env_ground)){
		if (place_meeting(x + xspd, y + yspd, env_ground_destroyable)){
			var inst = instance_place(x + xspd, y + yspd, env_ground_destroyable);
			audio_play_sound(snd_Walking_Metal, 2, 0);
			instance_destroy(inst);
		}
		instance_destroy(self);
	}else if (place_meeting(x + xspd, y + yspd, obj_enemy)){
		var inst = instance_place(x + xspd, y + yspd, obj_enemy);
		scr_deal_damage(inst, damage, self);
		instance_destroy(self);
	}
}