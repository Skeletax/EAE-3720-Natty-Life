if (despawn){
	despawncounter++;
	if (despawncounter >= despawntimer)
		instance_destroy(self);
}else if (!win && !lose){
	scr_pl_input();

	scr_pl_move_jump_collide();

	scr_pl_block();

	scr_pl_attack();
	
	scr_pl_animate();

	scr_pl_win_lose();

	scr_pl_update_counters();
}else if (lose){
	scr_pl_animate();
}
