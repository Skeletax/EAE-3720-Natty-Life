function scr_en_move_jump_collide_mini_peer(){
	if (player.x < x)
		x_dir = -1;
	else
		x_dir = 1;
		
	if (x_dir != 0) {
		image_xscale = x_dir;
		dir = x_dir;
	}

	//x movement and collision
	if place_meeting(x + xspd * x_dir, y, env_ground){ //If colliding with a wall
		while !place_meeting(x+x_dir,y,env_ground) x+=x_dir
		climbing = true;
	}else {
		climbing = false;
		x += xspd * x_dir;
	}

	//y collisions
	if (place_meeting(x,y + yspd + 1, obj_enemy)){ //Landing on another enemy
		while !place_meeting(x,y+1,obj_enemy) y++;
		yspd = 0;
	}else if (place_meeting(x,y + yspd + 1,env_ground) && !onGround && yspd > 0) { //If landing
		while !place_meeting(x,y+1,env_ground) y++;
		yspd = 0;
		onGround = true;
	}
	else if (place_meeting(x, y + yspd - 1, env_ground) && yspd < 0){ //If hitting head
		while (!place_meeting(x, y - 1, env_ground)) y--;
		yspd = 0;
	}else if (!place_meeting(x, y + yspd + 1, env_ground) && onGround && !climbing){ //Falling
		yspd = yspd + grav; 
		onGround = false;
	}else if (!place_meeting(x, y + yspd + 1, env_ground) && !onGround){
		yspd = yspd + grav; 
	}else if (climbing){
		if (place_meeting(x, y - xspd - 1, env_ground) && yspd < 0){ //If hitting head
			while (!place_meeting(x, y - 1, env_ground)) y--;
		}else
			y -= xspd;
	}

	//y movement
	if (!climbing)
		y += yspd;
}