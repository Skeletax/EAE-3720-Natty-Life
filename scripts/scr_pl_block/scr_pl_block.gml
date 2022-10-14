function scr_pl_block(){
	if (blk && blkCooldownCounter == 0 && blkCount > 0){
		blkTimeCounter = blkTime;
		blkCooldownCounter = blkCooldown;
		xspd *= blkspdreduction;
		image_index = 4;
		shield = instance_create_layer(x, y, "Entities", obj_player_block);
		with (shield){
			lifetime = other.blkTime;
			switch(other.facing){
				case 4: //down
					if (other.onGround){
						image_index = 2;
					} else{
						image_index = 1;
						image_yscale = -1;
					}
					xdisplace = -5 * (sprite_width / 8)
					x = x + xdisplace;
					break;
				case 3: //up
					image_index = 1;
					xdisplace = -5 * (sprite_width / 8);
					x = x + xdisplace;
					ydisplace = -other.sprite_height;
					y = y + ydisplace;
					break;
				case 2: //left
					image_index = 0;
					image_xscale = -1;
					xdisplace = other.sprite_width / 2;
					x = x + xdisplace;
					break;
				case 1: //right
					image_index = 0;
					xdisplace = other.sprite_width / 2;
					x = x + xdisplace;
					break;
			}
		}
	}
}