function scr_pl_initialize_launch(){
	var xdir = player.x - x;
	with (player){
		launched = true;
		audio_play_sound(snd_Jump_Liftoff, 1, 0);
		if (xdir > 0)
			launchdir = 1;
		else if (xdir <= 0)
			launchdir = -1;
		launchspdx = abs(launchspdx) * launchdir;
		yspd = -launchspdy;
	}
}