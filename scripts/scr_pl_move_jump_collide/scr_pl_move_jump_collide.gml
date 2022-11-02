function scr_pl_move_jump_collide(){
	//Set up inputs
	x_dir = right - left;
	if (x_dir != 0) {
		image_xscale = x_dir;
		dir = x_dir;
	}
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
	if jump && place_meeting(x,y+1,env_ground){ 
		yspd -= jumppwr;
		onGround = false;
	}

	//x movement and collision
	if place_meeting(x + xspd * x_dir,y,env_ground) { //If colliding with a wall
		while !place_meeting(x+x_dir,y,env_ground) x+=x_dir
	}else
		x += xspd * x_dir;


	//y collisions with enemy
	if (place_meeting(x, y + yspd + 1, obj_enemy) && !onGround && yspd > 0){
		var inst = instance_place(x, y + yspd + 1, obj_enemy);
		scr_deal_damage(inst, 25, 0);
		yspd *= -1;
	}
	//y collisions with environment
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
	
	if (place_meeting(x, y, obj_recruitable)){
		var inst = instance_place(x, y, obj_recruitable);
		blkCount = blkCount + inst.val;
		instance_destroy(inst);
	}
	
	if (place_meeting(x, y, obj_goal)){
		win = true;
	}
}