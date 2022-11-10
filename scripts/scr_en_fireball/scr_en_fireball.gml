function scr_en_fireball(){
	if (atkCooldownCounter == 0 && distance_to_object(player) < 500){
		atkTimeCounter = atkTime;
		atkCooldownCounter = atkCooldown;
		//image_index = 1;
		var proj = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_fireball);
		with (proj){
			var xdist = other.player.x - other.x;
			var ydist = other.player.y - (sprite_get_height(other.player.sprite_index)/2) - other.y;
			var angle = 180 * arctan(ydist / xdist) / pi;
			if (xdist < 0){
				var remaining = 90 - abs(angle);
				if (angle > 0)
					angle += remaining * 2;
				else
					angle -= remaining * 2;
			}
			direction = angle;
			image_angle = direction;
			var spd = other.projspd;
			xspd = spd * cos(pi * image_angle / 180);
			yspd = -spd * sin(pi * image_angle / 180);
			if (image_angle > 90 && image_angle < 270)
				xdir = -1;
			else
				xdir = 1;
		}
	}
}