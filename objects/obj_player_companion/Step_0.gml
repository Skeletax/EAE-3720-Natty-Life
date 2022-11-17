x = player.x - (player.image_xscale * 4);
y = player.y - 16;
image_xscale = player.image_xscale;

if (distance_to_object(obj_player_companion_talking_point) < 50 && !talking && player.onGround){
	var tip = instance_nearest(x, y, obj_player_companion_talking_point);
	if (!tip.visited){
		tip.visited = true;
		talking = true;
		image_index = 0;
		with (player.hud)
			scr_gm_full_screen_dialogue(global.tips, obj_player_companion, tip.startindex, tip.endindex);
	}
}