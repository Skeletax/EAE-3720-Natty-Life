if (instance_exists(player) && !(player.win || player.lose || player.despawn)){
	draw_set_font(guifont);
	draw_set_color(guicolor);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_sprite(spr_hud_player_hp, 0, 0, 0);
	draw_sprite_ext(spr_hud_player_hp, 1, 10, 10, (player.hp / player.maxhp) * (748/768), 76/96, 0, c_white, 1);
	draw_sprite_ext(spr_hud_player_hp, 0, 0, 96, 0.075, 0.5, 0, c_white, 1);
	draw_text(8, 104, player.blkCount);
	
	if (openfulldialogue){
		draw_set_font(dialoguefont);
		draw_set_color(dialoguecolor);
		
		draw_sprite(spr_dialogue_box_full, 0, 0, 1080);
		draw_text(30, 1080 - sprite_get_height(spr_dialogue_box_full) + 30, currentdialogue);
		
		
	}
}