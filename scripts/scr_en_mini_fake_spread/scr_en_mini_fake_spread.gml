function scr_en_mini_fake_spread(){
	if (spreadCooldownTimer == 0 && spreadCount < 7){
		var decoy1 = instance_create_layer(x, y + 1000, "Entities", en_miniboss_fake_decoy);
		array_insert(decoys, array_length(decoys), decoy1);
		with (decoy1){
			source = other;
			player = other.player;
			projspd = other.projspd;
			atkCooldown = other.atkCooldown;
			atkTime = other.atkTime;
			damage = other.damage;
		}
			
		var decoy2 = instance_create_layer(x, y + 1000, "Entities", en_miniboss_fake_decoy);
		array_insert(decoys, array_length(decoys), decoy2);
		with (decoy2){
			source = other;
			player = other.player;
			projspd = other.projspd;
			atkCooldown = other.atkCooldown;
			atkTime = other.atkTime;
			damage = other.damage;
		}
		
		spreadCooldownTimer = spreadCooldown;
	}
}