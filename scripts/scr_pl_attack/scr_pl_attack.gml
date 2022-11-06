function scr_pl_attack(){
	if (atk && atkCooldownCounter == 0 && blk == 0){
		atkTimeCounter = atkTime;
		atkCooldownCounter = atkCooldown;
		image_index = 1;
		var proj = instance_create_layer(arm.x, arm.y, "Entities", obj_projectile);
		with (proj){
			direction = other.arm.image_angle;
			image_angle = other.arm.image_angle;
			var spd = other.projspd;
			xspd = spd * cos(pi * image_angle / 180);
			yspd = -spd * sin(pi * image_angle / 180);
			if (image_angle > 90 && image_angle < 270)
				xdir = -1;
			else
				xdir = 1;
			image_angle -= 45;
			xscale = other.projscale;
			image_xscale = other.projscale;
			image_yscale = other.projscale;
		}
	}
}