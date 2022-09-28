function scr_attack(){
	if (atk && atkCooldownCounter == 0){
		atkTimeCounter = atkTime;
		atkCooldownCounter = atkCooldown;
		image_index = 1;
	}
}