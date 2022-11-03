function scr_en_move_fly(){
	if (xdir != 0) {
		image_xscale = xdir;
		dir = xdir;
	}

	//x movement and collision
	if place_meeting(x + xspd * xdir, y, env_ground){ //If colliding with a wall
		while !place_meeting(x+xdir,y,env_ground) x+=xdir
		xdir *= -1;
	}else if place_meeting(x + xspd * xdir, y, obj_enemy){
		var inst = instance_place(x + xspd * xdir, y, obj_enemy);
		xdir *= -1;
		inst.xdir = xdir * -1;
	}else if (x + xspd * xdir <= startingx - patrol_distance){
		while !(x + xdir <= startingx - patrol_distance) x+=xdir
		xdir *= -1;
	}else if (x + xspd * xdir >= startingx){
		while !(x + xspd * xdir >= startingx) x+=xdir
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
		onGround = false;
	}

	//y movement
	if (bob)//drifting up
		y -= bobpwr;
	else
		y += bobpwr;
	
	if (bobspdup){
		bobpwr += 0.25;
		if (bobpwr == maxbobpwr)
			bobspdup = false;
	}else{
		bobpwr -= 0.25;
		if (bobpwr == 0){
			bobspdup = true
			bob = !bob;
		}
	}
}