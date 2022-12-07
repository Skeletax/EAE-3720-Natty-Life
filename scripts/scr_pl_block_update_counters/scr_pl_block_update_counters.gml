function scr_pl_block_update_counters(){
	player.blkCount = floor(hp / slimehp);
	if (lifetime > 0 && player.blkCount > 0 && hp > 0)
		lifetime--;
	else{
		instance_destroy(self);
	}
}