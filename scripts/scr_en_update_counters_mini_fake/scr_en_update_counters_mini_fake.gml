function scr_en_update_counters_mini_fake(){
	if (teleportTimer > 0)
		teleportTimer--;
		
	if (atkTimeCounter > 0)
		atkTimeCounter--;
	else if (atkCooldownCounter > 0)
		atkCooldownCounter--;
		
	if (spreadCooldownTimer > 0)
		spreadCooldownTimer--;
		
	if (launchCooldownCounter > 0)
		launchCooldownCounter--;
}