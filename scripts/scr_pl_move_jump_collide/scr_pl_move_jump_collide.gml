function scr_pl_move_jump_collide(){
	//Set up inputs
	x_dir = right - left;
	if (x_dir != 0) {
		image_xscale = x_dir;
		dir = x_dir;
		if ((!walking || onGround) && !audio_is_playing(snd_Walking_Dirt)){
			audio_play_sound(snd_Walking_Dirt, 4, true);
			walking = true;
		}
	}else if (walking || !onGround){
		audio_stop_sound(snd_Walking_Dirt);
		walking = false;
	}
	if (!onGround)
		audio_stop_sound(snd_Walking_Dirt);
		
	if (down == 1){
		facing = 4;
		if (lastface != 3){
			image_index = 3;
			lastface = 3;
		}
	}if (up == 1){
		facing = 3;
		if (lastface != 2){
			image_index = 2;
			lastface = 2;
		}
	}if (left == 1){
		facing = 2;
		if (lastface != 0){
			image_index = 0;
			lastface = 0;
		}
	}if (right == 1){
		facing = 1;
		if (lastface != 0){
			image_index = 0;
			lastface = 0;
		}
	}
	if (jump && onGround){ 
		yspd -= jumppwr;
		onGround = false;
	}

	var potentialx = x + xspd * x_dir;
	var potentialy = y + yspd;
	var camleft = camera_get_view_x(camera.camView);
	var camtop = camera_get_view_y(camera.camView);
	var camright = camleft + camera_get_view_width(camera.camView);
	var cambot = camtop + camera_get_view_height(camera.camView);

	//x movement and collision
	if place_meeting(potentialx,y,env_ground) { //If colliding with a wall
		while !place_meeting(x+x_dir,y,env_ground) x+=x_dir
	}else if (!point_in_rectangle(potentialx, camtop, camleft, camtop, camright, cambot)){
		while (point_in_rectangle(x + x_dir, camtop, camleft, camtop, camright, cambot)) x+=x_dir;
	}else
		x = potentialx;


	//y collisions with enemy
	if (place_meeting(x, potentialy + 1, en_grunts) && !onGround && yspd > 0){
		var inst = instance_place(x, potentialy + 1, en_grunts);
		if (inst.y > y){
			scr_deal_damage(inst, 25, self);
			yspd *= -1;
		}
	}
	//y collisions with environment
	if (place_meeting(x,y + yspd + 1,env_ground) && !onGround && yspd > 0) { //If landing on solid ground
		while !place_meeting(x,y+1,env_ground) y++;
		yspd = 0;
		onGround = true;
	}else if (place_meeting(x,y + yspd + 1,env_ground_platform) && !place_meeting(x,y,env_ground_platform) && !onGround && yspd > 0) { //If landing on a platform
		while !place_meeting(x,y+1,env_ground_platform) y++;
		yspd = 0;
		onGround = true;
	}else if (!point_in_rectangle(camleft, potentialy - 1 - sprite_height, camleft, camtop, camright, cambot) && yspd < 0){ //If falling below camera view
		while (point_in_rectangle(camleft, y - 1 - sprite_height, camleft, camtop, camright, cambot)) y--;
		yspd = 0;
	}else if (!point_in_rectangle(camleft, potentialy + 1, camleft, camtop, camright, cambot) && yspd > 0){ //If moving above camera view
		while (point_in_rectangle(camleft, y + 1, camleft, camtop, camright, cambot)) y++;
		yspd = 0;
	}else if (place_meeting(x, y + yspd - 1, env_ground) && yspd < 0){ //If hitting head
		while (!place_meeting(x, y - 1, env_ground)) y--;
		yspd = 0;
	}else if (!place_meeting(x, y + yspd + 1, env_ground) && !place_meeting(x, y + yspd + 1, env_ground_platform) && onGround){ //Falling off solid ground
		yspd = yspd + grav; 
		onGround = false;
	}else if (!onGround){
		yspd = yspd + grav; 
	}

	//y movement
	y += yspd;
	
	if (place_meeting(x, y, obj_recruitable)){
		var inst = instance_place(x, y, obj_recruitable);
		blkCount = blkCount + inst.val;
		instance_destroy(inst);
	}
	
	if (place_meeting(x, y, obj_goal)){
		win = true;
	}
}