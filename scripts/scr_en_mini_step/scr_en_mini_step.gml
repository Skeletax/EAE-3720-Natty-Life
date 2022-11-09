function scr_en_mini_step(){
	if (object_index == en_miniboss_peer){
		scr_en_move_jump_collide_mini_peer();

		scr_en_check_player_collision_mini();

		scr_en_update_counters();
	}else if (object_index == en_miniboss_fake){
		scr_en_move_jump_collide_mini_fake();

		scr_en_check_player_collision_mini();

		scr_en_update_counters();
	}else if (object_index == en_miniboss_roid){
		scr_en_move_jump_collide_mini_roid();

		scr_en_check_player_collision_mini();

		scr_en_update_counters();
	}
}