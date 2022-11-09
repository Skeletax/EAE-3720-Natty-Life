function scr_pl_launch(){
	if (!onGround)
		audio_stop_sound(snd_Walking_Dirt);
	
	//x movement and collision
	if place_meeting(x + launchspdx,y,env_ground) { //If colliding with a wall
		while !place_meeting(x+launchdir,y,env_ground) x+=launchdir
	}else
		x += launchspdx;


	//y collisions with enemy
	if (place_meeting(x, y + yspd + 1, en_grunts) && !onGround && yspd > 0){
		var inst = instance_place(x, y + yspd + 1, en_grunts);
		if (inst.y > y){
			scr_deal_damage(inst, 25, self);
			yspd *= -1;
		}
	}
	//y collisions with environment
	if (place_meeting(x,y + yspd + 1,env_ground) && !onGround && yspd > 0) { //If landing
		while !place_meeting(x,y+1,env_ground) y++;
		yspd = 0;
		onGround = true;
		launched = false;
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
}