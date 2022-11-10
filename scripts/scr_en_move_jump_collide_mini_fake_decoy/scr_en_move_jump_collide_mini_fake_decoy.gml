function scr_en_move_jump_collide_mini_fake_decoy(){
	if (teleportTimer == 0){
		var index = irandom(array_length(source.teleport_points) - 1);
		if (!source.occupied_points[index]){
			source.occupied_points[currentPos] = false;
			source.occupied_points[index] = true;
			x = source.teleport_points[index].x;
			y = source.teleport_points[index].y;
			currentPos = index;
		}
		teleportTimer = irandom_range(teleportOffset, teleportCooldown + teleportOffset);
	}
}