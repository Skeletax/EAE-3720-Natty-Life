function scr_en_burst_fire(){
	if (atkCooldownCounter == 0 && distance_to_object(player) < 700){
		atkTimeCounter = atkTime;
		atkCooldownCounter = atkCooldown;
		audio_play_sound(snd_Slime_Shooting, 1, 0);
		//image_index = 1;
		var proj1 = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_burst);
		with (proj1){
			direction = 45;
			image_angle = direction;
			var spd = other.projspd;
			xspd = spd * cos(pi * image_angle / 180);
			yspd = -spd * sin(pi * image_angle / 180);
			if (image_angle > 90 && image_angle < 270)
				xdir = -1;
			else
				xdir = 1;
		}
		var proj2 = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_burst);
		with (proj2){
			direction = 135;
			image_angle = direction;
			var spd = other.projspd;
			xspd = spd * cos(pi * image_angle / 180);
			yspd = -spd * sin(pi * image_angle / 180);
			if (image_angle > 90 && image_angle < 270)
				xdir = -1;
			else
				xdir = 1;
		}
		var proj3 = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_burst);
		with (proj3){
			direction = 225;
			image_angle = direction;
			var spd = other.projspd;
			xspd = spd * cos(pi * image_angle / 180);
			yspd = -spd * sin(pi * image_angle / 180);
			if (image_angle > 90 && image_angle < 270)
				xdir = -1;
			else
				xdir = 1;
		}
		var proj4 = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_burst);
		with (proj4){
			direction = 315;
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