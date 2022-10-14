function scr_pl_block_move(){
	if (player.image_xscale == 1 || image_index == 0) //set the position of the block
		x = player.x + xdisplace;
	else
		x = player.x + xdisplace / 2;
	y = player.y + ydisplace;
	
	if ((image_index == 1 && image_yscale == -1) || image_index == 2){ //Update a down facing block
		if (player.onGround){
			image_index = 2;
			image_yscale = 1;
		}else{
			image_index = 1;
			image_yscale = -1;
		}
	}
}