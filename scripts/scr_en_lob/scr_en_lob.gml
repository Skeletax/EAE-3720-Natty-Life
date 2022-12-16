function scr_en_lob(){
	if (atkCooldownCounter == 0 && distance_to_object(player) < 300){
		atkTimeCounter = atkTime;
		atkCooldownCounter = atkCooldown;
		audio_play_sound(snd_Slime_Shooting, 1, 0);
		//image_index = 1;
		var proj = instance_create_layer(x, y - 5, "Projectiles", obj_en_projectile_lob);
		with (proj){
			var xdist = other.player.x - other.x;
			var ydist = (other.player.y - sprite_get_height(other.player.sprite_index) - other.y) * 3;
			var angle = abs(180 * arctan(ydist / xdist) / pi);
			if (xdist < 0){
				var remaining = 90 - abs(angle);
				angle += remaining * 2;
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