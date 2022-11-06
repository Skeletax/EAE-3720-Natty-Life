function scr_en_proj_lob_collision(){
	if (place_meeting(x + xspd, y + yspd, env_ground)){
		if (place_meeting(x + xspd, y + yspd, env_ground_destroyable)){
			var inst = instance_place(x + xspd, y + yspd, env_ground_destroyable);
			instance_destroy(inst);
		}
		instance_destroy(self);
	}else if (place_meeting(x + xspd, y + yspd, obj_player)){
		var inst = instance_place(x + xspd, y + yspd, obj_player);
		scr_deal_damage(inst, damage, self);
		instance_destroy(self);
	}else if (place_meeting(x + xspd, y + yspd, obj_player_block)){
		var inst = instance_place(x + xspd, y + yspd, obj_player_block);
		scr_deal_damage(inst, damage, self);
		instance_destroy(self);
	}
}