if (freed){
	scr_npc_move_collide();
	
	if (initial){
		scr_npc_dialogue_initial();
		initial = false;
	}else{
		scr_npc_dialogue_free();
	}
}else{
	scr_npc_dialogue_trapped();
}

if (player.camera.reachMiniboss && !starttalking){
	alarm[1] = room_speed * 2;
	starttalking = true;
}