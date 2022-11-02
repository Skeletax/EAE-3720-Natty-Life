function scr_en_move_jump_collide_smart(){
	if (xdir != 0) {
		image_xscale = xdir;
		dir = xdir;
	}
	if jump && place_meeting(x,y+1,env_ground){ 
		yspd -= jumppwr;
		onGround = false;
	}

	//x movement and collision
	if place_meeting(x + xspd * xdir, y, env_ground){ //If colliding with a wall
		while !place_meeting(x+xdir,y,env_ground) x+=xdir
		xdir *= -1;
	}else if place_meeting(x + xspd * xdir, y, obj_enemy){ //If colliding with an enemy
		var inst = instance_place(x + xspd * xdir, y, obj_enemy);
		xdir *= -1;
		inst.xdir = xdir * -1;
	}else if (!place_meeting(x + (xspd + sprite_get_width(sprite_index)) * xdir, y + 1, env_ground) && onGround){ //If about to fall off a ledge
		while place_meeting(x+(xdir*sprite_get_width(sprite_index)),y + 1,env_ground) x+=xdir
		xdir *= -1;
	}
	x += xspd * xdir;

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
	}else if (!place_meeting(x, y + yspd + 1, env_ground) && onGround){ //Falling
		yspd = yspd + grav; 
		onGround = false;
	}else if (!place_meeting(x, y + yspd + 1, env_ground) && !onGround){
		yspd = yspd + grav; 
	}

	//y movement
	y += yspd;
}