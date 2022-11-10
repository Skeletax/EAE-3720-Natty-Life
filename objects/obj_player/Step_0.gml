if (despawn){
	despawncounter++;
	if (despawncounter >= despawntimer)
		instance_destroy(self);
}else if (!win && !lose && (!camera.miniboss || (camera.miniboss && camera.reachMiniboss))){
	scr_pl_input();

	if (!launched)
		scr_pl_move_jump_collide();
	else
		scr_pl_launch();

	scr_pl_block();

	scr_pl_attack();
	
	scr_pl_animate();

	scr_pl_win_lose();

	scr_pl_update_counters();
}else if (lose){
	scr_pl_animate();
}
