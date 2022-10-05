function scr_en_move_jump_collide(){
	if (x_dir != 0) {
		image_xscale = x_dir;
		dir = x_dir;
	}
	if jump && place_meeting(x,y+1,env_ground){ 
		yspd -= jumppwr;
		onGround = false;
	}

	//x movement and collision
	if place_meeting(x + xspd * x_dir,y,env_ground) { //If colliding with a wall
		while !place_meeting(x+x_dir,y,env_ground) x+=x_dir
		x_dir = 0;
	}
	x += xspd * x_dir;

	//y collisions
	if (place_meeting(x,y + yspd + 1,env_ground) && !onGround && yspd > 0) { //If landing
		while !place_meeting(x,y+1,env_ground) y++;
		yspd = 0;
		onGround = true;
	}
	else if (place_meeting(x, y + yspd - 1, env_ground) && yspd < 0){ //If hitting head
		while (!place_meeting(x, y - 1, env_ground)) y--;
		yspd = 0;
	}else if (!place_meeting(x, y + yspd + 1, env_ground) && onGround){ //Falling
		yspd = yspd + grav; 
		onGround = false;
	}else if (!place_meeting(x, y + yspd + 1, env_ground) && !onGround){
		yspd = yspd + grav; 
	}

	//y movement
	y += yspd;
}