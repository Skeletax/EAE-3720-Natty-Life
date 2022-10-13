function scr_pl_attack(){
	if (atk && atkCooldownCounter == 0){
		atkTimeCounter = atkTime;
		atkCooldownCounter = atkCooldown;
		image_index = 1;
		var proj = instance_create_layer(arm.x, arm.y, "Entities", obj_projectile);
		with (proj){
			speed = 8;
			direction = other.arm.image_angle;
			image_angle = other.arm.image_angle;
		}
	}
}