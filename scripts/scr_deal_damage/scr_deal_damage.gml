function scr_deal_damage(target, damage, source){ //if the source is 1, then it is a recruitable attack. 0 will not recruit
	target.hp -= damage;
	if (variable_instance_exists(target, "obj_player_block"))
		scr_pl_block_update_counters();
	if (target.hp <= 0){
		if (source == 1){
			var drop = instance_create_layer(target.x, target.y, "Entities", obj_recruitable);
			with (drop){
				val = target.maxhp / 25;
				sprite_index = target.sprite_index;
			}
		}
		instance_destroy(target);
	}
}