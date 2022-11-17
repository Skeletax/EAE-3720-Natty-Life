function scr_deal_damage(target, damage, source){ //if the source is a player projectile, then it is a recruitable attack. Anything else will not recruit
	if (target.object_index != obj_player || (target.object_index == obj_player && !target.lose)){
		target.hp -= damage;
		if (variable_instance_exists(target, "obj_player_block"))
			scr_pl_block_update_counters();
		if (target.hp <= 0){
			if (source.object_index == obj_projectile){
				var drop = instance_create_layer(source.x, source.y, "Entities", obj_recruitable);
				with (drop){
					val = target.maxhp / 25;
					image_angle = source.image_angle;
					image_xscale = target.player.projscale * source.image_xscale;
					image_yscale = target.player.projscale * source.image_yscale;
					var type = target.object_index;
					switch (type){
						case en_basic:
							image_index = 1;
							break;
						case en_tough:
							image_index = 2;
							break;
						case en_mimic:
							image_index = 3;
							break;
						case en_lobber:
							image_index = 4;
							break;
						case en_magma:
							image_index = 5;
							break;
						case en_fly:
							image_index = 6;
							break;
						default:
							image_index = 0;
							break;
					}
				}
			}
			if (target.object_index != obj_player)
				instance_destroy(target);
			else{
				target.lose = true;
				instance_destroy(target.arm);
			}
		}else{
			scr_hurt(target);
		}
	}
}