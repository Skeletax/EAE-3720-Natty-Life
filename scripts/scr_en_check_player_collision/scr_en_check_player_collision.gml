function scr_en_check_player_collision(){
	if (place_meeting(x, y, obj_player_block) && atkCooldownCounter == 0){
		var block = instance_place(x, y, obj_player_block);
		scr_deal_damage(block, damage);
		atkCooldownCounter = atkCooldown;
		xdir *= -1;
	} else if (place_meeting(x, y, obj_player) && atkCooldownCounter == 0){
		var player = instance_place(x, y, obj_player);
		scr_deal_damage(player, damage);
		atkCooldownCounter = atkCooldown;
		xdir *= -1;
	}
}