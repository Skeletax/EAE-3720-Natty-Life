function scr_en_step(){
	if (object_index == en_basic){
		scr_en_move_jump_collide_basic();

		scr_en_check_player_collision();

		scr_en_update_counters();
	}else if (object_index == en_tough){
		scr_en_move_jump_collide_basic();

		scr_en_check_player_collision();

		scr_en_update_counters();
	}else if (object_index == en_lobber){
		scr_en_move_jump_collide_smart();

		scr_en_check_player_collision();
		
		scr_en_lob();

		scr_en_update_counters();
	}else if (object_index == en_mimic){
		jump = player.jump;
		
		scr_en_move_jump_collide_smart();

		scr_en_check_player_collision();

		scr_en_update_counters();
	}else if (object_index == en_magma){
		scr_en_move_jump_collide_smart();

		scr_en_check_player_collision();
		
		scr_en_fireball();

		scr_en_update_counters();
	}
}