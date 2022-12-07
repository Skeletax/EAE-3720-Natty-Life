if (!global.paused){
	if (npcfreeable){
		if (glassstate == 0){
			glassstate = 1;
			glass.image_index = glassstate;
			image_index = 1;
		}
		else if (place_meeting(x, y, obj_player) && glassstate == 1){
			glassstate = 2;
			instance_destroy(glass);
			alarm[0] = room_speed * 3;
		}
	}
}