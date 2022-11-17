function scr_npc_move_collide(){
	if (player.x - x <= 0)
		image_xscale = 1;
	else
		image_xscale = -1;
	
	if (place_meeting(x,y + yspd + 1,env_ground) && !onGround && yspd > 0) { //If landing
		while !place_meeting(x,y+1,env_ground) y++;
		yspd = 0;
		onGround = true;
	}else if (!place_meeting(x, y + yspd + 1, env_ground)){
		yspd = yspd + grav; 
	}
	
	y += yspd;
}