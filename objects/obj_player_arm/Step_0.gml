if (!global.paused){
	if (!player.win && !player.lose && (!player.camera.miniboss || (player.camera.miniboss && player.camera.reachMiniboss)) && !global.totaldialogue){
		scr_pl_arm_set_orient();
	}
}