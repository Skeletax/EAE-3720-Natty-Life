function scr_en_burst_fire_mini_fake(){
	if (atkCooldownCounter == 0 && distance_to_object(player) < 700){
		atkTimeCounter = atkTime;
		atkCooldownCounter = atkCooldown;
		if (object_index != en_miniboss_fake_decoy)
			audio_play_sound(snd_Grunt_1, 2, 0);
		image_index = 1;
		alarm[0] = room_speed * 0.75;
		//image_index = 1;
		var angle = irandom(89);
		var proj1 = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_kettleball);
		with (proj1){
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
		var proj2 = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_kettleball);
		with (proj2){
			direction = angle + 90;
			image_angle = direction;
			var spd = other.projspd;
			xspd = spd * cos(pi * image_angle / 180);
			yspd = -spd * sin(pi * image_angle / 180);
			if (image_angle > 90 && image_angle < 270)
				xdir = -1;
			else
				xdir = 1;
		}
		var proj3 = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_kettleball);
		with (proj3){
			direction = angle + 180;
			image_angle = direction;
			var spd = other.projspd;
			xspd = spd * cos(pi * image_angle / 180);
			yspd = -spd * sin(pi * image_angle / 180);
			if (image_angle > 90 && image_angle < 270)
				xdir = -1;
			else
				xdir = 1;
		}
		var proj4 = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_kettleball);
		with (proj4){
			direction = angle + 270;
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