function scr_en_check_player_collision_mini(){
	if (place_meeting(x, y, obj_player_block) && launchCooldownCounter == 0){
		var block = instance_place(x, y, obj_player_block);
		scr_deal_damage(block, damage, self);
		launchCooldownCounter = launchCooldown;
		scr_pl_initialize_launch();
	} else if (place_meeting(x, y, obj_player) && launchCooldownCounter == 0){
		var player = instance_place(x, y, obj_player);
		scr_deal_damage(player, damage, self);
		launchCooldownCounter = launchCooldown;
		scr_pl_initialize_launch();
	}
}