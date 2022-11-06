function scr_rec_move_collide(){
	if (place_meeting(x,y + yspd + 1,env_ground) && !onGround && yspd > 0) { //If landing
		while !place_meeting(x,y+1,env_ground) y++;
		yspd = 0;
		onGround = true;
	}else if (!place_meeting(x, y + yspd + 1, env_ground)){
		yspd = yspd + grav; 
	}
	
	y += yspd;
}