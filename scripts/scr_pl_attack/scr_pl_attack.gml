function scr_attack(){
	if (atk && atkCooldownCounter == 0){
		atkTimeCounter = atkTime;
		atkCooldownCounter = atkCooldown;
		image_index = 1;
		var proj = instance_create_layer(x + (dir * 18), y - 30, "Entities", obj_projectile);
		with (proj){
			speed = 8 * other.dir;
			proj_dir = other.dir;
			image_xscale = proj_dir;
		}
	}
}