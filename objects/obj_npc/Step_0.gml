if (freed){
	scr_npc_move_collide();
	
	if (distance_to_object(obj_player) < 25 && initial){
		initial = false;
		with (player.hud){
			scr_gm_full_screen_dialogue(other.dialogue_initial, "npc");	
		}
		player.hp = player.maxhp;
	}else if (distance_to_object(obj_player) < 75 && canfreetalk){
		canfreetalk = false;
		talking = true;
		dialogue = dialogue_options_freed[irandom(array_length(dialogue_options_freed) - 1)];
		alarm[2] = room_speed * 3;
	}
}else if (!freed && !starttalking){
	alarm[1] = room_speed * 2;
	starttalking = true;
}