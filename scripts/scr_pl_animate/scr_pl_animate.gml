function scr_pl_animate(){
	if (lose){
		if (loseframecount < loseframes){
			loseframecount += 0.25;
			if (loseframecount != 0 && loseframecount % ceil(loseframecount) == 0)
				image_index = loseframecount + loseframestart - 1;
		}else{
			lose = false;
			despawn = true;
		}
	}else if (walking){
		if (walkingframecount < walkingframes)
			walkingframecount += 0.25;
		else
			walkingframecount = 0;
		if (walkingframecount != 0 && walkingframecount % ceil(walkingframecount) == 0)
			image_index = walkingframecount + walkingframestart;
	}else if (!despawn){
		walkingframecount = 0;
		image_index = 0;
	}
}