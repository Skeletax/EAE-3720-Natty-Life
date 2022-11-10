function scr_en_move_jump_collide_mini_fake(){
	if (teleportTimer == 0){
		if (!initialized){
			var index = irandom(array_length(teleport_points) - 1);
			while (index == 3 || index == 6)
				index = irandom(array_length(teleport_points) - 1);
			initialized = true;
			occupied_points[currentPos] = false;
			occupied_points[index] = true;
			x = teleport_points[index].x;
			y = teleport_points[index].y;
			currentPos = index;
			teleportTimer = irandom_range(teleportOffset, teleportCooldown + teleportOffset);
		}else{
			var index = irandom(array_length(teleport_points) - 1);
			while (index == currentPos)
				index = irandom(array_length(teleport_points) - 1);
			occupied_points[currentPos] = false;
			if (occupied_points[index]){
				var decoy = decoys[0];
				for (var i = 1; i < array_length(decoys); i++)
					if (decoys[i].currentPos == index){
						decoy = decoys[i];
						break;
					}
				var decIndex = scr_help_mini_fake_find_pos();
				occupied_points[decIndex] = true;
				decoy.x = teleport_points[decIndex].x;
				decoy.y = teleport_points[decIndex].y;
				decoy.currentPos = decIndex;
			}else
				occupied_points[index] = true;
			x = teleport_points[index].x;
			y = teleport_points[index].y;
			currentPos = index;
			teleportTimer = irandom_range(teleportOffset, teleportCooldown + teleportOffset);
		}
	}
}