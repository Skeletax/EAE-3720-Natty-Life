function scr_en_update_counters(){
	if (atkTimeCounter > 0){
		atkTimeCounter--;
		if (atkTimeCounter == 0)
			image_index = default_image_index;
	}else if (atkCooldownCounter > 0)
		atkCooldownCounter--;
}