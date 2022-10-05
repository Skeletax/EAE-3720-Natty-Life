function scr_pl_update_counters(){
	if (atkTimeCounter > 0){
		atkTimeCounter--;
		if (atkTimeCounter == 0)
			image_index = 0;
	}else if (atkCooldownCounter > 0)
		atkCooldownCounter--;
}