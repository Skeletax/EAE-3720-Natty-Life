if (instance_exists(player)){
	draw_sprite(spr_hud_player_hp, 0, 0, 0);
	draw_sprite_ext(spr_hud_player_hp, 1, 10, 10, (player.hp / player.maxhp) * (748/768), 76/96, 0, c_white, 1);
}