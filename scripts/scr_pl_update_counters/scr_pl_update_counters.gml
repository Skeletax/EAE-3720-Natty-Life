function scr_pl_update_counters(){
	if (atkTimeCounter > 0){
		atkTimeCounter--;
		if (atkTimeCounter == 0)
			image_index = 0;
	}else if (atkCooldownCounter > 0)
		atkCooldownCounter--;
		
	if (blkTimeCounter > 0){
		blkTimeCounter--;
		if (blkTimeCounter == 0){
			image_index = 0;
			xspd /= blkspdreduction;
		}
	}else if (blkCooldownCounter > 0)
		blkCooldownCounter--;
}