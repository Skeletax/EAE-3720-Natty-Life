function scr_deal_damage(target, damage){
	target.hp -= damage;
	if (variable_instance_exists(target, "obj_player_block"))
		scr_pl_block_update_counters();
	if (target.hp <= 0)
		instance_destroy(target);
}