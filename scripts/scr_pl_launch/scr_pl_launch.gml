function scr_pl_launch(){
	if (!onGround)
		audio_stop_sound(snd_Walking_Dirt);
		
	var potentialx = x + launchspdx;
	var potentialy = y + yspd;
	var camleft = camera_get_view_x(camera.camView);
	var camtop = camera_get_view_y(camera.camView);
	var camright = camleft + camera_get_view_width(camera.camView);
	var cambot = camtop + camera_get_view_height(camera.camView);
	
	//x movement and collision
	if place_meeting(x + launchspdx,y,env_ground) { //If colliding with a wall
		while !place_meeting(x+launchdir,y,env_ground) x+=launchdir
	}else if (!point_in_rectangle(potentialx, camtop, camleft, camtop, camright, cambot)){
		while (point_in_rectangle(x + launchdir, camtop, camleft, camtop, camright, cambot)) x+=launchdir;
		launchspdx *= -1;
		launchdir *= -1;
	}else
		x = potentialx;


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
	}else if (!point_in_rectangle(camleft, potentialy - 1, camleft, camtop, camright, cambot)){
		while (point_in_rectangle(camleft, y - 1, camleft, camtop, camright, cambot)) y--;
		yspd = 0;
	}else if (!point_in_rectangle(camleft, potentialy + 1, camleft, camtop, camright, cambot)){
		while (point_in_rectangle(camleft, y + 1, camleft, camtop, camright, cambot)) y++;
		yspd = 0;
	}else if (place_meeting(x, y + yspd - 1, env_ground) && yspd < 0){ //If hitting head
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